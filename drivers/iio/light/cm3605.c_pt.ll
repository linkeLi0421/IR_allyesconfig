; ModuleID = '/llk/IR_all_yes/drivers/iio/light/cm3605.c_pt.bc'
source_filename = "../drivers/iio/light/cm3605.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.cm3605 = type { ptr, ptr, ptr, ptr, i32, i32, ptr }

@__initcall__kmod_cm3605__289_326_cm3605_driver_init6 = internal global ptr @cm3605_driver_init, section ".initcall6.init", align 4
@cm3605_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cm3605_probe, ptr @cm3605_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cm3605_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cm3605_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cm3605_driver_exit = internal global ptr @cm3605_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [55 x i8] c"cm3605.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [68 x i8] c"cm3605.description=CM3605 ambient light and proximity sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [37 x i8] c"cm3605.file=drivers/iio/light/cm3605\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [19 x i8] c"cm3605.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cm3605\00", [25 x i8] zeroinitializer }, align 32
@cm3605_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"capella,cm3605\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cm3605_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cm3605_pm_suspend, ptr @cm3605_pm_resume, ptr @cm3605_pm_suspend, ptr @cm3605_pm_resume, ptr @cm3605_pm_suspend, ptr @cm3605_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"capella,aset-resistance-ohms\00", [35 x i8] zeroinitializer }, align 32
@cm3605_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 176, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no RSET specified, assuming 100K\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cm3605_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/iio/light/cm3605.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cm3605_probe._entry_ptr = internal global ptr @cm3605_probe._entry, section ".printk_index", align 4
@cm3605_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 193, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"non-standard resistance\0A\00", [39 x i8] zeroinitializer }, align 32
@cm3605_probe._entry_ptr.9 = internal global ptr @cm3605_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aout\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get AOUT ADC channel\0A\00", [32 x i8] zeroinitializer }, align 32
@cm3605_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 207, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"wrong type of IIO channel specified for AOUT\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cm3605_probe._entry_ptr.15 = internal global ptr @cm3605_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get VDD regulator\0A\00", [35 x i8] zeroinitializer }, align 32
@cm3605_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 218, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enable VDD regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@cm3605_probe._entry_ptr.20 = internal global ptr @cm3605_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aset\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no ASET GPIO\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to get irq\0A\00", [45 x i8] zeroinitializer }, align 32
@cm3605_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 235, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@cm3605_probe._entry_ptr.26 = internal global ptr @cm3605_probe._entry.24, section ".printk_index", align 4
@cm3605_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @cm3605_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cm3605_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 8, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @cm3605_events, i32 1, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 6, i32 1, i32 0, i32 0, i32 0, %struct.anon.84 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [48 x i8] zeroinitializer }, align 32
@cm3605_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 253, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Capella Microsystems CM3605 enabled range 0..%d LUX\0A\00", [43 x i8] zeroinitializer }, align 32
@cm3605_probe._entry_ptr.29 = internal global ptr @cm3605_probe._entry.27, section ".printk_index", align 4
@cm3605_get_lux.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cm3605_get_lux\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"read %d mV from ADC\0A\00", [43 x i8] zeroinitializer }, align 32
@cm3605_get_lux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.4, i32 94, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"device out of range\0A\00", [43 x i8] zeroinitializer }, align 32
@cm3605_get_lux._entry_ptr = internal global ptr @cm3605_get_lux._entry, section ".printk_index", align 4
@cm3605_events = internal constant { [1 x %struct.iio_event_spec], [40 x i8] } { [1 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 0, i32 1, i32 0, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@cm3605_pm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 300, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to enable regulator in resume path\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cm3605_pm_resume\00", [47 x i8] zeroinitializer }, align 32
@cm3605_pm_resume._entry_ptr = internal global ptr @cm3605_pm_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 50000, i64 100000, i64 300000, i64 600000]
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"cm3605_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 317, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 319, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"cm3605_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 311, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"cm3605_dev_pm_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 306, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 174, i32 38 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 176, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 193, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 197, i32 43 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 201, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 207, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 211, i32 40 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 214, i32 10 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 218, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 222, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 224, i32 51 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 230, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 235, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [12 x i8] c"cm3605_info\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 130, i32 30 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"cm3605_channels\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 142, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 252, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 83, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 94, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [14 x i8] c"cm3605_events\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 134, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [30 x i8] c"../drivers/iio/light/cm3605.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 300, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_cm3605_driver_exit, ptr @__initcall__kmod_cm3605__289_326_cm3605_driver_init6, ptr @cm3605_driver_exit, ptr @cm3605_get_lux._entry, ptr @cm3605_get_lux._entry_ptr, ptr @cm3605_pm_resume._entry, ptr @cm3605_pm_resume._entry_ptr, ptr @cm3605_probe._entry, ptr @cm3605_probe._entry.12, ptr @cm3605_probe._entry.18, ptr @cm3605_probe._entry.24, ptr @cm3605_probe._entry.27, ptr @cm3605_probe._entry.7, ptr @cm3605_probe._entry_ptr, ptr @cm3605_probe._entry_ptr.15, ptr @cm3605_probe._entry_ptr.20, ptr @cm3605_probe._entry_ptr.26, ptr @cm3605_probe._entry_ptr.29, ptr @cm3605_probe._entry_ptr.9, ptr @cm3605_driver, ptr @.str, ptr @cm3605_of_match, ptr @cm3605_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @cm3605_info, ptr @cm3605_channels, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @cm3605_events, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_get_lux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_events to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm3605_pm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3605_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cm3605_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cm3605_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @cm3605_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3605_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %ch_type = alloca i32, align 4
  %rset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ch_type) #5
  %0 = ptrtoint ptr %ch_type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ch_type, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rset) #5
  %1 = ptrtoint ptr %rset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rset, align 4, !annotation !91
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef 28) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %4, align 4
  %dir = getelementptr inbounds %struct.cm3605, ptr %4, i32 0, i32 5
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %dir, align 4
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull %rset, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end7.thread

if.end7.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %7 = ptrtoint ptr %rset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 100000, ptr %rset, align 4
  br label %sw.bb8

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %rset to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %rset, align 4
  %9 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr, label %do.end16 [
    i32 50000, label %if.end7.sw.epilog_crit_edge
    i32 100000, label %if.end7.sw.bb8_crit_edge
    i32 300000, label %sw.bb10
    i32 600000, label %sw.bb12
  ]

if.end7.sw.bb8_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end7.sw.bb8_crit_edge, %if.end7.thread
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb10, %sw.bb8, %if.end7.sw.epilog_crit_edge
  %.sink = phi i32 [ 50, %sw.bb12 ], [ 100, %sw.bb10 ], [ 300, %sw.bb8 ], [ 650, %if.end7.sw.epilog_crit_edge ]
  %als_max13 = getelementptr inbounds %struct.cm3605, ptr %4, i32 0, i32 4
  %10 = ptrtoint ptr %als_max13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %als_max13, align 4
  %call17 = call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #5
  %aout = getelementptr inbounds %struct.cm3605, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %aout to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call17, ptr %aout, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end24

if.then20:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call17 to i32
  %cmp = icmp eq ptr %call17, inttoptr (i32 -19 to ptr)
  %spec.select = select i1 %cmp, i32 -517, i32 %12
  %call23 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %spec.select, ptr noundef nonnull @.str.11) #5
  br label %cleanup

if.end24:                                         ; preds = %sw.epilog
  %call26 = call i32 @iio_get_channel_type(ptr noundef %call17, ptr noundef nonnull %ch_type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %13 = ptrtoint ptr %ch_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ch_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp30.not = icmp eq i32 %14, 0
  br i1 %cmp30.not, label %if.end35, label %do.end34

do.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  br label %cleanup

if.end35:                                         ; preds = %if.end29
  %call36 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.16) #5
  %vdd = getelementptr inbounds %struct.cm3605, ptr %4, i32 0, i32 1
  %15 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call36, ptr %vdd, align 4
  %cmp.i154 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then39, label %if.end43

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call36 to i32
  %call42 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %16, ptr noundef nonnull @.str.17) #5
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %call45 = call i32 @regulator_enable(ptr noundef %call36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end51, label %do.end50

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end51:                                         ; preds = %if.end43
  %call52 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef 7) #5
  %aset = getelementptr inbounds %struct.cm3605, ptr %4, i32 0, i32 2
  %17 = ptrtoint ptr %aset to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call52, ptr %aset, align 4
  %cmp.i155 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then55, label %if.end59

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %call52 to i32
  %call58 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %18, ptr noundef nonnull @.str.22) #5
  br label %out_disable_vdd

if.end59:                                         ; preds = %if.end51
  %call60 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %call63 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call60, ptr noundef nonnull @.str.23) #5
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  %call65 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call60, ptr noundef nonnull @cm3605_prox_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end71, label %do.end70

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #8
  br label %out_disable_aset

if.end71:                                         ; preds = %if.end64
  %led = getelementptr inbounds %struct.cm3605, ptr %4, i32 0, i32 6
  call void @led_trigger_register_simple(ptr noundef nonnull @.str, ptr noundef %led) #5
  %19 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %led, align 4
  call void @led_trigger_event(ptr noundef %20, i32 noundef 255) #5
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %21 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cm3605_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %22 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %23 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @cm3605_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %24 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %num_channels, align 4
  %25 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %call, align 8
  %call73 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %do.end79, label %out_remove_trigger

do.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %als_max80 = getelementptr inbounds %struct.cm3605, ptr %4, i32 0, i32 4
  %26 = ptrtoint ptr %als_max80 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %als_max80, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %27) #8
  br label %cleanup

out_remove_trigger:                               ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %led, align 4
  call void @led_trigger_event(ptr noundef %29, i32 noundef 0) #5
  %30 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %led, align 4
  call void @led_trigger_unregister_simple(ptr noundef %31) #5
  br label %out_disable_aset

out_disable_aset:                                 ; preds = %out_remove_trigger, %do.end70
  %ret.0 = phi i32 [ %call65, %do.end70 ], [ %call73, %out_remove_trigger ]
  %32 = ptrtoint ptr %aset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %aset, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %33, i32 noundef 0) #5
  br label %out_disable_vdd

out_disable_vdd:                                  ; preds = %out_disable_aset, %if.then55
  %ret.1 = phi i32 [ %call58, %if.then55 ], [ %ret.0, %out_disable_aset ]
  %34 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vdd, align 4
  %call85 = call i32 @regulator_disable(ptr noundef %35) #5
  br label %cleanup

cleanup:                                          ; preds = %out_disable_vdd, %do.end79, %if.then62, %do.end50, %if.then39, %do.end34, %if.end24.cleanup_crit_edge, %if.then20, %do.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end16 ], [ %call23, %if.then20 ], [ -22, %do.end34 ], [ %call42, %if.then39 ], [ %call45, %do.end50 ], [ %ret.1, %out_disable_vdd ], [ %call63, %if.then62 ], [ 0, %do.end79 ], [ -12, %entry.cleanup_crit_edge ], [ %call26, %if.end24.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rset) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ch_type) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3605_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %led = getelementptr inbounds %struct.cm3605, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led, align 4
  tail call void @led_trigger_event(ptr noundef %5, i32 noundef 0) #5
  %6 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %led, align 4
  tail call void @led_trigger_unregister_simple(ptr noundef %7) #5
  %aset = getelementptr inbounds %struct.cm3605, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %aset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #5
  tail call void @iio_device_unregister(ptr noundef %1) #5
  %vdd = getelementptr inbounds %struct.cm3605, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdd, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %11) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3605_prox_irq(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %d, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %dir = getelementptr inbounds %struct.cm3605, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %conv = zext i32 %3 to i64
  %shl = shl i64 %conv, 48
  %or2 = or i64 %shl, 34359738368
  %call6 = tail call i64 @iio_get_time_ns(ptr noundef %d) #5
  %call7 = tail call i32 @iio_push_event(ptr noundef %d, i64 noundef %or2, i64 noundef %call6) #5
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %. = select i1 %cmp, i32 2, i32 1
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %dir, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_register_simple(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_event(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_trigger_unregister_simple(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3605_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef readnone %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cond5 = icmp eq i32 %3, 6
  br i1 %cond5, label %sw.bb1, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %sw.bb
  %call2 = tail call fastcc i32 @cm3605_get_lux(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %sw.bb1.cleanup_crit_edge, label %if.end

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ %call2, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cm3605_get_lux(ptr nocapture noundef readonly %cm3605) unnamed_addr #2 align 64 {
entry:
  %res = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #5
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %res, align 4, !annotation !91
  %aout = getelementptr inbounds %struct.cm3605, ptr %cm3605, i32 0, i32 3
  %1 = ptrtoint ptr %aout to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %aout, align 4
  %call = call i32 @iio_read_channel_processed(ptr noundef %2, ptr noundef nonnull %res) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm3605_get_lux.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm3605_get_lux, %if.then4)) #5
          to label %do.end [label %if.then4], !srcloc !92

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %cm3605 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cm3605, align 4
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cm3605_get_lux.__UNIQUE_ID_ddebug288, ptr noundef %4, ptr noundef nonnull @.str.31, i32 noundef %6) #5
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %7 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %res, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %8)
  %cmp6 = icmp slt i32 %8, 30
  br i1 %cmp6, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1650, i32 %8)
  %cmp9 = icmp ugt i32 %8, 1650
  br i1 %cmp9, label %do.end13, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %cm3605 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cm3605, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.32) #8
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %if.end8.if.end15_crit_edge
  %11 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %res, align 4
  %sub = add i32 %12, -30
  %conv = sext i32 %sub to i64
  %als_max = getelementptr inbounds %struct.cm3605, ptr %cm3605, i32 0, i32 4
  %13 = ptrtoint ptr %als_max to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %als_max, align 4
  %conv16 = sext i32 %14 to i64
  %mul = mul nsw i64 %conv, %conv16
  %call17 = call i64 @div64_s64(i64 noundef %mul, i64 noundef 1550) #5
  %conv18 = trunc i64 %call17 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv18, %if.end15 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3605_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %led = getelementptr inbounds %struct.cm3605, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led, align 4
  tail call void @led_trigger_event(ptr noundef %5, i32 noundef 0) #5
  %vdd = getelementptr inbounds %struct.cm3605, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm3605_pm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %vdd = getelementptr inbounds %struct.cm3605, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %led = getelementptr inbounds %struct.cm3605, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %led, align 4
  tail call void @led_trigger_event(ptr noundef %7, i32 noundef 255) #5
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !37, !39, !41, !43, !44, !45, !47, !49, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !67, !68, !69, !71, !73, !75, !77, !79, !80, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_cm3605__289_326_cm3605_driver_init6, !1, !"__initcall__kmod_cm3605__289_326_cm3605_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/cm3605.c", i32 326, i32 1}
!2 = !{ptr @__exitcall_cm3605_driver_exit, !1, !"__exitcall_cm3605_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/cm3605.c", i32 328, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/cm3605.c", i32 329, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/cm3605.c", i32 330, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/cm3605.c", i32 319, i32 11}
!12 = !{ptr @cm3605_driver, !13, !"cm3605_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/cm3605.c", i32 317, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/cm3605.c", i32 174, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/light/cm3605.c", i32 176, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cm3605_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cm3605_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/iio/light/cm3605.c", i32 193, i32 3}
!26 = !{ptr @cm3605_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cm3605_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/cm3605.c", i32 197, i32 43}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/light/cm3605.c", i32 201, i32 34}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/light/cm3605.c", i32 207, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cm3605_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @cm3605_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/cm3605.c", i32 211, i32 40}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/cm3605.c", i32 214, i32 10}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/light/cm3605.c", i32 218, i32 3}
!43 = !{ptr @cm3605_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cm3605_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/light/cm3605.c", i32 222, i32 37}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/iio/light/cm3605.c", i32 224, i32 51}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/light/cm3605.c", i32 230, i32 34}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/light/cm3605.c", i32 235, i32 3}
!53 = !{ptr @cm3605_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cm3605_probe._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/light/cm3605.c", i32 252, i32 2}
!57 = !{ptr @cm3605_probe._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cm3605_probe._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @cm3605_info, !60, !"cm3605_info", i1 false, i1 false}
!60 = !{!"../drivers/iio/light/cm3605.c", i32 130, i32 30}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/light/cm3605.c", i32 83, i32 2}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @cm3605_get_lux.__UNIQUE_ID_ddebug288, !62, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/light/cm3605.c", i32 94, i32 3}
!67 = !{ptr @cm3605_get_lux._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @cm3605_get_lux._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @cm3605_channels, !70, !"cm3605_channels", i1 false, i1 false}
!70 = !{!"../drivers/iio/light/cm3605.c", i32 142, i32 35}
!71 = !{ptr @cm3605_events, !72, !"cm3605_events", i1 false, i1 false}
!72 = !{!"../drivers/iio/light/cm3605.c", i32 134, i32 36}
!73 = !{ptr @cm3605_of_match, !74, !"cm3605_of_match", i1 false, i1 false}
!74 = !{!"../drivers/iio/light/cm3605.c", i32 311, i32 34}
!75 = !{ptr @cm3605_dev_pm_ops, !76, !"cm3605_dev_pm_ops", i1 false, i1 false}
!76 = !{!"../drivers/iio/light/cm3605.c", i32 306, i32 32}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/light/cm3605.c", i32 300, i32 3}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cm3605_pm_resume._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @cm3605_pm_resume._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{!"auto-init"}
!92 = !{i64 2148959709, i64 2148959714, i64 2148959727, i64 2148959771, i64 2148959805, i64 2148959826}
