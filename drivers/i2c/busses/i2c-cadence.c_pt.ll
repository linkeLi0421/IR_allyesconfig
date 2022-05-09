; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-cadence.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-cadence.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cdns_platform_data = type { i32 }
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
%struct.cdns_i2c = type { ptr, ptr, %struct.i2c_adapter, ptr, i32, %struct.completion, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.notifier_block, i32, i32, i16, ptr, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_cadence__289_1372_cdns_i2c_drv_init6 = internal global ptr @cdns_i2c_drv_init, section ".initcall6.init", align 4
@cdns_i2c_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cdns_i2c_probe, ptr @cdns_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cdns_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_i2c_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cdns_i2c_drv_exit = internal global ptr @cdns_i2c_drv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [31 x i8] c"i2c_cadence.author=Xilinx Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [47 x i8] c"i2c_cadence.description=Cadence I2C bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [48 x i8] c"i2c_cadence.file=drivers/i2c/busses/i2c-cadence\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [24 x i8] c"i2c_cadence.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cdns-i2c\00", [23 x i8] zeroinitializer }, align 32
@cdns_i2c_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,i2c-r1p10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r1p10_i2c_def }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cdns,i2c-r1p14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@cdns_i2c_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cdns_i2c_runtime_suspend, ptr @cdns_i2c_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cdns_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @cdns_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @cdns_i2c_func, ptr @cdns_reg_slave, ptr @cdns_unreg_slave }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cadence I2C at %08lx\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"input clock not found.\0A\00", [40 x i8] zeroinitializer }, align 32
@cdns_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1284, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to enable clock.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cdns_i2c_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-cadence.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cdns_i2c_probe._entry_ptr = internal global ptr @cdns_i2c_probe._entry, section ".printk_index", align 4
@cdns_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1293, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to register clock notifier.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cdns_i2c_probe._entry_ptr.11 = internal global ptr @cdns_i2c_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@cdns_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 1310, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid SCL clock: %u Hz\0A\00", [38 x i8] zeroinitializer }, align 32
@cdns_i2c_probe._entry_ptr.15 = internal global ptr @cdns_i2c_probe._entry.13, section ".printk_index", align 4
@cdns_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 1318, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cannot get irq %d\0A\00", [45 x i8] zeroinitializer }, align 32
@cdns_i2c_probe._entry_ptr.18 = internal global ptr @cdns_i2c_probe._entry.16, section ".printk_index", align 4
@cdns_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.4, ptr @.str.5, i32 1328, ptr @.str.21, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%u kHz mmio %08lx irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cdns_i2c_probe._entry_ptr.22 = internal global ptr @cdns_i2c_probe._entry.19, section ".printk_index", align 4
@cdns_i2c_master_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.5, i32 868, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Can't do repeated start after a receive message\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdns_i2c_master_xfer\00", [43 x i8] zeroinitializer }, align 32
@cdns_i2c_master_xfer._entry_ptr = internal global ptr @cdns_i2c_master_xfer._entry, section ".printk_index", align 4
@cdns_i2c_process_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 793, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"timeout waiting on completion\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cdns_i2c_process_msg\00", [43 x i8] zeroinitializer }, align 32
@cdns_i2c_process_msg._entry_ptr = internal global ptr @cdns_i2c_process_msg._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cdns_i2c_clk_notifier_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 1125, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"clock rate change rejected\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cdns_i2c_clk_notifier_cb\00", [39 x i8] zeroinitializer }, align 32
@cdns_i2c_clk_notifier_cb._entry_ptr = internal global ptr @cdns_i2c_clk_notifier_cb._entry, section ".printk_index", align 4
@cdns_i2c_master_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 443, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"xfer_size reg rollover. xfer aborted!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cdns_i2c_master_isr\00", [44 x i8] zeroinitializer }, align 32
@cdns_i2c_master_isr._entry_ptr = internal global ptr @cdns_i2c_master_isr._entry, section ".printk_index", align 4
@r1p10_i2c_def = internal constant { %struct.cdns_platform_data, [28 x i8] } { %struct.cdns_platform_data { i32 1 }, [28 x i8] zeroinitializer }, align 32
@cdns_i2c_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 1203, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot enable clock.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cdns_i2c_runtime_resume\00", [40 x i8] zeroinitializer }, align 32
@cdns_i2c_runtime_resume._entry_ptr = internal global ptr @cdns_i2c_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.34 = private unnamed_addr constant [13 x i8] c"cdns_i2c_drv\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1362, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1364, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"cdns_i2c_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1220, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"cdns_i2c_dev_pm_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1211, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"cdns_i2c_algo\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 980, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1275, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1280, i32 10 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1284, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1293, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1296, i32 48 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1310, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1318, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1327, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 867, i32 5 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 792, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 87, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1124, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 442, i32 5 }
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"r1p10_i2c_def\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1216, i32 40 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-cadence.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1203, i32 3 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_cdns_i2c_drv_exit, ptr @__initcall__kmod_i2c_cadence__289_1372_cdns_i2c_drv_init6, ptr @cdns_i2c_clk_notifier_cb._entry, ptr @cdns_i2c_clk_notifier_cb._entry_ptr, ptr @cdns_i2c_drv_exit, ptr @cdns_i2c_master_isr._entry, ptr @cdns_i2c_master_isr._entry_ptr, ptr @cdns_i2c_master_xfer._entry, ptr @cdns_i2c_master_xfer._entry_ptr, ptr @cdns_i2c_probe._entry, ptr @cdns_i2c_probe._entry.13, ptr @cdns_i2c_probe._entry.16, ptr @cdns_i2c_probe._entry.19, ptr @cdns_i2c_probe._entry.8, ptr @cdns_i2c_probe._entry_ptr, ptr @cdns_i2c_probe._entry_ptr.11, ptr @cdns_i2c_probe._entry_ptr.15, ptr @cdns_i2c_probe._entry_ptr.18, ptr @cdns_i2c_probe._entry_ptr.22, ptr @cdns_i2c_process_msg._entry, ptr @cdns_i2c_process_msg._entry_ptr, ptr @cdns_i2c_runtime_resume._entry, ptr @cdns_i2c_runtime_resume._entry_ptr, ptr @cdns_i2c_drv, ptr @.str, ptr @cdns_i2c_of_match, ptr @cdns_i2c_dev_pm_ops, ptr @cdns_i2c_algo, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @init_completion.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @r1p10_i2c_def, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_master_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_process_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_clk_notifier_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_master_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r1p10_i2c_def to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cdns_i2c_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i2c_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cdns_i2c_drv, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cdns_i2c_drv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @cdns_i2c_drv) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %div_a.i = alloca i32, align 4
  %div_b.i = alloca i32, align 4
  %fscl.i = alloca i32, align 4
  %r_mem = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r_mem) #10
  %0 = ptrtoint ptr %r_mem to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %r_mem, align 4, !annotation !91
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1512, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @of_match_node(ptr noundef nonnull @cdns_i2c_of_match, ptr noundef %4) #10
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.if.end11_crit_edge, label %land.lhs.true

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call4, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %quirks10 = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 17
  %9 = ptrtoint ptr %quirks10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %quirks10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call12 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %r_mem) #10
  %membase = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call12, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %call12 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %call19 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %if.end18.cleanup_crit_edge, label %if.end21

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end18
  %irq = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 11
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call19, ptr %irq, align 4
  %adap = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %adap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %adap, align 8
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %of_node26 = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 2, i32 9, i32 27
  %16 = ptrtoint ptr %of_node26 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %of_node26, align 8
  %algo = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @cdns_i2c_algo, ptr %algo, align 8
  %timeout = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 2, i32 7
  %18 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 100, ptr %timeout, align 4
  %retries = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 2, i32 8
  %19 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %retries, align 8
  %algo_data = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %algo_data, align 4
  %parent = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 2, i32 9, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %parent, align 8
  %xfer_done = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %xfer_done to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %xfer_done, align 4
  %wait.i = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 5, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #10
  %name = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 2, i32 12
  %23 = ptrtoint ptr %r_mem to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %r_mem, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %call36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.1, i32 noundef %26)
  %call38 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #10
  %clk = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 15
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call38, ptr %clk, align 4
  %cmp.i194 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i194, label %if.then41, label %if.end46

if.then41:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %call38 to i32
  %call45 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %28, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end21
  %call.i195 = call i32 @clk_prepare(ptr noundef %call38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i195)
  %tobool.not.i = icmp eq i32 %call.i195, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end46.do.end_crit_edge

if.end46.do.end_crit_edge:                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %if.end46
  %call1.i = call i32 @clk_enable(ptr noundef %call38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end52_crit_edge, label %if.then3.i

if.end.i.if.end52_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @clk_unprepare(ptr noundef %call38) #10
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end46.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #13
  br label %if.end52

if.end52:                                         ; preds = %do.end, %if.end.i.if.end52_crit_edge
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 8
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %30, i32 noundef 1000) #10
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 8
  call void @__pm_runtime_use_autosuspend(ptr noundef %32, i1 noundef zeroext true) #10
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 8
  %call.i196 = call i32 @__pm_runtime_set_status(ptr noundef %34, i32 noundef 0) #10
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 8
  call void @pm_runtime_enable(ptr noundef %36) #10
  %clk_rate_change_nb = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 16
  %37 = ptrtoint ptr %clk_rate_change_nb to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @cdns_i2c_clk_notifier_cb, ptr %clk_rate_change_nb, align 8
  %38 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk, align 4
  %call60 = call i32 @clk_notifier_register(ptr noundef %39, ptr noundef %clk_rate_change_nb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end52.if.end67_crit_edge, label %do.end65

if.end52.if.end67_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

do.end65:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #13
  br label %if.end67

if.end67:                                         ; preds = %do.end65, %if.end52.if.end67_crit_edge
  %40 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk, align 4
  %call69 = call i32 @clk_get_rate(ptr noundef %41) #10
  %input_clk = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 12
  %42 = ptrtoint ptr %input_clk to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call69, ptr %input_clk, align 8
  %43 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node, align 8
  %i2c_clk = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 13
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %44, ptr noundef nonnull @.str.12, ptr noundef %i2c_clk, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool73.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool73.not, label %lor.lhs.false, label %if.end67.if.then76_crit_edge

if.end67.if.then76_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

lor.lhs.false:                                    ; preds = %if.end67
  %45 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %i2c_clk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %46)
  %cmp75 = icmp ugt i32 %46, 400000
  br i1 %cmp75, label %lor.lhs.false.if.then76_crit_edge, label %lor.lhs.false.if.end78_crit_edge

lor.lhs.false.if.end78_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end78

lor.lhs.false.if.then76_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

if.then76:                                        ; preds = %lor.lhs.false.if.then76_crit_edge, %if.end67.if.then76_crit_edge
  %47 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 100000, ptr %i2c_clk, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %lor.lhs.false.if.end78_crit_edge
  %dev_mode = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 21
  %48 = ptrtoint ptr %dev_mode to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %dev_mode, align 4
  %slave_state = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 22
  %49 = ptrtoint ptr %slave_state to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %slave_state, align 8
  %ctrl_reg = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 18
  %50 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 14, ptr %ctrl_reg, align 8
  %51 = ptrtoint ptr %input_clk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %input_clk, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_a.i) #10
  %53 = ptrtoint ptr %div_a.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %div_a.i, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_b.i) #10
  %54 = ptrtoint ptr %div_b.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %div_b.i, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fscl.i) #10
  %55 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %i2c_clk, align 4
  %57 = ptrtoint ptr %fscl.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %fscl.i, align 4
  %call.i197 = call fastcc i32 @cdns_i2c_calc_divs(ptr noundef nonnull %fscl.i, i32 noundef %52, ptr noundef nonnull %div_a.i, ptr noundef nonnull %div_b.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i197)
  %tobool.not.i198 = icmp eq i32 %call.i197, 0
  br i1 %tobool.not.i198, label %if.end88, label %do.end85

do.end85:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fscl.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_b.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_a.i) #10
  br label %err_clk_dis.sink.split

if.end88:                                         ; preds = %if.end78
  %58 = ptrtoint ptr %div_a.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %div_a.i, align 4
  %shl.i = shl i32 %59, 14
  %60 = ptrtoint ptr %div_b.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %div_b.i, align 4
  %shl2.i = shl i32 %61, 8
  %or.i = or i32 %shl2.i, %shl.i
  %or3.i = or i32 %or.i, 14
  %62 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or3.i, ptr %ctrl_reg, align 8
  %63 = call i32 @llvm.bswap.i32(i32 %or3.i) #10
  %64 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %membase, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #10, !srcloc !92
  %conv.i = trunc i32 %or.i to i16
  %ctrl_reg_diva_divb.i = getelementptr inbounds %struct.cdns_i2c, ptr %call.i, i32 0, i32 19
  %66 = ptrtoint ptr %ctrl_reg_diva_divb.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i, ptr %ctrl_reg_diva_divb.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fscl.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_b.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_a.i) #10
  %67 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %irq, align 4
  %call.i200 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %68, ptr noundef nonnull @cdns_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i200)
  %tobool92.not = icmp eq i32 %call.i200, 0
  br i1 %tobool92.not, label %if.end99, label %if.end88.err_clk_dis.sink.split_crit_edge

if.end88.err_clk_dis.sink.split_crit_edge:        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_dis.sink.split

if.end99:                                         ; preds = %if.end88
  %69 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %ctrl_reg, align 8
  %71 = call i32 @llvm.bswap.i32(i32 %70) #10
  %72 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %membase, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #10, !srcloc !92
  %74 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %membase, align 4
  %add.ptr2.i = getelementptr i8, ptr %75, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -16777216) #10, !srcloc !92
  %call101 = call i32 @i2c_add_adapter(ptr noundef %adap) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.end99.err_clk_dis_crit_edge, label %do.end107

if.end99.err_clk_dis_crit_edge:                   ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_clk_dis

do.end107:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %i2c_clk, align 4
  %div = udiv i32 %77, 1000
  %78 = ptrtoint ptr %r_mem to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %r_mem, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %82 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %div, i32 noundef %81, i32 noundef %83) #13
  br label %cleanup

err_clk_dis.sink.split:                           ; preds = %if.end88.err_clk_dis.sink.split_crit_edge, %do.end85
  %irq.sink = phi ptr [ %i2c_clk, %do.end85 ], [ %irq, %if.end88.err_clk_dis.sink.split_crit_edge ]
  %.str.17.sink = phi ptr [ @.str.14, %do.end85 ], [ @.str.17, %if.end88.err_clk_dis.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ -22, %do.end85 ], [ %call.i200, %if.end88.err_clk_dis.sink.split_crit_edge ]
  %84 = ptrtoint ptr %irq.sink to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %irq.sink, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.17.sink, i32 noundef %85) #13
  br label %err_clk_dis

err_clk_dis:                                      ; preds = %err_clk_dis.sink.split, %if.end99.err_clk_dis_crit_edge
  %ret.0 = phi i32 [ %call101, %if.end99.err_clk_dis_crit_edge ], [ %ret.0.ph, %err_clk_dis.sink.split ]
  %86 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %87) #10
  call void @clk_unprepare(ptr noundef %87) #10
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %call.i202 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #10
  br label %cleanup

cleanup:                                          ; preds = %err_clk_dis, %do.end107, %if.then41, %if.end18.cleanup_crit_edge, %if.then15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then15 ], [ %call45, %if.then41 ], [ %ret.0, %err_clk_dis ], [ 0, %do.end107 ], [ -12, %entry.cleanup_crit_edge ], [ %call19, %if.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r_mem) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i2c_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #10
  %adap = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adap) #10
  %clk = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %clk_rate_change_nb = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 16
  %call4 = tail call i32 @clk_notifier_unregister(ptr noundef %3, ptr noundef %clk_rate_change_nb) #10
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i2c_clk_notifier_cb(ptr nocapture noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %div_a.i70 = alloca i32, align 4
  %div_b.i71 = alloca i32, align 4
  %fscl.i72 = alloca i32, align 4
  %div_a.i53 = alloca i32, align 4
  %div_b.i54 = alloca i32, align 4
  %fscl.i55 = alloca i32, align 4
  %div_a.i = alloca i32, align 4
  %div_b.i = alloca i32, align 4
  %fscl.i = alloca i32, align 4
  %fscl = alloca i32, align 4
  %div_a = alloca i32, align 4
  %div_b = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -1472
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.cleanup32_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pm_runtime_suspended.exit.cleanup32_crit_edge:    ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %if.end.cleanup32_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 4, label %sw.bb24
  ]

if.end.cleanup32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

sw.bb:                                            ; preds = %if.end
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %new_rate, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fscl) #10
  %i2c_clk = getelementptr i8, ptr %nb, i32 -12
  %8 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_clk, align 4
  %10 = ptrtoint ptr %fscl to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %fscl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_a) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_b) #10
  %call1 = call fastcc i32 @cdns_i2c_calc_divs(ptr noundef nonnull %fscl, i32 noundef %7, ptr noundef nonnull %div_a, ptr noundef nonnull %div_b)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end4, label %do.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %parent = getelementptr i8, ptr %nb, i32 -1128
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.28) #13
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %old_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %14)
  %cmp = icmp ugt i32 %7, %14
  br i1 %cmp, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_a.i) #10
  %15 = ptrtoint ptr %div_a.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %div_a.i, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_b.i) #10
  %16 = ptrtoint ptr %div_b.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %div_b.i, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fscl.i) #10
  %17 = ptrtoint ptr %i2c_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i2c_clk, align 4
  %19 = ptrtoint ptr %fscl.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %fscl.i, align 4
  %call.i = call fastcc i32 @cdns_i2c_calc_divs(ptr noundef nonnull %fscl.i, i32 noundef %7, ptr noundef nonnull %div_a.i, ptr noundef nonnull %div_b.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i52 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i52, label %if.end.i, label %if.then6.cdns_i2c_setclk.exit_crit_edge

if.then6.cdns_i2c_setclk.exit_crit_edge:          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_i2c_setclk.exit

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl_reg1.i = getelementptr i8, ptr %nb, i32 16
  %20 = ptrtoint ptr %ctrl_reg1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctrl_reg1.i, align 8
  %and.i = and i32 %21, -65281
  %22 = ptrtoint ptr %div_a.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %div_a.i, align 4
  %shl.i = shl i32 %23, 14
  %24 = ptrtoint ptr %div_b.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %div_b.i, align 4
  %shl2.i = shl i32 %25, 8
  %or.i = or i32 %shl2.i, %shl.i
  %or3.i = or i32 %or.i, %and.i
  store i32 %or3.i, ptr %ctrl_reg1.i, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %or3.i) #10
  %membase.i = getelementptr i8, ptr %nb, i32 -1468
  %27 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #10, !srcloc !92
  %conv.i = trunc i32 %or.i to i16
  %ctrl_reg_diva_divb.i = getelementptr i8, ptr %nb, i32 20
  %29 = ptrtoint ptr %ctrl_reg_diva_divb.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %ctrl_reg_diva_divb.i, align 4
  br label %cdns_i2c_setclk.exit

cdns_i2c_setclk.exit:                             ; preds = %if.end.i, %if.then6.cdns_i2c_setclk.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fscl.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_b.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_a.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cdns_i2c_setclk.exit, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 32769, %do.end ], [ 1, %cdns_i2c_setclk.exit ], [ 1, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_b) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_a) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fscl) #10
  br label %cleanup32

sw.bb14:                                          ; preds = %if.end
  %new_rate15 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %30 = ptrtoint ptr %new_rate15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %new_rate15, align 4
  %input_clk16 = getelementptr i8, ptr %nb, i32 -16
  %32 = ptrtoint ptr %input_clk16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %input_clk16, align 8
  %33 = load i32, ptr %new_rate15, align 4
  %old_rate18 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %34 = ptrtoint ptr %old_rate18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %old_rate18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp19 = icmp ult i32 %33, %35
  br i1 %cmp19, label %if.then20, label %sw.bb14.cleanup32_crit_edge

sw.bb14.cleanup32_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

if.then20:                                        ; preds = %sw.bb14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_a.i53) #10
  %36 = ptrtoint ptr %div_a.i53 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %div_a.i53, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_b.i54) #10
  %37 = ptrtoint ptr %div_b.i54 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %div_b.i54, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fscl.i55) #10
  %i2c_clk.i56 = getelementptr i8, ptr %nb, i32 -12
  %38 = ptrtoint ptr %i2c_clk.i56 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i2c_clk.i56, align 4
  %40 = ptrtoint ptr %fscl.i55 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %fscl.i55, align 4
  %call.i57 = call fastcc i32 @cdns_i2c_calc_divs(ptr noundef nonnull %fscl.i55, i32 noundef %33, ptr noundef nonnull %div_a.i53, ptr noundef nonnull %div_b.i54) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.end.i68, label %if.then20.cdns_i2c_setclk.exit69_crit_edge

if.then20.cdns_i2c_setclk.exit69_crit_edge:       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_i2c_setclk.exit69

if.end.i68:                                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl_reg1.i59 = getelementptr i8, ptr %nb, i32 16
  %41 = ptrtoint ptr %ctrl_reg1.i59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ctrl_reg1.i59, align 8
  %and.i60 = and i32 %42, -65281
  %43 = ptrtoint ptr %div_a.i53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %div_a.i53, align 4
  %shl.i61 = shl i32 %44, 14
  %45 = ptrtoint ptr %div_b.i54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %div_b.i54, align 4
  %shl2.i62 = shl i32 %46, 8
  %or.i63 = or i32 %shl2.i62, %shl.i61
  %or3.i64 = or i32 %or.i63, %and.i60
  store i32 %or3.i64, ptr %ctrl_reg1.i59, align 8
  %47 = tail call i32 @llvm.bswap.i32(i32 %or3.i64) #10
  %membase.i65 = getelementptr i8, ptr %nb, i32 -1468
  %48 = ptrtoint ptr %membase.i65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %membase.i65, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #10, !srcloc !92
  %conv.i66 = trunc i32 %or.i63 to i16
  %ctrl_reg_diva_divb.i67 = getelementptr i8, ptr %nb, i32 20
  %50 = ptrtoint ptr %ctrl_reg_diva_divb.i67 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i66, ptr %ctrl_reg_diva_divb.i67, align 4
  br label %cdns_i2c_setclk.exit69

cdns_i2c_setclk.exit69:                           ; preds = %if.end.i68, %if.then20.cdns_i2c_setclk.exit69_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fscl.i55) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_b.i54) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_a.i53) #10
  br label %cleanup32

sw.bb24:                                          ; preds = %if.end
  %new_rate25 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %51 = ptrtoint ptr %new_rate25 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %new_rate25, align 4
  %old_rate26 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %53 = ptrtoint ptr %old_rate26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %old_rate26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp27 = icmp ugt i32 %52, %54
  br i1 %cmp27, label %if.then28, label %sw.bb24.cleanup32_crit_edge

sw.bb24.cleanup32_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup32

if.then28:                                        ; preds = %sw.bb24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_a.i70) #10
  %55 = ptrtoint ptr %div_a.i70 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %div_a.i70, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div_b.i71) #10
  %56 = ptrtoint ptr %div_b.i71 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %div_b.i71, align 4, !annotation !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fscl.i72) #10
  %i2c_clk.i73 = getelementptr i8, ptr %nb, i32 -12
  %57 = ptrtoint ptr %i2c_clk.i73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %i2c_clk.i73, align 4
  %59 = ptrtoint ptr %fscl.i72 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %fscl.i72, align 4
  %call.i74 = call fastcc i32 @cdns_i2c_calc_divs(ptr noundef nonnull %fscl.i72, i32 noundef %54, ptr noundef nonnull %div_a.i70, ptr noundef nonnull %div_b.i71) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %if.end.i85, label %if.then28.cdns_i2c_setclk.exit86_crit_edge

if.then28.cdns_i2c_setclk.exit86_crit_edge:       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_i2c_setclk.exit86

if.end.i85:                                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl_reg1.i76 = getelementptr i8, ptr %nb, i32 16
  %60 = ptrtoint ptr %ctrl_reg1.i76 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ctrl_reg1.i76, align 8
  %and.i77 = and i32 %61, -65281
  %62 = ptrtoint ptr %div_a.i70 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %div_a.i70, align 4
  %shl.i78 = shl i32 %63, 14
  %64 = ptrtoint ptr %div_b.i71 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %div_b.i71, align 4
  %shl2.i79 = shl i32 %65, 8
  %or.i80 = or i32 %shl2.i79, %shl.i78
  %or3.i81 = or i32 %or.i80, %and.i77
  store i32 %or3.i81, ptr %ctrl_reg1.i76, align 8
  %66 = tail call i32 @llvm.bswap.i32(i32 %or3.i81) #10
  %membase.i82 = getelementptr i8, ptr %nb, i32 -1468
  %67 = ptrtoint ptr %membase.i82 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i82, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #10, !srcloc !92
  %conv.i83 = trunc i32 %or.i80 to i16
  %ctrl_reg_diva_divb.i84 = getelementptr i8, ptr %nb, i32 20
  %69 = ptrtoint ptr %ctrl_reg_diva_divb.i84 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i83, ptr %ctrl_reg_diva_divb.i84, align 4
  br label %cdns_i2c_setclk.exit86

cdns_i2c_setclk.exit86:                           ; preds = %if.end.i85, %if.then28.cdns_i2c_setclk.exit86_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fscl.i72) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_b.i71) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div_a.i70) #10
  br label %cleanup32

cleanup32:                                        ; preds = %cdns_i2c_setclk.exit86, %sw.bb24.cleanup32_crit_edge, %cdns_i2c_setclk.exit69, %sw.bb14.cleanup32_crit_edge, %cleanup, %if.end.cleanup32_crit_edge, %pm_runtime_suspended.exit.cleanup32_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 1, %pm_runtime_suspended.exit.cleanup32_crit_edge ], [ 1, %cdns_i2c_setclk.exit69 ], [ 1, %sw.bb14.cleanup32_crit_edge ], [ 1, %cdns_i2c_setclk.exit86 ], [ 1, %sw.bb24.cleanup32_crit_edge ], [ 0, %if.end.cleanup32_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i2c_isr(i32 noundef %irq, ptr noundef %ptr) #2 align 64 {
entry:
  %data.i11.i = alloca i8, align 1
  %data.i1.i = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_mode = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 21
  %0 = ptrtoint ptr %dev_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %membase.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %4) #10, !srcloc !92
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %8, i32 32
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #10, !srcloc !93
  %10 = xor i32 %9, -1
  %11 = and i32 %4, %10
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #10, !srcloc !93
  %16 = and i32 %15, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  %and22.i = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  br i1 %tobool23.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then16.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then16.i:                                      ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #10
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %data.i.i, align 1, !annotation !91
  %slave_state.i.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 22
  %18 = ptrtoint ptr %slave_state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slave_state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i = icmp eq i32 %19, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %slave_state.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %slave_state.i.i, align 8
  %slave.i.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 20
  %21 = ptrtoint ptr %slave.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %slave.i.i, align 8
  %slave_cb.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %slave_cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slave_cb.i.i.i, align 8
  %call.i.i.i = call i32 %24(ptr noundef %22, i32 noundef 0, ptr noundef nonnull %data.i.i) #10
  br label %cdns_i2c_slave_send_data.exit.i

if.else.i.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #12
  %slave2.i.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 20
  %25 = ptrtoint ptr %slave2.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %slave2.i.i, align 8
  %slave_cb.i8.i.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %slave_cb.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slave_cb.i8.i.i, align 8
  %call.i9.i.i = call i32 %28(ptr noundef %26, i32 noundef 2, ptr noundef nonnull %data.i.i) #10
  br label %cdns_i2c_slave_send_data.exit.i

cdns_i2c_slave_send_data.exit.i:                  ; preds = %if.else.i.i, %if.then.i.i
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data.i.i, align 1
  %conv.i.i = zext i8 %30 to i32
  %31 = shl nuw i32 %conv.i.i, 24
  %32 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %membase.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %31) #10, !srcloc !92
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %cdns_i2c_slave_send_data.exit.i, %if.then.i.if.end.i_crit_edge
  %and17.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end.i.if.end33.i_crit_edge, label %if.then19.i

if.end.i.if.end33.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %slave_state.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 22
  br label %if.end33.sink.split.i

if.else.i:                                        ; preds = %if.then
  br i1 %tobool23.not.i, label %if.else.i.if.end25.i_crit_edge, label %if.then24.i

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then24.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i1.i) #10
  %34 = ptrtoint ptr %data.i1.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %data.i1.i, align 1, !annotation !91
  %slave_state.i2.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 22
  %35 = ptrtoint ptr %slave_state.i2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %slave_state.i2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i3.i = icmp eq i32 %36, 0
  br i1 %cmp.i3.i, label %if.then.i7.i, label %if.then24.i.if.end.i.i_crit_edge

if.then24.i.if.end.i.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %slave_state.i2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %slave_state.i2.i, align 8
  %slave.i4.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 20
  %38 = ptrtoint ptr %slave.i4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %slave.i4.i, align 8
  %slave_cb.i.i5.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %slave_cb.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %slave_cb.i.i5.i, align 8
  %call.i.i6.i = tail call i32 %41(ptr noundef %39, i32 noundef 1, ptr noundef null) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %if.then24.i.if.end.i.i_crit_edge
  %42 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %membase.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %43, i32 20
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i) #10, !srcloc !93
  %45 = lshr i32 %44, 24
  %conv.i10.i = trunc i32 %45 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i10.i)
  %tobool.not18.i.i = icmp eq i8 %conv.i10.i, 0
  br i1 %tobool.not18.i.i, label %if.end.i.i.cdns_i2c_slave_rcv_data.exit.i_crit_edge, label %while.body.lr.ph.i.i

if.end.i.i.cdns_i2c_slave_rcv_data.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_i2c_slave_rcv_data.exit.i

while.body.lr.ph.i.i:                             ; preds = %if.end.i.i
  %slave9.i.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 20
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %bytes.019.i.i = phi i8 [ %conv.i10.i, %while.body.lr.ph.i.i ], [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i8 %bytes.019.i.i, -1
  %46 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %47, i32 12
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #10, !srcloc !93
  %49 = lshr i32 %48, 24
  %conv8.i.i = trunc i32 %49 to i8
  %50 = ptrtoint ptr %data.i1.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv8.i.i, ptr %data.i1.i, align 1
  %51 = ptrtoint ptr %slave9.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %slave9.i.i, align 8
  %slave_cb.i16.i.i = getelementptr inbounds %struct.i2c_client, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %slave_cb.i16.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %slave_cb.i16.i.i, align 8
  %call.i17.i.i = call i32 %54(ptr noundef %52, i32 noundef 3, ptr noundef nonnull %data.i1.i) #10
  %tobool.not.i.i = icmp eq i8 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.cdns_i2c_slave_rcv_data.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.cdns_i2c_slave_rcv_data.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_i2c_slave_rcv_data.exit.i

cdns_i2c_slave_rcv_data.exit.i:                   ; preds = %while.body.i.i.cdns_i2c_slave_rcv_data.exit.i_crit_edge, %if.end.i.i.cdns_i2c_slave_rcv_data.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i1.i) #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %cdns_i2c_slave_rcv_data.exit.i, %if.else.i.if.end25.i_crit_edge
  %and26.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end33.i_crit_edge, label %if.then28.i

if.end25.i.if.end33.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

if.then28.i:                                      ; preds = %if.end25.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i11.i) #10
  %55 = ptrtoint ptr %data.i11.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 -1, ptr %data.i11.i, align 1, !annotation !91
  %slave_state.i12.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 22
  %56 = ptrtoint ptr %slave_state.i12.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %slave_state.i12.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp.i13.i = icmp eq i32 %57, 0
  br i1 %cmp.i13.i, label %if.then.i17.i, label %if.then28.i.if.end.i22.i_crit_edge

if.then28.i.if.end.i22.i_crit_edge:               ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i22.i

if.then.i17.i:                                    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %slave_state.i12.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %slave_state.i12.i, align 8
  %slave.i14.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 20
  %59 = ptrtoint ptr %slave.i14.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %slave.i14.i, align 8
  %slave_cb.i.i15.i = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 8
  %61 = ptrtoint ptr %slave_cb.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %slave_cb.i.i15.i, align 8
  %call.i.i16.i = call i32 %62(ptr noundef %60, i32 noundef 1, ptr noundef null) #10
  br label %if.end.i22.i

if.end.i22.i:                                     ; preds = %if.then.i17.i, %if.then28.i.if.end.i22.i_crit_edge
  %63 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %membase.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %64, i32 20
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i19.i) #10, !srcloc !93
  %66 = lshr i32 %65, 24
  %conv.i20.i = trunc i32 %66 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv.i20.i)
  %tobool.not18.i21.i = icmp eq i8 %conv.i20.i, 0
  br i1 %tobool.not18.i21.i, label %if.end.i22.i.cdns_i2c_slave_rcv_data.exit33.i_crit_edge, label %while.body.lr.ph.i24.i

if.end.i22.i.cdns_i2c_slave_rcv_data.exit33.i_crit_edge: ; preds = %if.end.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_i2c_slave_rcv_data.exit33.i

while.body.lr.ph.i24.i:                           ; preds = %if.end.i22.i
  %slave9.i23.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 20
  br label %while.body.i32.i

while.body.i32.i:                                 ; preds = %while.body.i32.i.while.body.i32.i_crit_edge, %while.body.lr.ph.i24.i
  %bytes.019.i25.i = phi i8 [ %conv.i20.i, %while.body.lr.ph.i24.i ], [ %dec.i26.i, %while.body.i32.i.while.body.i32.i_crit_edge ]
  %dec.i26.i = add i8 %bytes.019.i25.i, -1
  %67 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i27.i = getelementptr i8, ptr %68, i32 12
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i27.i) #10, !srcloc !93
  %70 = lshr i32 %69, 24
  %conv8.i28.i = trunc i32 %70 to i8
  %71 = ptrtoint ptr %data.i11.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv8.i28.i, ptr %data.i11.i, align 1
  %72 = ptrtoint ptr %slave9.i23.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %slave9.i23.i, align 8
  %slave_cb.i16.i29.i = getelementptr inbounds %struct.i2c_client, ptr %73, i32 0, i32 8
  %74 = ptrtoint ptr %slave_cb.i16.i29.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %slave_cb.i16.i29.i, align 8
  %call.i17.i30.i = call i32 %75(ptr noundef %73, i32 noundef 3, ptr noundef nonnull %data.i11.i) #10
  %tobool.not.i31.i = icmp eq i8 %dec.i26.i, 0
  br i1 %tobool.not.i31.i, label %while.body.i32.i.cdns_i2c_slave_rcv_data.exit33.i_crit_edge, label %while.body.i32.i.while.body.i32.i_crit_edge

while.body.i32.i.while.body.i32.i_crit_edge:      ; preds = %while.body.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i32.i

while.body.i32.i.cdns_i2c_slave_rcv_data.exit33.i_crit_edge: ; preds = %while.body.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_i2c_slave_rcv_data.exit33.i

cdns_i2c_slave_rcv_data.exit33.i:                 ; preds = %while.body.i32.i.cdns_i2c_slave_rcv_data.exit33.i_crit_edge, %if.end.i22.i.cdns_i2c_slave_rcv_data.exit33.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i11.i) #10
  br label %if.end33.sink.split.i

if.end33.sink.split.i:                            ; preds = %cdns_i2c_slave_rcv_data.exit33.i, %if.then19.i
  %slave_state.sink.i = phi ptr [ %slave_state.i, %if.then19.i ], [ %slave_state.i12.i, %cdns_i2c_slave_rcv_data.exit33.i ]
  %76 = ptrtoint ptr %slave_state.sink.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %slave_state.sink.i, align 8
  %slave.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 20
  %77 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %slave.i, align 8
  %slave_cb.i34.i = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 8
  %79 = ptrtoint ptr %slave_cb.i34.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %slave_cb.i34.i, align 8
  %call.i35.i = call i32 %80(ptr noundef %78, i32 noundef 4, ptr noundef null) #10
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end33.sink.split.i, %if.end25.i.if.end33.i_crit_edge, %if.end.i.if.end33.i_crit_edge
  %and34.i = and i32 %12, 228
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34.i)
  %tobool35.not.i = icmp eq i32 %and34.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.cleanup_crit_edge, label %if.then36.i

if.end33.i.cleanup_crit_edge:                     ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then36.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  %slave_state37.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 22
  %81 = ptrtoint ptr %slave_state37.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %slave_state37.i, align 8
  %slave38.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 20
  %82 = ptrtoint ptr %slave38.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %slave38.i, align 8
  %slave_cb.i36.i = getelementptr inbounds %struct.i2c_client, ptr %83, i32 0, i32 8
  %84 = ptrtoint ptr %slave_cb.i36.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %slave_cb.i36.i, align 8
  %call.i37.i = call i32 %85(ptr noundef %83, i32 noundef 4, ptr noundef null) #10
  %86 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %membase.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 1073741824) #10, !srcloc !92
  br label %cleanup

if.end:                                           ; preds = %entry
  %88 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  %89 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i6 = getelementptr i8, ptr %90, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i6, i32 %4) #10, !srcloc !92
  %err_status.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 4
  %91 = ptrtoint ptr %err_status.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %err_status.i, align 4
  %and.i = and i32 %88, 516
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i7 = icmp ne i32 %and.i, 0
  %spec.select.i = zext i1 %tobool.not.i7 to i32
  %recv_count.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 9
  %curr_recv_count.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 10
  %quirks.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 17
  %92 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %quirks.i, align 4
  %and5.i = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.land.end.i_crit_edge, label %land.rhs.i

if.end.land.end.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %94 = ptrtoint ptr %recv_count.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %recv_count.i, align 4
  %96 = ptrtoint ptr %curr_recv_count.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %curr_recv_count.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp.i = icmp ugt i32 %95, %97
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end.land.end.i_crit_edge
  %98 = phi i1 [ false, %if.end.land.end.i_crit_edge ], [ %cmp.i, %land.rhs.i ]
  %p_recv_buf.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 7
  %99 = ptrtoint ptr %p_recv_buf.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %p_recv_buf.i, align 4
  %tobool8.not.i = icmp eq ptr %100, null
  %.pre.i = and i32 %88, 1
  br i1 %tobool8.not.i, label %land.end.i.if.end116.i_crit_edge, label %land.lhs.true.i

land.end.i.if.end116.i_crit_edge:                 ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.i

land.lhs.true.i:                                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %tobool10.not.i = icmp eq i32 %.pre.i, 0
  %101 = and i32 %88, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %land.lhs.true.i.if.end116.i_crit_edge, label %while.cond.preheader.i

land.lhs.true.i.if.end116.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116.i

while.cond.preheader.i:                           ; preds = %land.lhs.true.i
  %103 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %membase.i, align 4
  %add.ptr16258.i = getelementptr i8, ptr %104, i32 4
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16258.i) #10, !srcloc !93
  %106 = and i32 %105, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool20.not259.i = icmp eq i32 %106, 0
  br i1 %tobool20.not259.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %bus_hold_flag.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 14
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %107 = ptrtoint ptr %recv_count.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %recv_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp22.not.i = icmp eq i32 %108, 0
  br i1 %cmp22.not.i, label %do.end.i, label %if.then23.i

if.then23.i:                                      ; preds = %while.body.i
  %109 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %membase.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %110, i32 12
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #10, !srcloc !93
  %112 = lshr i32 %111, 24
  %conv.i = trunc i32 %112 to i8
  %113 = ptrtoint ptr %p_recv_buf.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %p_recv_buf.i, align 4
  %incdec.ptr.i = getelementptr i8, ptr %114, i32 1
  store ptr %incdec.ptr.i, ptr %p_recv_buf.i, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv.i, ptr %114, align 1
  %116 = ptrtoint ptr %recv_count.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %recv_count.i, align 4
  %dec.i = add i32 %117, -1
  store i32 %dec.i, ptr %recv_count.i, align 4
  %118 = ptrtoint ptr %curr_recv_count.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %curr_recv_count.i, align 8
  %dec32.i = add i32 %119, -1
  store i32 %dec32.i, ptr %curr_recv_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %dec.i)
  %cmp34.i = icmp ult i32 %dec.i, 17
  br i1 %cmp34.i, label %land.lhs.true36.i, label %if.then23.i.if.end41.i_crit_edge

if.then23.i.if.end41.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

land.lhs.true36.i:                                ; preds = %if.then23.i
  %120 = ptrtoint ptr %bus_hold_flag.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %bus_hold_flag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool37.not.i = icmp eq i32 %121, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %land.lhs.true36.i.if.end41.i_crit_edge

land.lhs.true36.i.if.end41.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then38.i:                                      ; preds = %land.lhs.true36.i
  %122 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %membase.i, align 4
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #10, !srcloc !93
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #10
  %and.i.i = and i32 %125, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i8 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i8, label %if.then38.i.if.end41.i_crit_edge, label %if.then.i.i9

if.then38.i.if.end41.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then.i.i9:                                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i = and i32 %125, -17
  %126 = tail call i32 @llvm.bswap.i32(i32 %and1.i.i) #10
  %127 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #10, !srcloc !92
  br label %if.end41.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %parent.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 2, i32 9, i32 1
  %129 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.30) #13
  %131 = ptrtoint ptr %err_status.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %err_status.i, align 4
  %or.i = or i32 %132, 8
  store i32 %or.i, ptr %err_status.i, align 4
  br label %while.end.i

if.end41.i:                                       ; preds = %if.then.i.i9, %if.then38.i.if.end41.i_crit_edge, %land.lhs.true36.i.if.end41.i_crit_edge, %if.then23.i.if.end41.i_crit_edge
  br i1 %98, label %land.rhs.i.i, label %if.end41.i.while.cond.backedge.i_crit_edge

if.end41.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

land.rhs.i.i:                                     ; preds = %if.end41.i
  %133 = ptrtoint ptr %curr_recv_count.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %curr_recv_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %134)
  %cmp.i.i10 = icmp eq i32 %134, 17
  br i1 %cmp.i.i10, label %land.rhs.i.i.while.cond49.i.preheader_crit_edge, label %land.rhs.i.i.while.cond.backedge.i_crit_edge

land.rhs.i.i.while.cond.backedge.i_crit_edge:     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

land.rhs.i.i.while.cond49.i.preheader_crit_edge:  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond49.i.preheader

while.cond.backedge.i:                            ; preds = %land.rhs.i.i.while.cond.backedge.i_crit_edge, %if.end41.i.while.cond.backedge.i_crit_edge
  %135 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %membase.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %136, i32 4
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #10, !srcloc !93
  %138 = and i32 %137, 536870912
  %tobool20.not.i = icmp eq i32 %138, 0
  br i1 %tobool20.not.i, label %while.cond.backedge.i.while.end.i_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.backedge.i.while.end.i_crit_edge:      ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.cond.backedge.i.while.end.i_crit_edge, %do.end.i, %while.cond.preheader.i.while.end.i_crit_edge
  br i1 %98, label %cdns_is_holdquirk.exit239thread-pre-split.i, label %if.else76.i

cdns_is_holdquirk.exit239thread-pre-split.i:      ; preds = %while.end.i
  %139 = ptrtoint ptr %curr_recv_count.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %.pr.i = load i32, ptr %curr_recv_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %.pr.i)
  %phi.cmp.i = icmp eq i32 %.pr.i, 17
  br i1 %phi.cmp.i, label %cdns_is_holdquirk.exit239thread-pre-split.i.while.cond49.i.preheader_crit_edge, label %cdns_is_holdquirk.exit239thread-pre-split.i.if.end104.i_crit_edge

cdns_is_holdquirk.exit239thread-pre-split.i.if.end104.i_crit_edge: ; preds = %cdns_is_holdquirk.exit239thread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i

cdns_is_holdquirk.exit239thread-pre-split.i.while.cond49.i.preheader_crit_edge: ; preds = %cdns_is_holdquirk.exit239thread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond49.i.preheader

while.cond49.i.preheader:                         ; preds = %cdns_is_holdquirk.exit239thread-pre-split.i.while.cond49.i.preheader_crit_edge, %land.rhs.i.i.while.cond49.i.preheader_crit_edge
  br label %while.cond49.i

while.cond49.i:                                   ; preds = %while.cond49.i.while.cond49.i_crit_edge, %while.cond49.i.preheader
  %140 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %membase.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %141, i32 20
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52.i) #10, !srcloc !93
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #10
  %144 = ptrtoint ptr %curr_recv_count.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %curr_recv_count.i, align 8
  %sub.i = add i32 %145, -16
  %cmp56.not.i = icmp eq i32 %143, %sub.i
  br i1 %cmp56.not.i, label %while.end59.i, label %while.cond49.i.while.cond49.i_crit_edge

while.cond49.i.while.cond49.i_crit_edge:          ; preds = %while.cond49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond49.i

while.end59.i:                                    ; preds = %while.cond49.i
  %146 = ptrtoint ptr %recv_count.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %recv_count.i, align 4
  %sub61.i = add i32 %147, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %sub61.i)
  %cmp62.i = icmp sgt i32 %sub61.i, 252
  br i1 %cmp62.i, label %if.then64.i, label %if.else68.i

if.then64.i:                                      ; preds = %while.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  %148 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %membase.i, align 4
  %add.ptr66.i = getelementptr i8, ptr %149, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66.i, i32 -67108864) #10, !srcloc !92
  br label %if.end104.sink.split.i

if.else68.i:                                      ; preds = %while.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  %150 = tail call i32 @llvm.bswap.i32(i32 %sub61.i) #10
  %151 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %membase.i, align 4
  %add.ptr72.i = getelementptr i8, ptr %152, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %150) #10, !srcloc !92
  %153 = ptrtoint ptr %recv_count.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %recv_count.i, align 4
  br label %if.end104.sink.split.i

if.else76.i:                                      ; preds = %while.end.i
  %155 = ptrtoint ptr %recv_count.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %recv_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool78.not.i = icmp eq i32 %156, 0
  br i1 %tobool78.not.i, label %if.else76.i.if.end104.i_crit_edge, label %land.lhs.true81.i

if.else76.i.if.end104.i_crit_edge:                ; preds = %if.else76.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i

land.lhs.true81.i:                                ; preds = %if.else76.i
  %157 = ptrtoint ptr %curr_recv_count.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %curr_recv_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool83.not.i = icmp eq i32 %158, 0
  br i1 %tobool83.not.i, label %if.then84.i, label %land.lhs.true81.i.if.end104.i_crit_edge

land.lhs.true81.i.if.end104.i_crit_edge:          ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104.i

if.then84.i:                                      ; preds = %land.lhs.true81.i
  %p_msg.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 3
  %159 = ptrtoint ptr %p_msg.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %p_msg.i, align 8
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %160, align 4
  %163 = and i16 %162, 1023
  %and86.i = zext i16 %163 to i32
  %164 = tail call i32 @llvm.bswap.i32(i32 %and86.i) #10
  %165 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %membase.i, align 4
  %add.ptr88.i = getelementptr i8, ptr %166, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88.i, i32 %164) #10, !srcloc !92
  %167 = ptrtoint ptr %recv_count.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %recv_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %168)
  %cmp90.i = icmp ugt i32 %168, 252
  br i1 %cmp90.i, label %if.then92.i, label %if.else96.i

if.then92.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  %169 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %membase.i, align 4
  %add.ptr94.i = getelementptr i8, ptr %170, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94.i, i32 -67108864) #10, !srcloc !92
  br label %if.end104.sink.split.i

if.else96.i:                                      ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #12
  %171 = tail call i32 @llvm.bswap.i32(i32 %168) #10
  %172 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %membase.i, align 4
  %add.ptr99.i = getelementptr i8, ptr %173, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.i, i32 %171) #10, !srcloc !92
  %174 = ptrtoint ptr %recv_count.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %recv_count.i, align 4
  br label %if.end104.sink.split.i

if.end104.sink.split.i:                           ; preds = %if.else96.i, %if.then92.i, %if.else68.i, %if.then64.i
  %.sink.i = phi i32 [ %175, %if.else96.i ], [ 252, %if.then92.i ], [ 268, %if.then64.i ], [ %154, %if.else68.i ]
  %176 = ptrtoint ptr %curr_recv_count.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %.sink.i, ptr %curr_recv_count.i, align 8
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.end104.sink.split.i, %land.lhs.true81.i.if.end104.i_crit_edge, %if.else76.i.if.end104.i_crit_edge, %cdns_is_holdquirk.exit239thread-pre-split.i.if.end104.i_crit_edge
  br i1 %tobool10.not.i, label %if.end104.i.if.end158.i_crit_edge, label %land.lhs.true107.i

if.end104.i.if.end158.i_crit_edge:                ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158.i

land.lhs.true107.i:                               ; preds = %if.end104.i
  %177 = ptrtoint ptr %recv_count.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %recv_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %178)
  %tobool109.not.i = icmp eq i32 %178, 0
  br i1 %tobool109.not.i, label %if.then110.i, label %land.lhs.true107.i.land.lhs.true119.i_crit_edge

land.lhs.true107.i.land.lhs.true119.i_crit_edge:  ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true119.i

if.then110.i:                                     ; preds = %land.lhs.true107.i
  %bus_hold_flag111.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 14
  %179 = ptrtoint ptr %bus_hold_flag111.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %bus_hold_flag111.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool112.not.i = icmp eq i32 %180, 0
  br i1 %tobool112.not.i, label %if.then113.i, label %if.then110.i.land.lhs.true119.i_crit_edge

if.then110.i.land.lhs.true119.i_crit_edge:        ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true119.i

if.then113.i:                                     ; preds = %if.then110.i
  %181 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %membase.i, align 4
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #10, !srcloc !93
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #10
  %and.i241.i = and i32 %184, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i241.i)
  %tobool.not.i242.i = icmp eq i32 %and.i241.i, 0
  br i1 %tobool.not.i242.i, label %if.then113.i.land.lhs.true119.i_crit_edge, label %if.then.i244.i

if.then113.i.land.lhs.true119.i_crit_edge:        ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true119.i

if.then.i244.i:                                   ; preds = %if.then113.i
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i243.i = and i32 %184, -17
  %185 = tail call i32 @llvm.bswap.i32(i32 %and1.i243.i) #10
  %186 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %185) #10, !srcloc !92
  br label %land.lhs.true119.i

if.end116.i:                                      ; preds = %land.lhs.true.i.if.end116.i_crit_edge, %land.end.i.if.end116.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre.i)
  %tobool118.not.i = icmp eq i32 %.pre.i, 0
  br i1 %tobool118.not.i, label %if.end116.i.if.end158.i_crit_edge, label %if.end116.i.land.lhs.true119.i_crit_edge

if.end116.i.land.lhs.true119.i_crit_edge:         ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true119.i

if.end116.i.if.end158.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158.i

land.lhs.true119.i:                               ; preds = %if.end116.i.land.lhs.true119.i_crit_edge, %if.then.i244.i, %if.then113.i.land.lhs.true119.i_crit_edge, %if.then110.i.land.lhs.true119.i_crit_edge, %land.lhs.true107.i.land.lhs.true119.i_crit_edge
  %done_flag.2267.i = phi i32 [ %spec.select.i, %if.end116.i.land.lhs.true119.i_crit_edge ], [ 1, %if.then110.i.land.lhs.true119.i_crit_edge ], [ %spec.select.i, %land.lhs.true107.i.land.lhs.true119.i_crit_edge ], [ 1, %if.then113.i.land.lhs.true119.i_crit_edge ], [ 1, %if.then.i244.i ]
  %status.1266.i = phi i32 [ %spec.select.i, %if.end116.i.land.lhs.true119.i_crit_edge ], [ 1, %if.then110.i.land.lhs.true119.i_crit_edge ], [ 1, %land.lhs.true107.i.land.lhs.true119.i_crit_edge ], [ 1, %if.then113.i.land.lhs.true119.i_crit_edge ], [ 1, %if.then.i244.i ]
  %188 = ptrtoint ptr %p_recv_buf.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %p_recv_buf.i, align 4
  %tobool121.not.i = icmp eq ptr %189, null
  br i1 %tobool121.not.i, label %if.then122.i, label %land.lhs.true119.i.if.end158.i_crit_edge

land.lhs.true119.i.if.end158.i_crit_edge:         ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158.i

if.then122.i:                                     ; preds = %land.lhs.true119.i
  %send_count.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 8
  %190 = ptrtoint ptr %send_count.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %send_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool123.not.i = icmp eq i32 %191, 0
  br i1 %tobool123.not.i, label %if.then122.i.land.lhs.true153.i_crit_edge, label %if.then124.i

if.then122.i.land.lhs.true153.i_crit_edge:        ; preds = %if.then122.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true153.i

if.then124.i:                                     ; preds = %if.then122.i
  %192 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %membase.i, align 4
  %add.ptr127.i = getelementptr i8, ptr %193, i32 20
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr127.i) #10, !srcloc !93
  %195 = tail call i32 @llvm.bswap.i32(i32 %194) #10
  %sub130.i = sub i32 16, %195
  %196 = ptrtoint ptr %send_count.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %send_count.i, align 8
  %198 = tail call i32 @llvm.umin.i32(i32 %197, i32 %sub130.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool140.not260.i = icmp eq i32 %198, 0
  br i1 %tobool140.not260.i, label %if.then124.i.if.end150.i_crit_edge, label %while.body141.lr.ph.i

if.then124.i.if.end150.i_crit_edge:               ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150.i

while.body141.lr.ph.i:                            ; preds = %if.then124.i
  %p_send_buf.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 6
  br label %while.body141.i

while.body141.i:                                  ; preds = %while.body141.i.while.body141.i_crit_edge, %while.body141.lr.ph.i
  %bytes_to_send.1261.i = phi i32 [ %198, %while.body141.lr.ph.i ], [ %dec139.i, %while.body141.i.while.body141.i_crit_edge ]
  %dec139.i = add i32 %bytes_to_send.1261.i, -1
  %199 = ptrtoint ptr %p_send_buf.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %p_send_buf.i, align 8
  %incdec.ptr142.i = getelementptr i8, ptr %200, i32 1
  store ptr %incdec.ptr142.i, ptr %p_send_buf.i, align 8
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load1_noabort(i32 %201)
  %202 = load i8, ptr %200, align 1
  %conv143.i = zext i8 %202 to i32
  %203 = shl nuw i32 %conv143.i, 24
  %204 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %membase.i, align 4
  %add.ptr145.i = getelementptr i8, ptr %205, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145.i, i32 %203) #10, !srcloc !92
  %206 = ptrtoint ptr %send_count.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %send_count.i, align 8
  %dec147.i = add i32 %207, -1
  store i32 %dec147.i, ptr %send_count.i, align 8
  %tobool140.not.i = icmp eq i32 %dec139.i, 0
  br i1 %tobool140.not.i, label %while.body141.i.if.end150.i_crit_edge, label %while.body141.i.while.body141.i_crit_edge

while.body141.i.while.body141.i_crit_edge:        ; preds = %while.body141.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body141.i

while.body141.i.if.end150.i_crit_edge:            ; preds = %while.body141.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150.i

if.end150.i:                                      ; preds = %while.body141.i.if.end150.i_crit_edge, %if.then124.i.if.end150.i_crit_edge
  %.pr254.i = phi i32 [ %197, %if.then124.i.if.end150.i_crit_edge ], [ %dec147.i, %while.body141.i.if.end150.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr254.i)
  %tobool152.not.i = icmp eq i32 %.pr254.i, 0
  br i1 %tobool152.not.i, label %if.end150.i.land.lhs.true153.i_crit_edge, label %if.end150.i.if.end158.i_crit_edge

if.end150.i.if.end158.i_crit_edge:                ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158.i

if.end150.i.land.lhs.true153.i_crit_edge:         ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true153.i

land.lhs.true153.i:                               ; preds = %if.end150.i.land.lhs.true153.i_crit_edge, %if.then122.i.land.lhs.true153.i_crit_edge
  %done_flag.3257.i = phi i32 [ %done_flag.2267.i, %if.end150.i.land.lhs.true153.i_crit_edge ], [ 1, %if.then122.i.land.lhs.true153.i_crit_edge ]
  %bus_hold_flag154.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 14
  %208 = ptrtoint ptr %bus_hold_flag154.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %bus_hold_flag154.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool155.not.i = icmp eq i32 %209, 0
  br i1 %tobool155.not.i, label %if.then156.i, label %land.lhs.true153.i.if.end158.i_crit_edge

land.lhs.true153.i.if.end158.i_crit_edge:         ; preds = %land.lhs.true153.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158.i

if.then156.i:                                     ; preds = %land.lhs.true153.i
  %210 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %membase.i, align 4
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #10, !srcloc !93
  %213 = tail call i32 @llvm.bswap.i32(i32 %212) #10
  %and.i247.i = and i32 %213, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i247.i)
  %tobool.not.i248.i = icmp eq i32 %and.i247.i, 0
  br i1 %tobool.not.i248.i, label %if.then156.i.if.end158.i_crit_edge, label %if.then.i250.i

if.then156.i.if.end158.i_crit_edge:               ; preds = %if.then156.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end158.i

if.then.i250.i:                                   ; preds = %if.then156.i
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i249.i = and i32 %213, -17
  %214 = tail call i32 @llvm.bswap.i32(i32 %and1.i249.i) #10
  %215 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %214) #10, !srcloc !92
  br label %if.end158.i

if.end158.i:                                      ; preds = %if.then.i250.i, %if.then156.i.if.end158.i_crit_edge, %land.lhs.true153.i.if.end158.i_crit_edge, %if.end150.i.if.end158.i_crit_edge, %land.lhs.true119.i.if.end158.i_crit_edge, %if.end116.i.if.end158.i_crit_edge, %if.end104.i.if.end158.i_crit_edge
  %status.2.i = phi i32 [ %status.1266.i, %land.lhs.true119.i.if.end158.i_crit_edge ], [ %spec.select.i, %if.end116.i.if.end158.i_crit_edge ], [ 1, %land.lhs.true153.i.if.end158.i_crit_edge ], [ 1, %if.end150.i.if.end158.i_crit_edge ], [ 1, %if.then156.i.if.end158.i_crit_edge ], [ 1, %if.then.i250.i ], [ 1, %if.end104.i.if.end158.i_crit_edge ]
  %done_flag.4.i = phi i32 [ %done_flag.2267.i, %land.lhs.true119.i.if.end158.i_crit_edge ], [ %spec.select.i, %if.end116.i.if.end158.i_crit_edge ], [ %done_flag.3257.i, %land.lhs.true153.i.if.end158.i_crit_edge ], [ %done_flag.2267.i, %if.end150.i.if.end158.i_crit_edge ], [ %done_flag.3257.i, %if.then156.i.if.end158.i_crit_edge ], [ %done_flag.3257.i, %if.then.i250.i ], [ %spec.select.i, %if.end104.i.if.end158.i_crit_edge ]
  %and159.i = and i32 %88, 740
  %217 = ptrtoint ptr %err_status.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %err_status.i, align 4
  %or161.i = or i32 %218, %and159.i
  store i32 %or161.i, ptr %err_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done_flag.4.i)
  %tobool166.not.i = icmp eq i32 %done_flag.4.i, 0
  br i1 %tobool166.not.i, label %if.end158.i.cdns_i2c_master_isr.exit_crit_edge, label %if.then167.i

if.end158.i.cdns_i2c_master_isr.exit_crit_edge:   ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_i2c_master_isr.exit

if.then167.i:                                     ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #12
  %xfer_done.i = getelementptr inbounds %struct.cdns_i2c, ptr %ptr, i32 0, i32 5
  tail call void @complete(ptr noundef %xfer_done.i) #10
  br label %cdns_i2c_master_isr.exit

cdns_i2c_master_isr.exit:                         ; preds = %if.then167.i, %if.end158.i.cdns_i2c_master_isr.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or161.i)
  %tobool163.not.i = icmp eq i32 %or161.i, 0
  %spec.select235.i = select i1 %tobool163.not.i, i32 %status.2.i, i32 1
  br label %cleanup

cleanup:                                          ; preds = %cdns_i2c_master_isr.exit, %if.then36.i, %if.end33.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select235.i, %cdns_i2c_master_isr.exit ], [ 1, %if.end33.i.cleanup_crit_edge ], [ 1, %if.then36.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i2c_master_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !95
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_mode = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 21
  %5 = ptrtoint ptr %dev_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1 = icmp eq i32 %6, 0
  br i1 %cmp1, label %if.then2, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then2:                                         ; preds = %if.end
  %slave_state = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %slave_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slave_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3.not = icmp eq i32 %8, 0
  br i1 %cmp3.not, label %if.end5, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %membase.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16646144) #10, !srcloc !92
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 1073741824) #10, !srcloc !92
  %13 = ptrtoint ptr %dev_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %dev_mode, align 4
  %14 = ptrtoint ptr %slave_state to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %slave_state, align 8
  %ctrl_reg_diva_divb.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 19
  %15 = ptrtoint ptr %ctrl_reg_diva_divb.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ctrl_reg_diva_divb.i, align 4
  %17 = or i16 %16, 14
  %or.i = zext i16 %17 to i32
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %19 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #10, !srcloc !92
  tail call void @usleep_range_state(i32 noundef 115, i32 noundef 125, i32 noundef 2) #10
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end.if.end6_crit_edge
  %membase = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !93
  %24 = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %if.end9, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %if.end6
  %quirks = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp13 = icmp sgt i32 %num, 1
  br i1 %cmp13, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.end9
  %25 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %quirks, align 4
  %and10 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %sub = add nsw i32 %num, -1
  br i1 %tobool11.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %count.0122, 1
  %cmp15.not = icmp slt i32 %inc, %sub
  br i1 %cmp15.not, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %count.0122 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %count.0122, i32 1
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags, align 2
  %29 = and i16 %28, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool18.not = icmp eq i16 %29, 0
  br i1 %tobool18.not, label %for.cond, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.23) #13
  br label %out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %bus_hold_flag = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 14
  %32 = ptrtoint ptr %bus_hold_flag to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %bus_hold_flag, align 8
  %33 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !93
  %36 = or i32 %35, 268435456
  %37 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #10, !srcloc !92
  br label %if.end30

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %bus_hold_flag29 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 14
  %39 = ptrtoint ptr %bus_hold_flag29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %bus_hold_flag29, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.else, %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp32123 = icmp sgt i32 %num, 0
  br i1 %cmp32123, label %for.body34.lr.ph, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body34.lr.ph:                                 ; preds = %if.end30
  %sub35 = add nsw i32 %num, -1
  %bus_hold_flag39 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 14
  %p_msg.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 3
  %err_status.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 4
  %xfer_done.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 5
  %p_recv_buf.i.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 7
  %recv_count.i.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 9
  %curr_recv_count.i.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 10
  %p_send_buf.i.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 6
  %send_count.i.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 8
  %timeout.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 7
  br label %for.body34

for.body34:                                       ; preds = %for.inc53.for.body34_crit_edge, %for.body34.lr.ph
  %msgs.addr.0125 = phi ptr [ %msgs, %for.body34.lr.ph ], [ %incdec.ptr, %for.inc53.for.body34_crit_edge ]
  %count.1124 = phi i32 [ 0, %for.body34.lr.ph ], [ %inc54, %for.inc53.for.body34_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1124, i32 %sub35)
  %cmp36 = icmp eq i32 %count.1124, %sub35
  br i1 %cmp36, label %if.then38, label %for.body34.if.end40_crit_edge

for.body34.if.end40_crit_edge:                    ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then38:                                        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %bus_hold_flag39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %bus_hold_flag39, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %for.body34.if.end40_crit_edge
  %41 = ptrtoint ptr %p_msg.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msgs.addr.0125, ptr %p_msg.i, align 8
  %42 = ptrtoint ptr %err_status.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %err_status.i, align 4
  %43 = ptrtoint ptr %xfer_done.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %xfer_done.i, align 4
  %44 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %membase, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #10, !srcloc !93
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.addr.0125, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags.i, align 2
  %50 = and i16 %49, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool.not.i = icmp eq i16 %50, 0
  %and7.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i102

if.then.i102:                                     ; preds = %if.end40
  br i1 %tobool8.not.i, label %if.then.i102.if.end13.i_crit_edge, label %if.then3.i

if.then.i102.if.end13.i_crit_edge:                ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then3.i:                                       ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #12
  %and4.i = and i32 %47, -5
  %51 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #10
  %52 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #10, !srcloc !92
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end40
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else.i.if.end13.i_crit_edge

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i103 = or i32 %47, 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %or.i103) #10
  %55 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #10, !srcloc !92
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then9.i, %if.else.i.if.end13.i_crit_edge, %if.then3.i, %if.then.i102.if.end13.i_crit_edge
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flags.i, align 2
  %59 = and i16 %58, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool17.not.i = icmp eq i16 %59, 0
  br i1 %tobool17.not.i, label %if.else19.i, label %if.then18.i

if.then18.i:                                      ; preds = %if.end13.i
  %60 = ptrtoint ptr %p_msg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %p_msg.i, align 8
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %buf.i.i, align 4
  %64 = ptrtoint ptr %p_recv_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %p_recv_buf.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.i2c_msg, ptr %61, i32 0, i32 2
  %65 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %len.i.i, align 4
  %conv.i.i = zext i16 %66 to i32
  %67 = ptrtoint ptr %recv_count.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv.i.i, ptr %recv_count.i.i, align 4
  %68 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %membase, align 4
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #10, !srcloc !93
  %71 = or i32 %70, 1090519040
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #10
  %73 = ptrtoint ptr %p_msg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %p_msg.i, align 8
  %flags3.i.i = getelementptr inbounds %struct.i2c_msg, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %flags3.i.i, align 2
  %77 = and i16 %76, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.not.i.i = icmp eq i16 %77, 0
  br i1 %tobool.not.i.i, label %if.then18.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then18.i.if.end.i.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %recv_count.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 33, ptr %recv_count.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then18.i.if.end.i.i_crit_edge
  %79 = ptrtoint ptr %recv_count.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %recv_count.i.i, align 4
  %81 = ptrtoint ptr %curr_recv_count.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %curr_recv_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %80)
  %cmp.i.i = icmp ugt i32 %80, 16
  %or10.i.i = or i32 %72, 16
  %spec.select.i.i = select i1 %cmp.i.i, i32 %or10.i.i, i32 %72
  %82 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #10
  %83 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #10, !srcloc !92
  %85 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %membase, align 4
  %add.ptr16.i.i = getelementptr i8, ptr %86, i32 16
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i.i) #10, !srcloc !93
  %88 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %membase, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %89, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 %87) #10, !srcloc !92
  %90 = ptrtoint ptr %recv_count.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %recv_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 252, i32 %91)
  %cmp22.i.i = icmp ugt i32 %91, 252
  br i1 %cmp22.i.i, label %if.then24.i.i, label %if.else.i.i

if.then24.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %membase, align 4
  %add.ptr26.i.i = getelementptr i8, ptr %93, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i.i, i32 -67108864) #10, !srcloc !92
  %94 = ptrtoint ptr %curr_recv_count.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 252, ptr %curr_recv_count.i.i, align 8
  br label %if.end31.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = tail call i32 @llvm.bswap.i32(i32 %91) #10
  %96 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %membase, align 4
  %add.ptr30.i.i = getelementptr i8, ptr %97, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30.i.i, i32 %95) #10, !srcloc !92
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.else.i.i, %if.then24.i.i
  %98 = ptrtoint ptr %bus_hold_flag39 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bus_hold_flag39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool32.not.i.i = icmp eq i32 %99, 0
  br i1 %tobool32.not.i.i, label %land.lhs.true.i.i, label %if.end31.i.i.if.else133.i.i_crit_edge

if.end31.i.i.if.else133.i.i_crit_edge:            ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else133.i.i

land.lhs.true.i.i:                                ; preds = %if.end31.i.i
  %100 = ptrtoint ptr %p_msg.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %p_msg.i, align 8
  %flags34.i.i = getelementptr inbounds %struct.i2c_msg, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %flags34.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %flags34.i.i, align 2
  %104 = and i16 %103, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp37.not.not.i.i = icmp eq i16 %104, 0
  br i1 %cmp37.not.not.i.i, label %land.lhs.true39.i.i, label %land.lhs.true.i.i.if.else133.i.i_crit_edge

land.lhs.true.i.i.if.else133.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else133.i.i

land.lhs.true39.i.i:                              ; preds = %land.lhs.true.i.i
  %105 = ptrtoint ptr %recv_count.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %recv_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %106)
  %cmp41.i.i = icmp ult i32 %106, 17
  br i1 %cmp41.i.i, label %if.then43.i.i, label %land.lhs.true39.i.i.if.else133.i.i_crit_edge

land.lhs.true39.i.i.if.else133.i.i_crit_edge:     ; preds = %land.lhs.true39.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else133.i.i

if.then43.i.i:                                    ; preds = %land.lhs.true39.i.i
  %107 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %membase, align 4
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %108) #10, !srcloc !93
  %110 = and i32 %109, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool50.not.i.i = icmp eq i32 %110, 0
  br i1 %tobool50.not.i.i, label %if.then43.i.i.if.else133.i.i_crit_edge, label %if.then63.i.i

if.then43.i.i.if.else133.i.i_crit_edge:           ; preds = %if.then43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else133.i.i

if.then63.i.i:                                    ; preds = %if.then43.i.i
  %111 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %quirks, align 4
  %and52.i.i = and i32 %112, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i.i)
  %tobool53.not.not.i.i = icmp eq i32 %and52.i.i, 0
  %113 = ptrtoint ptr %p_msg.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %p_msg.i, align 8
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %114, align 4
  %117 = and i16 %116, 1023
  %and61.i.i = zext i16 %117 to i32
  %118 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %membase, align 4
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %119) #10, !srcloc !93
  %121 = and i32 %120, -268435457
  br i1 %tobool53.not.not.i.i, label %if.then63.i.i.if.end89.i.i_crit_edge, label %do.body72.i.i

if.then63.i.i.if.end89.i.i_crit_edge:             ; preds = %if.then63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89.i.i

do.body72.i.i:                                    ; preds = %if.then63.i.i
  %122 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !97
  %and.i.i.i = and i32 %122, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool84.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool84.not.i.i, label %if.then85.i.i, label %do.body72.i.i.if.end89.i.i_crit_edge

do.body72.i.i.if.end89.i.i_crit_edge:             ; preds = %do.body72.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end89.i.i

if.then85.i.i:                                    ; preds = %do.body72.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %if.end89.i.i

if.end89.i.i:                                     ; preds = %if.then85.i.i, %do.body72.i.i.if.end89.i.i_crit_edge, %if.then63.i.i.if.end89.i.i_crit_edge
  %flags.0.i.i = phi i32 [ %122, %do.body72.i.i.if.end89.i.i_crit_edge ], [ %122, %if.then85.i.i ], [ -1, %if.then63.i.i.if.end89.i.i_crit_edge ]
  %123 = tail call i32 @llvm.bswap.i32(i32 %and61.i.i) #10
  %124 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %membase, align 4
  %add.ptr91.i.i = getelementptr i8, ptr %125, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.i.i, i32 %123) #10, !srcloc !92
  %126 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %121) #10, !srcloc !92
  %128 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %membase, align 4
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #10, !srcloc !93
  br i1 %tobool53.not.not.i.i, label %if.end89.i.i.cdns_i2c_mrecv.exit.i_crit_edge, label %do.body101.i.i

if.end89.i.i.cdns_i2c_mrecv.exit.i_crit_edge:     ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_i2c_mrecv.exit.i

do.body101.i.i:                                   ; preds = %if.end89.i.i
  %and.i177.i.i = and i32 %flags.0.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i177.i.i)
  %tobool109.not.i.i = icmp eq i32 %and.i177.i.i, 0
  br i1 %tobool109.not.i.i, label %if.then110.i.i, label %do.body101.i.i.do.body112.i.i_crit_edge

do.body101.i.i.do.body112.i.i_crit_edge:          ; preds = %do.body101.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body112.i.i

if.then110.i.i:                                   ; preds = %do.body101.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body112.i.i

do.body112.i.i:                                   ; preds = %if.then110.i.i, %do.body101.i.i.do.body112.i.i_crit_edge
  %131 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !98
  %and.i.i.i.i = and i32 %131, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool120.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool120.not.i.i, label %if.then124.i.i, label %do.body112.i.i.do.end127.i.i_crit_edge, !prof !99

do.body112.i.i.do.end127.i.i_crit_edge:           ; preds = %do.body112.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end127.i.i

if.then124.i.i:                                   ; preds = %do.body112.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end127.i.i

do.end127.i.i:                                    ; preds = %if.then124.i.i, %do.body112.i.i.do.end127.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %flags.0.i.i) #10, !srcloc !100
  br label %cdns_i2c_mrecv.exit.i

if.else133.i.i:                                   ; preds = %if.then43.i.i.if.else133.i.i_crit_edge, %land.lhs.true39.i.i.if.else133.i.i_crit_edge, %land.lhs.true.i.i.if.else133.i.i_crit_edge, %if.end31.i.i.if.else133.i.i_crit_edge
  %132 = ptrtoint ptr %p_msg.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %p_msg.i, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %133, align 4
  %136 = and i16 %135, 1023
  %and61180.i.i = zext i16 %136 to i32
  %137 = tail call i32 @llvm.bswap.i32(i32 %and61180.i.i) #10
  %138 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %membase, align 4
  %add.ptr135.i.i = getelementptr i8, ptr %139, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135.i.i, i32 %137) #10, !srcloc !92
  br label %cdns_i2c_mrecv.exit.i

cdns_i2c_mrecv.exit.i:                            ; preds = %if.else133.i.i, %do.end127.i.i, %if.end89.i.i.cdns_i2c_mrecv.exit.i_crit_edge
  %140 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %membase, align 4
  %add.ptr138.i.i = getelementptr i8, ptr %141, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138.i.i, i32 -419299328) #10, !srcloc !92
  br label %if.end20.i

if.else19.i:                                      ; preds = %if.end13.i
  %142 = ptrtoint ptr %p_recv_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr null, ptr %p_recv_buf.i.i, align 4
  %143 = ptrtoint ptr %p_msg.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %p_msg.i, align 8
  %buf.i54.i = getelementptr inbounds %struct.i2c_msg, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %buf.i54.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %buf.i54.i, align 4
  %147 = ptrtoint ptr %p_send_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %146, ptr %p_send_buf.i.i, align 8
  %len.i55.i = getelementptr inbounds %struct.i2c_msg, ptr %144, i32 0, i32 2
  %148 = ptrtoint ptr %len.i55.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %len.i55.i, align 4
  %conv.i56.i = zext i16 %149 to i32
  %150 = ptrtoint ptr %send_count.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %conv.i56.i, ptr %send_count.i.i, align 8
  %151 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %membase, align 4
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #10, !srcloc !93
  %154 = and i32 %153, -1090519041
  %155 = or i32 %154, 1073741824
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #10
  %157 = ptrtoint ptr %send_count.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %send_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %158)
  %cmp.i58.i = icmp ugt i32 %158, 16
  %or4.i.i = or i32 %156, 16
  %spec.select.i59.i = select i1 %cmp.i58.i, i32 %or4.i.i, i32 %156
  %159 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i59.i) #10
  %160 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %159) #10, !srcloc !92
  %162 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %membase, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %163, i32 16
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #10, !srcloc !93
  %165 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %membase, align 4
  %add.ptr13.i.i = getelementptr i8, ptr %166, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i.i, i32 %164) #10, !srcloc !92
  %167 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %membase, align 4
  %add.ptr16.i60.i = getelementptr i8, ptr %168, i32 20
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i60.i) #10, !srcloc !93
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #10
  %sub.i.i = sub i32 16, %170
  %171 = ptrtoint ptr %send_count.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %send_count.i.i, align 8
  %173 = tail call i32 @llvm.umin.i32(i32 %172, i32 %sub.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool.not68.i.i = icmp eq i32 %173, 0
  br i1 %tobool.not68.i.i, label %if.else19.i.while.end.i.i_crit_edge, label %if.else19.i.while.body.i.i_crit_edge

if.else19.i.while.body.i.i_crit_edge:             ; preds = %if.else19.i
  br label %while.body.i.i

if.else19.i.while.end.i.i_crit_edge:              ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.else19.i.while.body.i.i_crit_edge
  %bytes_to_send.169.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %173, %if.else19.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %bytes_to_send.169.i.i, -1
  %174 = ptrtoint ptr %p_send_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %p_send_buf.i.i, align 8
  %incdec.ptr.i.i = getelementptr i8, ptr %175, i32 1
  store ptr %incdec.ptr.i.i, ptr %p_send_buf.i.i, align 8
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %175, align 1
  %conv26.i.i = zext i8 %177 to i32
  %178 = shl nuw i32 %conv26.i.i, 24
  %179 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %membase, align 4
  %add.ptr28.i.i = getelementptr i8, ptr %180, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i.i, i32 %178) #10, !srcloc !92
  %181 = ptrtoint ptr %send_count.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %send_count.i.i, align 8
  %dec30.i.i = add i32 %182, -1
  store i32 %dec30.i.i, ptr %send_count.i.i, align 8
  %tobool.not.i61.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i61.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %if.else19.i.while.end.i.i_crit_edge
  %183 = ptrtoint ptr %bus_hold_flag39 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %bus_hold_flag39, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool31.not.i.i = icmp eq i32 %184, 0
  br i1 %tobool31.not.i.i, label %land.lhs.true.i63.i, label %while.end.i.i.cdns_i2c_msend.exit.i_crit_edge

while.end.i.i.cdns_i2c_msend.exit.i_crit_edge:    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_i2c_msend.exit.i

land.lhs.true.i63.i:                              ; preds = %while.end.i.i
  %185 = ptrtoint ptr %send_count.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %send_count.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool33.not.i.i = icmp eq i32 %186, 0
  br i1 %tobool33.not.i.i, label %if.then34.i.i, label %land.lhs.true.i63.i.cdns_i2c_msend.exit.i_crit_edge

land.lhs.true.i63.i.cdns_i2c_msend.exit.i_crit_edge: ; preds = %land.lhs.true.i63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_i2c_msend.exit.i

if.then34.i.i:                                    ; preds = %land.lhs.true.i63.i
  %187 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %membase, align 4
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #10, !srcloc !93
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #10
  %and.i.i64.i = and i32 %190, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i64.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i64.i, 0
  br i1 %tobool.not.i.i.i, label %if.then34.i.i.cdns_i2c_msend.exit.i_crit_edge, label %if.then.i.i.i

if.then34.i.i.cdns_i2c_msend.exit.i_crit_edge:    ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cdns_i2c_msend.exit.i

if.then.i.i.i:                                    ; preds = %if.then34.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and1.i.i.i = and i32 %190, -17
  %191 = tail call i32 @llvm.bswap.i32(i32 %and1.i.i.i) #10
  %192 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %191) #10, !srcloc !92
  br label %cdns_i2c_msend.exit.i

cdns_i2c_msend.exit.i:                            ; preds = %if.then.i.i.i, %if.then34.i.i.cdns_i2c_msend.exit.i_crit_edge, %land.lhs.true.i63.i.cdns_i2c_msend.exit.i_crit_edge, %while.end.i.i.cdns_i2c_msend.exit.i_crit_edge
  %194 = ptrtoint ptr %p_msg.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %p_msg.i, align 8
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %195, align 4
  %198 = and i16 %197, 1023
  %and38.i.i = zext i16 %198 to i32
  %199 = tail call i32 @llvm.bswap.i32(i32 %and38.i.i) #10
  %200 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %membase, align 4
  %add.ptr40.i.i = getelementptr i8, ptr %201, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i.i, i32 %199) #10, !srcloc !92
  %202 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %membase, align 4
  %add.ptr42.i.i = getelementptr i8, ptr %203, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i.i, i32 -419299328) #10, !srcloc !92
  br label %if.end20.i

if.end20.i:                                       ; preds = %cdns_i2c_msend.exit.i, %cdns_i2c_mrecv.exit.i
  %204 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %timeout.i, align 4
  %call22.i = tail call i32 @wait_for_completion_timeout(ptr noundef %xfer_done.i, i32 noundef %205) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp.i104 = icmp eq i32 %call22.i, 0
  br i1 %cmp.i104, label %if.then24.i, label %if.end26.i

if.then24.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %206 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %algo_data, align 4
  %membase.i65.i = getelementptr inbounds %struct.cdns_i2c, ptr %207, i32 0, i32 1
  %208 = ptrtoint ptr %membase.i65.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %membase.i65.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %209, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -16646144) #10, !srcloc !92
  %210 = ptrtoint ptr %membase.i65.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %membase.i65.i, align 4
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #10, !srcloc !93
  %213 = and i32 %212, -1342177281
  %214 = or i32 %213, 1073741824
  %215 = ptrtoint ptr %membase.i65.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %membase.i65.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %214) #10, !srcloc !92
  %217 = ptrtoint ptr %membase.i65.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %membase.i65.i, align 4
  %add.ptr6.i.i = getelementptr i8, ptr %218, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.i, i32 0) #10, !srcloc !92
  %219 = ptrtoint ptr %membase.i65.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %membase.i65.i, align 4
  %add.ptr9.i66.i = getelementptr i8, ptr %220, i32 16
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i66.i) #10, !srcloc !93
  %222 = ptrtoint ptr %membase.i65.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %membase.i65.i, align 4
  %add.ptr13.i67.i = getelementptr i8, ptr %223, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i67.i, i32 %221) #10, !srcloc !92
  %224 = ptrtoint ptr %membase.i65.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %membase.i65.i, align 4
  %add.ptr16.i68.i = getelementptr i8, ptr %225, i32 4
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i68.i) #10, !srcloc !93
  %227 = ptrtoint ptr %membase.i65.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %membase.i65.i, align 4
  %add.ptr20.i69.i = getelementptr i8, ptr %228, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i69.i, i32 %226) #10, !srcloc !92
  %parent.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 2, i32 9, i32 1
  %229 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.25) #13
  br label %out

if.end26.i:                                       ; preds = %if.end20.i
  %231 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %membase, align 4
  %add.ptr28.i = getelementptr i8, ptr %232, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 -16646144) #10, !srcloc !92
  %233 = ptrtoint ptr %err_status.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %err_status.i, align 4
  %and30.i = and i32 %234, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end44, label %if.end26.i.out_crit_edge

if.end26.i.out_crit_edge:                         ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end44:                                         ; preds = %if.end26.i
  %235 = ptrtoint ptr %err_status.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %err_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool45.not = icmp eq i32 %236, 0
  br i1 %tobool45.not, label %for.inc53, label %if.then46

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %237 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %algo_data, align 4
  %membase.i106 = getelementptr inbounds %struct.cdns_i2c, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %membase.i106 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %membase.i106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %240, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 -16646144) #10, !srcloc !92
  %241 = ptrtoint ptr %membase.i106 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %membase.i106, align 4
  %243 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %242) #10, !srcloc !93
  %244 = and i32 %243, -1342177281
  %245 = or i32 %244, 1073741824
  %246 = ptrtoint ptr %membase.i106 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %membase.i106, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %247, i32 %245) #10, !srcloc !92
  %248 = ptrtoint ptr %membase.i106 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %membase.i106, align 4
  %add.ptr6.i = getelementptr i8, ptr %249, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 0) #10, !srcloc !92
  %250 = ptrtoint ptr %membase.i106 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %membase.i106, align 4
  %add.ptr9.i = getelementptr i8, ptr %251, i32 16
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #10, !srcloc !93
  %253 = ptrtoint ptr %membase.i106 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %membase.i106, align 4
  %add.ptr13.i = getelementptr i8, ptr %254, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %252) #10, !srcloc !92
  %255 = ptrtoint ptr %membase.i106 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %membase.i106, align 4
  %add.ptr16.i = getelementptr i8, ptr %256, i32 4
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #10, !srcloc !93
  %258 = ptrtoint ptr %membase.i106 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %membase.i106, align 4
  %add.ptr20.i = getelementptr i8, ptr %259, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %257) #10, !srcloc !92
  %260 = ptrtoint ptr %err_status.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %err_status.i, align 4
  %and48 = and i32 %261, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %. = select i1 %tobool49.not, i32 -5, i32 -6
  br label %out

for.inc53:                                        ; preds = %if.end44
  %inc54 = add nuw nsw i32 %count.1124, 1
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %msgs.addr.0125, i32 1
  %exitcond.not = icmp eq i32 %inc54, %num
  br i1 %exitcond.not, label %for.inc53.out_crit_edge, label %for.inc53.for.body34_crit_edge

for.inc53.for.body34_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body34

for.inc53.out_crit_edge:                          ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %for.inc53.out_crit_edge, %if.then46, %if.end26.i.out_crit_edge, %if.then24.i, %if.end30.out_crit_edge, %do.end, %if.end6.out_crit_edge
  %ret.0 = phi i32 [ -95, %do.end ], [ -11, %if.end6.out_crit_edge ], [ %., %if.then46 ], [ -110, %if.then24.i ], [ %num, %if.end30.out_crit_edge ], [ %num, %for.inc53.out_crit_edge ], [ -11, %if.end26.i.out_crit_edge ]
  br i1 %cmp1, label %if.then57, label %out.if.end58_crit_edge

out.if.end58_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then57:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %262 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %membase, align 4
  %add.ptr.i109 = getelementptr i8, ptr %263, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 -16646144) #10, !srcloc !92
  %264 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %265, i32 1073741824) #10, !srcloc !92
  %266 = ptrtoint ptr %dev_mode to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 0, ptr %dev_mode, align 4
  %slave_state.i111 = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 22
  %267 = ptrtoint ptr %slave_state.i111 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 0, ptr %slave_state.i111, align 8
  %ctrl_reg_diva_divb6.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 19
  %268 = ptrtoint ptr %ctrl_reg_diva_divb6.i to i32
  call void @__asan_load2_noabort(i32 %268)
  %269 = load i16, ptr %ctrl_reg_diva_divb6.i, align 4
  %270 = and i16 %269, -15
  %and.i = zext i16 %270 to i32
  %271 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %272 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %membase, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %273, i32 %271) #10, !srcloc !92
  %slave.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 20
  %274 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %slave.i, align 8
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %275, i32 0, i32 1
  %276 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %276)
  %277 = load i16, ptr %addr.i, align 2
  %278 = and i16 %277, 1023
  %and11.i = zext i16 %278 to i32
  %279 = tail call i32 @llvm.bswap.i32(i32 %and11.i) #10
  %280 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %membase, align 4
  %add.ptr13.i112 = getelementptr i8, ptr %281, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i112, i32 %279) #10, !srcloc !92
  %282 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %membase, align 4
  %add.ptr15.i = getelementptr i8, ptr %283, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 -285212672) #10, !srcloc !92
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %out.if.end58_crit_edge
  %284 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %1, align 8
  %call.i113 = tail call i64 @ktime_get_mono_fast_ns() #10
  %last_busy.i = getelementptr inbounds %struct.device, ptr %285, i32 0, i32 12, i32 22
  %286 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %286)
  store volatile i64 %call.i113, ptr %last_busy.i, align 8
  %287 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %1, align 8
  %call.i114 = tail call i32 @__pm_runtime_suspend(ptr noundef %288, i32 noundef 13) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then2.cleanup_crit_edge, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end58 ], [ -11, %if.then2.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cdns_i2c_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268304427
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_reg_slave(ptr noundef %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %slave1 = getelementptr i8, ptr %1, i32 1488
  %2 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave1, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %slave, align 8
  %6 = and i16 %5, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool2.not = icmp eq i16 %6, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end7

if.then.i:                                        ; preds = %if.end4
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #10, !srcloc !95
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.cleanup_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !96
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %slave, ptr %slave1, align 8
  %membase.i = getelementptr i8, ptr %1, i32 -4
  %11 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16646144) #10, !srcloc !92
  %13 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1073741824) #10, !srcloc !92
  %dev_mode.i = getelementptr i8, ptr %1, i32 1492
  %15 = ptrtoint ptr %dev_mode.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %dev_mode.i, align 4
  %slave_state.i = getelementptr i8, ptr %1, i32 1496
  %16 = ptrtoint ptr %slave_state.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %slave_state.i, align 8
  %ctrl_reg_diva_divb6.i = getelementptr i8, ptr %1, i32 1484
  %17 = ptrtoint ptr %ctrl_reg_diva_divb6.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ctrl_reg_diva_divb6.i, align 4
  %19 = and i16 %18, -15
  %and.i = zext i16 %19 to i32
  %20 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %21 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #10, !srcloc !92
  %23 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %slave1, align 8
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %addr.i, align 2
  %27 = and i16 %26, 1023
  %and11.i = zext i16 %27 to i32
  %28 = tail call i32 @llvm.bswap.i32(i32 %and11.i) #10
  %29 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %membase.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %28) #10, !srcloc !92
  %31 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %membase.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %32, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 -285212672) #10, !srcloc !92
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end11.i.i.i.i.i, %if.then.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -16, %entry.cleanup_crit_edge ], [ -97, %if.end.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_unreg_slave(ptr nocapture noundef readonly %slave) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %slave, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #10
  %slave1 = getelementptr i8, ptr %1, i32 1488
  %4 = ptrtoint ptr %slave1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %slave1, align 8
  %membase.i = getelementptr i8, ptr %1, i32 -4
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16646144) #10, !srcloc !92
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1073741824) #10, !srcloc !92
  %dev_mode.i = getelementptr i8, ptr %1, i32 1492
  %9 = ptrtoint ptr %dev_mode.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %dev_mode.i, align 4
  %slave_state.i = getelementptr i8, ptr %1, i32 1496
  %10 = ptrtoint ptr %slave_state.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %slave_state.i, align 8
  %ctrl_reg_diva_divb.i = getelementptr i8, ptr %1, i32 1484
  %11 = ptrtoint ptr %ctrl_reg_diva_divb.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ctrl_reg_diva_divb.i, align 4
  %13 = or i16 %12, 14
  %or.i = zext i16 %13 to i32
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #10, !srcloc !92
  tail call void @usleep_range_state(i32 noundef 115, i32 noundef 125, i32 noundef 2) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cdns_i2c_calc_divs(ptr nocapture noundef %f, i32 noundef %input_clk, ptr nocapture noundef writeonly %a, ptr nocapture noundef writeonly %b) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %mul = mul i32 %1, 22
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %input_clk)
  %tobool.not = icmp ugt i32 %mul, %input_clk
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %div = udiv i32 %input_clk, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div)
  %cmp = icmp ugt i32 %div, 256
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %add4 = add i32 %input_clk, -1
  %sub = add i32 %add4, %mul
  %div8 = udiv i32 %sub, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %sub)
  %cmp9 = icmp ugt i32 %mul, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div8)
  %cmp11 = icmp ugt i32 %div8, 64
  %or.cond = or i1 %cmp9, %cmp11
  br i1 %or.cond, label %for.cond.preheader.for.inc_crit_edge, label %if.end13

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end13:                                         ; preds = %for.cond.preheader
  %dec = add nsw i32 %div8, -1
  %mul17 = mul nuw nsw i32 %div8, 22
  %div18 = udiv i32 %input_clk, %mul17
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div18)
  %cmp19 = icmp ult i32 %1, %div18
  br i1 %cmp19, label %if.end13.for.inc_crit_edge, label %cond.false

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

cond.false:                                       ; preds = %if.end13
  %sub24 = sub i32 %1, %div18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub24)
  %cmp25.not = icmp eq i32 %sub24, -1
  br i1 %cmp25.not, label %cond.false.for.inc_crit_edge, label %if.then26

cond.false.for.inc_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then26:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %cond.false.for.inc_crit_edge, %if.end13.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %best_fscl.1 = phi i32 [ %1, %for.cond.preheader.for.inc_crit_edge ], [ %1, %if.end13.for.inc_crit_edge ], [ %div18, %if.then26 ], [ %1, %cond.false.for.inc_crit_edge ]
  %calc_div_b.1 = phi i32 [ 0, %for.cond.preheader.for.inc_crit_edge ], [ 0, %if.end13.for.inc_crit_edge ], [ %dec, %if.then26 ], [ 0, %cond.false.for.inc_crit_edge ]
  %last_error.1 = phi i32 [ -1, %for.cond.preheader.for.inc_crit_edge ], [ -1, %if.end13.for.inc_crit_edge ], [ %sub24, %if.then26 ], [ -1, %cond.false.for.inc_crit_edge ]
  %mul3.1 = mul i32 %1, 44
  %sub.1 = add i32 %add4, %mul3.1
  %div8.1 = udiv i32 %sub.1, %mul3.1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.1, i32 %sub.1)
  %cmp9.1 = icmp ugt i32 %mul3.1, %sub.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div8.1)
  %cmp11.1 = icmp ugt i32 %div8.1, 64
  %or.cond.1 = or i1 %cmp9.1, %cmp11.1
  br i1 %or.cond.1, label %for.inc.for.inc.1_crit_edge, label %if.end13.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end13.1:                                       ; preds = %for.inc
  %dec.1 = add nsw i32 %div8.1, -1
  %mul17.1 = mul nuw nsw i32 %div8.1, 44
  %div18.1 = udiv i32 %input_clk, %mul17.1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div18.1)
  %cmp19.1 = icmp ult i32 %1, %div18.1
  br i1 %cmp19.1, label %if.end13.1.for.inc.1_crit_edge, label %cond.false.1

if.end13.1.for.inc.1_crit_edge:                   ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

cond.false.1:                                     ; preds = %if.end13.1
  %sub24.1 = sub i32 %1, %div18.1
  call void @__sanitizer_cov_trace_cmp4(i32 %last_error.1, i32 %sub24.1)
  %cmp25.1 = icmp ugt i32 %last_error.1, %sub24.1
  br i1 %cmp25.1, label %if.then26.1, label %cond.false.1.for.inc.1_crit_edge

cond.false.1.for.inc.1_crit_edge:                 ; preds = %cond.false.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.then26.1:                                      ; preds = %cond.false.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then26.1, %cond.false.1.for.inc.1_crit_edge, %if.end13.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %best_fscl.1.1 = phi i32 [ %best_fscl.1, %for.inc.for.inc.1_crit_edge ], [ %best_fscl.1, %if.end13.1.for.inc.1_crit_edge ], [ %div18.1, %if.then26.1 ], [ %best_fscl.1, %cond.false.1.for.inc.1_crit_edge ]
  %calc_div_a.1.1 = phi i32 [ 0, %for.inc.for.inc.1_crit_edge ], [ 0, %if.end13.1.for.inc.1_crit_edge ], [ 1, %if.then26.1 ], [ 0, %cond.false.1.for.inc.1_crit_edge ]
  %calc_div_b.1.1 = phi i32 [ %calc_div_b.1, %for.inc.for.inc.1_crit_edge ], [ %calc_div_b.1, %if.end13.1.for.inc.1_crit_edge ], [ %dec.1, %if.then26.1 ], [ %calc_div_b.1, %cond.false.1.for.inc.1_crit_edge ]
  %last_error.1.1 = phi i32 [ %last_error.1, %for.inc.for.inc.1_crit_edge ], [ %last_error.1, %if.end13.1.for.inc.1_crit_edge ], [ %sub24.1, %if.then26.1 ], [ %last_error.1, %cond.false.1.for.inc.1_crit_edge ]
  %mul3.2 = mul i32 %1, 66
  %sub.2 = add i32 %add4, %mul3.2
  %div8.2 = udiv i32 %sub.2, %mul3.2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.2, i32 %sub.2)
  %cmp9.2 = icmp ugt i32 %mul3.2, %sub.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div8.2)
  %cmp11.2 = icmp ugt i32 %div8.2, 64
  %or.cond.2 = or i1 %cmp9.2, %cmp11.2
  br i1 %or.cond.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end13.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end13.2:                                       ; preds = %for.inc.1
  %dec.2 = add nsw i32 %div8.2, -1
  %mul17.2 = mul nuw nsw i32 %div8.2, 66
  %div18.2 = udiv i32 %input_clk, %mul17.2
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div18.2)
  %cmp19.2 = icmp ult i32 %1, %div18.2
  br i1 %cmp19.2, label %if.end13.2.for.inc.2_crit_edge, label %cond.false.2

if.end13.2.for.inc.2_crit_edge:                   ; preds = %if.end13.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

cond.false.2:                                     ; preds = %if.end13.2
  %sub24.2 = sub i32 %1, %div18.2
  call void @__sanitizer_cov_trace_cmp4(i32 %last_error.1.1, i32 %sub24.2)
  %cmp25.2 = icmp ugt i32 %last_error.1.1, %sub24.2
  br i1 %cmp25.2, label %if.then26.2, label %cond.false.2.for.inc.2_crit_edge

cond.false.2.for.inc.2_crit_edge:                 ; preds = %cond.false.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.then26.2:                                      ; preds = %cond.false.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then26.2, %cond.false.2.for.inc.2_crit_edge, %if.end13.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %best_fscl.1.2 = phi i32 [ %best_fscl.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %best_fscl.1.1, %if.end13.2.for.inc.2_crit_edge ], [ %div18.2, %if.then26.2 ], [ %best_fscl.1.1, %cond.false.2.for.inc.2_crit_edge ]
  %calc_div_a.1.2 = phi i32 [ %calc_div_a.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %calc_div_a.1.1, %if.end13.2.for.inc.2_crit_edge ], [ 2, %if.then26.2 ], [ %calc_div_a.1.1, %cond.false.2.for.inc.2_crit_edge ]
  %calc_div_b.1.2 = phi i32 [ %calc_div_b.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %calc_div_b.1.1, %if.end13.2.for.inc.2_crit_edge ], [ %dec.2, %if.then26.2 ], [ %calc_div_b.1.1, %cond.false.2.for.inc.2_crit_edge ]
  %last_error.1.2 = phi i32 [ %last_error.1.1, %for.inc.1.for.inc.2_crit_edge ], [ %last_error.1.1, %if.end13.2.for.inc.2_crit_edge ], [ %sub24.2, %if.then26.2 ], [ %last_error.1.1, %cond.false.2.for.inc.2_crit_edge ]
  %mul3.3 = mul i32 %1, 88
  %sub.3 = add i32 %add4, %mul3.3
  %div8.3 = udiv i32 %sub.3, %mul3.3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul3.3, i32 %sub.3)
  %cmp9.3 = icmp ugt i32 %mul3.3, %sub.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div8.3)
  %cmp11.3 = icmp ugt i32 %div8.3, 64
  %or.cond.3 = or i1 %cmp9.3, %cmp11.3
  br i1 %or.cond.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end13.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.end13.3:                                       ; preds = %for.inc.2
  %mul17.3 = mul nuw nsw i32 %div8.3, 88
  %div18.3 = udiv i32 %input_clk, %mul17.3
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div18.3)
  %cmp19.3 = icmp uge i32 %1, %div18.3
  %sub24.3 = sub i32 %1, %div18.3
  call void @__sanitizer_cov_trace_cmp4(i32 %last_error.1.2, i32 %sub24.3)
  %cmp25.3 = icmp ugt i32 %last_error.1.2, %sub24.3
  %or.cond67 = select i1 %cmp19.3, i1 %cmp25.3, i1 false
  br i1 %or.cond67, label %if.then26.3, label %if.end13.3.for.inc.3_crit_edge

if.end13.3.for.inc.3_crit_edge:                   ; preds = %if.end13.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.3

if.then26.3:                                      ; preds = %if.end13.3
  call void @__sanitizer_cov_trace_pc() #12
  %dec.3 = add nsw i32 %div8.3, -1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then26.3, %if.end13.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %best_fscl.1.3 = phi i32 [ %best_fscl.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %best_fscl.1.2, %if.end13.3.for.inc.3_crit_edge ], [ %div18.3, %if.then26.3 ]
  %calc_div_a.1.3 = phi i32 [ %calc_div_a.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %calc_div_a.1.2, %if.end13.3.for.inc.3_crit_edge ], [ 3, %if.then26.3 ]
  %calc_div_b.1.3 = phi i32 [ %calc_div_b.1.2, %for.inc.2.for.inc.3_crit_edge ], [ %calc_div_b.1.2, %if.end13.3.for.inc.3_crit_edge ], [ %dec.3, %if.then26.3 ]
  %2 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %calc_div_a.1.3, ptr %a, align 4
  %3 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %calc_div_b.1.3, ptr %b, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %best_fscl.1.3, ptr %f, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.3 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i2c_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cdns_i2c_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ctrl_reg.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl_reg.i, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  %membase.i = getelementptr inbounds %struct.cdns_i2c, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #10, !srcloc !92
  %9 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 -16777216) #10, !srcloc !92
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !80, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @__initcall__kmod_i2c_cadence__289_1372_cdns_i2c_drv_init6, !1, !"__initcall__kmod_i2c_cadence__289_1372_cdns_i2c_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1372, i32 1}
!2 = !{ptr @__exitcall_cdns_i2c_drv_exit, !1, !"__exitcall_cdns_i2c_drv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1374, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1375, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1376, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1364, i32 12}
!12 = !{ptr @cdns_i2c_drv, !13, !"cdns_i2c_drv", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1362, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1275, i32 4}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1280, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1284, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cdns_i2c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @cdns_i2c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1293, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cdns_i2c_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @cdns_i2c_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1296, i32 48}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1310, i32 3}
!35 = !{ptr @cdns_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @cdns_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1318, i32 3}
!39 = !{ptr @cdns_i2c_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @cdns_i2c_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1327, i32 2}
!43 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @cdns_i2c_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @cdns_i2c_probe._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @cdns_i2c_algo, !47, !"cdns_i2c_algo", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 980, i32 35}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 867, i32 5}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @cdns_i2c_master_xfer._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @cdns_i2c_master_xfer._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 792, i32 3}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cdns_i2c_process_msg._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @cdns_i2c_process_msg._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @init_completion.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../include/linux/completion.h", i32 87, i32 2}
!60 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1124, i32 4}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @cdns_i2c_clk_notifier_cb._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @cdns_i2c_clk_notifier_cb._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 442, i32 5}
!68 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @cdns_i2c_master_isr._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @cdns_i2c_master_isr._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @cdns_i2c_of_match, !72, !"cdns_i2c_of_match", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1220, i32 34}
!73 = !{ptr @r1p10_i2c_def, !74, !"r1p10_i2c_def", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1216, i32 40}
!75 = !{ptr @cdns_i2c_dev_pm_ops, !76, !"cdns_i2c_dev_pm_ops", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1211, i32 32}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-cadence.c", i32 1203, i32 3}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cdns_i2c_runtime_resume._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @cdns_i2c_runtime_resume._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
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
!92 = !{i64 6899465}
!93 = !{i64 6899883}
!94 = !{i64 2148276487}
!95 = !{i64 761310, i64 761335, i64 761357, i64 761373, i64 761385, i64 761405, i64 761429, i64 761445, i64 761457}
!96 = !{i64 2148276675}
!97 = !{i64 669549, i64 669610}
!98 = !{i64 672281}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 672566}
