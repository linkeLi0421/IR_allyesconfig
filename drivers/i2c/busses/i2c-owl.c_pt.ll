; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-owl.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-owl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
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
%struct.owl_i2c_dev = type { %struct.i2c_adapter, ptr, %struct.completion, ptr, %struct.spinlock, ptr, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_owl__288_526_owl_i2c_driver_init6 = internal global ptr @owl_i2c_driver_init, section ".initcall6.init", align 4
@owl_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @owl_i2c_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @owl_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_owl_i2c_driver_exit = internal global ptr @owl_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [51 x i8] c"i2c_owl.author=David Liu <liuwei@actions-semi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [72 x i8] c"i2c_owl.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [63 x i8] c"i2c_owl.description=Actions Semiconductor Owl SoC's I2C driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [40 x i8] c"i2c_owl.file=drivers/i2c/busses/i2c-owl\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [20 x i8] c"i2c_owl.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"owl-i2c\00", [24 x i8] zeroinitializer }, align 32
@owl_i2c_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s500-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s700-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s900-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@owl_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid clock-frequency %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"owl_i2c_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/i2c/busses/i2c-owl.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@owl_i2c_probe._entry_ptr = internal global ptr @owl_i2c_probe._entry, section ".printk_index", align 4
@owl_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 466, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@owl_i2c_probe._entry_ptr.9 = internal global ptr @owl_i2c_probe._entry.7, section ".printk_index", align 4
@owl_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 476, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"input clock rate should not be zero\0A\00", [59 x i8] zeroinitializer }, align 32
@owl_i2c_probe._entry_ptr.12 = internal global ptr @owl_i2c_probe._entry.10, section ".printk_index", align 4
@owl_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&i2c_dev->lock\00", [17 x i8] zeroinitializer }, align 32
@owl_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @owl_i2c_xfer, ptr @owl_i2c_xfer_atomic, ptr null, ptr null, ptr @owl_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@owl_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 3, i32 0, i16 240, i16 240, i16 6, i16 240 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OWL I2C adapter\00", [16 x i8] zeroinitializer }, align 32
@owl_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 498, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@owl_i2c_probe._entry_ptr.18 = internal global ptr @owl_i2c_probe._entry.16, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@owl_i2c_xfer_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 385, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Transaction timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"owl_i2c_xfer_common\00", [44 x i8] zeroinitializer }, align 32
@owl_i2c_xfer_common._entry_ptr = internal global ptr @owl_i2c_xfer_common._entry, section ".printk_index", align 4
@owl_i2c_reset_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 150, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"FIFO reset timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"owl_i2c_reset_fifo\00", [45 x i8] zeroinitializer }, align 32
@owl_i2c_reset_fifo._entry_ptr = internal global ptr @owl_i2c_reset_fifo._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@owl_i2c_check_bus_busy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 243, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Bus busy timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"owl_i2c_check_bus_busy\00", [41 x i8] zeroinitializer }, align 32
@owl_i2c_check_bus_busy._entry_ptr = internal global ptr @owl_i2c_check_bus_busy._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 100000, i64 400000]
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"owl_i2c_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 518, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 521, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"owl_i2c_of_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 510, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 453, i32 41 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 460, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 466, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 476, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 482, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"owl_i2c_algorithm\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 421, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"owl_i2c_quirks\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 427, i32 40 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 490, i32 10 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 498, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 87, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 385, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 150, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [32 x i8] c"../drivers/i2c/busses/i2c-owl.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 243, i32 4 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_owl_i2c_driver_exit, ptr @__initcall__kmod_i2c_owl__288_526_owl_i2c_driver_init6, ptr @owl_i2c_check_bus_busy._entry, ptr @owl_i2c_check_bus_busy._entry_ptr, ptr @owl_i2c_driver_exit, ptr @owl_i2c_probe._entry, ptr @owl_i2c_probe._entry.10, ptr @owl_i2c_probe._entry.16, ptr @owl_i2c_probe._entry.7, ptr @owl_i2c_probe._entry_ptr, ptr @owl_i2c_probe._entry_ptr.12, ptr @owl_i2c_probe._entry_ptr.18, ptr @owl_i2c_probe._entry_ptr.9, ptr @owl_i2c_reset_fifo._entry, ptr @owl_i2c_reset_fifo._entry_ptr, ptr @owl_i2c_xfer_common._entry, ptr @owl_i2c_xfer_common._entry_ptr, ptr @owl_i2c_driver, ptr @.str, ptr @owl_i2c_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @owl_i2c_probe.__key, ptr @.str.13, ptr @owl_i2c_algorithm, ptr @owl_i2c_quirks, ptr @.str.15, ptr @.str.17, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_i2c_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_i2c_xfer_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_i2c_reset_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_i2c_check_bus_busy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @owl_i2c_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @owl_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @owl_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1488, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.owl_i2c_dev, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %bus_freq = getelementptr inbounds %struct.owl_i2c_dev, ptr %call.i, i32 0, i32 7
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef %bus_freq, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool13.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool13.not, label %if.end16, label %if.end16.thread

if.end16.thread:                                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %bus_freq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100000, ptr %bus_freq, align 4
  br label %if.end23

if.end16:                                         ; preds = %if.end11
  %5 = ptrtoint ptr %bus_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load i32, ptr %bus_freq, align 4
  %6 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr, label %do.end [
    i32 100000, label %if.end16.if.end23_crit_edge
    i32 400000, label %if.end16.if.end23_crit_edge134
  ]

if.end16.if.end23_crit_edge134:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %.pr) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end16.if.end23_crit_edge, %if.end16.if.end23_crit_edge134, %if.end16.thread
  %call24 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.owl_i2c_dev, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call24, ptr %clk, align 4
  %cmp.i128 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %call.i129 = tail call i32 @clk_prepare(ptr noundef %call24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.not.i = icmp eq i32 %call.i129, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end33
  %call1.i = tail call i32 @clk_enable(ptr noundef %call24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end38, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call24) #6
  br label %cleanup

if.end38:                                         ; preds = %if.end.i
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call40 = tail call i32 @clk_get_rate(ptr noundef %12) #6
  %clk_rate = getelementptr inbounds %struct.owl_i2c_dev, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call40, ptr %clk_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool42.not = icmp eq i32 %call40, 0
  br i1 %tobool42.not, label %do.end46, label %if.end47

do.end46:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %disable_clk

if.end47:                                         ; preds = %if.end38
  %msg_complete = getelementptr inbounds %struct.owl_i2c_dev, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %msg_complete, align 4
  %wait.i = getelementptr inbounds %struct.owl_i2c_dev, ptr %call.i, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #6
  %lock = getelementptr inbounds %struct.owl_i2c_dev, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @owl_i2c_probe.__key, i16 noundef signext 3) #6
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %call.i, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @owl_i2c_algorithm, ptr %algo, align 8
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 400, ptr %timeout, align 4
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 17
  %18 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @owl_i2c_quirks, ptr %quirks, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev1, ptr %parent, align 8
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %of_node61 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %22 = ptrtoint ptr %of_node61 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %of_node61, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %23 = call ptr @memcpy(ptr %name, ptr @.str.15, i32 16)
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %driver_data.i.i130 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i130 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i130, align 4
  %26 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev, align 8
  %call.i131 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call9, ptr noundef nonnull @owl_i2c_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %27, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool67.not = icmp eq i32 %call.i131, 0
  br i1 %tobool67.not, label %if.end72, label %do.end71

do.end71:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call9) #9
  br label %disable_clk

if.end72:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %call74 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #6
  br label %cleanup

disable_clk:                                      ; preds = %do.end71, %do.end46
  %ret.0 = phi i32 [ %call.i131, %do.end71 ], [ -22, %do.end46 ]
  %28 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %29) #6
  tail call void @clk_unprepare(ptr noundef %29) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %if.end72, %if.then3.i, %if.end33.cleanup_crit_edge, %do.end30, %do.end, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ -22, %do.end ], [ %10, %do.end30 ], [ %ret.0, %disable_clk ], [ %call74, %if.end72 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i129, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_i2c_interrupt(i32 noundef %irq, ptr noundef %_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.owl_i2c_dev, ptr %_dev, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  tail call fastcc void @owl_i2c_xfer_data(ptr noundef %_dev)
  %base = getelementptr inbounds %struct.owl_i2c_dev, ptr %_dev, i32 0, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %3 = or i32 %2, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #6, !srcloc !81
  %msg_complete = getelementptr inbounds %struct.owl_i2c_dev, ptr %_dev, i32 0, i32 2
  tail call void @complete_all(ptr noundef %msg_complete) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_i2c_xfer(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @owl_i2c_xfer_common(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_i2c_xfer_atomic(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @owl_i2c_xfer_common(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @owl_i2c_func(ptr nocapture noundef readnone %adap) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @owl_i2c_xfer_common(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext %atomic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.owl_i2c_dev, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base.i = getelementptr inbounds %struct.owl_i2c_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %5 = and i32 %4, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %5) #6, !srcloc !81
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #6
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %10 = or i32 %9, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #6, !srcloc !81
  %clk_rate.i = getelementptr inbounds %struct.owl_i2c_dev, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %clk_rate.i, align 8
  %bus_freq.i = getelementptr inbounds %struct.owl_i2c_dev, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %bus_freq.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bus_freq.i, align 4
  %mul.i = shl i32 %16, 4
  %add.i = add i32 %14, -1
  %sub.i = add i32 %add.i, %mul.i
  %div.i = udiv i32 %sub.i, %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %and.i = shl i32 %div.i, 24
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and.i) #6, !srcloc !81
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i302 = getelementptr i8, ptr %20, i32 28
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i302) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %22 = or i32 %21, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i302, i32 %22) #6, !srcloc !81
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.do.body.i_crit_edge ]
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %24, i32 28
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  %26 = and i32 %25, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %if.end, label %if.end.i

if.end.i:                                         ; preds = %do.body.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #6
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 51
  br i1 %exitcond.not.i, label %owl_i2c_reset_fifo.exit, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

owl_i2c_reset_fifo.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22) #9
  br label %unlocked_err_exit

if.end:                                           ; preds = %do.body.i
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %add.i303 = add i32 %29, 400
  %base.i304 = getelementptr inbounds %struct.owl_i2c_dev, ptr %28, i32 0, i32 5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %30 = ptrtoint ptr %base.i304 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i304, align 4
  %add.ptr.i305 = getelementptr i8, ptr %31, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i305) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %33 = and i32 %32, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i306 = icmp eq i32 %33, 0
  br i1 %tobool.not.i306, label %do.body13, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub.i307 = sub i32 %add.i303, %34
  %cmp.i = icmp slt i32 %sub.i307, 0
  br i1 %cmp.i, label %owl_i2c_check_bus_busy.exit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

owl_i2c_check_bus_busy.exit:                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i308 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i308, ptr noundef nonnull @.str.24) #9
  br label %unlocked_err_exit

do.body13:                                        ; preds = %while.cond.i
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %36, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !78
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  %and = and i32 %38, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.end37, label %if.then30

if.then30:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %and31 = and i32 %38, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %and31)
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr36 = getelementptr i8, ptr %41, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %39) #6, !srcloc !81
  br label %err_exit

if.end37:                                         ; preds = %do.body13
  br i1 %atomic, label %if.end37.if.end40_crit_edge, label %if.then39

if.end37.if.end40_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %msg_complete = getelementptr inbounds %struct.owl_i2c_dev, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %msg_complete to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %msg_complete, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end37.if.end40_crit_edge
  %masksel = phi i32 [ 32, %if.then39 ], [ 0, %if.end37.if.end40_crit_edge ]
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %46 = and i32 %45, -536870913
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %regval.0.i = or i32 %47, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %48 = tail call i32 @llvm.bswap.i32(i32 %regval.0.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %48) #6, !srcloc !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp44 = icmp sgt i32 %num, 1
  br i1 %cmp44, label %if.then46, label %if.end40.if.end75_crit_edge

if.end40.if.end75_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end75

if.then46:                                        ; preds = %if.end40
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %len, align 4
  %51 = shl i16 %50, 1
  %52 = add i16 %51, 2
  %53 = and i16 %52, 14
  %54 = or i16 %53, -28879
  %or50 = zext i16 %54 to i32
  %55 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %msgs, align 4
  %conv.i = zext i16 %56 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %57 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flags.i, align 2
  %59 = and i16 %58, 1
  %60 = zext i16 %59 to i32
  %shl.i.masked = and i32 %shl.i, 254
  %conv53 = or i32 %shl.i.masked, %60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %61 = shl nuw i32 %conv53, 24
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %add.ptr58 = getelementptr i8, ptr %63, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %61) #6, !srcloc !81
  %64 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %cmp62338.not = icmp eq i16 %65, 0
  br i1 %cmp62338.not, label %if.then46.for.end_crit_edge, label %do.body64.lr.ph

if.then46.for.end_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body64.lr.ph:                                  ; preds = %if.then46
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  br label %do.body64

do.body64:                                        ; preds = %do.body64.do.body64_crit_edge, %do.body64.lr.ph
  %idx.0339 = phi i32 [ 0, %do.body64.lr.ph ], [ %inc, %do.body64.do.body64_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  tail call void @arm_heavy_mb() #6
  %66 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf, align 4
  %arrayidx68 = getelementptr i8, ptr %67, i32 %idx.0339
  %68 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx68, align 1
  %conv69 = zext i8 %69 to i32
  %70 = shl nuw i32 %conv69, 24
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %add.ptr71 = getelementptr i8, ptr %72, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 %70) #6, !srcloc !81
  %inc = add nuw nsw i32 %idx.0339, 1
  %73 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %len, align 4
  %conv61 = zext i16 %74 to i32
  %cmp62 = icmp ult i32 %inc, %conv61
  br i1 %cmp62, label %do.body64.do.body64_crit_edge, label %do.body64.for.end_crit_edge

do.body64.for.end_crit_edge:                      ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body64.do.body64_crit_edge:                    ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body64

for.end:                                          ; preds = %do.body64.for.end_crit_edge, %if.then46.for.end_crit_edge
  %arrayidx72 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1
  br label %if.end75

if.end75:                                         ; preds = %for.end, %if.end40.if.end75_crit_edge
  %i2c_cmd.0 = phi i32 [ %or50, %for.end ], [ 36611, %if.end40.if.end75_crit_edge ]
  %msg.0 = phi ptr [ %arrayidx72, %for.end ], [ %msgs, %if.end40.if.end75_crit_edge ]
  %msg76 = getelementptr inbounds %struct.owl_i2c_dev, ptr %1, i32 0, i32 1
  %75 = ptrtoint ptr %msg76 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.0, ptr %msg76, align 8
  %msg_ptr = getelementptr inbounds %struct.owl_i2c_dev, ptr %1, i32 0, i32 8
  %76 = ptrtoint ptr %msg_ptr to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %msg_ptr, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %len80 = getelementptr inbounds %struct.i2c_msg, ptr %msg.0, i32 0, i32 2
  %77 = ptrtoint ptr %len80 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %len80, align 4
  %conv81 = zext i16 %78 to i32
  %79 = tail call i32 @llvm.bswap.i32(i32 %conv81)
  %80 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i, align 4
  %add.ptr83 = getelementptr i8, ptr %81, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 %79) #6, !srcloc !81
  %82 = ptrtoint ptr %msg.0 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %msg.0, align 4
  %conv.i312 = zext i16 %83 to i32
  %shl.i313 = shl nuw nsw i32 %conv.i312, 1
  %flags.i314 = getelementptr inbounds %struct.i2c_msg, ptr %msg.0, i32 0, i32 1
  %84 = ptrtoint ptr %flags.i314 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %flags.i314, align 2
  %86 = and i16 %85, 1
  %87 = zext i16 %86 to i32
  %shl.i313.masked = and i32 %shl.i313, 254
  %conv85 = or i32 %shl.i313.masked, %87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %88 = shl nuw i32 %conv85, 24
  %89 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i, align 4
  %add.ptr90 = getelementptr i8, ptr %90, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %88) #6, !srcloc !81
  %91 = ptrtoint ptr %flags.i314 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %flags.i314, align 2
  %93 = and i16 %92, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %93)
  %tobool94.not = icmp eq i16 %93, 0
  br i1 %tobool94.not, label %for.cond96.preheader, label %if.end75.if.end125_crit_edge

if.end75.if.end125_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

for.cond96.preheader:                             ; preds = %if.end75
  %94 = ptrtoint ptr %len80 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %len80, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %cmp99341.not = icmp eq i16 %95, 0
  br i1 %cmp99341.not, label %for.cond96.preheader.for.end123_crit_edge, label %for.body101.lr.ph

for.cond96.preheader.for.end123_crit_edge:        ; preds = %for.cond96.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end123

for.body101.lr.ph:                                ; preds = %for.cond96.preheader
  %buf116 = getelementptr inbounds %struct.i2c_msg, ptr %msg.0, i32 0, i32 3
  br label %for.body101

for.body101:                                      ; preds = %do.body113.for.body101_crit_edge, %for.body101.lr.ph
  %idx.1342 = phi i32 [ 0, %for.body101.lr.ph ], [ %inc122, %do.body113.for.body101_crit_edge ]
  %96 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base.i, align 4
  %add.ptr105 = getelementptr i8, ptr %97, i32 32
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %99 = and i32 %98, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool110.not = icmp eq i32 %99, 0
  br i1 %tobool110.not, label %do.body113, label %for.body101.for.end123_crit_edge

for.body101.for.end123_crit_edge:                 ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end123

do.body113:                                       ; preds = %for.body101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %100 = ptrtoint ptr %buf116 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %buf116, align 4
  %arrayidx117 = getelementptr i8, ptr %101, i32 %idx.1342
  %102 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %103 to i32
  %104 = shl nuw i32 %conv118, 24
  %105 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i, align 4
  %add.ptr120 = getelementptr i8, ptr %106, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 %104) #6, !srcloc !81
  %inc122 = add nuw nsw i32 %idx.1342, 1
  %107 = ptrtoint ptr %len80 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %len80, align 4
  %conv98 = zext i16 %108 to i32
  %cmp99 = icmp ult i32 %inc122, %conv98
  br i1 %cmp99, label %do.body113.for.body101_crit_edge, label %do.body113.for.end123_crit_edge

do.body113.for.end123_crit_edge:                  ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end123

do.body113.for.body101_crit_edge:                 ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body101

for.end123:                                       ; preds = %do.body113.for.end123_crit_edge, %for.body101.for.end123_crit_edge, %for.cond96.preheader.for.end123_crit_edge
  %idx.1.lcssa = phi i32 [ 0, %for.cond96.preheader.for.end123_crit_edge ], [ %idx.1342, %for.body101.for.end123_crit_edge ], [ %inc122, %do.body113.for.end123_crit_edge ]
  %109 = ptrtoint ptr %msg_ptr to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %idx.1.lcssa, ptr %msg_ptr, align 8
  br label %if.end125

if.end125:                                        ; preds = %for.end123, %if.end75.if.end125_crit_edge
  %110 = ptrtoint ptr %flags.i314 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %flags.i314, align 2
  %112 = and i16 %111, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %112)
  %tobool129.not = icmp eq i16 %112, 0
  %113 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %base.i, align 4
  %add.ptr135 = getelementptr i8, ptr %114, i32 28
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool129.not, label %if.else133, label %if.then130

if.then130:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %116 = or i32 %115, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %116) #6, !srcloc !81
  br label %do.body137

if.else133:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  %117 = and i32 %115, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 %117) #6, !srcloc !81
  br label %do.body137

do.body137:                                       ; preds = %if.else133, %if.then130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %118 = tail call i32 @llvm.bswap.i32(i32 %i2c_cmd.0)
  %119 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base.i, align 4
  %add.ptr141 = getelementptr i8, ptr %120, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141, i32 %118) #6, !srcloc !81
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #6
  br i1 %atomic, label %if.then144, label %if.else185

if.then144:                                       ; preds = %do.body137
  %call145 = tail call i64 @ktime_get() #6
  %add.i320 = add i64 %call145, 4000000000
  %121 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i, align 4
  %add.ptr151344 = getelementptr i8, ptr %122, i32 32
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151344) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %124 = and i32 %123, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool156.not346 = icmp eq i32 %124, 0
  br i1 %tobool156.not346, label %if.then144.land.lhs.true_crit_edge, label %if.then144.if.then215_crit_edge

if.then144.if.then215_crit_edge:                  ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then215

if.then144.land.lhs.true_crit_edge:               ; preds = %if.then144
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.then144.land.lhs.true_crit_edge
  %call160 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call160, i64 %add.i320)
  %cmp3.i = icmp sgt i64 %call160, %add.i320
  br i1 %cmp3.i, label %for.end181, label %cond.false

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %125(i32 noundef 2147480) #6
  %126 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %base.i, align 4
  %add.ptr151 = getelementptr i8, ptr %127, i32 32
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %129 = and i32 %128, 50331648
  %tobool156.not = icmp eq i32 %129, 0
  br i1 %tobool156.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.if.then215_crit_edge

cond.false.if.then215_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then215

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end181:                                       ; preds = %land.lhs.true
  %130 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %base.i, align 4
  %add.ptr168 = getelementptr i8, ptr %131, i32 32
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr168) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  %133 = and i32 %132, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool184.not = icmp eq i32 %133, 0
  br i1 %tobool184.not, label %for.end181.do.end210_crit_edge, label %for.end181.if.then215_crit_edge

for.end181.if.then215_crit_edge:                  ; preds = %for.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then215

for.end181.do.end210_crit_edge:                   ; preds = %for.end181
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end210

if.else185:                                       ; preds = %do.body137
  %msg_complete186 = getelementptr inbounds %struct.owl_i2c_dev, ptr %1, i32 0, i32 2
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 7
  %134 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %timeout, align 4
  %call187 = tail call i32 @wait_for_completion_timeout(ptr noundef %msg_complete186, i32 noundef %135) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.else185.do.end210_crit_edge, label %if.end213.thread

if.else185.do.end210_crit_edge:                   ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end210

if.end213.thread:                                 ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #8
  %call201331334 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  br label %if.end216

do.end210:                                        ; preds = %if.else185.do.end210_crit_edge, %for.end181.do.end210_crit_edge
  %call201 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #9
  %136 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %base.i, align 4
  tail call fastcc void @owl_i2c_update_reg(ptr noundef %137, i32 noundef 10, i1 noundef zeroext true)
  br label %err_exit

if.then215:                                       ; preds = %for.end181.if.then215_crit_edge, %cond.false.if.then215_crit_edge, %if.then144.if.then215_crit_edge
  %call201331 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  tail call fastcc void @owl_i2c_xfer_data(ptr noundef %1)
  br label %if.end216

if.end216:                                        ; preds = %if.then215, %if.end213.thread
  %call201331335 = phi i32 [ %call201331334, %if.end213.thread ], [ %call201331, %if.then215 ]
  %err = getelementptr inbounds %struct.owl_i2c_dev, ptr %1, i32 0, i32 9
  %138 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp217 = icmp slt i32 %139, 0
  %.num = select i1 %cmp217, i32 %139, i32 %num
  br label %err_exit

err_exit:                                         ; preds = %if.end216, %do.end210, %if.then30
  %ret.1 = phi i32 [ -11, %if.then30 ], [ -110, %do.end210 ], [ %.num, %if.end216 ]
  %flags.0 = phi i32 [ %call21, %if.then30 ], [ %call201, %do.end210 ], [ %call201331335, %if.end216 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #6
  br label %unlocked_err_exit

unlocked_err_exit:                                ; preds = %err_exit, %owl_i2c_check_bus_busy.exit, %owl_i2c_reset_fifo.exit
  %ret.2 = phi i32 [ -110, %owl_i2c_reset_fifo.exit ], [ -110, %owl_i2c_check_bus_busy.exit ], [ %ret.1, %err_exit ]
  %140 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %base.i, align 4
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %143 = and i32 %142, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 %143) #6, !srcloc !81
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @owl_i2c_update_reg(ptr noundef %reg, i32 noundef %val, i1 noundef zeroext %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #6, !srcloc !78
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %or = or i32 %1, %val
  %neg = xor i32 %val, -1
  %and = and i32 %1, %neg
  %regval.0 = select i1 %state, i32 %or, i32 %and
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %regval.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %2) #6, !srcloc !81
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @owl_i2c_xfer_data(ptr nocapture noundef %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg1 = getelementptr inbounds %struct.owl_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %0 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg1, align 8
  %err = getelementptr inbounds %struct.owl_i2c_dev, ptr %i2c_dev, i32 0, i32 9
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %err, align 4
  %base = getelementptr inbounds %struct.owl_i2c_dev, ptr %i2c_dev, i32 0, i32 5
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  %6 = and i32 %5, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -6, ptr %err, align 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %9, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %11 = or i32 %10, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %11) #6, !srcloc !81
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %15 = and i32 %14, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %if.end19, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -5, ptr %err, align 4
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %20 = or i32 %19, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %20) #6, !srcloc !81
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags, align 2
  %23 = and i16 %22, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool21.not = icmp eq i16 %23, 0
  %msg_ptr54 = getelementptr inbounds %struct.owl_i2c_dev, ptr %i2c_dev, i32 0, i32 8
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr4796 = getelementptr i8, ptr %25, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4796) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  br i1 %tobool21.not, label %while.cond43.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end19
  %27 = and i32 %26, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool31.not95 = icmp eq i32 %27, 0
  br i1 %tobool31.not95, label %while.cond.preheader.cleanup_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %len = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  br label %land.rhs

while.cond43.preheader:                           ; preds = %if.end19
  %28 = and i32 %26, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool52.not97 = icmp eq i32 %28, 0
  br i1 %tobool52.not97, label %land.rhs53.lr.ph, label %while.cond43.preheader.cleanup_crit_edge

while.cond43.preheader.cleanup_crit_edge:         ; preds = %while.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs53.lr.ph:                                 ; preds = %while.cond43.preheader
  %len55 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %buf61 = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  br label %land.rhs53

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %land.rhs.lr.ph
  %29 = ptrtoint ptr %msg_ptr54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %msg_ptr54, align 8
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %len, align 4
  %conv32 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv32)
  %cmp = icmp ult i32 %30, %conv32
  br i1 %cmp, label %while.body, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr37 = getelementptr i8, ptr %34, i32 20
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #6, !srcloc !78
  %36 = lshr i32 %35, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %conv41 = trunc i32 %36 to i8
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf, align 4
  %39 = ptrtoint ptr %msg_ptr54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_ptr54, align 8
  %inc = add i32 %40, 1
  store i32 %inc, ptr %msg_ptr54, align 8
  %arrayidx = getelementptr i8, ptr %38, i32 %40
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv41, ptr %arrayidx, align 1
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %43, i32 32
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  %45 = and i32 %44, 67108864
  %tobool31.not = icmp eq i32 %45, 0
  br i1 %tobool31.not, label %while.body.cleanup_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.rhs53:                                       ; preds = %do.body.land.rhs53_crit_edge, %land.rhs53.lr.ph
  %46 = ptrtoint ptr %msg_ptr54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %msg_ptr54, align 8
  %48 = ptrtoint ptr %len55 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %len55, align 4
  %conv56 = zext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv56)
  %cmp57 = icmp ult i32 %47, %conv56
  br i1 %cmp57, label %do.body, label %land.rhs53.cleanup_crit_edge

land.rhs53.cleanup_crit_edge:                     ; preds = %land.rhs53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %land.rhs53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %buf61 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %buf61, align 4
  %52 = ptrtoint ptr %msg_ptr54 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_ptr54, align 8
  %inc63 = add i32 %53, 1
  store i32 %inc63, ptr %msg_ptr54, align 8
  %arrayidx64 = getelementptr i8, ptr %51, i32 %53
  %54 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %55 to i32
  %56 = shl nuw i32 %conv65, 24
  %57 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base, align 4
  %add.ptr67 = getelementptr i8, ptr %58, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %56) #6, !srcloc !81
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  %add.ptr47 = getelementptr i8, ptr %60, i32 32
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %62 = and i32 %61, 536870912
  %tobool52.not = icmp eq i32 %62, 0
  br i1 %tobool52.not, label %do.body.land.rhs53_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.land.rhs53_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs53

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %land.rhs53.cleanup_crit_edge, %while.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %while.cond43.preheader.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.then15, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !44, !45, !47, !48, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_i2c_owl__288_526_owl_i2c_driver_init6, !1, !"__initcall__kmod_i2c_owl__288_526_owl_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 526, i32 1}
!2 = !{ptr @__exitcall_owl_i2c_driver_exit, !1, !"__exitcall_owl_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 528, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 529, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 530, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 531, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 521, i32 11}
!14 = !{ptr @owl_i2c_driver, !15, !"owl_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 518, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 453, i32 41}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 460, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @owl_i2c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @owl_i2c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 466, i32 3}
!28 = !{ptr @owl_i2c_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @owl_i2c_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 476, i32 3}
!32 = !{ptr @owl_i2c_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @owl_i2c_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @owl_i2c_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 482, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 490, i32 4}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 490, i32 10}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 498, i32 3}
!43 = !{ptr @owl_i2c_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @owl_i2c_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @init_completion.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../include/linux/completion.h", i32 87, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @owl_i2c_algorithm, !49, !"owl_i2c_algorithm", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 421, i32 35}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 385, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @owl_i2c_xfer_common._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @owl_i2c_xfer_common._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 150, i32 3}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @owl_i2c_reset_fifo._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @owl_i2c_reset_fifo._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 243, i32 4}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @owl_i2c_check_bus_busy._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @owl_i2c_check_bus_busy._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @owl_i2c_quirks, !66, !"owl_i2c_quirks", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 427, i32 40}
!67 = !{ptr @owl_i2c_of_match, !68, !"owl_i2c_of_match", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-owl.c", i32 510, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 6874722}
!79 = !{i64 2155620507}
!80 = !{i64 2155620710}
!81 = !{i64 6874304}
!82 = !{i64 2155622570}
!83 = !{i64 2155625544}
!84 = !{i64 2155623428}
!85 = !{i64 2155630690}
!86 = !{i64 2155633897}
!87 = !{i64 2155634287}
!88 = !{i64 2155635422}
!89 = !{i64 2155635844}
!90 = !{i64 2155636315}
!91 = !{i64 2155636737}
!92 = !{i64 2155637440}
!93 = !{i64 2155637758}
!94 = !{i64 2155638383}
!95 = !{i64 2155640941}
!96 = !{i64 2155641447}
!97 = !{i64 2155626276}
!98 = !{i64 2155626962}
!99 = !{i64 2155628250}
!100 = !{i64 2155627655}
!101 = !{i64 2155629096}
!102 = !{i64 2155628763}
