; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/dpot-dac.c_pt.bc'
source_filename = "../drivers/iio/dac/dpot-dac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.dpot_dac = type { ptr, ptr, i32 }

@__initcall__kmod_dpot_dac__288_254_dpot_dac_driver_init6 = internal global ptr @dpot_dac_driver_init, section ".initcall6.init", align 4
@dpot_dac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dpot_dac_probe, ptr @dpot_dac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dpot_dac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dpot_dac_driver_exit = internal global ptr @dpot_dac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [72 x i8] c"dpot_dac.description=DAC emulation driver using a digital potentiometer\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [46 x i8] c"dpot_dac.author=Peter Rosin <peda@axentia.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"dpot_dac.file=drivers/iio/dac/dpot-dac\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"dpot_dac.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iio-dpot-dac\00", [19 x i8] zeroinitializer }, align 32
@dpot_dac_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dpot-dac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dpot_dac_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @dpot_dac_read_raw, ptr null, ptr @dpot_dac_read_avail, ptr @dpot_dac_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@dpot_dac_iio_channel = internal constant { %struct.iio_chan_spec, [40 x i8] } { %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 5, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 96 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get vref regulator\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpot\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get dpot input channel\0A\00", [62 x i8] zeroinitializer }, align 32
@dpot_dac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 201, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dpot is of the wrong type\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dpot_dac_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iio/dac/dpot-dac.c\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dpot_dac_probe._entry_ptr = internal global ptr @dpot_dac_probe._entry, section ".printk_index", align 4
@dpot_dac_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 212, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to enable the vref regulator\0A\00", [59 x i8] zeroinitializer }, align 32
@dpot_dac_probe._entry_ptr.12 = internal global ptr @dpot_dac_probe._entry.10, section ".printk_index", align 4
@dpot_dac_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 218, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@dpot_dac_probe._entry_ptr.15 = internal global ptr @dpot_dac_probe._entry.13, section ".printk_index", align 4
@dpot_dac_channel_max_ohms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.7, i32 143, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"dpot does not indicate its raw maximum value\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dpot_dac_channel_max_ohms\00", [38 x i8] zeroinitializer }, align 32
@dpot_dac_channel_max_ohms._entry_ptr = internal global ptr @dpot_dac_channel_max_ohms._entry, section ".printk_index", align 4
@dpot_dac_channel_max_ohms._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.7, i32 159, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dpot has a scale that is too weird\0A\00", [60 x i8] zeroinitializer }, align 32
@dpot_dac_channel_max_ohms._entry_ptr.20 = internal global ptr @dpot_dac_channel_max_ohms._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 10, i64 11]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 10, i64 11]
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"dpot_dac_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 246, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 250, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"dpot_dac_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 240, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"dpot_dac_info\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 125, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"dpot_dac_iio_channel\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 43, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 186, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 189, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 191, i32 40 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 194, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 201, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 212, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 218, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 143, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [30 x i8] c"../drivers/iio/dac/dpot-dac.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 159, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_dpot_dac_driver_exit, ptr @__initcall__kmod_dpot_dac__288_254_dpot_dac_driver_init6, ptr @dpot_dac_channel_max_ohms._entry, ptr @dpot_dac_channel_max_ohms._entry.18, ptr @dpot_dac_channel_max_ohms._entry_ptr, ptr @dpot_dac_channel_max_ohms._entry_ptr.20, ptr @dpot_dac_driver_exit, ptr @dpot_dac_probe._entry, ptr @dpot_dac_probe._entry.10, ptr @dpot_dac_probe._entry.13, ptr @dpot_dac_probe._entry_ptr, ptr @dpot_dac_probe._entry_ptr.12, ptr @dpot_dac_probe._entry_ptr.15, ptr @dpot_dac_driver, ptr @.str, ptr @dpot_dac_match, ptr @dpot_dac_info, ptr @dpot_dac_iio_channel, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_dac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_dac_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_dac_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_dac_iio_channel to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_dac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_dac_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_dac_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_dac_channel_max_ohms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpot_dac_channel_max_ohms._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dpot_dac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dpot_dac_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dpot_dac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @dpot_dac_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpot_dac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val2.i = alloca i32, align 4
  %max.i = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #5
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %type, align 4, !annotation !62
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 12) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %8 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retval.0.i, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %9 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dpot_dac_info, ptr %info, align 8
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @dpot_dac_iio_channel, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %num_channels, align 4
  %call4 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call4, ptr %3, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end12

if.then7:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call4 to i32
  %call11 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %14, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end12:                                         ; preds = %dev_name.exit
  %call13 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.3) #5
  %dpot = getelementptr inbounds %struct.dpot_dac, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %dpot to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13, ptr %dpot, align 4
  %cmp.i89 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call13 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %16, ptr noundef nonnull @.str.4) #5
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  %call23 = call i32 @iio_get_channel_type(ptr noundef %call13, ptr noundef nonnull %type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %18)
  %cmp26.not = icmp eq i32 %18, 25
  br i1 %cmp26.not, label %if.end28, label %do.end

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end25
  %dev1.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val2.i) #5
  %22 = ptrtoint ptr %val2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val2.i, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max.i) #5
  %23 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %max.i, align 4, !annotation !62
  %dpot.i = getelementptr inbounds %struct.dpot_dac, ptr %20, i32 0, i32 1
  %24 = ptrtoint ptr %dpot.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dpot.i, align 4
  %call2.i = call i32 @iio_read_max_channel_raw(ptr noundef %25, ptr noundef nonnull %max.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i90 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i90, label %if.end28.dpot_dac_channel_max_ohms.exit.thread_crit_edge, label %if.end.i91

if.end28.dpot_dac_channel_max_ohms.exit.thread_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpot_dac_channel_max_ohms.exit.thread

if.end.i91:                                       ; preds = %if.end28
  %26 = ptrtoint ptr %dpot.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dpot.i, align 4
  %call4.i = call i32 @iio_read_channel_scale(ptr noundef %27, ptr noundef nonnull %val.i, ptr noundef nonnull %val2.i) #5
  %28 = zext i32 %call4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4.i, label %if.end.i91.dpot_dac_channel_max_ohms.exit.thread_crit_edge [
    i32 1, label %sw.bb.i
    i32 10, label %sw.bb5.i
    i32 11, label %if.end422.i
  ]

if.end.i91.dpot_dac_channel_max_ohms.exit.thread_crit_edge: ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpot_dac_channel_max_ohms.exit.thread

sw.bb.i:                                          ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max.i, align 4
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i, align 4
  %mul.i = mul i32 %32, %30
  br label %dpot_dac_channel_max_ohms.exit

sw.bb5.i:                                         ; preds = %if.end.i91
  %33 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %max.i, align 4
  %conv.i = sext i32 %34 to i64
  %35 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i, align 4
  %conv6.i = sext i32 %36 to i64
  %mul7.i = mul nsw i64 %conv6.i, %conv.i
  %37 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul7.i)
  %cmp179.i = icmp ult i64 %mul7.i, 4294967296
  br i1 %cmp179.i, label %if.then183.i, label %if.else189.i, !prof !63

if.then183.i:                                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv184.i = trunc i64 %mul7.i to i32
  %div187.i = udiv i32 %conv184.i, %38
  br label %dpot_dac_channel_max_ohms.exit

if.else189.i:                                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #7
  %39 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %38, i64 %mul7.i) #9, !srcloc !64
  %asmresult1.i.i = extractvalue { i64, i64 } %39, 1
  %extract.t634.i = trunc i64 %asmresult1.i.i to i32
  br label %dpot_dac_channel_max_ohms.exit

if.end422.i:                                      ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i, align 4
  %conv197.i = sext i32 %41 to i64
  %mul198.i = mul nsw i64 %conv197.i, 1000000000
  %42 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max.i, align 4
  %conv199.i = sext i32 %43 to i64
  %mul200.i = mul i64 %mul198.i, %conv199.i
  %44 = ptrtoint ptr %val2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val2.i, align 4
  %sh_prom201.i = zext i32 %45 to i64
  %shr202.i = ashr i64 %mul200.i, %sh_prom201.i
  %46 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %shr202.i, i32 0) #9, !srcloc !65
  %asmresult.i601.i = extractvalue { i64, i32 } %46, 0
  %asmresult4.i602.i = extractvalue { i64, i32 } %46, 1
  %47 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %shr202.i, i64 %asmresult.i601.i, i32 %asmresult4.i602.i) #9, !srcloc !66
  %asmresult10.i606.i = extractvalue { i64, i32 } %47, 0
  %storemerge.i = lshr i64 %asmresult10.i606.i, 29
  %conv424.i = trunc i64 %storemerge.i to i32
  br label %dpot_dac_channel_max_ohms.exit

dpot_dac_channel_max_ohms.exit.thread:            ; preds = %if.end.i91.dpot_dac_channel_max_ohms.exit.thread_crit_edge, %if.end28.dpot_dac_channel_max_ohms.exit.thread_crit_edge
  %.str.16.sink = phi ptr [ @.str.16, %if.end28.dpot_dac_channel_max_ohms.exit.thread_crit_edge ], [ @.str.19, %if.end.i91.dpot_dac_channel_max_ohms.exit.thread_crit_edge ]
  %retval.0.i93.ph = phi i32 [ %call2.i, %if.end28.dpot_dac_channel_max_ohms.exit.thread_crit_edge ], [ -22, %if.end.i91.dpot_dac_channel_max_ohms.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull %.str.16.sink) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

dpot_dac_channel_max_ohms.exit:                   ; preds = %if.end422.i, %if.else189.i, %if.then183.i, %sw.bb.i
  %retval.0.i93 = phi i32 [ %conv424.i, %if.end422.i ], [ %mul.i, %sw.bb.i ], [ %div187.i, %if.then183.i ], [ %extract.t634.i, %if.else189.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i93)
  %cmp30 = icmp slt i32 %retval.0.i93, 0
  br i1 %cmp30, label %dpot_dac_channel_max_ohms.exit.cleanup_crit_edge, label %if.end32

dpot_dac_channel_max_ohms.exit.cleanup_crit_edge: ; preds = %dpot_dac_channel_max_ohms.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %dpot_dac_channel_max_ohms.exit
  %max_ohms = getelementptr inbounds %struct.dpot_dac, ptr %3, i32 0, i32 2
  %48 = ptrtoint ptr %max_ohms to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i93, ptr %max_ohms, align 4
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %call34 = call i32 @regulator_enable(ptr noundef %50) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %call41 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %do.end46

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %3, align 4
  %call49 = call i32 @regulator_disable(ptr noundef %52) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %if.end40.cleanup_crit_edge, %do.end39, %dpot_dac_channel_max_ohms.exit.cleanup_crit_edge, %dpot_dac_channel_max_ohms.exit.thread, %do.end, %if.end21.cleanup_crit_edge, %if.then16, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.then7 ], [ %call20, %if.then16 ], [ -22, %do.end ], [ %call34, %do.end39 ], [ %call41, %do.end46 ], [ -12, %entry.cleanup_crit_edge ], [ %call23, %if.end21.cleanup_crit_edge ], [ %retval.0.i93, %dpot_dac_channel_max_ohms.exit.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ], [ %retval.0.i93.ph, %dpot_dac_channel_max_ohms.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpot_dac_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpot_dac_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dpot = getelementptr inbounds %struct.dpot_dac, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dpot, align 4
  %call1 = tail call i32 @iio_read_channel_raw(ptr noundef %4, ptr noundef %val) #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %dpot3 = getelementptr inbounds %struct.dpot_dac, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dpot3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dpot3, align 4
  %call4 = tail call i32 @iio_read_channel_scale(ptr noundef %6, ptr noundef %val, ptr noundef %val2) #5
  %7 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %call4, label %sw.bb2.cleanup_crit_edge [
    i32 11, label %sw.bb5
    i32 1, label %sw.bb416
    i32 10, label %sw.bb2.sw.bb417_crit_edge
  ]

sw.bb2.sw.bb417_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb417

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb2
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %conv = sext i32 %9 to i64
  %mul = mul nsw i64 %conv, 1000000000
  %max_ohms = getelementptr inbounds %struct.dpot_dac, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %max_ohms to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_ohms, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp174 = icmp ult i64 %mul, 4294967296
  br i1 %cmp174, label %if.then178, label %if.else184, !prof !63

if.then178:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %conv179 = trunc i64 %mul to i32
  %div182 = udiv i32 %conv179, %11
  %conv183 = zext i32 %div182 to i64
  br label %if.end413

if.else184:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %11, i64 %mul) #9, !srcloc !64
  %asmresult1.i = extractvalue { i64, i64 } %12, 1
  br label %if.end413

if.end413:                                        ; preds = %if.else184, %if.then178
  %tmp.0 = phi i64 [ %conv183, %if.then178 ], [ %asmresult1.i, %if.else184 ]
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call190 = tail call i32 @regulator_get_voltage(ptr noundef %14) #5
  %div191 = sdiv i32 %call190, 1000
  %conv192 = sext i32 %div191 to i64
  %mul193 = mul i64 %tmp.0, %conv192
  %15 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul193, i32 0) #9, !srcloc !65
  %asmresult.i = extractvalue { i64, i32 } %15, 0
  %asmresult4.i = extractvalue { i64, i32 } %15, 1
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul193, i64 %asmresult.i, i32 %asmresult4.i) #9, !srcloc !66
  %asmresult10.i = extractvalue { i64, i32 } %16, 0
  %storemerge = lshr i64 %asmresult10.i, 29
  %conv415 = trunc i64 %storemerge to i32
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv415, ptr %val, align 4
  br label %cleanup

sw.bb416:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %val2, align 4
  br label %sw.bb417

sw.bb417:                                         ; preds = %sw.bb416, %sw.bb2.sw.bb417_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call419 = tail call i32 @regulator_get_voltage(ptr noundef %20) #5
  %div420 = sdiv i32 %call419, 1000
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %mul421 = mul i32 %22, %div420
  store i32 %mul421, ptr %val, align 4
  %max_ohms422 = getelementptr inbounds %struct.dpot_dac, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %max_ohms422 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_ohms422, align 4
  %25 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val2, align 4
  %mul423 = mul i32 %26, %24
  store i32 %mul423, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb417, %if.end413, %sw.bb2.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end413 ], [ %call1, %sw.bb ], [ %call4, %sw.bb2.cleanup_crit_edge ], [ 10, %sw.bb417 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpot_dac_read_avail(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr noundef %vals, ptr nocapture noundef writeonly %type, ptr noundef %length, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %type, align 4
  %dpot = getelementptr inbounds %struct.dpot_dac, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dpot, align 4
  %call1 = tail call i32 @iio_read_avail_channel_raw(ptr noundef %4, ptr noundef %vals, ptr noundef %length) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dpot_dac_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dpot = getelementptr inbounds %struct.dpot_dac, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dpot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dpot, align 4
  %call1 = tail call i32 @iio_write_channel_raw(ptr noundef %3, i32 noundef %val) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_raw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_scale(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_avail_channel_raw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_write_channel_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_max_channel_raw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_dpot_dac__288_254_dpot_dac_driver_init6, !1, !"__initcall__kmod_dpot_dac__288_254_dpot_dac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/dpot-dac.c", i32 254, i32 1}
!2 = !{ptr @__exitcall_dpot_dac_driver_exit, !1, !"__exitcall_dpot_dac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/dpot-dac.c", i32 256, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/dpot-dac.c", i32 257, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/dpot-dac.c", i32 258, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/dpot-dac.c", i32 250, i32 11}
!12 = !{ptr @dpot_dac_driver, !13, !"dpot_dac_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/dpot-dac.c", i32 246, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/dpot-dac.c", i32 186, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/dpot-dac.c", i32 189, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/dac/dpot-dac.c", i32 191, i32 40}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/dac/dpot-dac.c", i32 194, i32 10}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/dac/dpot-dac.c", i32 201, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dpot_dac_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @dpot_dac_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/dac/dpot-dac.c", i32 212, i32 3}
!32 = !{ptr @dpot_dac_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dpot_dac_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/dac/dpot-dac.c", i32 218, i32 3}
!36 = !{ptr @dpot_dac_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dpot_dac_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @dpot_dac_info, !39, !"dpot_dac_info", i1 false, i1 false}
!39 = !{!"../drivers/iio/dac/dpot-dac.c", i32 125, i32 30}
!40 = !{ptr @dpot_dac_iio_channel, !41, !"dpot_dac_iio_channel", i1 false, i1 false}
!41 = !{!"../drivers/iio/dac/dpot-dac.c", i32 43, i32 35}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/dac/dpot-dac.c", i32 143, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dpot_dac_channel_max_ohms._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @dpot_dac_channel_max_ohms._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/dac/dpot-dac.c", i32 159, i32 3}
!49 = !{ptr @dpot_dac_channel_max_ohms._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @dpot_dac_channel_max_ohms._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @dpot_dac_match, !52, !"dpot_dac_match", i1 false, i1 false}
!52 = !{!"../drivers/iio/dac/dpot-dac.c", i32 240, i32 34}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2148362655, i64 2148362935, i64 2148363269, i64 2148363603}
!65 = !{i64 877111, i64 877138, i64 877160, i64 877188}
!66 = !{i64 877519, i64 877546, i64 877579, i64 877600, i64 877627, i64 877653}
