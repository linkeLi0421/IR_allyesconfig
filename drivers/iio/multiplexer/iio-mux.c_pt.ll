; ModuleID = '/llk/IR_all_yes/drivers/iio/multiplexer/iio-mux.c_pt.bc'
source_filename = "../drivers/iio/multiplexer/iio-mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.mux_child = type { ptr }
%struct.iio_channel = type { ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.mux_ext_info_cache = type { ptr, i32 }

@__initcall__kmod_iio_mux__170_460_mux_driver_init6 = internal global ptr @mux_driver_init, section ".initcall6.init", align 4
@mux_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mux_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mux_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mux_driver_exit = internal global ptr @mux_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [43 x i8] c"iio_mux.description=IIO multiplexer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [45 x i8] c"iio_mux.author=Peter Rosin <peda@axentia.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [45 x i8] c"iio_mux.file=drivers/iio/multiplexer/iio-mux\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [23 x i8] c"iio_mux.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iio-mux\00", [24 x i8] zeroinitializer }, align 32
@mux_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"io-channel-mux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parent\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get parent channel\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"channels\00", [23 x i8] zeroinitializer }, align 32
@mux_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 375, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"not even a single child\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mux_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/iio/multiplexer/iio-mux.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mux_probe._entry_ptr = internal global ptr @mux_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"settle-time-us\00", [17 x i8] zeroinitializer }, align 32
@mux_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @mux_read_raw, ptr null, ptr @mux_read_avail, ptr @mux_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mux_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 424, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get control-mux\0A\00", [37 x i8] zeroinitializer }, align 32
@mux_probe._entry_ptr.12 = internal global ptr @mux_probe._entry.10, section ".printk_index", align 4
@mux_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 440, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register iio device\0A\00", [33 x i8] zeroinitializer }, align 32
@mux_probe._entry_ptr.15 = internal global ptr @mux_probe._entry.13, section ".printk_index", align 4
@mux_configure_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 258, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get parent channel type\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mux_configure_channel\00", [42 x i8] zeroinitializer }, align 32
@mux_configure_channel._entry_ptr = internal global ptr @mux_configure_channel._entry, section ".printk_index", align 4
@mux_configure_channel._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.6, i32 271, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"too many channels\0A\00", [45 x i8] zeroinitializer }, align 32
@mux_configure_channel._entry_ptr.20 = internal global ptr @mux_configure_channel._entry.18, section ".printk_index", align 4
@mux_configure_channel._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.6, i32 303, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get ext_info '%s'\0A\00", [35 x i8] zeroinitializer }, align 32
@mux_configure_channel._entry_ptr.23 = internal global ptr @mux_configure_channel._entry.21, section ".printk_index", align 4
@mux_configure_channel._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.6, i32 308, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"too large ext_info '%s'\0A\00", [39 x i8] zeroinitializer }, align 32
@mux_configure_channel._entry_ptr.26 = internal global ptr @mux_configure_channel._entry.24, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"mux_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 453, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 456, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [10 x i8] c"mux_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 447, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 358, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 361, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 370, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 375, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 398, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"mux_info\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 171, i32 30 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 424, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 440, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 258, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 271, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 302, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [37 x i8] c"../drivers/iio/multiplexer/iio-mux.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 307, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_mux_driver_exit, ptr @__initcall__kmod_iio_mux__170_460_mux_driver_init6, ptr @mux_configure_channel._entry, ptr @mux_configure_channel._entry.18, ptr @mux_configure_channel._entry.21, ptr @mux_configure_channel._entry.24, ptr @mux_configure_channel._entry_ptr, ptr @mux_configure_channel._entry_ptr.20, ptr @mux_configure_channel._entry_ptr.23, ptr @mux_configure_channel._entry_ptr.26, ptr @mux_driver_exit, ptr @mux_probe._entry, ptr @mux_probe._entry.10, ptr @mux_probe._entry.13, ptr @mux_probe._entry_ptr, ptr @mux_probe._entry_ptr.12, ptr @mux_probe._entry_ptr.15, ptr @mux_driver, ptr @.str, ptr @mux_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mux_info, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_configure_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_configure_channel._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_configure_channel._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_configure_channel._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mux_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mux_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @mux_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call to i32
  %call6 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %2, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @iio_get_channel_ext_info_count(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %3 = mul i32 %call8, 20
  %mul = add i32 %3, 20
  %sizeof_ext_info.0 = select i1 %tobool9.not, i32 0, i32 %mul
  %call12 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef null) #5
  %call13 = tail call ptr @of_prop_next_string(ptr noundef %call12, ptr noundef null) #5
  %tobool14.not236 = icmp eq ptr %call13, null
  br i1 %tobool14.not236, label %if.end7.do.end_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7.for.body_crit_edge
  %children.0238 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end7.for.body_crit_edge ]
  %label.0237 = phi ptr [ %call18, %for.body.for.body_crit_edge ], [ %call13, %if.end7.for.body_crit_edge ]
  %4 = ptrtoint ptr %label.0237 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %label.0237, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool15.not = icmp ne i8 %5, 0
  %inc = zext i1 %tobool15.not to i32
  %spec.select = add i32 %children.0238, %inc
  %call18 = tail call ptr @of_prop_next_string(ptr noundef %call12, ptr noundef nonnull %label.0237) #5
  %tobool14.not = icmp eq ptr %call18, null
  br i1 %tobool14.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select)
  %cmp = icmp slt i32 %spec.select, 1
  br i1 %cmp, label %for.end.do.end_crit_edge, label %if.end20

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %if.end7.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end20:                                         ; preds = %for.end
  %reass.mul = mul i32 %spec.select, 92
  %add24 = add i32 %sizeof_ext_info.0, 32
  %add25 = add i32 %add24, %reass.mul
  %call26 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef %add25) #5
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end20.cleanup_crit_edge, label %if.end29

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end20
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call26, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %add.ptr = getelementptr %struct.mux, ptr %7, i32 1
  %child = getelementptr inbounds %struct.mux, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %child to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %child, align 4
  %add.ptr32 = getelementptr %struct.mux_child, ptr %add.ptr, i32 %spec.select
  %chan = getelementptr inbounds %struct.mux, ptr %7, i32 0, i32 4
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr32, ptr %chan, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call26, ptr %driver_data.i.i, align 4
  %parent33 = getelementptr inbounds %struct.mux, ptr %7, i32 0, i32 2
  %11 = ptrtoint ptr %parent33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %parent33, align 4
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %7, align 4
  %delay_us = getelementptr inbounds %struct.mux, ptr %7, i32 0, i32 7
  %13 = ptrtoint ptr %delay_us to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %delay_us, align 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef %delay_us, i32 noundef 1, i32 noundef 0) #5
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end29.dev_name.exit_crit_edge

if.end29.dev_name.exit_crit_edge:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end29.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %if.end29.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call26, i32 0, i32 15
  %18 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call26, i32 0, i32 17
  %19 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @mux_info, ptr %info, align 8
  %20 = ptrtoint ptr %call26 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %call26, align 8
  %21 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chan, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call26, i32 0, i32 13
  %23 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call26, i32 0, i32 14
  %24 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %spec.select, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sizeof_ext_info.0)
  %tobool38.not = icmp eq i32 %sizeof_ext_info.0, 0
  br i1 %tobool38.not, label %dev_name.exit.if.end74_crit_edge, label %if.then39

dev_name.exit.if.end74_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then39:                                        ; preds = %dev_name.exit
  %channel = getelementptr inbounds %struct.iio_channel, ptr %call, i32 0, i32 1
  %25 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %channel, align 4
  %ext_info = getelementptr inbounds %struct.iio_chan_spec, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %ext_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ext_info, align 4
  %call40 = tail call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef %28, i32 noundef %sizeof_ext_info.0, i32 noundef 3264) #5
  %ext_info41 = getelementptr inbounds %struct.mux, ptr %7, i32 0, i32 5
  %29 = ptrtoint ptr %ext_info41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call40, ptr %ext_info41, align 4
  %tobool43.not = icmp eq ptr %call40, null
  br i1 %tobool43.not, label %if.then39.cleanup_crit_edge, label %for.cond46.preheader

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond46.preheader:                             ; preds = %if.then39
  %30 = ptrtoint ptr %ext_info41 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ext_info41, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool49.not239 = icmp eq ptr %33, null
  br i1 %tobool49.not239, label %for.cond46.preheader.if.end74_crit_edge, label %for.cond46.preheader.for.body50_crit_edge

for.cond46.preheader.for.body50_crit_edge:        ; preds = %for.cond46.preheader
  br label %for.body50

for.cond46.preheader.if.end74_crit_edge:          ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

for.body50:                                       ; preds = %if.end68.for.body50_crit_edge, %for.cond46.preheader.for.body50_crit_edge
  %34 = phi ptr [ %54, %if.end68.for.body50_crit_edge ], [ %31, %for.cond46.preheader.for.body50_crit_edge ]
  %i.0240 = phi i32 [ %inc72, %if.end68.for.body50_crit_edge ], [ 0, %for.cond46.preheader.for.body50_crit_edge ]
  %35 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %channel, align 4
  %ext_info52 = getelementptr inbounds %struct.iio_chan_spec, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %ext_info52 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ext_info52, align 4
  %read = getelementptr %struct.iio_chan_spec_ext_info, ptr %38, i32 %i.0240, i32 2
  %39 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read, align 4
  %tobool54.not = icmp eq ptr %40, null
  br i1 %tobool54.not, label %for.body50.if.end59_crit_edge, label %if.then55

for.body50.if.end59_crit_edge:                    ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then55:                                        ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #7
  %read58 = getelementptr %struct.iio_chan_spec_ext_info, ptr %34, i32 %i.0240, i32 2
  %41 = ptrtoint ptr %read58 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @mux_read_ext_info, ptr %read58, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %for.body50.if.end59_crit_edge
  %42 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %channel, align 4
  %ext_info61 = getelementptr inbounds %struct.iio_chan_spec, ptr %43, i32 0, i32 16
  %44 = ptrtoint ptr %ext_info61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ext_info61, align 4
  %write = getelementptr %struct.iio_chan_spec_ext_info, ptr %45, i32 %i.0240, i32 3
  %46 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write, align 4
  %tobool63.not = icmp eq ptr %47, null
  br i1 %tobool63.not, label %if.end59.if.end68_crit_edge, label %if.then64

if.end59.if.end68_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end68

if.then64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %ext_info41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ext_info41, align 4
  %write67 = getelementptr %struct.iio_chan_spec_ext_info, ptr %49, i32 %i.0240, i32 3
  %50 = ptrtoint ptr %write67 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @mux_write_ext_info, ptr %write67, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %if.end59.if.end68_crit_edge
  %51 = ptrtoint ptr %ext_info41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ext_info41, align 4
  %private = getelementptr %struct.iio_chan_spec_ext_info, ptr %52, i32 %i.0240, i32 4
  %53 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %i.0240, ptr %private, align 4
  %inc72 = add i32 %i.0240, 1
  %54 = load ptr, ptr %ext_info41, align 4
  %arrayidx = getelementptr %struct.iio_chan_spec_ext_info, ptr %54, i32 %inc72
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx, align 4
  %tobool49.not = icmp eq ptr %56, null
  br i1 %tobool49.not, label %if.end68.if.end74_crit_edge, label %if.end68.for.body50_crit_edge

if.end68.for.body50_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body50

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.end74:                                         ; preds = %if.end68.if.end74_crit_edge, %for.cond46.preheader.if.end74_crit_edge, %dev_name.exit.if.end74_crit_edge
  %call75 = tail call ptr @devm_mux_control_get(ptr noundef %dev1, ptr noundef null) #5
  %control = getelementptr inbounds %struct.mux, ptr %7, i32 0, i32 1
  %57 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call75, ptr %control, align 4
  %cmp.i208 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %if.then78, label %if.end89

if.then78:                                        ; preds = %if.end74
  %cmp81.not = icmp eq ptr %call75, inttoptr (i32 -517 to ptr)
  br i1 %cmp81.not, label %if.then78.if.end86_crit_edge, label %do.end85

if.then78.if.end86_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

do.end85:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #8
  br label %if.end86

if.end86:                                         ; preds = %do.end85, %if.then78.if.end86_crit_edge
  %58 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %control, align 4
  %60 = ptrtoint ptr %59 to i32
  br label %cleanup

if.end89:                                         ; preds = %if.end74
  %call90 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef null) #5
  %call91 = tail call ptr @of_prop_next_string(ptr noundef %call90, ptr noundef null) #5
  %tobool93.not243 = icmp eq ptr %call91, null
  br i1 %tobool93.not243, label %if.end89.for.end106_crit_edge, label %for.body94.lr.ph

if.end89.for.end106_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end106

for.body94.lr.ph:                                 ; preds = %if.end89
  %ext_info.i = getelementptr inbounds %struct.mux, ptr %7, i32 0, i32 5
  br label %for.body94

for.body94:                                       ; preds = %for.inc103.for.body94_crit_edge, %for.body94.lr.ph
  %i.1248 = phi i32 [ 0, %for.body94.lr.ph ], [ %i.2, %for.inc103.for.body94_crit_edge ]
  %state.0246 = phi i32 [ 0, %for.body94.lr.ph ], [ %inc105, %for.inc103.for.body94_crit_edge ]
  %label.1244 = phi ptr [ %call91, %for.body94.lr.ph ], [ %call104, %for.inc103.for.body94_crit_edge ]
  %61 = ptrtoint ptr %label.1244 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %label.1244, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool95.not = icmp eq i8 %62, 0
  br i1 %tobool95.not, label %for.body94.for.inc103_crit_edge, label %if.end97

for.body94.for.inc103_crit_edge:                  ; preds = %for.body94
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc103

if.end97:                                         ; preds = %for.body94
  %inc98 = add i32 %i.1248, 1
  %63 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %child, align 4
  %arrayidx.i = getelementptr %struct.mux_child, ptr %64, i32 %i.1248
  %65 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chan, align 4
  %arrayidx3.i = getelementptr %struct.iio_chan_spec, ptr %66, i32 %i.1248
  %67 = ptrtoint ptr %parent33 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %parent33, align 4
  %channel.i = getelementptr inbounds %struct.iio_channel, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %channel.i, align 4
  %indexed.i = getelementptr %struct.iio_chan_spec, ptr %66, i32 %i.1248, i32 19
  %71 = ptrtoint ptr %indexed.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i = load i8, ptr %indexed.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %indexed.i, align 4
  %output.i = getelementptr inbounds %struct.iio_chan_spec, ptr %70, i32 0, i32 19
  %72 = ptrtoint ptr %output.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load4.i = load i8, ptr %output.i, align 4
  %bf.clear5.i = and i8 %bf.load4.i, 32
  %bf.clear8.i = and i8 %bf.set.i, -33
  %bf.set9.i = or i8 %bf.clear5.i, %bf.clear8.i
  store i8 %bf.set9.i, ptr %indexed.i, align 4
  %datasheet_name.i = getelementptr %struct.iio_chan_spec, ptr %66, i32 %i.1248, i32 18
  %73 = ptrtoint ptr %datasheet_name.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %label.1244, ptr %datasheet_name.i, align 4
  %74 = ptrtoint ptr %ext_info.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ext_info.i, align 4
  %ext_info10.i = getelementptr %struct.iio_chan_spec, ptr %66, i32 %i.1248, i32 16
  %76 = ptrtoint ptr %ext_info10.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %ext_info10.i, align 4
  %77 = load ptr, ptr %parent33, align 4
  %call.i = tail call i32 @iio_get_channel_type(ptr noundef %77, ptr noundef %arrayidx3.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i209 = icmp slt i32 %call.i, 0
  br i1 %cmp.i209, label %do.end.i, label %if.end.i210

do.end.i:                                         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.end.i210:                                      ; preds = %if.end97
  %info_mask_separate.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %70, i32 0, i32 6
  %78 = ptrtoint ptr %info_mask_separate.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %info_mask_separate.i.i, align 4
  %info_mask_shared_by_type.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %70, i32 0, i32 8
  %80 = ptrtoint ptr %info_mask_shared_by_type.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %info_mask_shared_by_type.i.i, align 4
  %and15.i.i = or i32 %81, %79
  %info_mask_shared_by_dir.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %70, i32 0, i32 10
  %82 = ptrtoint ptr %info_mask_shared_by_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %info_mask_shared_by_dir.i.i, align 4
  %or16.i.i = or i32 %and15.i.i, %83
  %info_mask_shared_by_all.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %70, i32 0, i32 12
  %84 = ptrtoint ptr %info_mask_shared_by_all.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %info_mask_shared_by_all.i.i, align 4
  %or517.i.i = or i32 %or16.i.i, %85
  %or8.i.i = and i32 %or517.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %tobool.i.not.i = icmp eq i32 %or8.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.i210.if.end14.i_crit_edge, label %if.then13.i

if.end.i210.if.end14.i_crit_edge:                 ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #7
  %info_mask_separate.i = getelementptr %struct.iio_chan_spec, ptr %66, i32 %i.1248, i32 6
  %86 = ptrtoint ptr %info_mask_separate.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %info_mask_separate.i, align 4
  %or.i = or i32 %87, 1
  store i32 %or.i, ptr %info_mask_separate.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end.i210.if.end14.i_crit_edge
  %88 = ptrtoint ptr %info_mask_separate.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %info_mask_separate.i.i, align 4
  %90 = ptrtoint ptr %info_mask_shared_by_type.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %info_mask_shared_by_type.i.i, align 4
  %and15.i169.i = or i32 %91, %89
  %92 = ptrtoint ptr %info_mask_shared_by_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %info_mask_shared_by_dir.i.i, align 4
  %or16.i171.i = or i32 %and15.i169.i, %93
  %94 = ptrtoint ptr %info_mask_shared_by_all.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %info_mask_shared_by_all.i.i, align 4
  %or517.i173.i = or i32 %or16.i171.i, %95
  %or8.i174.i = and i32 %or517.i173.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i174.i)
  %tobool.i175.not.i = icmp eq i32 %or8.i174.i, 0
  br i1 %tobool.i175.not.i, label %if.end14.i.if.end19.i_crit_edge, label %if.then16.i

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %info_mask_separate17.i = getelementptr %struct.iio_chan_spec, ptr %66, i32 %i.1248, i32 6
  %96 = ptrtoint ptr %info_mask_separate17.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %info_mask_separate17.i, align 4
  %or18.i = or i32 %97, 4
  store i32 %or18.i, ptr %info_mask_separate17.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then16.i, %if.end14.i.if.end19.i_crit_edge
  %info_mask_separate_available.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %70, i32 0, i32 7
  %98 = ptrtoint ptr %info_mask_separate_available.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %info_mask_separate_available.i.i, align 4
  %info_mask_shared_by_type_available.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %70, i32 0, i32 9
  %100 = ptrtoint ptr %info_mask_shared_by_type_available.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %info_mask_shared_by_type_available.i.i, align 4
  %and1.i.i = or i32 %101, %99
  %info_mask_shared_by_dir_available.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %70, i32 0, i32 11
  %102 = ptrtoint ptr %info_mask_shared_by_dir_available.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %info_mask_shared_by_dir_available.i.i, align 4
  %or2.i.i = or i32 %and1.i.i, %103
  %info_mask_shared_by_all_available.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %70, i32 0, i32 13
  %104 = ptrtoint ptr %info_mask_shared_by_all_available.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %info_mask_shared_by_all_available.i.i, align 4
  %or53.i.i = or i32 %or2.i.i, %105
  %or8.i176.i = and i32 %or53.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i176.i)
  %tobool.i177.not.i = icmp eq i32 %or8.i176.i, 0
  br i1 %tobool.i177.not.i, label %if.end19.i.if.end23.i_crit_edge, label %if.then21.i

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %info_mask_separate_available.i = getelementptr %struct.iio_chan_spec, ptr %66, i32 %i.1248, i32 7
  %106 = ptrtoint ptr %info_mask_separate_available.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %info_mask_separate_available.i, align 4
  %or22.i = or i32 %107, 1
  store i32 %or22.i, ptr %info_mask_separate_available.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end23.i_crit_edge
  %108 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %control, align 4
  %call24.i = tail call i32 @mux_control_states(ptr noundef %109) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call24.i, i32 %state.0246)
  %cmp25.not.i = icmp ugt i32 %call24.i, %state.0246
  br i1 %cmp25.not.i, label %if.end30.i, label %do.end29.i

do.end29.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end30.i:                                       ; preds = %if.end23.i
  %channel31.i = getelementptr %struct.iio_chan_spec, ptr %66, i32 %i.1248, i32 1
  %110 = ptrtoint ptr %channel31.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %state.0246, ptr %channel31.i, align 4
  %111 = ptrtoint ptr %parent33 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %parent33, align 4
  %call33.i = tail call i32 @iio_get_channel_ext_info_count(ptr noundef %112) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool.not.i211 = icmp eq i32 %call33.i, 0
  br i1 %tobool.not.i211, label %if.end30.i.if.end39.i_crit_edge, label %if.then34.i

if.end30.i.if.end39.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

if.then34.i:                                      ; preds = %if.end30.i
  %call.i.i212 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 4096, i32 noundef 3520) #5
  %tobool36.not.i = icmp eq ptr %call.i.i212, null
  br i1 %tobool36.not.i, label %if.then34.i.cleanup_crit_edge, label %if.then34.i.if.end39.i_crit_edge

if.then34.i.if.end39.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

if.then34.i.cleanup_crit_edge:                    ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end39.i:                                       ; preds = %if.then34.i.if.end39.i_crit_edge, %if.end30.i.if.end39.i_crit_edge
  %page.0.i = phi ptr [ %call.i.i212, %if.then34.i.if.end39.i_crit_edge ], [ null, %if.end30.i.if.end39.i_crit_edge ]
  %113 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call33.i, i32 8) #5
  %114 = extractvalue { i32, i1 } %113, 1
  br i1 %114, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !68

devm_kcalloc.exit.thread.i:                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %115 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %arrayidx.i, align 4
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end39.i
  %116 = extractvalue { i32, i1 } %113, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %116, i32 noundef 3520) #5
  %117 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call5.i.i.i, ptr %arrayidx.i, align 4
  %tobool42.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool42.not.i, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  br i1 %tobool.not.i211, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %ext_info48.i = getelementptr inbounds %struct.iio_chan_spec, ptr %70, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0189.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %118 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i, align 4
  %size.i = getelementptr %struct.mux_ext_info_cache, ptr %119, i32 %i.0189.i, i32 1
  %120 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %size.i, align 4
  %121 = ptrtoint ptr %ext_info48.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ext_info48.i, align 4
  %write.i = getelementptr %struct.iio_chan_spec_ext_info, ptr %122, i32 %i.0189.i, i32 3
  %123 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %write.i, align 4
  %tobool50.not.i = icmp eq ptr %124, null
  br i1 %tobool50.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end52.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end52.i:                                       ; preds = %for.body.i
  %read.i = getelementptr %struct.iio_chan_spec_ext_info, ptr %122, i32 %i.0189.i, i32 2
  %125 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %read.i, align 4
  %tobool55.not.i = icmp eq ptr %126, null
  br i1 %tobool55.not.i, label %if.end52.i.for.inc.i_crit_edge, label %if.end57.i

if.end52.i.for.inc.i_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end57.i:                                       ; preds = %if.end52.i
  %127 = ptrtoint ptr %parent33 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %parent33, align 4
  %129 = ptrtoint ptr %ext_info.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ext_info.i, align 4
  %arrayidx60.i = getelementptr %struct.iio_chan_spec_ext_info, ptr %130, i32 %i.0189.i
  %131 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx60.i, align 4
  %call61.i = tail call i32 @iio_read_channel_ext_info(ptr noundef %128, ptr noundef %132, ptr noundef %page.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %cmp62.i = icmp slt i32 %call61.i, 0
  br i1 %cmp62.i, label %do.end66.i, label %if.end70.i

do.end66.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #7
  %133 = ptrtoint ptr %ext_info48.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ext_info48.i, align 4
  %arrayidx68.i = getelementptr %struct.iio_chan_spec_ext_info, ptr %134, i32 %i.0189.i
  %135 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx68.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef %136) #8
  br label %cleanup

if.end70.i:                                       ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call61.i)
  %cmp71.i = icmp ugt i32 %call61.i, 4095
  br i1 %cmp71.i, label %do.end75.i, label %if.end79.i

do.end75.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #7
  %137 = ptrtoint ptr %ext_info48.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ext_info48.i, align 4
  %arrayidx77.i = getelementptr %struct.iio_chan_spec_ext_info, ptr %138, i32 %i.0189.i
  %139 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %arrayidx77.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, ptr noundef %140) #8
  br label %cleanup

if.end79.i:                                       ; preds = %if.end70.i
  %add.i = add nuw nsw i32 %call61.i, 1
  %call80.i = tail call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef %page.0.i, i32 noundef %add.i, i32 noundef 3264) #5
  %141 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx82.i = getelementptr %struct.mux_ext_info_cache, ptr %142, i32 %i.0189.i
  %143 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call80.i, ptr %arrayidx82.i, align 4
  %144 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx84.i = getelementptr %struct.mux_ext_info_cache, ptr %144, i32 %i.0189.i
  %145 = ptrtoint ptr %arrayidx84.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %arrayidx84.i, align 4
  %tobool86.not.i = icmp eq ptr %146, null
  br i1 %tobool86.not.i, label %if.end79.i.cleanup_crit_edge, label %if.end88.i

if.end79.i.cleanup_crit_edge:                     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end88.i:                                       ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx92.i = getelementptr i8, ptr %146, i32 %call61.i
  %147 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 0, ptr %arrayidx92.i, align 1
  %148 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx.i, align 4
  %size95.i = getelementptr %struct.mux_ext_info_cache, ptr %149, i32 %i.0189.i, i32 1
  %150 = ptrtoint ptr %size95.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %call61.i, ptr %size95.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end88.i, %if.end52.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0189.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call33.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %tobool96.not.i = icmp eq ptr %page.0.i, null
  br i1 %tobool96.not.i, label %for.end.i.for.inc103_crit_edge, label %if.then97.i

for.end.i.for.inc103_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc103

if.then97.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @devm_kfree(ptr noundef %dev1, ptr noundef nonnull %page.0.i) #5
  br label %for.inc103

for.inc103:                                       ; preds = %if.then97.i, %for.end.i.for.inc103_crit_edge, %for.body94.for.inc103_crit_edge
  %i.2 = phi i32 [ %i.1248, %for.body94.for.inc103_crit_edge ], [ %inc98, %for.end.i.for.inc103_crit_edge ], [ %inc98, %if.then97.i ]
  %call104 = tail call ptr @of_prop_next_string(ptr noundef %call90, ptr noundef nonnull %label.1244) #5
  %inc105 = add i32 %state.0246, 1
  %tobool93.not = icmp eq ptr %call104, null
  br i1 %tobool93.not, label %for.inc103.for.end106_crit_edge, label %for.inc103.for.body94_crit_edge

for.inc103.for.body94_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body94

for.inc103.for.end106_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end106

for.end106:                                       ; preds = %for.inc103.for.end106_crit_edge, %if.end89.for.end106_crit_edge
  %call107 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call26, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %for.end106.cleanup_crit_edge, label %do.end112

for.end106.cleanup_crit_edge:                     ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end112:                                        ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end112, %for.end106.cleanup_crit_edge, %if.end79.i.cleanup_crit_edge, %do.end75.i, %do.end66.i, %devm_kcalloc.exit.i.cleanup_crit_edge, %devm_kcalloc.exit.thread.i, %if.then34.i.cleanup_crit_edge, %do.end29.i, %do.end.i, %if.end86, %if.then39.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then4 ], [ -22, %do.end ], [ %60, %if.end86 ], [ %call107, %do.end112 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ -12, %if.then39.cleanup_crit_edge ], [ 0, %for.end106.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ -22, %do.end75.i ], [ %call61.i, %do.end66.i ], [ -22, %do.end29.i ], [ %call.i, %do.end.i ], [ -12, %if.end79.i.cleanup_crit_edge ], [ -12, %if.then34.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_ext_info_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_read_ext_info(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr noundef %chan, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chan1 = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan1, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %chan to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 88
  %call2 = tail call fastcc i32 @iio_mux_select(ptr noundef %1, i32 noundef %sub.ptr.div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %ext_info = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %ext_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext_info, align 4
  %arrayidx = getelementptr %struct.iio_chan_spec_ext_info, ptr %7, i32 %private
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @iio_read_channel_ext_info(ptr noundef %5, ptr noundef %9, ptr noundef %buf) #5
  %control.i = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %control.i, align 4
  %call.i = tail call i32 @mux_control_deselect(ptr noundef %11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_write_ext_info(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr noundef %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %chan2 = getelementptr inbounds %struct.mux, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan2, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %chan to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 88
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %len)
  %cmp = icmp ugt i32 %len, 4095
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @iio_mux_select(ptr noundef %3, i32 noundef %sub.ptr.div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add = add nuw nsw i32 %len, 1
  %call7 = tail call ptr @devm_kmemdup(ptr noundef %1, ptr noundef %buf, i32 noundef %add, i32 noundef 3264) #5
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %control.i = getelementptr inbounds %struct.mux, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %control.i, align 4
  %call.i = tail call i32 @mux_control_deselect(ptr noundef %7) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %arrayidx = getelementptr i8, ptr %call7, i32 %len
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx, align 1
  %parent10 = getelementptr inbounds %struct.mux, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %parent10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent10, align 4
  %ext_info = getelementptr inbounds %struct.mux, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %ext_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ext_info, align 4
  %arrayidx11 = getelementptr %struct.iio_chan_spec_ext_info, ptr %12, i32 %private
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx11, align 4
  %call12 = tail call i32 @iio_write_channel_ext_info(ptr noundef %10, ptr noundef %14, ptr noundef %buf, i32 noundef %len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %control.i61 = getelementptr inbounds %struct.mux, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %control.i61 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %control.i61, align 4
  %call.i62 = tail call i32 @mux_control_deselect(ptr noundef %16) #5
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %call7) #5
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %child = getelementptr inbounds %struct.mux, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %child, align 4
  %arrayidx16 = getelementptr %struct.mux_child, ptr %18, i32 %sub.ptr.div
  %19 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr %struct.mux_ext_info_cache, ptr %20, i32 %private
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx17, align 4
  tail call void @devm_kfree(ptr noundef %1, ptr noundef %22) #5
  %23 = ptrtoint ptr %child to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %child, align 4
  %arrayidx19 = getelementptr %struct.mux_child, ptr %24, i32 %sub.ptr.div
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx19, align 4
  %arrayidx21 = getelementptr %struct.mux_ext_info_cache, ptr %26, i32 %private
  %27 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call7, ptr %arrayidx21, align 4
  %28 = load ptr, ptr %child, align 4
  %arrayidx24 = getelementptr %struct.mux_child, ptr %28, i32 %sub.ptr.div
  %29 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx24, align 4
  %size = getelementptr %struct.mux_ext_info_cache, ptr %30, i32 %private, i32 1
  %31 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %len, ptr %size, align 4
  %control.i63 = getelementptr inbounds %struct.mux, ptr %3, i32 0, i32 1
  %32 = ptrtoint ptr %control.i63 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %control.i63, align 4
  %call.i64 = tail call i32 @mux_control_deselect(ptr noundef %33) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.then14 ], [ %call12, %if.end15 ], [ -12, %if.then8 ], [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mux_control_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_read_raw(ptr nocapture noundef readonly %indio_dev, ptr noundef %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chan1 = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan1, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %chan to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 88
  %call2 = tail call fastcc i32 @iio_mux_select(ptr noundef %1, i32 noundef %sub.ptr.div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %call3 = tail call i32 @iio_read_channel_raw(ptr noundef %6, ptr noundef %val) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %parent5 = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %parent5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent5, align 4
  %call6 = tail call i32 @iio_read_channel_scale(ptr noundef %8, ptr noundef %val, ptr noundef %val2) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call6, %sw.bb4 ], [ %call3, %sw.bb ], [ -22, %if.end.sw.epilog_crit_edge ]
  %control.i = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %control.i, align 4
  %call.i = tail call i32 @mux_control_deselect(ptr noundef %10) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_read_avail(ptr nocapture noundef readonly %indio_dev, ptr noundef %chan, ptr noundef %vals, ptr nocapture noundef writeonly %type, ptr noundef %length, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chan1 = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan1, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %chan to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 88
  %call2 = tail call fastcc i32 @iio_mux_select(ptr noundef %1, i32 noundef %sub.ptr.div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %parent = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %call3 = tail call i32 @iio_read_avail_channel_raw(ptr noundef %6, ptr noundef %vals, ptr noundef %length) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call3, %sw.bb ], [ -22, %if.end.sw.epilog_crit_edge ]
  %control.i = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %control.i, align 4
  %call.i = tail call i32 @mux_control_deselect(ptr noundef %8) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_write_raw(ptr nocapture noundef readonly %indio_dev, ptr noundef %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %chan1 = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan1, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %chan to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 88
  %call2 = tail call fastcc i32 @iio_mux_select(ptr noundef %1, i32 noundef %sub.ptr.div)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %call3 = tail call i32 @iio_write_channel_raw(ptr noundef %5, i32 noundef %val) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %call3, %sw.bb ], [ -22, %if.end.sw.epilog_crit_edge ]
  %control.i = getelementptr inbounds %struct.mux, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %control.i, align 4
  %call.i = tail call i32 @mux_control_deselect(ptr noundef %7) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iio_mux_select(ptr nocapture noundef %mux, i32 noundef %idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %child1 = getelementptr inbounds %struct.mux, ptr %mux, i32 0, i32 6
  %0 = ptrtoint ptr %child1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %child1, align 4
  %arrayidx = getelementptr %struct.mux_child, ptr %1, i32 %idx
  %chan2 = getelementptr inbounds %struct.mux, ptr %mux, i32 0, i32 4
  %2 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan2, align 4
  %control = getelementptr inbounds %struct.mux, ptr %mux, i32 0, i32 1
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %control, align 4
  %channel = getelementptr %struct.iio_chan_spec, ptr %3, i32 %idx, i32 1
  %6 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channel, align 4
  %delay_us = getelementptr inbounds %struct.mux, ptr %mux, i32 0, i32 7
  %8 = ptrtoint ptr %delay_us to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay_us, align 4
  %call = tail call i32 @mux_control_select_delay(ptr noundef %5, i32 noundef %7, i32 noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup32.sink.split_crit_edge, label %if.end

entry.cleanup32.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32.sink.split

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mux, align 4
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp6 = icmp eq i32 %11, %13
  br i1 %cmp6, label %if.end.cleanup32_crit_edge, label %if.end8

if.end.cleanup32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup32

if.end8:                                          ; preds = %if.end
  %ext_info = getelementptr %struct.iio_chan_spec, ptr %3, i32 %idx, i32 16
  %14 = ptrtoint ptr %ext_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ext_info, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %if.end8.if.end29_crit_edge, label %for.cond.preheader

if.end8.if.end29_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

for.cond.preheader:                               ; preds = %if.end8
  %16 = ptrtoint ptr %ext_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ext_info, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool12.not63 = icmp eq ptr %19, null
  br i1 %tobool12.not63, label %for.cond.preheader.if.end29_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end29_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %parent = getelementptr inbounds %struct.mux, ptr %mux, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %20 = phi ptr [ %19, %for.body.lr.ph ], [ %34, %for.inc.for.body_crit_edge ]
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %size = getelementptr %struct.mux_ext_info_cache, ptr %22, i32 %i.064, i32 1
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp17 = icmp slt i32 %24, 0
  br i1 %cmp17, label %for.body.for.inc_crit_edge, label %if.end19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %arrayidx16 = getelementptr %struct.mux_ext_info_cache, ptr %22, i32 %i.064
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 4
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx16, align 4
  %call21 = tail call i32 @iio_write_channel_ext_info(ptr noundef %26, ptr noundef nonnull %20, ptr noundef %28, i32 noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %cleanup, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

cleanup:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %control, align 4
  %call25 = tail call i32 @mux_control_deselect(ptr noundef %30) #5
  br label %cleanup32.sink.split

for.inc:                                          ; preds = %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add i32 %i.064, 1
  %31 = ptrtoint ptr %ext_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ext_info, align 4
  %arrayidx11 = getelementptr %struct.iio_chan_spec_ext_info, ptr %32, i32 %inc
  %33 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %34, null
  br i1 %tobool12.not, label %for.inc.if.end29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end29:                                         ; preds = %for.inc.if.end29_crit_edge, %for.cond.preheader.if.end29_crit_edge, %if.end8.if.end29_crit_edge
  %35 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel, align 4
  br label %cleanup32.sink.split

cleanup32.sink.split:                             ; preds = %if.end29, %cleanup, %entry.cleanup32.sink.split_crit_edge
  %.sink = phi i32 [ -1, %cleanup ], [ %36, %if.end29 ], [ -1, %entry.cleanup32.sink.split_crit_edge ]
  %retval.2.ph = phi i32 [ %call21, %cleanup ], [ 0, %if.end29 ], [ %call, %entry.cleanup32.sink.split_crit_edge ]
  %37 = ptrtoint ptr %mux to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink, ptr %mux, align 4
  br label %cleanup32

cleanup32:                                        ; preds = %cleanup32.sink.split, %if.end.cleanup32_crit_edge
  %retval.2 = phi i32 [ 0, %if.end.cleanup32_crit_edge ], [ %retval.2.ph, %cleanup32.sink.split ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_raw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_scale(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_select_delay(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_write_channel_ext_info(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_deselect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_avail_channel_raw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_write_channel_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_ext_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mux_control_states(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_iio_mux__170_460_mux_driver_init6, !1, !"__initcall__kmod_iio_mux__170_460_mux_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 460, i32 1}
!2 = !{ptr @__exitcall_mux_driver_exit, !1, !"__exitcall_mux_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 462, i32 1}
!5 = !{ptr @__UNIQUE_ID_author172, !6, !"__UNIQUE_ID_author172", i1 false, i1 false}
!6 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 463, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 464, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 456, i32 11}
!12 = !{ptr @mux_driver, !13, !"mux_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 453, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 358, i32 37}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 361, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 370, i32 2}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 375, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mux_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @mux_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 398, i32 27}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 424, i32 4}
!32 = !{ptr @mux_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mux_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 440, i32 3}
!36 = !{ptr @mux_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mux_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @mux_info, !39, !"mux_info", i1 false, i1 false}
!39 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 171, i32 30}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 258, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mux_configure_channel._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @mux_configure_channel._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 271, i32 3}
!47 = !{ptr @mux_configure_channel._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mux_configure_channel._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 302, i32 4}
!51 = !{ptr @mux_configure_channel._entry.21, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mux_configure_channel._entry_ptr.23, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 307, i32 4}
!55 = !{ptr @mux_configure_channel._entry.24, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @mux_configure_channel._entry_ptr.26, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @mux_match, !58, !"mux_match", i1 false, i1 false}
!58 = !{!"../drivers/iio/multiplexer/iio-mux.c", i32 447, i32 34}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 1, i32 2000}
