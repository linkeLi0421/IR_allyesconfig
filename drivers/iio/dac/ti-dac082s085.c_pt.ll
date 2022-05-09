; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/ti-dac082s085.c_pt.bc'
source_filename = "../drivers/iio/dac/ti-dac082s085.c"
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
%struct.ti_dac_spec = type { i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.ti_dac_chip = type { %struct.mutex, ptr, %struct.spi_message, %struct.spi_transfer, [4 x i16], i8, i8, i8, [125 x i8], [2 x i8], [126 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_ti_dac082s085__290_359_ti_dac_driver_init6 = internal global ptr @ti_dac_driver_init, section ".initcall6.init", align 4
@ti_dac_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ti_dac_spi_id, ptr @ti_dac_probe, ptr @ti_dac_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_dac_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ti_dac_driver_exit = internal global ptr @ti_dac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [52 x i8] c"ti_dac082s085.author=Lukas Wunner <lukas@wunner.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [79 x i8] c"ti_dac082s085.description=Texas Instruments 8/10/12-bit 2/4-channel DAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [49 x i8] c"ti_dac082s085.file=drivers/iio/dac/ti-dac082s085\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [29 x i8] c"ti_dac082s085.license=GPL v2\00", section ".modinfo", align 1
@ti_dac_spi_id = internal constant { [7 x %struct.spi_device_id], [36 x i8] } { [7 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"dac082s085\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"dac102s085\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"dac122s085\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"dac084s085\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id { [32 x i8] c"dac104s085\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.spi_device_id { [32 x i8] c"dac124s085\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti-dac082s085\00", [18 x i8] zeroinitializer }, align 32
@ti_dac_of_id = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dac082s085\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dac102s085\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dac122s085\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dac084s085\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dac104s085\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dac124s085\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@ti_dac_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @ti_dac_read_raw, ptr null, ptr null, ptr @ti_dac_write_raw, ptr null, ptr @ti_dac_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ti_dac_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ti_dac_ext_info, ptr null, ptr @.compoundliteral, i8 96 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 1, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ti_dac_ext_info, ptr null, ptr @.compoundliteral.8, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 2, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ti_dac_ext_info, ptr null, ptr @.compoundliteral.9, i8 96 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 3, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @ti_dac_ext_info, ptr null, ptr @.compoundliteral.10, i8 96 }], [64 x i8] zeroinitializer }, align 32
@ti_dac_spec = internal constant { [6 x %struct.ti_dac_spec], [20 x i8] } { [6 x %struct.ti_dac_spec] [%struct.ti_dac_spec { i8 2, i8 8 }, %struct.ti_dac_spec { i8 2, i8 10 }, %struct.ti_dac_spec { i8 2, i8 12 }, %struct.ti_dac_spec { i8 4, i8 8 }, %struct.ti_dac_spec { i8 4, i8 10 }, %struct.ti_dac_spec { i8 4, i8 12 }], [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ti_dac_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ti_dac->lock\00", [18 x i8] zeroinitializer }, align 32
@ti_dac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 300, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize outputs to 0\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti_dac_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/iio/dac/ti-dac082s085.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_dac_probe._entry_ptr = internal global ptr @ti_dac_probe._entry, section ".printk_index", align 4
@ti_dac_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.11, i32 1, ptr @ti_dac_read_powerdown, ptr @ti_dac_write_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.12, i32 1, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @ti_dac_powerdown_mode to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.13, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @ti_dac_powerdown_mode to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"A\00", [30 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"D\00", [30 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powerdown_mode\00", [17 x i8] zeroinitializer }, align 32
@ti_dac_powerdown_mode = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @ti_dac_powerdown_modes, i32 3, ptr @ti_dac_set_powerdown_mode, ptr @ti_dac_get_powerdown_mode }, [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"powerdown_mode_available\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@ti_dac_powerdown_modes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17], [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"2.5kohm_to_gnd\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"100kohm_to_gnd\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"three_state\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"ti_dac_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 350, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant [14 x i8] c"ti_dac_spi_id\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 339, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 352, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [13 x i8] c"ti_dac_of_id\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 328, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"ti_dac_info\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 254, i32 30 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"ti_dac_channels\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 179, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"ti_dac_spec\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 28, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 288, i32 41 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 296, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 300, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [16 x i8] c"ti_dac_ext_info\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 155, i32 44 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 157, i32 14 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 162, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"ti_dac_powerdown_mode\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 110, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 163, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 124, i32 25 }
@___asan_gen_.88 = private unnamed_addr constant [23 x i8] c"ti_dac_powerdown_modes\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 75, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 76, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 76, i32 20 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [35 x i8] c"../drivers/iio/dac/ti-dac082s085.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 76, i32 38 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ti_dac_driver_exit, ptr @__initcall__kmod_ti_dac082s085__290_359_ti_dac_driver_init6, ptr @ti_dac_driver_exit, ptr @ti_dac_probe._entry, ptr @ti_dac_probe._entry_ptr, ptr @ti_dac_driver, ptr @ti_dac_spi_id, ptr @.str, ptr @ti_dac_of_id, ptr @ti_dac_info, ptr @ti_dac_channels, ptr @ti_dac_spec, ptr @.str.1, ptr @ti_dac_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ti_dac_ext_info, ptr @.compoundliteral, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.str.12, ptr @ti_dac_powerdown_mode, ptr @.str.13, ptr @.str.14, ptr @ti_dac_powerdown_modes, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dac_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dac_spi_id to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dac_of_id to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dac_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dac_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dac_spec to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dac_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dac_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dac_powerdown_mode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dac_powerdown_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_dac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ti_dac_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_dac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ti_dac_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_dac_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 512) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ti_dac_info, ptr %info, align 8
  %modalias = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 11
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %modalias, ptr %name, align 8
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ti_dac_channels, ptr %channels, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %buf = getelementptr inbounds %struct.ti_dac_chip, ptr %6, i32 0, i32 9
  %xfer = getelementptr inbounds %struct.ti_dac_chip, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf, ptr %xfer, align 8
  %len = getelementptr inbounds %struct.ti_dac_chip, ptr %6, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %len, align 8
  %mesg = getelementptr inbounds %struct.ti_dac_chip, ptr %6, i32 0, i32 2
  %9 = getelementptr inbounds %struct.ti_dac_chip, ptr %6, i32 0, i32 2, i32 1
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %mesg to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %mesg, ptr %mesg, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.ti_dac_chip, ptr %6, i32 0, i32 2, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mesg, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.ti_dac_chip, ptr %6, i32 0, i32 2, i32 10
  %13 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.ti_dac_chip, ptr %6, i32 0, i32 2, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.ti_dac_chip, ptr %6, i32 0, i32 3, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %mesg, ptr noundef %mesg) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.spi_message_init_with_transfers.exit_crit_edge

if.end.spi_message_init_with_transfers.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_init_with_transfers.exit

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mesg, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.ti_dac_chip, ptr %6, i32 0, i32 3, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %mesg, ptr %prev3.i.i.i.i, align 4
  %18 = ptrtoint ptr %mesg to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i, ptr %mesg, align 4
  br label %spi_message_init_with_transfers.exit

spi_message_init_with_transfers.exit:             ; preds = %if.end.i.i.i.i, %if.end.spi_message_init_with_transfers.exit_crit_edge
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %spi, ptr %9, align 8
  %call7 = tail call ptr @spi_get_device_id(ptr noundef %spi) #7
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call7, i32 0, i32 1
  %20 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [6 x %struct.ti_dac_spec], ptr @ti_dac_spec, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %23 to i32
  %num_channels8 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %24 = ptrtoint ptr %num_channels8 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv, ptr %num_channels8, align 4
  %resolution = getelementptr [6 x %struct.ti_dac_spec], ptr @ti_dac_spec, i32 0, i32 %21, i32 1
  %25 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %resolution, align 1
  %resolution9 = getelementptr inbounds %struct.ti_dac_chip, ptr %6, i32 0, i32 7
  %27 = ptrtoint ptr %resolution9 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %resolution9, align 2
  %call10 = tail call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.1) #7
  %vref = getelementptr inbounds %struct.ti_dac_chip, ptr %6, i32 0, i32 1
  %28 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call10, ptr %vref, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %spi_message_init_with_transfers.exit
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %spi_message_init_with_transfers.exit
  %call18 = tail call i32 @regulator_enable(ptr noundef %call10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %do.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end16
  tail call void @__mutex_init(ptr noundef %6, ptr noundef nonnull @.str.2, ptr noundef nonnull @ti_dac_probe.__key) #7
  %30 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 32, ptr %buf, align 128
  %arrayidx11.i = getelementptr %struct.ti_dac_chip, ptr %6, i32 0, i32 9, i32 1
  %31 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx11.i, align 1
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %9, align 8
  %call.i = tail call i32 @spi_sync(ptr noundef %33, ptr noundef %mesg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %if.end28, label %do.end27

do.end27:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.3) #10
  br label %err

if.end28:                                         ; preds = %do.body
  %call29 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end28.err_crit_edge

if.end28.err_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err:                                              ; preds = %if.end28.err_crit_edge, %do.end27
  %ret.0 = phi i32 [ %call.i, %do.end27 ], [ %call29, %if.end28.err_crit_edge ]
  tail call void @mutex_destroy(ptr noundef %6) #7
  %34 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vref, align 4
  %call35 = tail call i32 @regulator_disable(ptr noundef %35) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end28.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %if.then13 ], [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_dac_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #7
  tail call void @mutex_destroy(ptr noundef %3) #7
  %vref = getelementptr inbounds %struct.ti_dac_chip, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vref, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_dac_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ti_dac_chip, ptr %1, i32 0, i32 4, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %vref = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vref, align 4
  %call3 = tail call i32 @regulator_get_voltage(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %sw.bb2.cleanup_crit_edge, label %if.end

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %div13 = udiv i32 %call3, 1000
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div13, ptr %val, align 4
  %resolution = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %resolution, align 2
  %conv5 = zext i8 %12 to i32
  %13 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv5, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %sw.bb2.cleanup_crit_edge ], [ 11, %if.end ], [ 1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_dac_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ti_dac_chip, ptr %1, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %val)
  %cmp = icmp eq i32 %conv, %val
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %resolution = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %resolution, align 2
  %conv3 = zext i8 %7 to i32
  %shl = shl nuw i32 1, %conv3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %val)
  %cmp4.not = icmp sle i32 %shl, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp6 = icmp slt i32 %val, 0
  %or.cond = or i1 %cmp6, %cmp4.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %powerdown = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %powerdown to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %powerdown, align 128, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end11, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end9
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %10 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel, align 4
  %.tr = trunc i32 %11 to i8
  %12 = shl i8 %.tr, 6
  %13 = ptrtoint ptr %resolution to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %resolution, align 2
  %sub.i = sub i8 12, %14
  %conv3.i = and i32 %val, 65535
  %conv4.i = zext i8 %sub.i to i32
  %sub5.i = sub nsw i32 8, %conv4.i
  %shr.i = lshr i32 %conv3.i, %sub5.i
  %15 = trunc i32 %shr.i to i8
  %conv14 = or i8 %12, %15
  %conv6.i = or i8 %conv14, 16
  %buf.i = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6.i, ptr %buf.i, align 128
  %shl.i = shl i32 %val, %conv4.i
  %conv9.i = trunc i32 %shl.i to i8
  %arrayidx11.i = getelementptr %struct.ti_dac_chip, ptr %1, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv9.i, ptr %arrayidx11.i, align 1
  %mesg.i = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 2
  %spi.i = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi.i, align 8
  %call.i = tail call i32 @spi_sync(ptr noundef %19, ptr noundef %mesg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.then18, label %if.end11.if.end23_crit_edge

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then18:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %conv15 = trunc i32 %val to i16
  %20 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel, align 4
  %arrayidx22 = getelementptr %struct.ti_dac_chip, ptr %1, i32 0, i32 4, i32 %21
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv15, ptr %arrayidx22, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end11.if.end23_crit_edge
  tail call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -16, %if.end9.cleanup_crit_edge ], [ %call.i, %if.end23 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ti_dac_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_dac_read_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %powerdown = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %powerdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powerdown, align 128, !range !66
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %4) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_dac_write_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %powerdown = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %powerdown) #7
  %2 = ptrtoint ptr %powerdown to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %powerdown, align 1, !annotation !67
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %powerdown) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %powerdown2 = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %powerdown2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %powerdown2, align 128, !range !66
  %5 = ptrtoint ptr %powerdown to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %powerdown, align 1, !range !66
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp = icmp eq i8 %4, %6
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %7 = ptrtoint ptr %powerdown to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %powerdown, align 1, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %powerdown_mode = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %powerdown_mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %powerdown_mode, align 1
  %add = shl i8 %10, 6
  %or = add i8 %add, 112
  %buf.i = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %or, ptr %buf.i, align 128
  br label %if.end15

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %val = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %val, align 8
  %resolution.i38 = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %resolution.i38 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %resolution.i38, align 2
  %sub.i39 = sub i8 12, %15
  %conv3.i = zext i16 %13 to i32
  %conv4.i40 = zext i8 %sub.i39 to i32
  %sub5.i41 = sub nsw i32 8, %conv4.i40
  %shr.i = lshr i32 %conv3.i, %sub5.i41
  %16 = trunc i32 %shr.i to i8
  %conv6.i = or i8 %16, 16
  %buf.i42 = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %buf.i42 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv6.i, ptr %buf.i42, align 128
  %shl.i = shl i32 %conv3.i, %conv4.i40
  %conv9.i = trunc i32 %shl.i to i8
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then10
  %conv9.i.sink = phi i8 [ %conv9.i, %if.else ], [ 0, %if.then10 ]
  %arrayidx11.i43 = getelementptr %struct.ti_dac_chip, ptr %1, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %arrayidx11.i43 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv9.i.sink, ptr %arrayidx11.i43, align 1
  %mesg.i44 = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 2
  %spi.i45 = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %spi.i45 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spi.i45, align 8
  %call.i46 = call i32 @spi_sync(ptr noundef %20, ptr noundef %mesg.i44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool16.not = icmp eq i32 %call.i46, 0
  br i1 %tobool16.not, label %if.then17, label %if.end15.if.end20_crit_edge

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %powerdown to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %powerdown, align 1, !range !66
  %23 = ptrtoint ptr %powerdown2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %powerdown2, align 128
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %len.ret.0 = phi i32 [ %len, %if.then17 ], [ %call.i46, %if.end15.if.end20_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len.ret.0, %if.end20 ], [ %call.i, %entry.cleanup_crit_edge ], [ %len, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %powerdown) #7
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_dac_set_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %powerdown_mode = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %powerdown_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powerdown_mode, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %mode)
  %cmp = icmp eq i32 %conv, %mode
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #7
  %powerdown = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %powerdown to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %powerdown, align 128, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %.pre = trunc i32 %mode to i8
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %6 = shl i8 %.pre, 6
  %conv3 = add i8 %6, 112
  %buf.i = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %buf.i, align 128
  %arrayidx11.i = getelementptr %struct.ti_dac_chip, ptr %1, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx11.i, align 1
  %mesg.i = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 2
  %spi.i = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi.i, align 8
  %call.i = tail call i32 @spi_sync(ptr noundef %10, ptr noundef %mesg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.then2.if.end8_crit_edge, label %if.then2.out_crit_edge

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.end8:                                          ; preds = %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %11 = ptrtoint ptr %powerdown_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.pre, ptr %powerdown_mode, align 1
  br label %out

out:                                              ; preds = %if.end8, %if.then2.out_crit_edge
  %ret.1 = phi i32 [ %call.i, %if.then2.out_crit_edge ], [ 0, %if.end8 ]
  tail call void @mutex_unlock(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ti_dac_get_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %powerdown_mode = getelementptr inbounds %struct.ti_dac_chip, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %powerdown_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powerdown_mode, align 1
  %conv = zext i8 %3 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_ti_dac082s085__290_359_ti_dac_driver_init6, !1, !"__initcall__kmod_ti_dac082s085__290_359_ti_dac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 359, i32 1}
!2 = !{ptr @__exitcall_ti_dac_driver_exit, !1, !"__exitcall_ti_dac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 361, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 362, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 363, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 352, i32 12}
!12 = !{ptr @ti_dac_driver, !13, !"ti_dac_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 350, i32 26}
!14 = !{ptr @ti_dac_spi_id, !15, !"ti_dac_spi_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 339, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 288, i32 41}
!18 = !{ptr @ti_dac_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 296, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 300, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ti_dac_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @ti_dac_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @ti_dac_info, !30, !"ti_dac_info", i1 false, i1 false}
!30 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 254, i32 30}
!31 = !{ptr @ti_dac_channels, !32, !"ti_dac_channels", i1 false, i1 false}
!32 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 179, i32 35}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 157, i32 14}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 162, i32 2}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 163, i32 2}
!39 = !{ptr @ti_dac_ext_info, !40, !"ti_dac_ext_info", i1 false, i1 false}
!40 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 155, i32 44}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 124, i32 25}
!43 = !{ptr @ti_dac_powerdown_mode, !44, !"ti_dac_powerdown_mode", i1 false, i1 false}
!44 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 110, i32 30}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 76, i32 2}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 76, i32 20}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 76, i32 38}
!51 = !{ptr @ti_dac_powerdown_modes, !52, !"ti_dac_powerdown_modes", i1 false, i1 false}
!52 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 75, i32 27}
!53 = !{ptr @ti_dac_spec, !54, !"ti_dac_spec", i1 false, i1 false}
!54 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 28, i32 33}
!55 = !{ptr @ti_dac_of_id, !56, !"ti_dac_of_id", i1 false, i1 false}
!56 = !{!"../drivers/iio/dac/ti-dac082s085.c", i32 328, i32 34}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i8 0, i8 2}
!67 = !{!"auto-init"}
