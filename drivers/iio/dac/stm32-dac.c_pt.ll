; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/stm32-dac.c_pt.bc'
source_filename = "../drivers/iio/dac/stm32-dac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.stm32_dac = type { ptr, %struct.mutex }
%struct.stm32_dac_common = type { ptr, i32, i8 }

@__initcall__kmod_stm32_dac__181_408_stm32_dac_driver_init6 = internal global ptr @stm32_dac_driver_init, section ".initcall6.init", align 4
@stm32_dac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_dac_probe, ptr @stm32_dac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dac_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_dac_driver_exit = internal global ptr @stm32_dac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias182 = internal constant [35 x i8] c"stm32_dac.alias=platform:stm32-dac\00", section ".modinfo", align 1
@__UNIQUE_ID_author183 = internal constant [58 x i8] c"stm32_dac.author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description184 = internal constant [58 x i8] c"stm32_dac.description=STMicroelectronics STM32 DAC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [41 x i8] c"stm32_dac.file=drivers/iio/dac/stm32-dac\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [25 x i8] c"stm32_dac.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm32-dac\00", [22 x i8] zeroinitializer }, align 32
@stm32_dac_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_dac_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stm32_dac_suspend, ptr @pm_runtime_force_resume, ptr @stm32_dac_suspend, ptr @pm_runtime_force_resume, ptr @stm32_dac_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@stm32_dac_iio_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @stm32_dac_read_raw, ptr null, ptr null, ptr @stm32_dac_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_dac_debugfs_reg_access, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@stm32_dac_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dac->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@stm32_dac_chan_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 285, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read reg property\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_dac_chan_of_init\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/dac/stm32-dac.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_dac_chan_of_init._entry_ptr = internal global ptr @stm32_dac_chan_of_init._entry, section ".printk_index", align 4
@stm32_dac_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.43 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @stm32_dac_ext_info, ptr null, ptr @.str.11, i8 96 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.43 { i8 117, i8 12, i8 16, i8 0, i8 0, i32 0 }, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @stm32_dac_ext_info, ptr null, ptr @.str.12, i8 96 }], [48 x i8] zeroinitializer }, align 32
@stm32_dac_chan_of_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 294, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid reg property\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_dac_chan_of_init._entry_ptr.10 = internal global ptr @stm32_dac_chan_of_init._entry.8, section ".printk_index", align 4
@stm32_dac_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.13, i32 0, ptr @stm32_dac_read_powerdown, ptr @stm32_dac_write_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.14, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @stm32_dac_powerdown_mode_en to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.15, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @stm32_dac_powerdown_mode_en to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"out1\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"out2\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powerdown_mode\00", [17 x i8] zeroinitializer }, align 32
@stm32_dac_powerdown_mode_en = internal constant { %struct.iio_enum, [16 x i8] } { %struct.iio_enum { ptr @stm32_dac_powerdown_modes, i32 1, ptr @stm32_dac_set_powerdown_mode, ptr @stm32_dac_get_powerdown_mode }, [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"powerdown_mode_available\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@stm32_dac_set_enable_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 83, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s failed\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_dac_set_enable_state\00", [37 x i8] zeroinitializer }, align 32
@stm32_dac_set_enable_state._entry_ptr = internal global ptr @stm32_dac_set_enable_state._entry, section ".printk_index", align 4
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Enable\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Disable\00", [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@stm32_dac_powerdown_modes = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.21], [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"three_state\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"stm32_dac_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 399, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 403, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"stm32_dac_of_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 393, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"stm32_dac_pm_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 389, i32 32 }
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"stm32_dac_iio_info\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 179, i32 30 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 332, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 283, i32 33 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 285, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"stm32_dac_channels\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 271, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 294, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"stm32_dac_ext_info\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 241, i32 44 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 272, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 273, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 243, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 248, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [28 x i8] c"stm32_dac_powerdown_mode_en\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 234, i32 30 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 249, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 212, i32 25 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 82, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [26 x i8] c"stm32_dac_powerdown_modes\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 185, i32 27 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [31 x i8] c"../drivers/iio/dac/stm32-dac.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 186, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_alias182, ptr @__UNIQUE_ID_author183, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_stm32_dac_driver_exit, ptr @__initcall__kmod_stm32_dac__181_408_stm32_dac_driver_init6, ptr @stm32_dac_chan_of_init._entry, ptr @stm32_dac_chan_of_init._entry.8, ptr @stm32_dac_chan_of_init._entry_ptr, ptr @stm32_dac_chan_of_init._entry_ptr.10, ptr @stm32_dac_driver_exit, ptr @stm32_dac_set_enable_state._entry, ptr @stm32_dac_set_enable_state._entry_ptr, ptr @stm32_dac_driver, ptr @.str, ptr @stm32_dac_of_match, ptr @stm32_dac_pm_ops, ptr @stm32_dac_iio_info, ptr @stm32_dac_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @stm32_dac_channels, ptr @.str.9, ptr @stm32_dac_ext_info, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @stm32_dac_powerdown_mode_en, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @stm32_dac_powerdown_modes, ptr @.str.21], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dac_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dac_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dac_iio_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dac_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dac_chan_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dac_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dac_chan_of_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dac_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dac_powerdown_mode_en to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dac_set_enable_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dac_powerdown_modes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_dac_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_dac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_dac_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %channel.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 96) #7
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %4, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end6.dev_name.exit_crit_edge

if.end6.dev_name.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end6.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end6.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %14 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i, ptr %name, align 8
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %of_node15 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2, i32 27
  %17 = ptrtoint ptr %of_node15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %of_node15, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @stm32_dac_iio_info, ptr %info, align 8
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %call, align 8
  %lock = getelementptr inbounds %struct.stm32_dac, ptr %4, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @stm32_dac_probe.__key) #7
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %20 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node15, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel.i) #7
  %22 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %channel.i, align 4, !annotation !77
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %21, ptr noundef nonnull @.str.2, ptr noundef nonnull %channel.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i57 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i57, label %for.cond.preheader.i, label %dev_name.exit.stm32_dac_chan_of_init.exit.thread_crit_edge

dev_name.exit.stm32_dac_chan_of_init.exit.thread_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_dac_chan_of_init.exit.thread

for.cond.preheader.i:                             ; preds = %dev_name.exit
  %23 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %for.cond.preheader.i.stm32_dac_chan_of_init.exit.thread_crit_edge [
    i32 1, label %for.cond.preheader.i.if.end18_crit_edge
    i32 2, label %if.end12.fold.split.i
  ]

for.cond.preheader.i.if.end18_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

for.cond.preheader.i.stm32_dac_chan_of_init.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_dac_chan_of_init.exit.thread

if.end12.fold.split.i:                            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

stm32_dac_chan_of_init.exit.thread:               ; preds = %for.cond.preheader.i.stm32_dac_chan_of_init.exit.thread_crit_edge, %dev_name.exit.stm32_dac_chan_of_init.exit.thread_crit_edge
  %.str.3.sink = phi ptr [ @.str.3, %dev_name.exit.stm32_dac_chan_of_init.exit.thread_crit_edge ], [ @.str.9, %for.cond.preheader.i.stm32_dac_chan_of_init.exit.thread_crit_edge ]
  %retval.0.i58.ph = phi i32 [ %call.i.i.i, %dev_name.exit.stm32_dac_chan_of_init.exit.thread_crit_edge ], [ -22, %for.cond.preheader.i.stm32_dac_chan_of_init.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull %.str.3.sink) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end12.fold.split.i, %for.cond.preheader.i.if.end18_crit_edge
  %i.028.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.if.end18_crit_edge ], [ 1, %if.end12.fold.split.i ]
  %arrayidx13.i = getelementptr [2 x %struct.iio_chan_spec], ptr @stm32_dac_channels, i32 0, i32 %i.028.lcssa.i
  %channels.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %26 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx13.i, ptr %channels.i, align 8
  %num_channels.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %27 = ptrtoint ptr %num_channels.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %num_channels.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #7
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %28 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !78
  %call.i = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #7
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 2000) #7
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #7
  call void @pm_runtime_enable(ptr noundef %dev) #7
  %call20 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %err_pm_put

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %call.i60 = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i60, ptr %last_busy.i, align 8
  %call.i61 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #7
  br label %cleanup

err_pm_put:                                       ; preds = %if.end18
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i62 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  %call.i.i.i64 = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !79
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %30 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !80
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %err_pm_put.cleanup_crit_edge, label %do.end11.i.i.i.i

err_pm_put.cleanup_crit_edge:                     ; preds = %err_pm_put
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %err_pm_put
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !81
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %err_pm_put.cleanup_crit_edge, %if.end23, %stm32_dac_chan_of_init.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i58.ph, %stm32_dac_chan_of_init.exit.thread ], [ %call20, %err_pm_put.cleanup_crit_edge ], [ %call20, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dac_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #7
  tail call void @iio_device_unregister(ptr noundef %1) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  %call.i10 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #7
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !80
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !81
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dac_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
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
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %..i = select i1 %tobool.not.i, i32 48, i32 44
  %call3.i = tail call i32 @regmap_read(ptr noundef %8, i32 noundef %..i, ptr noundef %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 1, i32 %call3.i
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %vref_mv = getelementptr inbounds %struct.stm32_dac_common, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vref_mv, align 4
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %realbits, align 1
  %conv = zext i8 %15 to i32
  %16 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %sw.bb2 ], [ %spec.select.i, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dac_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %..i = select i1 %tobool.not.i, i32 20, i32 8
  %call3.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %..i, i32 noundef %val) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dac_debugfs_reg_access(ptr nocapture noundef readonly %indio_dev, i32 noundef %reg, i32 noundef %writeval, ptr noundef %readval) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %tobool.not = icmp eq ptr %readval, null
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %reg, i32 noundef %writeval) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @regmap_read(ptr noundef %5, i32 noundef %reg, ptr noundef nonnull %readval) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call4, %if.else ], [ %call1, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dac_read_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !77
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %stm32_dac_is_enabled.exit.thread, label %stm32_dac_is_enabled.exit

stm32_dac_is_enabled.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

stm32_dac_is_enabled.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %and32.i = lshr i32 %10, 16
  %en.0.in.i = select i1 %tobool.not.i, i32 %and32.i, i32 %10
  %en.0.i = and i32 %en.0.in.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %11 = xor i32 %en.0.i, 1
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %stm32_dac_is_enabled.exit, %stm32_dac_is_enabled.exit.thread
  %retval.0 = phi i32 [ %call1, %stm32_dac_is_enabled.exit ], [ %call1.i, %stm32_dac_is_enabled.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dac_write_powerdown(ptr noundef %indio_dev, i32 noundef %private, ptr nocapture noundef readonly %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %powerdown = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %powerdown) #7
  %0 = ptrtoint ptr %powerdown to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %powerdown, align 1, !annotation !77
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %powerdown) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %1 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %channel, align 4
  %3 = ptrtoint ptr %powerdown to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %powerdown, align 1, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %5 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i.i, align 8
  %dev1.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  %parent.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent.i, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 65536, i32 1
  %spec.select.i = select i1 %tobool1.not, i32 %cond.i, i32 0
  %lock.i = getelementptr inbounds %struct.stm32_dac, ptr %6, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %9 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %11 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i.i, align 4, !annotation !77
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %10, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %15, i32 noundef 0, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %stm32_dac_set_enable_state.exit, label %stm32_dac_is_enabled.exit.i

stm32_dac_is_enabled.exit.i:                      ; preds = %if.end
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i.i, align 4
  %and32.i.i = lshr i32 %17, 16
  %en.0.in.i.i = select i1 %tobool.not.i, i32 %and32.i.i, i32 %17
  %en.0.i.i = and i32 %en.0.in.i.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %en.0.i.i)
  %tobool6.i = icmp eq i32 %en.0.i.i, 0
  %cmp8.i = xor i1 %tobool1.not, %tobool6.i
  br i1 %cmp8.i, label %stm32_dac_set_enable_state.exit.thread16, label %if.end.i

stm32_dac_set_enable_state.exit.thread16:         ; preds = %stm32_dac_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %stm32_dac_is_enabled.exit.i
  br i1 %tobool1.not, label %if.then18.i, label %if.end.i.if.end25.i_crit_edge

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then18.i:                                      ; preds = %if.end.i
  %call.i.i = call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i81.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i81.i, label %if.then.i.i, label %if.then18.i.if.end25.i_crit_edge

if.then18.i.if.end25.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then.i.i:                                      ; preds = %if.then18.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !79
  call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #7
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #7, !srcloc !80
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.if.then22.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.if.then22.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !81
  br label %if.then22.i

if.then22.i:                                      ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.if.then22.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %cleanup

if.end25.i:                                       ; preds = %if.then18.i.if.end25.i_crit_edge, %if.end.i.if.end25.i_crit_edge
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %6, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call.i83.i = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 0, i32 noundef %cond.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %cmp28.i = icmp slt i32 %call.i83.i, 0
  br i1 %cmp28.i, label %do.end.i, label %if.end34.i

do.end.i:                                         ; preds = %if.end25.i
  %cond33.i = select i1 %tobool1.not, ptr @.str.19, ptr @.str.20
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.17, ptr noundef nonnull %cond33.i) #10
  br i1 %tobool1.not, label %if.then46.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34.i:                                       ; preds = %if.end25.i
  br i1 %tobool1.not, label %land.lhs.true.i, label %if.then42.critedge.i

land.lhs.true.i:                                  ; preds = %if.end34.i
  %23 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %6, align 4
  %hfsel.i = getelementptr inbounds %struct.stm32_dac_common, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %hfsel.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %hfsel.i, align 4, !range !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool37.not.i = icmp eq i8 %26, 0
  br i1 %tobool37.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then39.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then39.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748) #7
  br label %cleanup

if.then42.critedge.i:                             ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i84.i = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 22
  %28 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %call.i84.i, ptr %last_busy.i.i, align 8
  %call.i85.i = call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 13) #7
  br label %cleanup

if.then46.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i86.i = call i64 @ktime_get_mono_fast_ns() #7
  %last_busy.i87.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 22
  %29 = ptrtoint ptr %last_busy.i87.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store volatile i64 %call.i86.i, ptr %last_busy.i87.i, align 8
  %call.i88.i = call i32 @__pm_runtime_suspend(ptr noundef %8, i32 noundef 13) #7
  br label %cleanup

stm32_dac_set_enable_state.exit:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %stm32_dac_set_enable_state.exit, %if.then46.i, %if.then42.critedge.i, %if.then39.i, %land.lhs.true.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.then22.i, %stm32_dac_set_enable_state.exit.thread16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call1.i.i, %stm32_dac_set_enable_state.exit ], [ %len, %stm32_dac_set_enable_state.exit.thread16 ], [ %len, %if.then42.critedge.i ], [ %len, %if.then39.i ], [ %len, %land.lhs.true.i.cleanup_crit_edge ], [ %call.i83.i, %do.end.i.cleanup_crit_edge ], [ %call.i83.i, %if.then46.i ], [ %call.i.i, %if.then22.i ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_dac_set_powerdown_mode(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_dac_get_powerdown_mode(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_dac_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channels = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 8
  %channel1 = getelementptr inbounds %struct.iio_chan_spec, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %channel1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel1, align 4
  %priv.i.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i, align 4, !annotation !77
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %7, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %15, label %stm32_dac_is_enabled.exit

stm32_dac_is_enabled.exit:                        ; preds = %entry
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  %and32.i = lshr i32 %14, 16
  %en.0.in.i = select i1 %tobool.not.i, i32 %and32.i, i32 %14
  %en.0.i = and i32 %en.0.in.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %en.0.i)
  %tobool.not = icmp eq i32 %en.0.i, 0
  br i1 %tobool.not, label %if.end, label %stm32_dac_is_enabled.exit.cleanup_crit_edge

stm32_dac_is_enabled.exit.cleanup_crit_edge:      ; preds = %stm32_dac_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

15:                                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

if.end:                                           ; preds = %stm32_dac_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 @pm_runtime_force_suspend(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %15, %stm32_dac_is_enabled.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1.i, %15 ], [ -16, %stm32_dac_is_enabled.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !57, !58, !60, !62, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_stm32_dac__181_408_stm32_dac_driver_init6, !1, !"__initcall__kmod_stm32_dac__181_408_stm32_dac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/stm32-dac.c", i32 408, i32 1}
!2 = !{ptr @__exitcall_stm32_dac_driver_exit, !1, !"__exitcall_stm32_dac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias182, !4, !"__UNIQUE_ID_alias182", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/stm32-dac.c", i32 410, i32 1}
!5 = !{ptr @__UNIQUE_ID_author183, !6, !"__UNIQUE_ID_author183", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/stm32-dac.c", i32 411, i32 1}
!7 = !{ptr @__UNIQUE_ID_description184, !8, !"__UNIQUE_ID_description184", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/stm32-dac.c", i32 412, i32 1}
!9 = !{ptr @__UNIQUE_ID_file185, !10, !"__UNIQUE_ID_file185", i1 false, i1 false}
!10 = !{!"../drivers/iio/dac/stm32-dac.c", i32 413, i32 1}
!11 = !{ptr @__UNIQUE_ID_license186, !10, !"__UNIQUE_ID_license186", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/stm32-dac.c", i32 403, i32 11}
!14 = !{ptr @stm32_dac_driver, !15, !"stm32_dac_driver", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/stm32-dac.c", i32 399, i32 31}
!16 = !{ptr @stm32_dac_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/dac/stm32-dac.c", i32 332, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @stm32_dac_iio_info, !20, !"stm32_dac_iio_info", i1 false, i1 false}
!20 = !{!"../drivers/iio/dac/stm32-dac.c", i32 179, i32 30}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/dac/stm32-dac.c", i32 283, i32 33}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/dac/stm32-dac.c", i32 285, i32 3}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @stm32_dac_chan_of_init._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @stm32_dac_chan_of_init._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/iio/dac/stm32-dac.c", i32 294, i32 3}
!33 = !{ptr @stm32_dac_chan_of_init._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @stm32_dac_chan_of_init._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/dac/stm32-dac.c", i32 272, i32 2}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/dac/stm32-dac.c", i32 273, i32 2}
!39 = !{ptr @stm32_dac_channels, !40, !"stm32_dac_channels", i1 false, i1 false}
!40 = !{!"../drivers/iio/dac/stm32-dac.c", i32 271, i32 35}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/dac/stm32-dac.c", i32 243, i32 11}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/dac/stm32-dac.c", i32 248, i32 2}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/dac/stm32-dac.c", i32 249, i32 2}
!47 = !{ptr @stm32_dac_ext_info, !48, !"stm32_dac_ext_info", i1 false, i1 false}
!48 = !{!"../drivers/iio/dac/stm32-dac.c", i32 241, i32 44}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/iio/dac/stm32-dac.c", i32 212, i32 25}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/dac/stm32-dac.c", i32 82, i32 3}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @stm32_dac_set_enable_state._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @stm32_dac_set_enable_state._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @stm32_dac_powerdown_mode_en, !59, !"stm32_dac_powerdown_mode_en", i1 false, i1 false}
!59 = !{!"../drivers/iio/dac/stm32-dac.c", i32 234, i32 30}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/iio/dac/stm32-dac.c", i32 186, i32 2}
!62 = !{ptr @stm32_dac_powerdown_modes, !63, !"stm32_dac_powerdown_modes", i1 false, i1 false}
!63 = !{!"../drivers/iio/dac/stm32-dac.c", i32 185, i32 27}
!64 = !{ptr @stm32_dac_of_match, !65, !"stm32_dac_of_match", i1 false, i1 false}
!65 = !{!"../drivers/iio/dac/stm32-dac.c", i32 393, i32 34}
!66 = !{ptr @stm32_dac_pm_ops, !67, !"stm32_dac_pm_ops", i1 false, i1 false}
!67 = !{!"../drivers/iio/dac/stm32-dac.c", i32 389, i32 32}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
!78 = !{i64 2148255809, i64 2148255835, i64 2148255864, i64 2148255898, i64 2148255929, i64 2148255952}
!79 = !{i64 2148255228}
!80 = !{i64 740051, i64 740076, i64 740098, i64 740114, i64 740126, i64 740146, i64 740170, i64 740186, i64 740198}
!81 = !{i64 2148255416}
!82 = !{i8 0, i8 2}
