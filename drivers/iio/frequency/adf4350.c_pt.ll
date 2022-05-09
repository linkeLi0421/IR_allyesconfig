; ModuleID = '/llk/IR_all_yes/drivers/iio/frequency/adf4350.c_pt.bc'
source_filename = "../drivers/iio/frequency/adf4350.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.adf4350_platform_data = type { [32 x i8], i32, i32, i64, i16, i8, i8, i32, i32, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
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
%struct.adf4350_state = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], [6 x i32], i64, %struct.mutex, [52 x i8], i32, [124 x i8] }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_adf4350__293_634_adf4350_driver_init6 = internal global ptr @adf4350_driver_init, section ".initcall6.init", align 4
@adf4350_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adf4350_id, ptr @adf4350_probe, ptr @adf4350_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adf4350_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adf4350_driver_exit = internal global ptr @adf4350_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [64 x i8] c"adf4350.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [55 x i8] c"adf4350.description=Analog Devices ADF4350/ADF4351 PLL\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [43 x i8] c"adf4350.file=drivers/iio/frequency/adf4350\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [23 x i8] c"adf4350.license=GPL v2\00", section ".modinfo", align 1
@adf4350_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adf4350\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4350 }, %struct.spi_device_id { [32 x i8] c"adf4351\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4351 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adf4350\00", [24 x i8] zeroinitializer }, align 32
@adf4350_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adf4350\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adf4351\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@adf4350_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 508, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no platform data? using default\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adf4350_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/iio/frequency/adf4350.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adf4350_probe._entry_ptr = internal global ptr @adf4350_probe._entry, section ".printk_index", align 4
@default_pdata = internal global { %struct.adf4350_platform_data, [32 x i8] } { %struct.adf4350_platform_data { [32 x i8] zeroinitializer, i32 0, i32 10000, i64 0, i16 0, i8 0, i8 0, i32 3648, i32 0, i32 1048 }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clkin\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@adf4350_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @adf4350_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@adf4350_chan = internal constant { %struct.iio_chan_spec, [40 x i8] } { %struct.iio_chan_spec { i32 15, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @adf4350_ext_info, ptr null, ptr null, i8 96 }, [40 x i8] zeroinitializer }, align 32
@adf4350_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOFn\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adi,channel-spacing\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"adi,power-up-frequency\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adi,reference-div-factor\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"adi,reference-doubler-enable\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adi,reference-div2-enable\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"adi,phase-detector-polarity-positive-enable\00", [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"adi,lock-detect-precision-6ns-enable\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"adi,lock-detect-function-integer-n-enable\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adi,charge-pump-current\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"adi,muxout-select\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adi,low-spur-mode-enable\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"adi,cycle-slip-reduction-enable\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"adi,charge-cancellation-enable\00", [33 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"adi,anti-backlash-3ns-enable\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"adi,band-select-clock-mode-high-enable\00", [57 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adi,12bit-clk-divider\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adi,clk-divider-mode\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adi,aux-output-enable\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"adi,aux-output-fundamental-enable\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adi,mute-till-lock-enable\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adi,output-power\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adi,aux-output-power\00", [43 x i8] zeroinitializer }, align 32
@adf4350_sync_config.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adf4350_sync_config\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[%d] 0x%X\0A\00", [21 x i8] zeroinitializer }, align 32
@adf4350_ext_info = internal constant { [5 x %struct.iio_chan_spec_ext_info], [60 x i8] } { [5 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.34, i32 0, ptr @adf4350_read, ptr @adf4350_write, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.35, i32 0, ptr @adf4350_read, ptr @adf4350_write, i32 2 }, %struct.iio_chan_spec_ext_info { ptr @.str.36, i32 0, ptr @adf4350_read, ptr @adf4350_write, i32 1 }, %struct.iio_chan_spec_ext_info { ptr @.str.37, i32 0, ptr @adf4350_read, ptr @adf4350_write, i32 3 }, %struct.iio_chan_spec_ext_info zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"frequency\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"frequency_resolution\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"refin_frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@adf4350_read.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adf4350_read\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PLL un-locked\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@adf4350_set_freq.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adf4350_set_freq\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [112 x i8], [48 x i8] } { [112 x i8] c"VCO: %llu Hz, PFD %lu Hz\0AREF_DIV %d, R0_INT %d, R0_FRACT %d\0AR1_MOD %d, RF_DIV %d\0APRESCALER %s, BAND_SEL_DIV %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"8/9\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4/5\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"adf4350_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 625, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"adf4350_id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 618, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 627, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"adf4350_of_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 611, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 508, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"default_pdata\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 64, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 513, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 530, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"adf4350_info\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 380, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"adf4350_chan\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 373, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 549, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 395, i32 47 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 398, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 402, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 406, i32 27 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 410, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 412, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 416, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 419, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 422, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 426, i32 27 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 430, i32 27 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 434, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 440, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 443, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 447, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 450, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 454, i32 27 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 458, i32 27 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 464, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 467, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 470, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 474, i32 27 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 478, i32 27 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 92, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"adf4350_ext_info\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 361, i32 44 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 366, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 367, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 368, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 369, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 328, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 350, i32 38 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private constant [35 x i8] c"../drivers/iio/frequency/adf4350.c\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 200, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_adf4350_driver_exit, ptr @__initcall__kmod_adf4350__293_634_adf4350_driver_init6, ptr @adf4350_driver_exit, ptr @adf4350_probe._entry, ptr @adf4350_probe._entry_ptr, ptr @adf4350_driver, ptr @adf4350_id, ptr @.str, ptr @adf4350_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @default_pdata, ptr @.str.6, ptr @.str.7, ptr @adf4350_info, ptr @adf4350_chan, ptr @adf4350_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @adf4350_ext_info, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4350_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4350_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4350_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4350_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_pdata to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4350_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4350_chan to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4350_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf4350_ext_info to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adf4350_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adf4350_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adf4350_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adf4350_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf4350_probe(ptr noundef %spi) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 64, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %adf4350_parse_dt.exit.thread, label %if.end4.thread

adf4350_parse_dt.exit.thread:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %cleanup

if.end4.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i.i, i32 noundef 31, ptr noundef nonnull @.str.9, ptr noundef nonnull %1) #7
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 10000, ptr %tmp.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #7
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tmp.i, align 4
  %channel_spacing.i = getelementptr inbounds %struct.adf4350_platform_data, ptr %call.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %channel_spacing.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %channel_spacing.i, align 4
  store i32 0, ptr %tmp.i, align 4
  %call.i.i128.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #7
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tmp.i, align 4
  %conv.i = zext i32 %7 to i64
  %power_up_frequency.i = getelementptr inbounds %struct.adf4350_platform_data, ptr %call.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %power_up_frequency.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv.i, ptr %power_up_frequency.i, align 8
  store i32 0, ptr %tmp.i, align 4
  %call.i.i129.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #7
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp.i, align 4
  %conv5.i = trunc i32 %10 to i16
  %ref_div_factor.i = getelementptr inbounds %struct.adf4350_platform_data, ptr %call.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %ref_div_factor.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv5.i, ptr %ref_div_factor.i, align 8
  %call.i130.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef null) #7
  %tobool.i.i = icmp ne ptr %call.i130.i, null
  %ref_doubler_en.i = getelementptr inbounds %struct.adf4350_platform_data, ptr %call.i.i, i32 0, i32 5
  %frombool.i = zext i1 %tobool.i.i to i8
  %12 = ptrtoint ptr %ref_doubler_en.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool.i, ptr %ref_doubler_en.i, align 2
  %call.i131.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %tobool.i132.i = icmp ne ptr %call.i131.i, null
  %ref_div2_en.i = getelementptr inbounds %struct.adf4350_platform_data, ptr %call.i.i, i32 0, i32 6
  %frombool8.i = zext i1 %tobool.i132.i to i8
  %13 = ptrtoint ptr %ref_div2_en.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool8.i, ptr %ref_div2_en.i, align 1
  %call.i133.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef null) #7
  %tobool.i134.not.i = icmp eq ptr %call.i133.i, null
  %cond.i = select i1 %tobool.i134.not.i, i32 0, i32 64
  %r2_user_settings.i = getelementptr inbounds %struct.adf4350_platform_data, ptr %call.i.i, i32 0, i32 7
  %call.i135.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %tobool.i136.not.i = icmp eq ptr %call.i135.i, null
  %cond13.i = select i1 %tobool.i136.not.i, i32 0, i32 128
  %or.i = or i32 %cond13.i, %cond.i
  %call.i137.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef null) #7
  %tobool.i138.not.i = icmp eq ptr %call.i137.i, null
  %cond17.i = select i1 %tobool.i138.not.i, i32 0, i32 256
  %or19.i = or i32 %or.i, %cond17.i
  %14 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2500, ptr %tmp.i, align 4
  %call.i.i139.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.18, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #7
  %15 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp.i, align 4
  %sub.i = add i32 %16, -312
  %div.i = udiv i32 %sub.i, 312
  %and.i = shl i32 %div.i, 9
  %shl.i = and i32 %and.i, 7680
  %or22.i = or i32 %or19.i, %shl.i
  store i32 0, ptr %tmp.i, align 4
  %call.i.i140.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.19, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #7
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tmp.i, align 4
  %shl24.i = shl i32 %18, 26
  %or26.i = or i32 %or22.i, %shl24.i
  %call.i141.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef null) #7
  %tobool.i142.not.i = icmp eq ptr %call.i141.i, null
  %cond29.i = select i1 %tobool.i142.not.i, i32 0, i32 1610612736
  %or31.i = or i32 %cond29.i, %or26.i
  %19 = ptrtoint ptr %r2_user_settings.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or31.i, ptr %r2_user_settings.i, align 4
  %call.i143.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef null) #7
  %tobool.i144.not.i = icmp eq ptr %call.i143.i, null
  %cond34.i = select i1 %tobool.i144.not.i, i32 0, i32 262144
  %r3_user_settings.i = getelementptr inbounds %struct.adf4350_platform_data, ptr %call.i.i, i32 0, i32 8
  %call.i145.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.22, ptr noundef null) #7
  %tobool.i146.not.i = icmp eq ptr %call.i145.i, null
  %cond37.i = select i1 %tobool.i146.not.i, i32 0, i32 2097152
  %or39.i = or i32 %cond37.i, %cond34.i
  %call.i147.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.23, ptr noundef null) #7
  %tobool.i148.not.i = icmp eq ptr %call.i147.i, null
  %cond42.i = select i1 %tobool.i148.not.i, i32 0, i32 4194304
  %or44.i = or i32 %or39.i, %cond42.i
  %call.i149.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.24, ptr noundef null) #7
  %tobool.i150.not.i = icmp eq ptr %call.i149.i, null
  %cond47.i = select i1 %tobool.i150.not.i, i32 0, i32 8388608
  %or49.i = or i32 %or44.i, %cond47.i
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %tmp.i, align 4
  %call.i.i151.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.25, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #7
  %21 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp.i, align 4
  %shl51.i = shl i32 %22, 3
  %or53.i = or i32 %or49.i, %shl51.i
  store i32 0, ptr %tmp.i, align 4
  %call.i.i152.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.26, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #7
  %23 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp.i, align 4
  %shl55.i = shl i32 %24, 16
  %or57.i = or i32 %or53.i, %shl55.i
  %25 = ptrtoint ptr %r3_user_settings.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or57.i, ptr %r3_user_settings.i, align 8
  %call.i153.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.27, ptr noundef null) #7
  %tobool.i154.not.i = icmp eq ptr %call.i153.i, null
  %cond60.i = select i1 %tobool.i154.not.i, i32 0, i32 256
  %r4_user_settings.i = getelementptr inbounds %struct.adf4350_platform_data, ptr %call.i.i, i32 0, i32 9
  %call.i155.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.28, ptr noundef null) #7
  %tobool.i156.not.i = icmp eq ptr %call.i155.i, null
  %cond63.i = select i1 %tobool.i156.not.i, i32 0, i32 512
  %or65.i = or i32 %cond63.i, %cond60.i
  %call.i157.i = call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.29, ptr noundef null) #7
  %tobool.i158.not.i = icmp eq ptr %call.i157.i, null
  %cond68.i = select i1 %tobool.i158.not.i, i32 0, i32 1024
  %or70.i = or i32 %or65.i, %cond68.i
  %26 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %tmp.i, align 4
  %call.i.i159.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.30, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #7
  %27 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tmp.i, align 4
  %shl72.i = shl i32 %28, 3
  %or74.i = or i32 %or70.i, %shl72.i
  store i32 0, ptr %tmp.i, align 4
  %call.i.i160.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.31, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #7
  %29 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tmp.i, align 4
  %shl76.i = shl i32 %30, 6
  %or78.i = or i32 %or74.i, %shl76.i
  %31 = ptrtoint ptr %r4_user_settings.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or78.i, ptr %r4_user_settings.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %if.end8

if.end4:                                          ; preds = %entry
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %32 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %platform_data, align 8
  %tobool5.not = icmp eq ptr %33, null
  br i1 %tobool5.not, label %do.end, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.1) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end4.if.end8_crit_edge, %if.end4.thread
  %pdata.1 = phi ptr [ %33, %if.end4.if.end8_crit_edge ], [ @default_pdata, %do.end ], [ %call.i.i, %if.end4.thread ]
  %clkin = getelementptr inbounds %struct.adf4350_platform_data, ptr %pdata.1, i32 0, i32 1
  %34 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %clkin, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool9.not = icmp eq i32 %35, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then10:                                        ; preds = %if.end8
  %call12 = call ptr @devm_clk_get(ptr noundef %spi, ptr noundef nonnull @.str.6) #7
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10.cleanup_crit_edge, label %if.end15

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.then10
  %call.i = call i32 @clk_prepare(ptr noundef %call12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i149 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i149, label %if.end.i151, label %if.end15.clk_prepare_enable.exit_crit_edge

if.end15.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i151:                                      ; preds = %if.end15
  %call1.i150 = call i32 @clk_enable(ptr noundef %call12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i150)
  %tobool2.not.i = icmp eq i32 %call1.i150, 0
  br i1 %tobool2.not.i, label %if.end.i151.if.end20_crit_edge, label %if.then3.i

if.end.i151.if.end20_crit_edge:                   ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then3.i:                                       ; preds = %if.end.i151
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call12) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end15.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end15.clk_prepare_enable.exit_crit_edge ], [ %call1.i150, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp17 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp17, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end20_crit_edge

clk_prepare_enable.exit.if.end20_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %clk_prepare_enable.exit.if.end20_crit_edge, %if.end.i151.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  %clk.0 = phi ptr [ null, %if.end8.if.end20_crit_edge ], [ %call12, %clk_prepare_enable.exit.if.end20_crit_edge ], [ %call12, %if.end.i151.if.end20_crit_edge ]
  %call22 = call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #7
  %cmp23 = icmp eq ptr %call22, null
  br i1 %cmp23, label %if.end20.error_disable_clk_crit_edge, label %if.end25

if.end20.error_disable_clk_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_disable_clk

if.end25:                                         ; preds = %if.end20
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call22, i32 0, i32 19
  %36 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %priv.i, align 8
  %call28 = call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.7) #7
  %reg = getelementptr inbounds %struct.adf4350_state, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call28, ptr %reg, align 4
  %cmp.i152 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %if.end25.if.end37_crit_edge, label %if.then31

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then31:                                        ; preds = %if.end25
  %call33 = call i32 @regulator_enable(ptr noundef %call28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.then31.if.end37_crit_edge, label %if.then31.error_disable_clk_crit_edge

if.then31.error_disable_clk_crit_edge:            ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_disable_clk

if.then31.if.end37_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end37:                                         ; preds = %if.then31.if.end37_crit_edge, %if.end25.if.end37_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call22, ptr %driver_data.i.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %spi, ptr %37, align 128
  %pdata39 = getelementptr inbounds %struct.adf4350_state, ptr %37, i32 0, i32 3
  %41 = ptrtoint ptr %pdata39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %pdata.1, ptr %pdata39, align 4
  %42 = ptrtoint ptr %pdata.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pdata.1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp40.not = icmp eq i8 %43, 0
  br i1 %cmp40.not, label %cond.false, label %if.end37.cond.end_crit_edge

if.end37.cond.end_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = call ptr @spi_get_device_id(ptr noundef %spi) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end37.cond.end_crit_edge
  %cond = phi ptr [ %call43, %cond.false ], [ %pdata.1, %if.end37.cond.end_crit_edge ]
  %name46 = getelementptr inbounds %struct.iio_dev, ptr %call22, i32 0, i32 15
  %44 = ptrtoint ptr %name46 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %cond, ptr %name46, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call22, i32 0, i32 17
  %45 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @adf4350_info, ptr %info, align 8
  %46 = ptrtoint ptr %call22 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %call22, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call22, i32 0, i32 13
  %47 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @adf4350_chan, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call22, i32 0, i32 14
  %48 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %num_channels, align 4
  %lock = getelementptr inbounds %struct.adf4350_state, ptr %37, i32 0, i32 16
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @adf4350_probe.__key) #7
  %channel_spacing = getelementptr inbounds %struct.adf4350_platform_data, ptr %pdata.1, i32 0, i32 2
  %49 = ptrtoint ptr %channel_spacing to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %channel_spacing, align 4
  %chspc = getelementptr inbounds %struct.adf4350_state, ptr %37, i32 0, i32 6
  %51 = ptrtoint ptr %chspc to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %chspc, align 8
  %tobool50.not = icmp eq ptr %clk.0, null
  br i1 %tobool50.not, label %if.else55, label %if.then51

if.then51:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %clk52 = getelementptr inbounds %struct.adf4350_state, ptr %37, i32 0, i32 4
  %52 = ptrtoint ptr %clk52 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %clk.0, ptr %clk52, align 16
  %call53 = call i32 @clk_get_rate(ptr noundef nonnull %clk.0) #7
  br label %if.end58

if.else55:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %clkin to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %clkin, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.else55, %if.then51
  %call53.sink = phi i32 [ %54, %if.else55 ], [ %call53, %if.then51 ]
  %55 = getelementptr inbounds %struct.adf4350_state, ptr %37, i32 0, i32 5
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call53.sink, ptr %55, align 4
  %call59 = call ptr @spi_get_device_id(ptr noundef %spi) #7
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call59, i32 0, i32 1
  %57 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4351, i32 %58)
  %cmp60 = icmp eq i32 %58, 4351
  %cond62 = select i1 %cmp60, i32 34375000, i32 137500000
  %min_out_freq = getelementptr inbounds %struct.adf4350_state, ptr %37, i32 0, i32 8
  %59 = ptrtoint ptr %min_out_freq to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %cond62, ptr %min_out_freq, align 32
  %regs_hw = getelementptr inbounds %struct.adf4350_state, ptr %37, i32 0, i32 14
  %60 = call ptr @memset(ptr %regs_hw, i32 255, i32 24)
  %call65 = call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef null, i32 noundef 1) #7
  %lock_detect_gpiod = getelementptr inbounds %struct.adf4350_state, ptr %37, i32 0, i32 2
  %61 = ptrtoint ptr %lock_detect_gpiod to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call65, ptr %lock_detect_gpiod, align 8
  %cmp.i153 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then68, label %if.end71

if.then68:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %call65 to i32
  br label %error_disable_reg

if.end71:                                         ; preds = %if.end58
  %power_up_frequency = getelementptr inbounds %struct.adf4350_platform_data, ptr %pdata.1, i32 0, i32 3
  %63 = ptrtoint ptr %power_up_frequency to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %power_up_frequency, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %64)
  %tobool72.not = icmp eq i64 %64, 0
  br i1 %tobool72.not, label %if.end71.if.end79_crit_edge, label %if.then73

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.then73:                                        ; preds = %if.end71
  %call75 = call fastcc i32 @adf4350_set_freq(ptr noundef %37, i64 noundef %64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.then73.if.end79_crit_edge, label %if.then73.error_disable_reg_crit_edge

if.then73.error_disable_reg_crit_edge:            ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_disable_reg

if.then73.if.end79_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

if.end79:                                         ; preds = %if.then73.if.end79_crit_edge, %if.end71.if.end79_crit_edge
  %call80 = call i32 @__iio_device_register(ptr noundef nonnull %call22, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end79.cleanup_crit_edge, label %if.end79.error_disable_reg_crit_edge

if.end79.error_disable_reg_crit_edge:             ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_disable_reg

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error_disable_reg:                                ; preds = %if.end79.error_disable_reg_crit_edge, %if.then73.error_disable_reg_crit_edge, %if.then68
  %ret.0 = phi i32 [ %62, %if.then68 ], [ %call75, %if.then73.error_disable_reg_crit_edge ], [ %call80, %if.end79.error_disable_reg_crit_edge ]
  %65 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg, align 4
  %cmp.i154 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %error_disable_reg.error_disable_clk_crit_edge, label %if.then86

error_disable_reg.error_disable_clk_crit_edge:    ; preds = %error_disable_reg
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_disable_clk

if.then86:                                        ; preds = %error_disable_reg
  call void @__sanitizer_cov_trace_pc() #9
  %call88 = call i32 @regulator_disable(ptr noundef %66) #7
  br label %error_disable_clk

error_disable_clk:                                ; preds = %if.then86, %error_disable_reg.error_disable_clk_crit_edge, %if.then31.error_disable_clk_crit_edge, %if.end20.error_disable_clk_crit_edge
  %ret.1 = phi i32 [ %ret.0, %error_disable_reg.error_disable_clk_crit_edge ], [ %ret.0, %if.then86 ], [ %call33, %if.then31.error_disable_clk_crit_edge ], [ -12, %if.end20.error_disable_clk_crit_edge ]
  call void @clk_disable(ptr noundef %clk.0) #7
  call void @clk_unprepare(ptr noundef %clk.0) #7
  br label %cleanup

cleanup:                                          ; preds = %error_disable_clk, %if.end79.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %adf4350_parse_dt.exit.thread
  %retval.0 = phi i32 [ %ret.1, %error_disable_clk ], [ -517, %if.then10.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ 0, %if.end79.cleanup_crit_edge ], [ -22, %adf4350_parse_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf4350_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
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
  %reg2 = getelementptr inbounds %struct.adf4350_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %reg2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg2, align 4
  %arrayidx = getelementptr %struct.adf4350_state, ptr %3, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %or = or i32 %7, 32
  store i32 %or, ptr %arrayidx, align 4
  %call3 = tail call fastcc i32 @adf4350_sync_config(ptr noundef %3)
  tail call void @iio_device_unregister(ptr noundef %1) #7
  %clk = getelementptr inbounds %struct.adf4350_state, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 16
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @regulator_disable(ptr noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adf4350_set_freq(ptr noundef %st, i64 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.adf4350_state, ptr %st, i32 0, i32 3
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4400000000, i64 %freq)
  %cmp = icmp ugt i64 %freq, 4400000000
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %min_out_freq = getelementptr inbounds %struct.adf4350_state, ptr %st, i32 0, i32 8
  %2 = ptrtoint ptr %min_out_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %min_out_freq, align 32
  %conv = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %freq)
  %cmp2 = icmp ugt i64 %conv, %freq
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp8(i64 3000000000, i64 %freq)
  %cmp4 = icmp ugt i64 %freq, 3000000000
  %. = select i1 %cmp4, i32 75, i32 23
  %r4_rf_div_sel = getelementptr inbounds %struct.adf4350_state, ptr %st, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp8(i64 2200000000, i64 %freq)
  %cmp8879 = icmp ult i64 %freq, 2200000000
  br i1 %cmp8879, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %freq.addr.0881 = phi i64 [ %shl, %while.body.while.body_crit_edge ], [ %freq, %if.end.while.body_crit_edge ]
  %storemerge880 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %shl = shl nuw nsw i64 %freq.addr.0881, 1
  %inc = add i32 %storemerge880, 1
  %cmp8 = icmp ult i64 %freq.addr.0881, 1100000000
  br i1 %cmp8, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %storemerge.lcssa = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %freq.addr.0.lcssa = phi i64 [ %freq, %if.end.while.end_crit_edge ], [ %shl, %while.body.while.end_crit_edge ]
  %4 = ptrtoint ptr %r4_rf_div_sel to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge.lcssa, ptr %r4_rf_div_sel, align 16
  %ref_div_factor = getelementptr inbounds %struct.adf4350_platform_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %ref_div_factor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ref_div_factor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  %sub = add i16 %6, -1
  %spec.select = select i1 %tobool.not, i16 0, i16 %sub
  %chspc16 = getelementptr inbounds %struct.adf4350_state, ptr %st, i32 0, i32 6
  %7 = ptrtoint ptr %chspc16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chspc16, align 8
  %clkin.i = getelementptr inbounds %struct.adf4350_state, ptr %st, i32 0, i32 5
  %9 = ptrtoint ptr %clkin.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clkin.i, align 4
  %ref_doubler_en.i = getelementptr inbounds %struct.adf4350_platform_data, ptr %1, i32 0, i32 5
  %ref_div2_en.i = getelementptr inbounds %struct.adf4350_platform_data, ptr %1, i32 0, i32 6
  %fpfd.i = getelementptr inbounds %struct.adf4350_state, ptr %st, i32 0, i32 7
  %r1_mod = getelementptr inbounds %struct.adf4350_state, ptr %st, i32 0, i32 11
  %r0_fract = getelementptr inbounds %struct.adf4350_state, ptr %st, i32 0, i32 9
  %r0_int = getelementptr inbounds %struct.adf4350_state, ptr %st, i32 0, i32 10
  br label %do.body18

do.body18:                                        ; preds = %do.body18.backedge, %while.end
  %r_cnt.3 = phi i16 [ %spec.select, %while.end ], [ %r_cnt.3.be, %do.body18.backedge ]
  %chspc.2 = phi i32 [ %8, %while.end ], [ %spec.select794, %do.body18.backedge ]
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body18
  %r_cnt.addr.0.i = phi i16 [ %r_cnt.3, %do.body18 ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %inc.i = add i16 %r_cnt.addr.0.i, 1
  %11 = ptrtoint ptr %ref_doubler_en.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ref_doubler_en.i, align 2, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  %cond.i = select i1 %tobool.not.i, i32 1, i32 2
  %mul.i = mul i32 %cond.i, %10
  %conv.i = zext i16 %inc.i to i32
  %13 = ptrtoint ptr %ref_div2_en.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ref_div2_en.i, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool2.not.i = icmp eq i8 %14, 0
  %cond4.i = select i1 %tobool2.not.i, i32 1, i32 2
  %mul5.i = mul nuw nsw i32 %cond4.i, %conv.i
  %div.i = udiv i32 %mul.i, %mul5.i
  %15 = ptrtoint ptr %fpfd.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div.i, ptr %fpfd.i, align 4
  %cmp.i = icmp ugt i32 %div.i, 32000000
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %adf4350_tune_r_cnt.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

adf4350_tune_r_cnt.exit:                          ; preds = %do.body.i
  %div = udiv i32 %div.i, %chspc.2
  %16 = ptrtoint ptr %r1_mod to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %r1_mod, align 4
  %conv20 = and i32 %conv.i, 64512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv20)
  %cmp21.not = icmp eq i32 %conv20, 0
  %spec.select793 = select i1 %cmp21.not, i16 %inc.i, i16 0
  %not.cmp21.not = xor i1 %cmp21.not, true
  %inc24 = zext i1 %not.cmp21.not to i32
  %spec.select794 = add i32 %chspc.2, %inc24
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %div)
  %cmp27 = icmp ult i32 %div, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %spec.select793)
  %tobool30.not = icmp eq i16 %spec.select793, 0
  %or.cond = select i1 %cmp27, i1 true, i1 %tobool30.not
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %tobool30.not
  %inc.i.mux = select i1 %or.cond, i16 0, i16 %inc.i
  br i1 %brmerge, label %adf4350_tune_r_cnt.exit.do.body18.backedge_crit_edge, label %do.end35

adf4350_tune_r_cnt.exit.do.body18.backedge_crit_edge: ; preds = %adf4350_tune_r_cnt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18.backedge

do.end35:                                         ; preds = %adf4350_tune_r_cnt.exit
  %conv37 = zext i32 %div to i64
  %mul = mul i64 %freq.addr.0.lcssa, %conv37
  %shr = lshr i32 %div.i, 1
  %conv39 = zext i32 %shr to i64
  %add = add i64 %mul, %conv39
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp219 = icmp ult i64 %add, 4294967296
  br i1 %cmp219, label %if.then223, label %if.else229, !prof !121

if.then223:                                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  %conv224 = trunc i64 %add to i32
  %div227 = udiv i32 %conv224, %div.i
  %conv228 = zext i32 %div227 to i64
  br label %if.end233

if.else229:                                       ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div.i, i64 %add) #11, !srcloc !122
  %asmresult1.i = extractvalue { i64, i64 } %17, 1
  br label %if.end233

if.end233:                                        ; preds = %if.else229, %if.then223
  %tmp.0 = phi i64 [ %conv228, %if.then223 ], [ %asmresult1.i, %if.else229 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %tmp.0)
  %cmp437 = icmp ult i64 %tmp.0, 4294967296
  br i1 %cmp437, label %if.then445, label %if.else451, !prof !121

if.then445:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #9
  %conv446 = trunc i64 %tmp.0 to i32
  %conv446.frozen = freeze i32 %conv446
  %div.frozen = freeze i32 %div
  %div449 = udiv i32 %conv446.frozen, %div.frozen
  %18 = mul i32 %div449, %div.frozen
  %rem447.decomposed = sub i32 %conv446.frozen, %18
  br label %if.end455

if.else451:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #9
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div, i64 %tmp.0) #11, !srcloc !122
  %asmresult.i822 = extractvalue { i64, i64 } %19, 0
  %asmresult1.i823 = extractvalue { i64, i64 } %19, 1
  %shr.i824 = lshr i64 %asmresult.i822, 32
  %conv.i825 = trunc i64 %shr.i824 to i32
  %extract.t877 = trunc i64 %asmresult1.i823 to i32
  br label %if.end455

if.end455:                                        ; preds = %if.else451, %if.then445
  %tmp.1.off0 = phi i32 [ %div449, %if.then445 ], [ %extract.t877, %if.else451 ]
  %__rem237.0 = phi i32 [ %rem447.decomposed, %if.then445 ], [ %conv.i825, %if.else451 ]
  %20 = ptrtoint ptr %r0_fract to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %__rem237.0, ptr %r0_fract, align 4
  %21 = ptrtoint ptr %r0_int to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %tmp.1.off0, ptr %r0_int, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %., i32 %tmp.1.off0)
  %cmp461 = icmp ugt i32 %., %tmp.1.off0
  br i1 %cmp461, label %if.end455.do.body18.backedge_crit_edge, label %do.end463

if.end455.do.body18.backedge_crit_edge:           ; preds = %if.end455
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body18.backedge

do.body18.backedge:                               ; preds = %if.end455.do.body18.backedge_crit_edge, %adf4350_tune_r_cnt.exit.do.body18.backedge_crit_edge
  %r_cnt.3.be = phi i16 [ %inc.i.mux, %adf4350_tune_r_cnt.exit.do.body18.backedge_crit_edge ], [ %inc.i, %if.end455.do.body18.backedge_crit_edge ]
  br label %do.body18

do.end463:                                        ; preds = %if.end455
  call void @__sanitizer_cov_trace_cmp4(i32 %chspc.2, i32 %div.i)
  %cmp.not.i798.le = icmp ugt i32 %chspc.2, %div.i
  %conv32.le.le = zext i16 %spec.select793 to i32
  %sub466 = add nuw nsw i32 %div.i, 124999
  %div467 = udiv i32 %sub466, 125000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem237.0)
  %tobool470.not = icmp eq i32 %__rem237.0, 0
  %or.cond875 = select i1 %tobool470.not, i1 true, i1 %cmp.not.i798.le
  br i1 %or.cond875, label %if.else482, label %if.then474

if.then474:                                       ; preds = %do.end463
  call void @__sanitizer_cov_trace_pc() #9
  %call477 = tail call i32 @gcd(i32 noundef %div, i32 noundef %__rem237.0) #12
  %div479 = udiv i32 %div, %call477
  %22 = ptrtoint ptr %r1_mod to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div479, ptr %r1_mod, align 4
  %div481 = udiv i32 %__rem237.0, %call477
  %23 = ptrtoint ptr %r0_fract to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div481, ptr %r0_fract, align 4
  br label %do.body486

if.else482:                                       ; preds = %do.end463
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %r0_fract to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %r0_fract, align 4
  %25 = ptrtoint ptr %r1_mod to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %r1_mod, align 4
  br label %do.body486

do.body486:                                       ; preds = %if.else482, %if.then474
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf4350_set_freq.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf4350_set_freq, %if.then496)) #7
          to label %do.end509 [label %if.then496], !srcloc !123

if.then496:                                       ; preds = %do.body486
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %st, align 128
  %28 = ptrtoint ptr %fpfd.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fpfd.i, align 4
  %30 = ptrtoint ptr %r0_int to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %r0_int, align 8
  %32 = ptrtoint ptr %r0_fract to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %r0_fract, align 4
  %34 = ptrtoint ptr %r1_mod to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %r1_mod, align 4
  %36 = ptrtoint ptr %r4_rf_div_sel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %r4_rf_div_sel, align 16
  %shl503 = shl nuw i32 1, %37
  %cond505 = select i1 %cmp4, ptr @.str.43, ptr @.str.44
  %conv506 = and i32 %div467, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf4350_set_freq.__UNIQUE_ID_ddebug291, ptr noundef %27, ptr noundef nonnull @.str.42, i64 noundef %freq.addr.0.lcssa, i32 noundef %29, i32 noundef %conv32.le.le, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %shl503, ptr noundef nonnull %cond505, i32 noundef %conv506) #7
  br label %do.end509

do.end509:                                        ; preds = %if.then496, %do.body486
  %38 = ptrtoint ptr %r0_int to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %r0_int, align 8
  %and511 = shl i32 %39, 15
  %shl512 = and i32 %and511, 2147450880
  %40 = ptrtoint ptr %r0_fract to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %r0_fract, align 4
  %and514 = shl i32 %41, 3
  %shl515 = and i32 %and514, 32760
  %or516 = or i32 %shl515, %shl512
  %regs = getelementptr inbounds %struct.adf4350_state, ptr %st, i32 0, i32 13
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or516, ptr %regs, align 4
  %43 = ptrtoint ptr %r1_mod to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %r1_mod, align 4
  %and518 = shl i32 %44, 3
  %shl519 = and i32 %and518, 32760
  %or520 = select i1 %cmp4, i32 134250496, i32 32768
  %or521 = or i32 %or520, %shl519
  %arrayidx523 = getelementptr %struct.adf4350_state, ptr %st, i32 0, i32 13, i32 1
  %45 = ptrtoint ptr %arrayidx523 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or521, ptr %arrayidx523, align 4
  %shl525 = shl nuw nsw i32 %conv32.le.le, 14
  %46 = ptrtoint ptr %ref_doubler_en.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %ref_doubler_en.i, align 2, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool527.not = icmp eq i8 %47, 0
  %cond529 = select i1 %tobool527.not, i32 0, i32 33554432
  %48 = ptrtoint ptr %ref_div2_en.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %ref_div2_en.i, align 1, !range !120
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool531.not = icmp eq i8 %49, 0
  %cond533 = select i1 %tobool531.not, i32 0, i32 16777216
  %r2_user_settings = getelementptr inbounds %struct.adf4350_platform_data, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %r2_user_settings to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %r2_user_settings, align 4
  %and535 = and i32 %51, 2080382912
  %or526 = or i32 %shl525, %cond529
  %or530 = or i32 %or526, %cond533
  %or534 = or i32 %or530, %and535
  %or536 = or i32 %or534, 8192
  %arrayidx538 = getelementptr %struct.adf4350_state, ptr %st, i32 0, i32 13, i32 2
  %52 = ptrtoint ptr %arrayidx538 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or536, ptr %arrayidx538, align 4
  %r3_user_settings = getelementptr inbounds %struct.adf4350_platform_data, ptr %1, i32 0, i32 8
  %53 = ptrtoint ptr %r3_user_settings to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %r3_user_settings, align 8
  %and539 = and i32 %54, 15171576
  %arrayidx541 = getelementptr %struct.adf4350_state, ptr %st, i32 0, i32 13, i32 3
  %55 = ptrtoint ptr %arrayidx541 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and539, ptr %arrayidx541, align 4
  %56 = ptrtoint ptr %r4_rf_div_sel to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %r4_rf_div_sel, align 16
  %shl543 = shl i32 %57, 20
  %conv545 = shl nuw nsw i32 %div467, 12
  %shl546 = and i32 %conv545, 1044480
  %or544 = or i32 %shl543, %shl546
  %r4_user_settings = getelementptr inbounds %struct.adf4350_platform_data, ptr %1, i32 0, i32 9
  %58 = ptrtoint ptr %r4_user_settings to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %r4_user_settings, align 4
  %and549 = and i32 %59, 2008
  %or548 = or i32 %or544, %and549
  %or550 = or i32 %or548, 8388640
  %arrayidx552 = getelementptr %struct.adf4350_state, ptr %st, i32 0, i32 13, i32 4
  %60 = ptrtoint ptr %arrayidx552 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or550, ptr %arrayidx552, align 4
  %arrayidx554 = getelementptr %struct.adf4350_state, ptr %st, i32 0, i32 13, i32 5
  %61 = ptrtoint ptr %arrayidx554 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4194304, ptr %arrayidx554, align 4
  %freq_req = getelementptr inbounds %struct.adf4350_state, ptr %st, i32 0, i32 15
  %62 = ptrtoint ptr %freq_req to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %freq.addr.0.lcssa, ptr %freq_req, align 8
  %call555 = tail call fastcc i32 @adf4350_sync_config(ptr noundef %st)
  br label %cleanup

cleanup:                                          ; preds = %do.end509, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call555, %do.end509 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf4350_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef writeonly %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %reg)
  %cmp = icmp ugt i32 %reg, 5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %cmp1 = icmp eq ptr %readval, null
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %writeval, -8
  %arrayidx = getelementptr %struct.adf4350_state, ptr %1, i32 0, i32 13, i32 %reg
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and, ptr %arrayidx, align 4
  %call3 = tail call fastcc i32 @adf4350_sync_config(ptr noundef %1)
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx4 = getelementptr %struct.adf4350_state, ptr %1, i32 0, i32 14, i32 %reg
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx4, align 4
  %5 = ptrtoint ptr %readval to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %readval, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %ret.0 = phi i32 [ %call3, %if.then2 ], [ 0, %if.else ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end5 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adf4350_sync_config(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.adf4350_state, ptr %st, i32 0, i32 18
  %0 = getelementptr inbounds i8, ptr %t.i, i32 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %1 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %doublebuf.052 = phi i32 [ 0, %entry ], [ %doublebuf.2, %for.inc.for.body_crit_edge ]
  %i.049 = phi i32 [ 5, %entry ], [ %dec, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.adf4350_state, ptr %st, i32 0, i32 14, i32 %i.049
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.adf4350_state, ptr %st, i32 0, i32 13, i32 %i.049
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.not = icmp eq i32 %3, %5
  br i1 %cmp2.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.049)
  %cmp3 = icmp eq i32 %i.049, 0
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %doublebuf.052)
  %tobool.not = icmp eq i32 %doublebuf.052, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %for.body
  %6 = zext i32 %i.049 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.049, label %if.then.sw.epilog_crit_edge [
    i32 1, label %if.then.sw.bb_crit_edge
    i32 4, label %if.then.sw.bb_crit_edge56
  ]

if.then.sw.bb_crit_edge56:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge56
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.then.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge
  %doublebuf.1 = phi i32 [ %doublebuf.052, %if.then.sw.epilog_crit_edge ], [ 1, %sw.bb ], [ %doublebuf.052, %land.lhs.true.sw.epilog_crit_edge ]
  %or = or i32 %5, %i.049
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %val, align 128
  %8 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %10 = call ptr @memset(ptr %0, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %val, ptr %t.i, align 4
  %12 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %13 = call ptr @memset(ptr %1, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %sw.epilog.spi_write.exit_crit_edge

sw.epilog.spi_write.exit_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %20 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %sw.epilog.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %9, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7 = icmp slt i32 %call.i.i, 0
  br i1 %cmp7, label %spi_write.exit.cleanup_crit_edge, label %if.end

spi_write.exit.cleanup_crit_edge:                 ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx1, align 4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf4350_sync_config.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf4350_sync_config, %if.then17)) #7
          to label %for.inc [label %if.then17], !srcloc !123

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %st, align 128
  %27 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx1, align 4
  %or21 = or i32 %28, %i.049
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf4350_sync_config.__UNIQUE_ID_ddebug290, ptr noundef %26, ptr noundef nonnull @.str.33, i32 noundef %i.049, i32 noundef %or21) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %if.end, %lor.lhs.false.for.inc_crit_edge
  %doublebuf.2 = phi i32 [ %doublebuf.1, %if.then17 ], [ %doublebuf.052, %lor.lhs.false.for.inc_crit_edge ], [ %doublebuf.1, %if.end ]
  %dec = add nsw i32 %i.049, -1
  %cmp.not = icmp eq i32 %i.049, 0
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %spi_write.exit.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %spi_write.exit.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf4350_read(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %2 = zext i32 %private to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %private, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb209
    i32 2, label %sw.bb217
    i32 3, label %sw.bb219
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %r0_int = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %r0_int to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %r0_int, align 8
  %r1_mod = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %r1_mod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %r1_mod, align 4
  %mul = mul i32 %6, %4
  %r0_fract = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %r0_fract to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %r0_fract, align 4
  %add = add i32 %mul, %8
  %conv = zext i32 %add to i64
  %fpfd = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %fpfd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fpfd, align 4
  %conv1 = zext i32 %10 to i64
  %mul2 = mul nuw i64 %conv, %conv1
  %r4_rf_div_sel = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %r4_rf_div_sel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %r4_rf_div_sel, align 16
  %mul4 = shl i32 %6, %12
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul2)
  %cmp174 = icmp ult i64 %mul2, 4294967296
  br i1 %cmp174, label %if.then178, label %if.else184, !prof !121

if.then178:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %conv179 = trunc i64 %mul2 to i32
  %div182 = udiv i32 %conv179, %mul4
  %conv183 = zext i32 %div182 to i64
  br label %if.end188

if.else184:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul4, i64 %mul2) #11, !srcloc !122
  %asmresult1.i = extractvalue { i64, i64 } %13, 1
  br label %if.end188

if.end188:                                        ; preds = %if.else184, %if.then178
  %val.0 = phi i64 [ %conv183, %if.then178 ], [ %asmresult1.i, %if.else184 ]
  %lock_detect_gpiod = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %lock_detect_gpiod to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock_detect_gpiod, align 8
  %tobool190.not = icmp eq ptr %15, null
  br i1 %tobool190.not, label %if.end188.cond.false231_crit_edge, label %if.then191

if.end188.cond.false231_crit_edge:                ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false231

if.then191:                                       ; preds = %if.end188
  %call193 = tail call i32 @gpiod_get_value(ptr noundef nonnull %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193)
  %tobool194.not = icmp eq i32 %call193, 0
  br i1 %tobool194.not, label %do.body, label %if.then191.cond.false231_crit_edge

if.then191.cond.false231_crit_edge:               ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false231

do.body:                                          ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf4350_read.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf4350_read, %if.then205)) #7
          to label %sw.epilog [label %if.then205], !srcloc !123

if.then205:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf4350_read.__UNIQUE_ID_ddebug292, ptr noundef %17, ptr noundef nonnull @.str.39) #7
  br label %sw.epilog

sw.bb209:                                         ; preds = %entry
  %clk = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 16
  %tobool210.not = icmp eq ptr %19, null
  br i1 %tobool210.not, label %sw.bb209.if.end214_crit_edge, label %if.then211

sw.bb209.if.end214_crit_edge:                     ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end214

if.then211:                                       ; preds = %sw.bb209
  call void @__sanitizer_cov_trace_pc() #9
  %call213 = tail call i32 @clk_get_rate(ptr noundef nonnull %19) #7
  %clkin = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %clkin to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call213, ptr %clkin, align 4
  br label %if.end214

if.end214:                                        ; preds = %if.then211, %sw.bb209.if.end214_crit_edge
  %clkin215 = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %clkin215 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %clkin215, align 4
  %conv216 = zext i32 %22 to i64
  br label %cond.false231

sw.bb217:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chspc = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %chspc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chspc, align 8
  %conv218 = zext i32 %24 to i64
  br label %cond.false231

sw.bb219:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.adf4350_state, ptr %1, i32 0, i32 13, i32 2
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %and220 = lshr i32 %26, 5
  %and220.lobit = and i32 %and220, 1
  %27 = zext i32 %and220.lobit to i64
  br label %cond.false231

sw.epilog:                                        ; preds = %if.then205, %do.body, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -16, %if.then205 ], [ -16, %do.body ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cond.end233

cond.false231:                                    ; preds = %sw.bb219, %sw.bb217, %if.end214, %if.then191.cond.false231_crit_edge, %if.end188.cond.false231_crit_edge
  %val.1.ph = phi i64 [ %val.0, %if.then191.cond.false231_crit_edge ], [ %val.0, %if.end188.cond.false231_crit_edge ], [ %conv216, %if.end214 ], [ %conv218, %sw.bb217 ], [ %27, %sw.bb219 ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %call232 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i64 noundef %val.1.ph)
  br label %cond.end233

cond.end233:                                      ; preds = %cond.false231, %sw.epilog
  %cond234 = phi i32 [ %call232, %cond.false231 ], [ %ret.0, %sw.epilog ]
  ret i32 %cond234
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf4350_write(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %readin = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %readin) #7
  %2 = ptrtoint ptr %readin to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %readin, align 8, !annotation !124
  %call1 = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %readin) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 16
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %3 = zext i32 %private to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %private, label %if.end.sw.epilog.thread_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb3
    i32 2, label %sw.bb24
    i32 3, label %sw.bb30
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.sw.epilog.thread_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

sw.bb3:                                           ; preds = %if.end
  %4 = ptrtoint ptr %readin to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %readin, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 250000000, i64 %5)
  %cmp = icmp ugt i64 %5, 250000000
  br i1 %cmp, label %sw.bb3.sw.epilog.thread_crit_edge, label %if.end5

sw.bb3.sw.epilog.thread_crit_edge:                ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end5:                                          ; preds = %sw.bb3
  %clk = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 16
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end5.if.end21_crit_edge, label %if.then7

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then7:                                         ; preds = %if.end5
  %conv = trunc i64 %5 to i32
  %call9 = call i32 @clk_round_rate(ptr noundef nonnull %7, i32 noundef %conv) #7
  %conv10 = zext i32 %call9 to i64
  %8 = ptrtoint ptr %readin to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %readin, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv10)
  %cmp11.not = icmp eq i64 %9, %conv10
  br i1 %cmp11.not, label %if.end14, label %if.then7.sw.epilog.thread_crit_edge

if.then7.sw.epilog.thread_crit_edge:              ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end14:                                         ; preds = %if.then7
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 16
  %call16 = call i32 @clk_set_rate(ptr noundef %11, i32 noundef %call9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.sw.epilog.thread_crit_edge, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.end14.sw.epilog.thread_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.end21:                                         ; preds = %if.end14.if.end21_crit_edge, %if.end5.if.end21_crit_edge
  %12 = ptrtoint ptr %readin to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %readin, align 8
  %conv22 = trunc i64 %13 to i32
  %clkin = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %clkin to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv22, ptr %clkin, align 4
  %freq_req = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 15
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  %15 = ptrtoint ptr %readin to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %readin, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp25 = icmp eq i64 %16, 0
  br i1 %cmp25, label %sw.bb24.sw.epilog.thread_crit_edge, label %if.else

sw.bb24.sw.epilog.thread_crit_edge:               ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.thread

if.else:                                          ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %conv28 = trunc i64 %16 to i32
  %chspc = getelementptr inbounds %struct.adf4350_state, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %chspc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv28, ptr %chspc, align 8
  br label %sw.epilog.thread65

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %readin to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %readin, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool31.not = icmp eq i64 %19, 0
  %arrayidx35 = getelementptr %struct.adf4350_state, ptr %1, i32 0, i32 13, i32 2
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx35, align 4
  %and = and i32 %21, -33
  %masksel = select i1 %tobool31.not, i32 0, i32 32
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %arrayidx35, align 4
  %call37 = call fastcc i32 @adf4350_sync_config(ptr noundef %1)
  br label %sw.epilog.thread65

sw.epilog.thread:                                 ; preds = %sw.bb24.sw.epilog.thread_crit_edge, %if.end14.sw.epilog.thread_crit_edge, %if.then7.sw.epilog.thread_crit_edge, %sw.bb3.sw.epilog.thread_crit_edge, %if.end.sw.epilog.thread_crit_edge
  %ret.0.ph = phi i32 [ -22, %if.end.sw.epilog.thread_crit_edge ], [ -22, %sw.bb24.sw.epilog.thread_crit_edge ], [ -22, %if.then7.sw.epilog.thread_crit_edge ], [ -22, %sw.bb3.sw.epilog.thread_crit_edge ], [ %call16, %if.end14.sw.epilog.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

sw.epilog.thread65:                               ; preds = %sw.bb30, %if.else
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %23

sw.epilog:                                        ; preds = %if.end21, %if.end.sw.epilog_crit_edge
  %.sink.in = phi ptr [ %freq_req, %if.end21 ], [ %readin, %if.end.sw.epilog_crit_edge ]
  %22 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load8_noabort(i32 %22)
  %.sink = load i64, ptr %.sink.in, align 8
  %call23 = call fastcc i32 @adf4350_set_freq(ptr noundef %1, i64 noundef %.sink)
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool39.not = icmp eq i32 %call23, 0
  br i1 %tobool39.not, label %sw.epilog._crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog._crit_edge:                             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %23

23:                                               ; preds = %sw.epilog._crit_edge, %sw.epilog.thread65
  br label %cleanup

cleanup:                                          ; preds = %23, %sw.epilog.cleanup_crit_edge, %sw.epilog.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %len, %23 ], [ %call23, %sw.epilog.cleanup_crit_edge ], [ %ret.0.ph, %sw.epilog.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %readin) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !100, !101, !103, !105, !106, !107, !108, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_adf4350__293_634_adf4350_driver_init6, !1, !"__initcall__kmod_adf4350__293_634_adf4350_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/frequency/adf4350.c", i32 634, i32 1}
!2 = !{ptr @__exitcall_adf4350_driver_exit, !1, !"__exitcall_adf4350_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/iio/frequency/adf4350.c", i32 636, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/iio/frequency/adf4350.c", i32 637, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/iio/frequency/adf4350.c", i32 638, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/frequency/adf4350.c", i32 627, i32 11}
!12 = !{ptr @adf4350_driver, !13, !"adf4350_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/frequency/adf4350.c", i32 625, i32 26}
!14 = !{ptr @adf4350_id, !15, !"adf4350_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/frequency/adf4350.c", i32 618, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/frequency/adf4350.c", i32 508, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adf4350_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @adf4350_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/frequency/adf4350.c", i32 513, i32 33}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/frequency/adf4350.c", i32 530, i32 42}
!28 = !{ptr @adf4350_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/iio/frequency/adf4350.c", i32 549, i32 2}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/frequency/adf4350.c", i32 395, i32 47}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/frequency/adf4350.c", i32 398, i32 27}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/frequency/adf4350.c", i32 402, i32 27}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/frequency/adf4350.c", i32 406, i32 27}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/frequency/adf4350.c", i32 410, i32 4}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/frequency/adf4350.c", i32 412, i32 4}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/frequency/adf4350.c", i32 416, i32 4}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/frequency/adf4350.c", i32 419, i32 4}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/frequency/adf4350.c", i32 422, i32 4}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/frequency/adf4350.c", i32 426, i32 27}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/frequency/adf4350.c", i32 430, i32 27}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/frequency/adf4350.c", i32 434, i32 4}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/frequency/adf4350.c", i32 440, i32 4}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/frequency/adf4350.c", i32 443, i32 4}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/iio/frequency/adf4350.c", i32 447, i32 4}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/frequency/adf4350.c", i32 450, i32 4}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/frequency/adf4350.c", i32 454, i32 27}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/frequency/adf4350.c", i32 458, i32 27}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/frequency/adf4350.c", i32 464, i32 4}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/frequency/adf4350.c", i32 467, i32 4}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/frequency/adf4350.c", i32 470, i32 4}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/iio/frequency/adf4350.c", i32 474, i32 27}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/frequency/adf4350.c", i32 478, i32 27}
!77 = !{ptr @default_pdata, !78, !"default_pdata", i1 false, i1 false}
!78 = !{!"../drivers/iio/frequency/adf4350.c", i32 64, i32 37}
!79 = !{ptr @adf4350_info, !80, !"adf4350_info", i1 false, i1 false}
!80 = !{!"../drivers/iio/frequency/adf4350.c", i32 380, i32 30}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/iio/frequency/adf4350.c", i32 92, i32 4}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @adf4350_sync_config.__UNIQUE_ID_ddebug290, !82, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!85 = !{ptr @adf4350_chan, !86, !"adf4350_chan", i1 false, i1 false}
!86 = !{!"../drivers/iio/frequency/adf4350.c", i32 373, i32 35}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/iio/frequency/adf4350.c", i32 366, i32 2}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/iio/frequency/adf4350.c", i32 367, i32 2}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/iio/frequency/adf4350.c", i32 368, i32 2}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/iio/frequency/adf4350.c", i32 369, i32 2}
!95 = !{ptr @adf4350_ext_info, !96, !"adf4350_ext_info", i1 false, i1 false}
!96 = !{!"../drivers/iio/frequency/adf4350.c", i32 361, i32 44}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/iio/frequency/adf4350.c", i32 328, i32 5}
!99 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @adf4350_read.__UNIQUE_ID_ddebug292, !98, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!101 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/iio/frequency/adf4350.c", i32 350, i32 38}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/iio/frequency/adf4350.c", i32 200, i32 2}
!105 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @adf4350_set_freq.__UNIQUE_ID_ddebug291, !104, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!107 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @adf4350_of_match, !110, !"adf4350_of_match", i1 false, i1 false}
!110 = !{!"../drivers/iio/frequency/adf4350.c", i32 611, i32 34}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i8 0, i8 2}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2148316704, i64 2148316984, i64 2148317318, i64 2148317652}
!123 = !{i64 2148291517, i64 2148291522, i64 2148291535, i64 2148291579, i64 2148291613, i64 2148291634}
!124 = !{!"auto-init"}
