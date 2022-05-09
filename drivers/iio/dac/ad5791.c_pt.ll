; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ad5791.c_pt.bc'
source_filename = "../drivers/iio/dac/ad5791.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ad5791_chip_info = type { ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ad5791_state = type { ptr, ptr, ptr, ptr, i16, i32, i32, i32, i8, [95 x i8], [3 x %union.anon.85], [116 x i8] }
%union.anon.85 = type { i32 }
%struct.ad5791_platform_data = type { i16, i16, i8 }

@__initcall__kmod_ad5791__290_464_ad5791_driver_init6 = internal global ptr @ad5791_driver_init, section ".initcall6.init", align 4
@ad5791_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ad5791_id, ptr @ad5791_probe, ptr @ad5791_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ad5791_driver_exit = internal global ptr @ad5791_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [63 x i8] c"ad5791.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [73 x i8] c"ad5791.description=Analog Devices AD5760/AD5780/AD5781/AD5790/AD5791 DAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ad5791.file=drivers/iio/dac/ad5791\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [22 x i8] c"ad5791.license=GPL v2\00", section ".modinfo", align 1
@ad5791_id = internal constant { [6 x %struct.spi_device_id], [40 x i8] } { [6 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ad5760\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ad5780\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ad5781\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"ad5790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"ad5791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ad5791\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vss\00", [28 x i8] zeroinitializer }, align 32
@ad5791_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 389, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reference voltage unspecified\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ad5791_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/iio/dac/ad5791.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ad5791_probe._entry_ptr = internal global ptr @ad5791_probe._entry, section ".printk_index", align 4
@ad5791_chip_info_tbl = internal constant { [4 x %struct.ad5791_chip_info], [16 x i8] } { [4 x %struct.ad5791_chip_info] [%struct.ad5791_chip_info { ptr @ad5780_get_lin_comp }, %struct.ad5791_chip_info { ptr @ad5780_get_lin_comp }, %struct.ad5791_chip_info { ptr @ad5791_get_lin_comp }, %struct.ad5791_chip_info { ptr @ad5791_get_lin_comp }], [16 x i8] zeroinitializer }, align 32
@ad5791_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ad5791_read_raw, ptr null, ptr null, ptr @ad5791_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ad5791_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 16, i8 24, i8 4, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5791_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 18, i8 24, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5791_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 18, i8 24, i8 2, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5791_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 1, i32 0, %struct.anon.84 { i8 117, i8 20, i8 24, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ad5791_ext_info, ptr null, ptr null, i8 96 }], [64 x i8] zeroinitializer }, align 32
@ad5791_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.8, i32 1, ptr @ad5791_read_dac_powerdown, ptr @ad5791_write_dac_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.9, i32 1, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @ad5791_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.10, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @ad5791_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powerdown_mode\00", [17 x i8] zeroinitializer }, align 32
@ad5791_powerdown_mode_enum = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @ad5791_powerdown_modes, i32 2, ptr @ad5791_set_powerdown_mode, ptr @ad5791_get_powerdown_mode }, [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"powerdown_mode_available\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ad5791_powerdown_modes = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.12, ptr @.str.13], [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"6kohm_to_gnd\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"three_state\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"ad5791_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 456, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"ad5791_id\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 446, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 458, i32 14 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 353, i32 46 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 366, i32 46 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 389, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"ad5791_chip_info_tbl\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 231, i32 38 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"ad5791_info\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 337, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"ad5791_channels\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 310, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"ad5791_ext_info\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 279, i32 44 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 281, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 286, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"ad5791_powerdown_mode_enum\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 168, i32 30 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 288, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 180, i32 25 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"ad5791_powerdown_modes\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 145, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 146, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [28 x i8] c"../drivers/iio/dac/ad5791.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 147, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ad5791_driver_exit, ptr @__initcall__kmod_ad5791__290_464_ad5791_driver_init6, ptr @ad5791_driver_exit, ptr @ad5791_probe._entry, ptr @ad5791_probe._entry_ptr, ptr @ad5791_driver, ptr @ad5791_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ad5791_chip_info_tbl, ptr @ad5791_info, ptr @ad5791_channels, ptr @ad5791_ext_info, ptr @.str.8, ptr @.str.9, ptr @ad5791_powerdown_mode_enum, ptr @.str.10, ptr @.str.11, ptr @ad5791_powerdown_modes, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5791_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5791_id to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5791_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5791_chip_info_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5791_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5791_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5791_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5791_powerdown_mode_enum to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad5791_powerdown_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5791_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ad5791_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ad5791_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ad5791_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5791_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i165 = alloca %struct.spi_message, align 4
  %t.i.i166 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 256) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call4 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #8
  %reg_vdd = getelementptr inbounds %struct.ad5791_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg_vdd to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %reg_vdd, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end17_crit_edge, label %if.then7

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then7:                                         ; preds = %if.end
  %call9 = tail call i32 @regulator_enable(ptr noundef %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  %5 = ptrtoint ptr %reg_vdd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_vdd, align 4
  %call14 = tail call i32 @regulator_get_voltage(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end12.error_disable_reg_pos_crit_edge, label %if.end12.if.end17_crit_edge

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end12.error_disable_reg_pos_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_disable_reg_pos

if.end17:                                         ; preds = %if.end12.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %pos_voltage_uv.0 = phi i32 [ 0, %if.end.if.end17_crit_edge ], [ %call14, %if.end12.if.end17_crit_edge ]
  %call19 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.2) #8
  %reg_vss = getelementptr inbounds %struct.ad5791_state, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %reg_vss to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call19, ptr %reg_vss, align 8
  %cmp.i162 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %if.end17.if.end33_crit_edge, label %if.then22

if.end17.if.end33_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then22:                                        ; preds = %if.end17
  %call24 = tail call i32 @regulator_enable(ptr noundef %call19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then22.error_disable_reg_pos_crit_edge

if.then22.error_disable_reg_pos_crit_edge:        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_disable_reg_pos

if.end27:                                         ; preds = %if.then22
  %8 = ptrtoint ptr %reg_vss to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_vss, align 8
  %call29 = tail call i32 @regulator_get_voltage(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end27.error_disable_reg_neg_crit_edge, label %if.end33thread-pre-split

if.end27.error_disable_reg_neg_crit_edge:         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_disable_reg_neg

if.end33thread-pre-split:                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %reg_vss to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %reg_vss, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.end33thread-pre-split, %if.end17.if.end33_crit_edge
  %11 = phi ptr [ %.pr, %if.end33thread-pre-split ], [ %call19, %if.end17.if.end33_crit_edge ]
  %neg_voltage_uv.0 = phi i32 [ %call29, %if.end33thread-pre-split ], [ 0, %if.end17.if.end33_crit_edge ]
  %pwr_down = getelementptr inbounds %struct.ad5791_state, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %pwr_down to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %pwr_down, align 32
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spi, ptr %3, align 128
  %cmp.i163 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.end33.if.else_crit_edge, label %land.lhs.true

if.end33.if.else_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end33
  %14 = ptrtoint ptr %reg_vdd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_vdd, align 4
  %cmp.i164 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %land.lhs.true.if.else_crit_edge, label %if.then39

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then39:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %add = add nuw i32 %neg_voltage_uv.0, %pos_voltage_uv.0
  %div = sdiv i32 %add, 1000
  %conv = trunc i32 %div to i16
  %vref_mv = getelementptr inbounds %struct.ad5791_state, ptr %3, i32 0, i32 4
  %16 = ptrtoint ptr %vref_mv to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %vref_mv, align 16
  %div40181 = udiv i32 %neg_voltage_uv.0, 1000
  %vref_neg_mv = getelementptr inbounds %struct.ad5791_state, ptr %3, i32 0, i32 5
  %17 = ptrtoint ptr %vref_neg_mv to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div40181, ptr %vref_neg_mv, align 4
  br label %if.end55

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end33.if.else_crit_edge
  %tobool41.not = icmp eq ptr %1, null
  br i1 %tobool41.not, label %do.end, label %if.then42

if.then42:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 2
  %vref_neg_mv44 = getelementptr inbounds %struct.ad5791_platform_data, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %vref_neg_mv44 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vref_neg_mv44, align 2
  %add46 = add i16 %21, %19
  %vref_mv48 = getelementptr inbounds %struct.ad5791_state, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %vref_mv48 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %add46, ptr %vref_mv48, align 16
  %23 = load i16, ptr %vref_neg_mv44, align 2
  %conv50 = zext i16 %23 to i32
  %vref_neg_mv51 = getelementptr inbounds %struct.ad5791_state, ptr %3, i32 0, i32 5
  %24 = ptrtoint ptr %vref_neg_mv51 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv50, ptr %vref_neg_mv51, align 4
  br label %if.end55

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.3) #11
  br label %if.end55

if.end55:                                         ; preds = %do.end, %if.then42, %if.then39
  %data.i = getelementptr inbounds %struct.ad5791_state, ptr %3, i32 0, i32 10
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4194308, ptr %data.i, align 128
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 128
  %arrayidx4.i = getelementptr [4 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %28 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 92)
  %30 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx4.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %32 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %33 = call ptr @memset(ptr %32, i32 0, i32 40)
  %34 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %36 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end55.ad5791_spi_write.exit_crit_edge

if.end55.ad5791_spi_write.exit_crit_edge:         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5791_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %41 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad5791_spi_write.exit

ad5791_spi_write.exit:                            ; preds = %if.end.i.i.i.i.i.i.i, %if.end55.ad5791_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool57.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool57.not, label %if.end59, label %ad5791_spi_write.exit.error_disable_reg_neg_crit_edge

ad5791_spi_write.exit.error_disable_reg_neg_crit_edge: ; preds = %ad5791_spi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_disable_reg_neg

if.end59:                                         ; preds = %ad5791_spi_write.exit
  %call60 = call ptr @spi_get_device_id(ptr noundef %spi) #8
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call60, i32 0, i32 1
  %42 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [4 x %struct.ad5791_chip_info], ptr @ad5791_chip_info_tbl, i32 0, i32 %43
  %chip_info = getelementptr inbounds %struct.ad5791_state, ptr %3, i32 0, i32 3
  %44 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx, ptr %chip_info, align 4
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx, align 4
  %vref_mv62 = getelementptr inbounds %struct.ad5791_state, ptr %3, i32 0, i32 4
  %47 = ptrtoint ptr %vref_mv62 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vref_mv62, align 16
  %conv63 = zext i16 %48 to i32
  %call64 = call i32 %46(i32 noundef %conv63) #8
  %shl = shl i32 %call64, 6
  %tobool65.not = icmp eq ptr %1, null
  br i1 %tobool65.not, label %if.end59.land.end_crit_edge, label %land.rhs

if.end59.land.end_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %use_rbuf_gain2 = getelementptr inbounds %struct.ad5791_platform_data, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %use_rbuf_gain2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %use_rbuf_gain2, align 2, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool66.not = icmp eq i8 %50, 0
  %phi.sel = select i1 %tobool66.not, i32 2, i32 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end59.land.end_crit_edge
  %51 = phi i32 [ 2, %if.end59.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %or = or i32 %51, %shl
  %or68 = or i32 %or, 16
  %ctrl = getelementptr inbounds %struct.ad5791_state, ptr %3, i32 0, i32 6
  %52 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or68, ptr %ctrl, align 8
  %or71 = and i32 %or, 1048514
  %or1.i = or i32 %or71, 2097180
  %53 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or1.i, ptr %data.i, align 128
  %54 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i166) #8
  %56 = getelementptr inbounds i8, ptr %t.i.i166, i32 4
  %57 = call ptr @memset(ptr %56, i32 0, i32 92)
  %58 = ptrtoint ptr %t.i.i166 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %arrayidx4.i, ptr %t.i.i166, align 4
  %len1.i.i169 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i166, i32 0, i32 2
  %59 = ptrtoint ptr %len1.i.i169 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3, ptr %len1.i.i169, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i165) #8
  %60 = getelementptr inbounds i8, ptr %msg.i.i.i165, i32 8
  %61 = call ptr @memset(ptr %60, i32 0, i32 40)
  %62 = ptrtoint ptr %msg.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %msg.i.i.i165, ptr %msg.i.i.i165, align 4
  %prev.i.i.i.i.i.i.i170 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i165, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i.i.i.i.i170 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %msg.i.i.i165, ptr %prev.i.i.i.i.i.i.i170, align 4
  %resources.i.i.i.i.i.i171 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i165, i32 0, i32 10
  %64 = ptrtoint ptr %resources.i.i.i.i.i.i171 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %resources.i.i.i.i.i.i171, ptr %resources.i.i.i.i.i.i171, align 4
  %prev.i2.i.i.i.i.i.i172 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i165, i32 0, i32 10, i32 1
  %65 = ptrtoint ptr %prev.i2.i.i.i.i.i.i172 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %resources.i.i.i.i.i.i171, ptr %prev.i2.i.i.i.i.i.i172, align 4
  %transfer_list.i.i.i.i.i173 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i166, i32 0, i32 18
  %call.i.i.i.i.i.i.i174 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i173, ptr noundef nonnull %msg.i.i.i165, ptr noundef nonnull %msg.i.i.i165) #8
  br i1 %call.i.i.i.i.i.i.i174, label %if.end.i.i.i.i.i.i.i176, label %land.end.ad5791_spi_write.exit178_crit_edge

land.end.ad5791_spi_write.exit178_crit_edge:      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5791_spi_write.exit178

if.end.i.i.i.i.i.i.i176:                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %prev.i.i.i.i.i.i.i170 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %transfer_list.i.i.i.i.i173, ptr %prev.i.i.i.i.i.i.i170, align 4
  %67 = ptrtoint ptr %transfer_list.i.i.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i.i.i165, ptr %transfer_list.i.i.i.i.i173, align 4
  %prev3.i.i.i.i.i.i.i175 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i166, i32 0, i32 18, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i.i.i.i.i175 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i.i165, ptr %prev3.i.i.i.i.i.i.i175, align 4
  %69 = ptrtoint ptr %msg.i.i.i165 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %transfer_list.i.i.i.i.i173, ptr %msg.i.i.i165, align 4
  br label %ad5791_spi_write.exit178

ad5791_spi_write.exit178:                         ; preds = %if.end.i.i.i.i.i.i.i176, %land.end.ad5791_spi_write.exit178_crit_edge
  %call.i.i.i177 = call i32 @spi_sync(ptr noundef %55, ptr noundef nonnull %msg.i.i.i165) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i165) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i166) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i177)
  %tobool73.not = icmp eq i32 %call.i.i.i177, 0
  br i1 %tobool73.not, label %if.end75, label %ad5791_spi_write.exit178.error_disable_reg_neg_crit_edge

ad5791_spi_write.exit178.error_disable_reg_neg_crit_edge: ; preds = %ad5791_spi_write.exit178
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_disable_reg_neg

if.end75:                                         ; preds = %ad5791_spi_write.exit178
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %70 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call, ptr %driver_data.i.i, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %71 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @ad5791_info, ptr %info, align 8
  %72 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1, ptr %call, align 8
  %call76 = call ptr @spi_get_device_id(ptr noundef %spi) #8
  %driver_data77 = getelementptr inbounds %struct.spi_device_id, ptr %call76, i32 0, i32 1
  %73 = ptrtoint ptr %driver_data77 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %driver_data77, align 4
  %arrayidx78 = getelementptr [4 x %struct.iio_chan_spec], ptr @ad5791_channels, i32 0, i32 %74
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %75 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %arrayidx78, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %76 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %num_channels, align 4
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %3, align 128
  %call80 = call ptr @spi_get_device_id(ptr noundef %78) #8
  %name81 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %79 = ptrtoint ptr %name81 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call80, ptr %name81, align 8
  %call82 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end75.cleanup_crit_edge, label %if.end75.error_disable_reg_neg_crit_edge

if.end75.error_disable_reg_neg_crit_edge:         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_disable_reg_neg

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_disable_reg_neg:                            ; preds = %if.end75.error_disable_reg_neg_crit_edge, %ad5791_spi_write.exit178.error_disable_reg_neg_crit_edge, %ad5791_spi_write.exit.error_disable_reg_neg_crit_edge, %if.end27.error_disable_reg_neg_crit_edge
  %ret.0 = phi i32 [ %call.i.i.i, %ad5791_spi_write.exit.error_disable_reg_neg_crit_edge ], [ %call.i.i.i177, %ad5791_spi_write.exit178.error_disable_reg_neg_crit_edge ], [ %call82, %if.end75.error_disable_reg_neg_crit_edge ], [ %call29, %if.end27.error_disable_reg_neg_crit_edge ]
  %80 = ptrtoint ptr %reg_vss to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_vss, align 8
  %cmp.i179 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %error_disable_reg_neg.error_disable_reg_pos_crit_edge, label %if.then88

error_disable_reg_neg.error_disable_reg_pos_crit_edge: ; preds = %error_disable_reg_neg
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_disable_reg_pos

if.then88:                                        ; preds = %error_disable_reg_neg
  call void @__sanitizer_cov_trace_pc() #10
  %call90 = call i32 @regulator_disable(ptr noundef %81) #8
  br label %error_disable_reg_pos

error_disable_reg_pos:                            ; preds = %if.then88, %error_disable_reg_neg.error_disable_reg_pos_crit_edge, %if.then22.error_disable_reg_pos_crit_edge, %if.end12.error_disable_reg_pos_crit_edge
  %ret.1 = phi i32 [ %ret.0, %error_disable_reg_neg.error_disable_reg_pos_crit_edge ], [ %ret.0, %if.then88 ], [ %call24, %if.then22.error_disable_reg_pos_crit_edge ], [ %call14, %if.end12.error_disable_reg_pos_crit_edge ]
  %82 = ptrtoint ptr %reg_vdd to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_vdd, align 4
  %cmp.i180 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %error_disable_reg_pos.cleanup_crit_edge, label %if.then94

error_disable_reg_pos.cleanup_crit_edge:          ; preds = %error_disable_reg_pos
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then94:                                        ; preds = %error_disable_reg_pos
  call void @__sanitizer_cov_trace_pc() #10
  %call96 = call i32 @regulator_disable(ptr noundef %83) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then94, %error_disable_reg_pos.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.then7.cleanup_crit_edge ], [ 0, %if.end75.cleanup_crit_edge ], [ %ret.1, %if.then94 ], [ %ret.1, %error_disable_reg_pos.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5791_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #8
  %reg_vdd = getelementptr inbounds %struct.ad5791_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg_vdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_vdd, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @regulator_disable(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg_vss = getelementptr inbounds %struct.ad5791_state, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %reg_vss to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_vss, align 8
  %cmp.i14 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i14, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 @regulator_disable(ptr noundef %7) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad5780_get_lin_comp(i32 noundef %span) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %span)
  %cmp = icmp ult i32 %span, 10001
  %. = select i1 %cmp, i32 0, i32 12
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad5791_get_lin_comp(i32 noundef %span) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %span)
  %cmp = icmp ult i32 %span, 10001
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12001, i32 %span)
  %cmp1 = icmp ult i32 %span, 12001
  br i1 %cmp1, label %if.else.return_crit_edge, label %if.else3

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 16001, i32 %span)
  %cmp4 = icmp ult i32 %span, 16001
  br i1 %cmp4, label %if.else3.return_crit_edge, label %if.else6

if.else3.return_crit_edge:                        ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else6:                                         ; preds = %if.else3
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 19001, i32 %span)
  %cmp7 = icmp ult i32 %span, 19001
  %. = select i1 %cmp7, i32 3, i32 12
  br label %return

return:                                           ; preds = %if.else6, %if.else3.return_crit_edge, %if.else.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ 1, %if.else.return_crit_edge ], [ 2, %if.else3.return_crit_edge ], [ %., %if.else6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5791_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfers.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfers.i) #8
  %5 = getelementptr inbounds i8, ptr %xfers.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 188)
  %data.i = getelementptr inbounds %struct.ad5791_state, ptr %1, i32 0, i32 10
  %arrayidx1.i = getelementptr [4 x i8], ptr %data.i, i32 0, i32 1
  %7 = ptrtoint ptr %xfers.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx1.i, ptr %xfers.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 2
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %len.i, align 4
  %cs_change.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 7
  %9 = ptrtoint ptr %cs_change.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 64, ptr %cs_change.i, align 4
  %bits_per_word.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 8
  %10 = ptrtoint ptr %bits_per_word.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %bits_per_word.i, align 1
  %arrayinit.element.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1
  %arrayidx4.i = getelementptr %struct.ad5791_state, ptr %1, i32 0, i32 10, i32 1
  %arrayidx5.i = getelementptr [4 x i8], ptr %arrayidx4.i, i32 0, i32 1
  %11 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx5.i, ptr %arrayinit.element.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 1
  %arrayidx7.i = getelementptr %struct.ad5791_state, ptr %1, i32 0, i32 10, i32 2
  %arrayidx8.i = getelementptr [4 x i8], ptr %arrayidx7.i, i32 0, i32 1
  %12 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx8.i, ptr %rx_buf.i, align 4
  %len9.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 2
  %13 = ptrtoint ptr %len9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %len9.i, align 4
  %bits_per_word14.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 8
  %14 = ptrtoint ptr %bits_per_word14.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %bits_per_word14.i, align 1
  %conv.i = shl i32 %4, 20
  %shl.i = and i32 %conv.i, 258998272
  %or.i = or i32 %shl.i, 8388608
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %data.i, align 128
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %arrayidx4.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %19 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %sw.bb.spi_message_add_tail.exit.i.i.i_crit_edge

sw.bb.spi_message_add_tail.exit.i.i.i_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %sw.bb.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 18
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %30, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.ad5791_spi_read.exit_crit_edge

spi_message_add_tail.exit.i.i.i.ad5791_spi_read.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5791_spi_read.exit

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers.i, i32 1, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i.i.i.1.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %30, align 4
  br label %ad5791_spi_read.exit

ad5791_spi_read.exit:                             ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.ad5791_spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %18, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  %35 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx7.i, align 8
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %ad5791_spi_read.exit.cleanup_crit_edge

ad5791_spi_read.exit.cleanup_crit_edge:           ; preds = %ad5791_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ad5791_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %36, 1048575
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and, ptr %val, align 4
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %39 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %shift, align 1
  %conv2 = zext i8 %40 to i32
  %shr = lshr i32 %and, %conv2
  store i32 %shr, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vref_mv = getelementptr inbounds %struct.ad5791_state, ptr %1, i32 0, i32 4
  %41 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vref_mv, align 16
  %conv4 = zext i16 %42 to i32
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv4, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %44 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %realbits, align 1
  %conv6 = zext i8 %45 to i32
  %notmask = shl nsw i32 -1, %conv6
  %sub = xor i32 %notmask, -1
  %46 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub, ptr %val2, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  %vref_neg_mv = getelementptr inbounds %struct.ad5791_state, ptr %1, i32 0, i32 5
  %47 = ptrtoint ptr %vref_neg_mv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vref_neg_mv, align 4
  %conv8 = zext i32 %48 to i64
  %realbits10 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %realbits10 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %realbits10, align 1
  %sh_prom = zext i8 %50 to i64
  %shl12 = shl i64 %conv8, %sh_prom
  %vref_mv13 = getelementptr inbounds %struct.ad5791_state, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %vref_mv13 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vref_mv13, align 16
  %conv14 = zext i16 %52 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl12)
  %cmp189 = icmp ult i64 %shl12, 4294967296
  br i1 %cmp189, label %if.then193, label %if.else199, !prof !62

if.then193:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %conv194 = trunc i64 %shl12 to i32
  %div197 = udiv i32 %conv194, %conv14
  br label %if.end203

if.else199:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  %53 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv14, i64 %shl12) #12, !srcloc !63
  %asmresult1.i = extractvalue { i64, i64 } %53, 1
  %extract.t324 = trunc i64 %asmresult1.i to i32
  br label %if.end203

if.end203:                                        ; preds = %if.else199, %if.then193
  %val64.0.off0 = phi i32 [ %div197, %if.then193 ], [ %extract.t324, %if.else199 ]
  %conv206 = sub i32 0, %val64.0.off0
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv206, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end203, %sw.bb3, %if.end, %ad5791_spi_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end203 ], [ 10, %sw.bb3 ], [ 1, %if.end ], [ %call.i.i, %ad5791_spi_read.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5791_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %realbits, align 1
  %conv = zext i8 %3 to i32
  %sub1 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub1
  %and2 = and i32 %shr, %val
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shift, align 1
  %conv4 = zext i8 %5 to i32
  %shl = shl i32 %and2, %conv4
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %address, align 4
  %conv.i = shl i32 %7, 20
  %shl.i = and i32 %conv.i, 267386880
  %and.i = and i32 %shl, 1048575
  %or1.i = or i32 %and.i, %shl.i
  %data.i = getelementptr inbounds %struct.ad5791_state, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or1.i, ptr %data.i, align 128
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  %arrayidx4.i = getelementptr [4 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %11 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 92)
  %13 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx4.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %15 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %sw.bb.ad5791_spi_write.exit_crit_edge

sw.bb.ad5791_spi_write.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5791_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad5791_spi_write.exit

ad5791_spi_write.exit:                            ; preds = %if.end.i.i.i.i.i.i.i, %sw.bb.ad5791_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ad5791_spi_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %ad5791_spi_write.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5791_read_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %pwr_down = getelementptr inbounds %struct.ad5791_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwr_down, align 32, !range !61
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %4) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ad5791_write_dac_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %pwr_down = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pwr_down) #8
  %0 = ptrtoint ptr %pwr_down to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pwr_down, align 1, !annotation !64
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %1 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv.i, align 8
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %pwr_down) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pwr_down to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pwr_down, align 1, !range !61
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl = getelementptr inbounds %struct.ad5791_state, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctrl, align 8
  %and = and i32 %6, -13
  store i32 %and, ptr %ctrl, align 8
  br label %if.end14

if.else:                                          ; preds = %if.end
  %pwr_down_mode = getelementptr inbounds %struct.ad5791_state, ptr %2, i32 0, i32 7
  %7 = ptrtoint ptr %pwr_down_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pwr_down_mode, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %8, label %if.else.if.end14_crit_edge [
    i32 0, label %if.then4
    i32 1, label %if.then9
  ]

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl5 = getelementptr inbounds %struct.ad5791_state, ptr %2, i32 0, i32 6
  %10 = ptrtoint ptr %ctrl5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl5, align 8
  %or = or i32 %11, 4
  store i32 %or, ptr %ctrl5, align 8
  br label %if.end14

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl10 = getelementptr inbounds %struct.ad5791_state, ptr %2, i32 0, i32 6
  %12 = ptrtoint ptr %ctrl10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctrl10, align 8
  %or11 = or i32 %13, 8
  store i32 %or11, ptr %ctrl10, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.then4, %if.else.if.end14_crit_edge, %if.then3
  %pwr_down16 = getelementptr inbounds %struct.ad5791_state, ptr %2, i32 0, i32 8
  %14 = ptrtoint ptr %pwr_down16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %4, ptr %pwr_down16, align 32
  %ctrl17 = getelementptr inbounds %struct.ad5791_state, ptr %2, i32 0, i32 6
  %15 = ptrtoint ptr %ctrl17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctrl17, align 8
  %and.i = and i32 %16, 1048575
  %or1.i = or i32 %and.i, 2097152
  %data.i = getelementptr inbounds %struct.ad5791_state, ptr %2, i32 0, i32 10
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or1.i, ptr %data.i, align 128
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 128
  %arrayidx4.i = getelementptr [4 x i8], ptr %data.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %20 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 92)
  %22 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx4.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %24 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 40)
  %26 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end14.ad5791_spi_write.exit_crit_edge

if.end14.ad5791_spi_write.exit_crit_edge:         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %ad5791_spi_write.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ad5791_spi_write.exit

ad5791_spi_write.exit:                            ; preds = %if.end.i.i.i.i.i.i.i, %if.end14.ad5791_spi_write.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool19.not = icmp eq i32 %call.i.i.i, 0
  %len.call18 = select i1 %tobool19.not, i32 %len, i32 %call.i.i.i
  br label %cleanup

cleanup:                                          ; preds = %ad5791_spi_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.call18, %ad5791_spi_write.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pwr_down) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad5791_set_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %pwr_down_mode = getelementptr inbounds %struct.ad5791_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pwr_down_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mode, ptr %pwr_down_mode, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ad5791_get_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %pwr_down_mode = getelementptr inbounds %struct.ad5791_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %pwr_down_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pwr_down_mode, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_ad5791__290_464_ad5791_driver_init6, !1, !"__initcall__kmod_ad5791__290_464_ad5791_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ad5791.c", i32 464, i32 1}
!2 = !{ptr @__exitcall_ad5791_driver_exit, !1, !"__exitcall_ad5791_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ad5791.c", i32 466, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ad5791.c", i32 467, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ad5791.c", i32 468, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ad5791.c", i32 458, i32 14}
!12 = !{ptr @ad5791_driver, !13, !"ad5791_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ad5791.c", i32 456, i32 26}
!14 = !{ptr @ad5791_id, !15, !"ad5791_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ad5791.c", i32 446, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ad5791.c", i32 353, i32 46}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/dac/ad5791.c", i32 366, i32 46}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/dac/ad5791.c", i32 389, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ad5791_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ad5791_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ad5791_chip_info_tbl, !29, !"ad5791_chip_info_tbl", i1 false, i1 false}
!29 = !{!"../drivers/iio/dac/ad5791.c", i32 231, i32 38}
!30 = !{ptr @ad5791_info, !31, !"ad5791_info", i1 false, i1 false}
!31 = !{!"../drivers/iio/dac/ad5791.c", i32 337, i32 30}
!32 = !{ptr @ad5791_channels, !33, !"ad5791_channels", i1 false, i1 false}
!33 = !{!"../drivers/iio/dac/ad5791.c", i32 310, i32 35}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/dac/ad5791.c", i32 281, i32 11}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/dac/ad5791.c", i32 286, i32 2}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/dac/ad5791.c", i32 288, i32 2}
!40 = !{ptr @ad5791_ext_info, !41, !"ad5791_ext_info", i1 false, i1 false}
!41 = !{!"../drivers/iio/dac/ad5791.c", i32 279, i32 44}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/dac/ad5791.c", i32 180, i32 25}
!44 = !{ptr @ad5791_powerdown_mode_enum, !45, !"ad5791_powerdown_mode_enum", i1 false, i1 false}
!45 = !{!"../drivers/iio/dac/ad5791.c", i32 168, i32 30}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/dac/ad5791.c", i32 146, i32 2}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/dac/ad5791.c", i32 147, i32 2}
!50 = !{ptr @ad5791_powerdown_modes, !51, !"ad5791_powerdown_modes", i1 false, i1 false}
!51 = !{!"../drivers/iio/dac/ad5791.c", i32 145, i32 27}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i8 0, i8 2}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{i64 2148635327, i64 2148635607, i64 2148635941, i64 2148636275}
!64 = !{!"auto-init"}
