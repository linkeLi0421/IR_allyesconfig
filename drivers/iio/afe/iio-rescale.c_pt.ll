; ModuleID = '/llk/IR_all_yes/drivers/iio/afe/iio-rescale.c_pt.bc'
source_filename = "../drivers/iio/afe/iio-rescale.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rescale_cfg = type { i32, ptr }
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
%struct.rescale = type { ptr, ptr, %struct.iio_chan_spec, ptr, i8, i32, i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.43, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.43 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_channel = type { ptr, ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }

@__initcall__kmod_iio_rescale__170_381_rescale_driver_init6 = internal global ptr @rescale_driver_init, section ".initcall6.init", align 4
@rescale_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rescale_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rescale_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rescale_driver_exit = internal global ptr @rescale_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [43 x i8] c"iio_rescale.description=IIO rescale driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [49 x i8] c"iio_rescale.author=Peter Rosin <peda@axentia.se>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [45 x i8] c"iio_rescale.file=drivers/iio/afe/iio-rescale\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [27 x i8] c"iio_rescale.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iio-rescale\00", [20 x i8] zeroinitializer }, align 32
@rescale_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"current-sense-amplifier\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rescale_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"current-sense-shunt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @rescale_cfg, i64 8) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"voltage-divider\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @rescale_cfg, i64 16) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get source channel\0A\00", [34 x i8] zeroinitializer }, align 32
@rescale_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 335, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid scaling factor.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rescale_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/iio/afe/iio-rescale.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rescale_probe._entry_ptr = internal global ptr @rescale_probe._entry, section ".printk_index", align 4
@rescale_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr null, ptr @rescale_read_raw, ptr null, ptr @rescale_read_avail, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@rescale_configure_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 153, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"using raw+scale source channel\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rescale_configure_channel\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rescale_configure_channel._entry_ptr = internal global ptr @rescale_configure_channel._entry, section ".printk_index", align 4
@rescale_configure_channel._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.4, i32 155, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"using processed channel\0A\00", [39 x i8] zeroinitializer }, align 32
@rescale_configure_channel._entry_ptr.12 = internal global ptr @rescale_configure_channel._entry.10, section ".printk_index", align 4
@rescale_configure_channel._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.4, i32 158, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"source channel is not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@rescale_configure_channel._entry_ptr.15 = internal global ptr @rescale_configure_channel._entry.13, section ".printk_index", align 4
@rescale_cfg = internal constant { [3 x %struct.rescale_cfg], [40 x i8] } { [3 x %struct.rescale_cfg] [%struct.rescale_cfg { i32 1, ptr @rescale_current_sense_amplifier_props }, %struct.rescale_cfg { i32 1, ptr @rescale_current_sense_shunt_props }, %struct.rescale_cfg { i32 0, ptr @rescale_voltage_divider_props }], [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sense-resistor-micro-ohms\00", [38 x i8] zeroinitializer }, align 32
@rescale_current_sense_amplifier_props._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to read the sense resistance: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rescale_current_sense_amplifier_props\00", [58 x i8] zeroinitializer }, align 32
@rescale_current_sense_amplifier_props._entry_ptr = internal global ptr @rescale_current_sense_amplifier_props._entry, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sense-gain-mult\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sense-gain-div\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shunt-resistor-micro-ohms\00", [38 x i8] zeroinitializer }, align 32
@rescale_current_sense_shunt_props._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 226, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to read the shunt resistance: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rescale_current_sense_shunt_props\00", [62 x i8] zeroinitializer }, align 32
@rescale_current_sense_shunt_props._entry_ptr = internal global ptr @rescale_current_sense_shunt_props._entry, section ".printk_index", align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"output-ohms\00", [20 x i8] zeroinitializer }, align 32
@rescale_voltage_divider_props._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 246, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read output-ohms: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rescale_voltage_divider_props\00", [34 x i8] zeroinitializer }, align 32
@rescale_voltage_divider_props._entry_ptr = internal global ptr @rescale_voltage_divider_props._entry, section ".printk_index", align 4
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"full-ohms\00", [22 x i8] zeroinitializer }, align 32
@rescale_voltage_divider_props._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.4, i32 253, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read full-ohms: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rescale_voltage_divider_props._entry_ptr.30 = internal global ptr @rescale_voltage_divider_props._entry.28, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 10, i64 11]
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"rescale_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 374, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 377, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"rescale_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 285, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 310, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 335, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"rescale_info\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 111, i32 30 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 153, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 155, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 158, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"rescale_cfg\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 270, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 186, i32 38 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 189, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 193, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 194, i32 32 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 223, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 226, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 243, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 246, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 250, i32 38 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [33 x i8] c"../drivers/iio/afe/iio-rescale.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 253, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_rescale_driver_exit, ptr @__initcall__kmod_iio_rescale__170_381_rescale_driver_init6, ptr @rescale_configure_channel._entry, ptr @rescale_configure_channel._entry.10, ptr @rescale_configure_channel._entry.13, ptr @rescale_configure_channel._entry_ptr, ptr @rescale_configure_channel._entry_ptr.12, ptr @rescale_configure_channel._entry_ptr.15, ptr @rescale_current_sense_amplifier_props._entry, ptr @rescale_current_sense_amplifier_props._entry_ptr, ptr @rescale_current_sense_shunt_props._entry, ptr @rescale_current_sense_shunt_props._entry_ptr, ptr @rescale_driver_exit, ptr @rescale_probe._entry, ptr @rescale_probe._entry_ptr, ptr @rescale_voltage_divider_props._entry, ptr @rescale_voltage_divider_props._entry.28, ptr @rescale_voltage_divider_props._entry_ptr, ptr @rescale_voltage_divider_props._entry_ptr.30, ptr @rescale_driver, ptr @.str, ptr @rescale_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @rescale_info, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @rescale_cfg, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rescale_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rescale_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rescale_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rescale_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rescale_configure_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rescale_configure_channel._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rescale_configure_channel._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rescale_cfg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rescale_current_sense_amplifier_props._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rescale_current_sense_shunt_props._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rescale_voltage_divider_props._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rescale_voltage_divider_props._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rescale_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rescale_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rescale_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rescale_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rescale_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef null) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %0, ptr noundef nonnull @.str.1) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @iio_get_channel_ext_info_count(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  %1 = mul i32 %call5, 20
  %mul = add i32 %1, 20
  %sizeof_ext_info.0 = select i1 %tobool.not, i32 0, i32 %mul
  %add8 = add i32 %sizeof_ext_info.0, 112
  %call9 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev1, i32 noundef %add8) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call9, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %call14 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call14, ptr %3, align 4
  %numerator = getelementptr inbounds %struct.rescale, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %numerator to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %numerator, align 4
  %denominator = getelementptr inbounds %struct.rescale, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %denominator, align 4
  %props = getelementptr inbounds %struct.rescale_cfg, ptr %call14, i32 0, i32 1
  %7 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %props, align 4
  %call16 = tail call i32 %8(ptr noundef %dev1, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %9 = ptrtoint ptr %numerator to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %numerator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool21.not = icmp eq i32 %10, 0
  br i1 %tobool21.not, label %if.end19.do.end_crit_edge, label %lor.lhs.false

if.end19.do.end_crit_edge:                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end19
  %11 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool23.not = icmp eq i32 %12, 0
  br i1 %tobool23.not, label %lor.lhs.false.do.end_crit_edge, label %if.end25

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end19.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9, ptr %driver_data.i.i, align 4
  %source26 = getelementptr inbounds %struct.rescale, ptr %3, i32 0, i32 1
  %14 = ptrtoint ptr %source26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %source26, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.dev_name.exit_crit_edge

if.end25.dev_name.exit_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end25.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %if.end25.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call9, i32 0, i32 15
  %19 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i, ptr %name, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call9, i32 0, i32 17
  %20 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rescale_info, ptr %info, align 8
  %21 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %call9, align 8
  %chan = getelementptr inbounds %struct.rescale, ptr %3, i32 0, i32 2
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call9, i32 0, i32 13
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %chan, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call9, i32 0, i32 14
  %23 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sizeof_ext_info.0)
  %tobool28.not = icmp eq i32 %sizeof_ext_info.0, 0
  br i1 %tobool28.not, label %dev_name.exit.if.end56_crit_edge, label %if.then29

dev_name.exit.if.end56_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then29:                                        ; preds = %dev_name.exit
  %channel = getelementptr inbounds %struct.iio_channel, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channel, align 4
  %ext_info = getelementptr inbounds %struct.iio_chan_spec, ptr %25, i32 0, i32 16
  %26 = ptrtoint ptr %ext_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ext_info, align 4
  %call30 = tail call ptr @devm_kmemdup(ptr noundef %dev1, ptr noundef %27, i32 noundef %sizeof_ext_info.0, i32 noundef 3264) #6
  %ext_info31 = getelementptr inbounds %struct.rescale, ptr %3, i32 0, i32 3
  %28 = ptrtoint ptr %ext_info31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call30, ptr %ext_info31, align 4
  %tobool33.not = icmp eq ptr %call30, null
  br i1 %tobool33.not, label %if.then29.cleanup_crit_edge, label %for.cond.preheader

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then29
  %29 = ptrtoint ptr %ext_info31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ext_info31, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool38.not125 = icmp eq ptr %32, null
  br i1 %tobool38.not125, label %for.cond.preheader.if.end56_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end56_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

for.body:                                         ; preds = %if.end55.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %33 = phi ptr [ %50, %if.end55.for.body_crit_edge ], [ %30, %for.cond.preheader.for.body_crit_edge ]
  %i.0126 = phi i32 [ %inc, %if.end55.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %34 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %channel, align 4
  %ext_info43 = getelementptr inbounds %struct.iio_chan_spec, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %ext_info43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ext_info43, align 4
  %read = getelementptr %struct.iio_chan_spec_ext_info, ptr %37, i32 %i.0126, i32 2
  %38 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read, align 4
  %tobool45.not = icmp eq ptr %39, null
  br i1 %tobool45.not, label %for.body.if.end48_crit_edge, label %if.then46

for.body.if.end48_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then46:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %read47 = getelementptr %struct.iio_chan_spec_ext_info, ptr %33, i32 %i.0126, i32 2
  %40 = ptrtoint ptr %read47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @rescale_read_ext_info, ptr %read47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %for.body.if.end48_crit_edge
  %41 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %channel, align 4
  %ext_info50 = getelementptr inbounds %struct.iio_chan_spec, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %ext_info50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ext_info50, align 4
  %write = getelementptr %struct.iio_chan_spec_ext_info, ptr %44, i32 %i.0126, i32 3
  %45 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %write, align 4
  %tobool52.not = icmp eq ptr %46, null
  br i1 %tobool52.not, label %if.end48.if.end55_crit_edge, label %if.then53

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %write54 = getelementptr %struct.iio_chan_spec_ext_info, ptr %33, i32 %i.0126, i32 3
  %47 = ptrtoint ptr %write54 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @rescale_write_ext_info, ptr %write54, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end48.if.end55_crit_edge
  %private = getelementptr %struct.iio_chan_spec_ext_info, ptr %33, i32 %i.0126, i32 4
  %48 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %i.0126, ptr %private, align 4
  %inc = add i32 %i.0126, 1
  %49 = ptrtoint ptr %ext_info31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ext_info31, align 4
  %arrayidx = getelementptr %struct.iio_chan_spec_ext_info, ptr %50, i32 %inc
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %tobool38.not = icmp eq ptr %52, null
  br i1 %tobool38.not, label %if.end55.if.end56_crit_edge, label %if.end55.for.body_crit_edge

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end55.if.end56_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.end56:                                         ; preds = %if.end55.if.end56_crit_edge, %for.cond.preheader.if.end56_crit_edge, %dev_name.exit.if.end56_crit_edge
  %53 = ptrtoint ptr %source26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %source26, align 4
  %channel.i = getelementptr inbounds %struct.iio_channel, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %channel.i, align 4
  %indexed.i = getelementptr inbounds %struct.rescale, ptr %3, i32 0, i32 2, i32 19
  %57 = ptrtoint ptr %indexed.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load.i = load i8, ptr %indexed.i, align 4
  %bf.set.i = or i8 %bf.load.i, 64
  store i8 %bf.set.i, ptr %indexed.i, align 4
  %output.i = getelementptr inbounds %struct.iio_chan_spec, ptr %56, i32 0, i32 19
  %58 = ptrtoint ptr %output.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load2.i = load i8, ptr %output.i, align 4
  %bf.clear3.i = and i8 %bf.load2.i, 32
  %bf.clear6.i = and i8 %bf.set.i, -33
  %bf.set7.i = or i8 %bf.clear3.i, %bf.clear6.i
  store i8 %bf.set7.i, ptr %indexed.i, align 4
  %ext_info.i = getelementptr inbounds %struct.rescale, ptr %3, i32 0, i32 3
  %59 = ptrtoint ptr %ext_info.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ext_info.i, align 4
  %ext_info8.i = getelementptr inbounds %struct.rescale, ptr %3, i32 0, i32 2, i32 16
  %61 = ptrtoint ptr %ext_info8.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %ext_info8.i, align 4
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %3, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %66 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %chan, align 4
  %info_mask_separate.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %56, i32 0, i32 6
  %67 = ptrtoint ptr %info_mask_separate.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %info_mask_separate.i.i, align 4
  %info_mask_shared_by_type.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %56, i32 0, i32 8
  %69 = ptrtoint ptr %info_mask_shared_by_type.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %info_mask_shared_by_type.i.i, align 4
  %and15.i.i = or i32 %70, %68
  %info_mask_shared_by_dir.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %56, i32 0, i32 10
  %71 = ptrtoint ptr %info_mask_shared_by_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %info_mask_shared_by_dir.i.i, align 4
  %or16.i.i = or i32 %and15.i.i, %72
  %info_mask_shared_by_all.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %56, i32 0, i32 12
  %73 = ptrtoint ptr %info_mask_shared_by_all.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %info_mask_shared_by_all.i.i, align 4
  %or517.i.i = or i32 %or16.i.i, %74
  %75 = and i32 %or517.i.i, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %.not.i = icmp eq i32 %75, 0
  br i1 %.not.i, label %if.else.i, label %do.end.i

do.end.i:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end56
  %or8.i58.i = and i32 %or517.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i58.i)
  %tobool.i59.not.i = icmp eq i32 %or8.i58.i, 0
  br i1 %tobool.i59.not.i, label %rescale_configure_channel.exit, label %do.end15.i

do.end15.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  %chan_processed.i = getelementptr inbounds %struct.rescale, ptr %3, i32 0, i32 4
  %76 = ptrtoint ptr %chan_processed.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %chan_processed.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end15.i, %do.end.i
  %info_mask_separate.i = getelementptr inbounds %struct.rescale, ptr %3, i32 0, i32 2, i32 6
  %77 = ptrtoint ptr %info_mask_separate.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 5, ptr %info_mask_separate.i, align 4
  %info_mask_separate_available.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %56, i32 0, i32 7
  %78 = ptrtoint ptr %info_mask_separate_available.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %info_mask_separate_available.i.i, align 4
  %info_mask_shared_by_type_available.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %56, i32 0, i32 9
  %80 = ptrtoint ptr %info_mask_shared_by_type_available.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %info_mask_shared_by_type_available.i.i, align 4
  %and1.i.i = or i32 %81, %79
  %info_mask_shared_by_dir_available.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %56, i32 0, i32 11
  %82 = ptrtoint ptr %info_mask_shared_by_dir_available.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %info_mask_shared_by_dir_available.i.i, align 4
  %or2.i.i = or i32 %and1.i.i, %83
  %info_mask_shared_by_all_available.i.i = getelementptr inbounds %struct.iio_chan_spec, ptr %56, i32 0, i32 13
  %84 = ptrtoint ptr %info_mask_shared_by_all_available.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %info_mask_shared_by_all_available.i.i, align 4
  %or53.i.i = or i32 %or2.i.i, %85
  %or8.i60.i = and i32 %or53.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i60.i)
  %tobool.i61.not.i = icmp eq i32 %or8.i60.i, 0
  br i1 %tobool.i61.not.i, label %if.end20.i.if.end60_crit_edge, label %land.lhs.true.i

if.end20.i.if.end60_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

land.lhs.true.i:                                  ; preds = %if.end20.i
  %chan_processed22.i = getelementptr inbounds %struct.rescale, ptr %3, i32 0, i32 4
  %86 = ptrtoint ptr %chan_processed22.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %chan_processed22.i, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i121 = icmp eq i8 %87, 0
  br i1 %tobool.not.i121, label %if.then23.i, label %land.lhs.true.i.if.end60_crit_edge

land.lhs.true.i.if.end60_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then23.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %info_mask_separate_available.i = getelementptr inbounds %struct.rescale, ptr %3, i32 0, i32 2, i32 7
  %88 = ptrtoint ptr %info_mask_separate_available.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %info_mask_separate_available.i, align 4
  %or.i = or i32 %89, 1
  store i32 %or.i, ptr %info_mask_separate_available.i, align 4
  br label %if.end60

rescale_configure_channel.exit:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #9
  br label %cleanup

if.end60:                                         ; preds = %if.then23.i, %land.lhs.true.i.if.end60_crit_edge, %if.end20.i.if.end60_crit_edge
  %call61 = tail call i32 @__devm_iio_device_register(ptr noundef %dev1, ptr noundef nonnull %call9, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %rescale_configure_channel.exit, %if.then29.cleanup_crit_edge, %do.end, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call61, %if.end60 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call16, %if.end12.cleanup_crit_edge ], [ -12, %if.then29.cleanup_crit_edge ], [ -22, %rescale_configure_channel.exit ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_get_channel_ext_info_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rescale_read_ext_info(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %source = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source, align 4
  %ext_info = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ext_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_info, align 4
  %arrayidx = getelementptr %struct.iio_chan_spec_ext_info, ptr %5, i32 %private
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @iio_read_channel_ext_info(ptr noundef %3, ptr noundef %7, ptr noundef %buf) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rescale_write_ext_info(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %source = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source, align 4
  %ext_info = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ext_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ext_info, align 4
  %arrayidx = getelementptr %struct.iio_chan_spec_ext_info, ptr %5, i32 %private
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @iio_write_channel_ext_info(ptr noundef %3, ptr noundef %7, ptr noundef %buf, i32 noundef %len) #6
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rescale_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %chan_processed = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %chan_processed to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %chan_processed, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %source2 = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %source2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %source2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @iio_read_channel_processed(ptr noundef %6, ptr noundef %val) #6
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @iio_read_channel_raw(ptr noundef %6, ptr noundef %val) #6
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %chan_processed5 = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %chan_processed5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %chan_processed5, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %val, align 4
  %10 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %val2, align 4
  br label %sw.bb11

if.end:                                           ; preds = %sw.bb4
  %source9 = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %source9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %source9, align 4
  %call10 = tail call i32 @iio_read_channel_scale(ptr noundef %12, ptr noundef %val, ptr noundef %val2) #6
  %13 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call10, label %if.end.cleanup_crit_edge [
    i32 10, label %if.end.sw.bb11_crit_edge
    i32 1, label %sw.bb13
    i32 11, label %sw.bb20
  ]

if.end.sw.bb11_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb11:                                          ; preds = %if.end.sw.bb11_crit_edge, %if.end.thread
  %numerator = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %numerator to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %numerator, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %mul = mul i32 %17, %15
  store i32 %mul, ptr %val, align 4
  %denominator = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %denominator, align 4
  %20 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val2, align 4
  %mul12 = mul i32 %21, %19
  store i32 %mul12, ptr %val2, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  %numerator14 = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %numerator14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %numerator14, align 4
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %mul15 = mul i32 %25, %23
  store i32 %mul15, ptr %val, align 4
  %denominator16 = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %denominator16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %denominator16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp = icmp eq i32 %27, 1
  br i1 %cmp, label %sw.bb13.cleanup_crit_edge, label %if.end18

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val2, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  %conv = sext i32 %30 to i64
  %mul21 = mul nsw i64 %conv, 1000000000
  %denominator22 = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %denominator22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %denominator22, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul21)
  %cmp196 = icmp ult i64 %mul21, 4294967296
  br i1 %cmp196, label %if.then200, label %if.else206, !prof !85

if.then200:                                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  %conv201 = trunc i64 %mul21 to i32
  %div204 = udiv i32 %conv201, %32
  %conv205 = zext i32 %div204 to i64
  br label %if.end434

if.else206:                                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  %33 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %32, i64 %mul21) #10, !srcloc !86
  %asmresult1.i = extractvalue { i64, i64 } %33, 1
  br label %if.end434

if.end434:                                        ; preds = %if.else206, %if.then200
  %tmp.0 = phi i64 [ %conv205, %if.then200 ], [ %asmresult1.i, %if.else206 ]
  %numerator212 = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %numerator212 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %numerator212, align 4
  %conv213 = sext i32 %35 to i64
  %mul214 = mul i64 %tmp.0, %conv213
  %36 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %mul214, i32 0) #10, !srcloc !87
  %asmresult.i = extractvalue { i64, i32 } %36, 0
  %asmresult4.i = extractvalue { i64, i32 } %36, 1
  %37 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %mul214, i64 %asmresult.i, i32 %asmresult4.i) #10, !srcloc !88
  %asmresult10.i = extractvalue { i64, i32 } %37, 0
  %storemerge = lshr i64 %asmresult10.i, 29
  %conv436 = trunc i64 %storemerge to i32
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv436, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end434, %if.end18, %sw.bb13.cleanup_crit_edge, %sw.bb11, %if.end.cleanup_crit_edge, %if.else, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end434 ], [ 10, %if.end18 ], [ 10, %sw.bb11 ], [ %call1, %if.then ], [ %call3, %if.else ], [ 1, %sw.bb13.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rescale_read_avail(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr noundef %vals, ptr nocapture noundef writeonly %type, ptr noundef %length, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %type, align 4
  %source = getelementptr inbounds %struct.rescale, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %source to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %source, align 4
  %call1 = tail call i32 @iio_read_avail_channel_raw(ptr noundef %4, ptr noundef %vals, ptr noundef %length) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_raw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_scale(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_avail_channel_raw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_ext_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_write_channel_ext_info(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rescale_current_sense_amplifier_props(ptr noundef %dev, ptr nocapture noundef %rescale) #2 align 64 {
entry:
  %sense = alloca i32, align 4
  %gain_mult = alloca i32, align 4
  %gain_div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sense) #6
  %0 = ptrtoint ptr %sense to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sense, align 4, !annotation !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gain_mult) #6
  %1 = ptrtoint ptr %gain_mult to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %gain_mult, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gain_div) #6
  %2 = ptrtoint ptr %gain_div to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %gain_div, align 4
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull %sense, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i39 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull %gain_mult, i32 noundef 1) #6
  %call.i40 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull %gain_div, i32 noundef 1) #6
  %3 = ptrtoint ptr %sense to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sense, align 4
  %call3 = call i32 @gcd(i32 noundef %4, i32 noundef 1000000) #11
  %div = udiv i32 1000000, %call3
  %numerator = getelementptr inbounds %struct.rescale, ptr %rescale, i32 0, i32 5
  %div4 = udiv i32 %4, %call3
  %denominator = getelementptr inbounds %struct.rescale, ptr %rescale, i32 0, i32 6
  %5 = ptrtoint ptr %gain_mult to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gain_mult, align 4
  %call6 = call i32 @gcd(i32 noundef %div, i32 noundef %6) #11
  %div8 = udiv i32 %div, %call6
  %div9 = udiv i32 %6, %call6
  %mul = mul i32 %div9, %div4
  %7 = ptrtoint ptr %gain_div to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gain_div, align 4
  %call12 = call i32 @gcd(i32 noundef %mul, i32 noundef %8) #11
  %div13 = udiv i32 %8, %call12
  %mul15 = mul i32 %div13, %div8
  %9 = ptrtoint ptr %numerator to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul15, ptr %numerator, align 4
  %div17 = udiv i32 %mul, %call12
  %10 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div17, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gain_div) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gain_mult) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sense) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rescale_current_sense_shunt_props(ptr noundef %dev, ptr nocapture noundef writeonly %rescale) #2 align 64 {
entry:
  %shunt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shunt) #6
  %0 = ptrtoint ptr %shunt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %shunt, align 4, !annotation !89
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef nonnull %shunt, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %shunt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %shunt, align 4
  %call1 = call i32 @gcd(i32 noundef %2, i32 noundef 1000000) #11
  %div = udiv i32 1000000, %call1
  %numerator = getelementptr inbounds %struct.rescale, ptr %rescale, i32 0, i32 5
  %3 = ptrtoint ptr %numerator to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div, ptr %numerator, align 4
  %div2 = udiv i32 %2, %call1
  %denominator = getelementptr inbounds %struct.rescale, ptr %rescale, i32 0, i32 6
  %4 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div2, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shunt) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rescale_voltage_divider_props(ptr noundef %dev, ptr noundef %rescale) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %denominator = getelementptr inbounds %struct.rescale, ptr %rescale, i32 0, i32 6
  %call.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.24, ptr noundef %denominator, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %numerator = getelementptr inbounds %struct.rescale, ptr %rescale, i32 0, i32 5
  %call.i29 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.27, ptr noundef %numerator, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool2.not = icmp eq i32 %call.i29, 0
  br i1 %tobool2.not, label %if.end7, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %call.i29) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %numerator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %numerator, align 4
  %2 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator, align 4
  %call10 = tail call i32 @gcd(i32 noundef %1, i32 noundef %3) #11
  %div = udiv i32 %1, %call10
  %4 = ptrtoint ptr %numerator to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div, ptr %numerator, align 4
  %div13 = udiv i32 %3, %call10
  %5 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div13, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end6, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i29, %do.end6 ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }
attributes #11 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !49, !50, !51, !53, !55, !57, !59, !60, !61, !62, !64, !66, !67, !68, !69, !71, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__initcall__kmod_iio_rescale__170_381_rescale_driver_init6, !1, !"__initcall__kmod_iio_rescale__170_381_rescale_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/afe/iio-rescale.c", i32 381, i32 1}
!2 = !{ptr @__exitcall_rescale_driver_exit, !1, !"__exitcall_rescale_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/iio/afe/iio-rescale.c", i32 383, i32 1}
!5 = !{ptr @__UNIQUE_ID_author172, !6, !"__UNIQUE_ID_author172", i1 false, i1 false}
!6 = !{!"../drivers/iio/afe/iio-rescale.c", i32 384, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/iio/afe/iio-rescale.c", i32 385, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/afe/iio-rescale.c", i32 377, i32 11}
!12 = !{ptr @rescale_driver, !13, !"rescale_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/afe/iio-rescale.c", i32 374, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/afe/iio-rescale.c", i32 310, i32 10}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/afe/iio-rescale.c", i32 335, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rescale_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rescale_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @rescale_info, !25, !"rescale_info", i1 false, i1 false}
!25 = !{!"../drivers/iio/afe/iio-rescale.c", i32 111, i32 30}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/afe/iio-rescale.c", i32 153, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rescale_configure_channel._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @rescale_configure_channel._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/afe/iio-rescale.c", i32 155, i32 3}
!34 = !{ptr @rescale_configure_channel._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rescale_configure_channel._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/afe/iio-rescale.c", i32 158, i32 3}
!38 = !{ptr @rescale_configure_channel._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rescale_configure_channel._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @rescale_match, !41, !"rescale_match", i1 false, i1 false}
!41 = !{!"../drivers/iio/afe/iio-rescale.c", i32 285, i32 34}
!42 = !{ptr @rescale_cfg, !43, !"rescale_cfg", i1 false, i1 false}
!43 = !{!"../drivers/iio/afe/iio-rescale.c", i32 270, i32 33}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/afe/iio-rescale.c", i32 186, i32 38}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/iio/afe/iio-rescale.c", i32 189, i32 3}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rescale_current_sense_amplifier_props._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @rescale_current_sense_amplifier_props._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/afe/iio-rescale.c", i32 193, i32 32}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/afe/iio-rescale.c", i32 194, i32 32}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/iio/afe/iio-rescale.c", i32 223, i32 38}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/iio/afe/iio-rescale.c", i32 226, i32 3}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rescale_current_sense_shunt_props._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @rescale_current_sense_shunt_props._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/iio/afe/iio-rescale.c", i32 243, i32 38}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/iio/afe/iio-rescale.c", i32 246, i32 3}
!66 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @rescale_voltage_divider_props._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @rescale_voltage_divider_props._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/iio/afe/iio-rescale.c", i32 250, i32 38}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/afe/iio-rescale.c", i32 253, i32 3}
!73 = !{ptr @rescale_voltage_divider_props._entry.28, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rescale_voltage_divider_props._entry_ptr.30, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i8 0, i8 2}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2148366247, i64 2148366527, i64 2148366861, i64 2148367195}
!87 = !{i64 880703, i64 880730, i64 880752, i64 880780}
!88 = !{i64 881111, i64 881138, i64 881171, i64 881192, i64 881219, i64 881245}
!89 = !{!"auto-init"}
