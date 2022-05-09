; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-bcm2835.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-bcm2835.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bcm2835_i2c_dev = type { ptr, ptr, i32, %struct.i2c_adapter, %struct.completion, ptr, ptr, i32, i32, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_bcm2835_i2c = type { %struct.clk_hw, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_bcm2835__293_525_bcm2835_i2c_driver_init6 = internal global ptr @bcm2835_i2c_driver_init, section ".initcall6.init", align 4
@bcm2835_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm2835_i2c_probe, ptr @bcm2835_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm2835_i2c_driver_exit = internal global ptr @bcm2835_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [58 x i8] c"i2c_bcm2835.author=Stephen Warren <swarren@wwwdotorg.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [48 x i8] c"i2c_bcm2835.description=BCM2835 I2C bus adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [48 x i8] c"i2c_bcm2835.file=drivers/i2c/busses/i2c-bcm2835\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [27 x i8] c"i2c_bcm2835.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias298 = internal constant [39 x i8] c"i2c_bcm2835.alias=platform:i2c-bcm2835\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c-bcm2835\00", [20 x i8] zeroinitializer }, align 32
@bcm2835_i2c_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm2835_i2c_quirks }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Could not get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm2835_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 436, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not register clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bcm2835_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/busses/i2c-bcm2835.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835_i2c_probe._entry_ptr = internal global ptr @bcm2835_i2c_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@bcm2835_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 444, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Could not read clock-frequency property\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm2835_i2c_probe._entry_ptr.11 = internal global ptr @bcm2835_i2c_probe._entry.8, section ".printk_index", align 4
@bcm2835_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 450, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not set clock frequency\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm2835_i2c_probe._entry_ptr.14 = internal global ptr @bcm2835_i2c_probe._entry.12, section ".printk_index", align 4
@bcm2835_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 456, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Couldn't prepare clock\00", [41 x i8] zeroinitializer }, align 32
@bcm2835_i2c_probe._entry_ptr.17 = internal global ptr @bcm2835_i2c_probe._entry.15, section ".printk_index", align 4
@bcm2835_i2c_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 467, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Could not request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm2835_i2c_probe._entry_ptr.20 = internal global ptr @bcm2835_i2c_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm2835 (%s)\00", [19 x i8] zeroinitializer }, align 32
@bcm2835_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @bcm2835_i2c_xfer, ptr null, ptr null, ptr null, ptr @bcm2835_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s_div\00", [25 x i8] zeroinitializer }, align 32
@clk_bcm2835_i2c_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_bcm2835_i2c_recalc_rate, ptr @clk_bcm2835_i2c_round_rate, ptr null, ptr null, ptr null, ptr @clk_bcm2835_i2c_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"div\00", [28 x i8] zeroinitializer }, align 32
@bcm2835_i2c_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 295, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Got unexpected interrupt (from firmware?)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bcm2835_i2c_isr\00", [16 x i8] zeroinitializer }, align 32
@bcm2835_i2c_isr._entry_ptr = internal global ptr @bcm2835_i2c_isr._entry, section ".printk_index", align 4
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@bcm2835_i2c_xfer.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@bcm2835_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 355, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"only one read message supported, has to be last\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bcm2835_i2c_xfer\00", [47 x i8] zeroinitializer }, align 32
@bcm2835_i2c_xfer._entry_ptr = internal global ptr @bcm2835_i2c_xfer._entry, section ".printk_index", align 4
@bcm2835_i2c_xfer._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.4, i32 373, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"i2c transfer timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@bcm2835_i2c_xfer._entry_ptr.32 = internal global ptr @bcm2835_i2c_xfer._entry.30, section ".printk_index", align 4
@bcm2835_i2c_xfer.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.33, ptr @.str.29, ptr @.str.4, ptr @.str.34, i8 0, i8 95, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"i2c_bcm2835\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"i2c transfer failed: %x\0A\00", [39 x i8] zeroinitializer }, align 32
@bcm2835_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 16, i32 0, i16 0, i16 0, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"bcm2835_i2c_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 517, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 521, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"bcm2835_i2c_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 510, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 431, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 436, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 440, i32 48 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 443, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 450, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 456, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 467, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 475, i32 43 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"bcm2835_i2c_algo\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 393, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 87, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 172, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"clk_bcm2835_i2c_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 157, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 189, i32 36 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 295, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 261, i32 30 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 354, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 373, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 380, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"bcm2835_i2c_quirks\00", align 1
@___asan_gen_.150 = private constant [36 x i8] c"../drivers/i2c/busses/i2c-bcm2835.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 403, i32 40 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias298, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_bcm2835_i2c_driver_exit, ptr @__initcall__kmod_i2c_bcm2835__293_525_bcm2835_i2c_driver_init6, ptr @bcm2835_i2c_driver_exit, ptr @bcm2835_i2c_isr._entry, ptr @bcm2835_i2c_isr._entry_ptr, ptr @bcm2835_i2c_probe._entry, ptr @bcm2835_i2c_probe._entry.12, ptr @bcm2835_i2c_probe._entry.15, ptr @bcm2835_i2c_probe._entry.18, ptr @bcm2835_i2c_probe._entry.8, ptr @bcm2835_i2c_probe._entry_ptr, ptr @bcm2835_i2c_probe._entry_ptr.11, ptr @bcm2835_i2c_probe._entry_ptr.14, ptr @bcm2835_i2c_probe._entry_ptr.17, ptr @bcm2835_i2c_probe._entry_ptr.20, ptr @bcm2835_i2c_xfer._entry, ptr @bcm2835_i2c_xfer._entry.30, ptr @bcm2835_i2c_xfer._entry_ptr, ptr @bcm2835_i2c_xfer._entry_ptr.32, ptr @bcm2835_i2c_driver, ptr @.str, ptr @bcm2835_i2c_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @bcm2835_i2c_algo, ptr @init_completion.__key, ptr @.str.22, ptr @.str.23, ptr @clk_bcm2835_i2c_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @bcm2835_i2c_quirks], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2c_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2c_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_bcm2835_i2c_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2c_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2c_xfer._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_i2c_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %name.i = alloca [32 x i8], align 1
  %.compoundliteral.i = alloca [1 x ptr], align 4
  %bus_clk_rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_clk_rate) #9
  %0 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bus_clk_rate, align 4, !annotation !92
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1456, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 8
  %completion = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #9
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #9
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call3) #9
  %regs = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %cmp.i154 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %call13 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %6, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #9
  %7 = getelementptr inbounds i8, ptr %init.i, i32 12
  %8 = call ptr @memset(ptr %7, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i) #9
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %9 = call ptr @memset(ptr %name.i, i32 255, i32 32)
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end19.dev_name.exit.i_crit_edge

if.end19.dev_name.exit.i_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end19.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.end19.dev_name.exit.i_crit_edge ]
  %call1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 32, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i.i) #9
  %call2.i = tail call ptr @__clk_get_name(ptr noundef %call13) #9
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %14 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @clk_bcm2835_i2c_ops, ptr %ops.i, align 4
  %15 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %name.i, ptr %init.i, align 4
  %16 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call2.i, ptr %.compoundliteral.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %17 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %.compoundliteral.i, ptr %parent_names.i, align 4
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %18 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %num_parents.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flags.i, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #9
  %cmp.i155 = icmp eq ptr %call.i.i, null
  br i1 %cmp.i155, label %bcm2835_i2c_register_div.exit.thread, label %if.end.i

bcm2835_i2c_register_div.exit.thread:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  %bus_clk170 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 6
  %20 = ptrtoint ptr %bus_clk170 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -12 to ptr), ptr %bus_clk170, align 4
  br label %do.end

if.end.i:                                         ; preds = %dev_name.exit.i
  %init8.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %init8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %init.i, ptr %init8.i, align 4
  %i2c_dev9.i = getelementptr inbounds %struct.clk_bcm2835_i2c, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %i2c_dev9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %i2c_dev9.i, align 4
  %23 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i26.i = icmp eq ptr %24, null
  br i1 %tobool.not.i26.i, label %if.end.i27.i, label %if.end.i.bcm2835_i2c_register_div.exit_crit_edge

if.end.i.bcm2835_i2c_register_div.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_i2c_register_div.exit

if.end.i27.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  br label %bcm2835_i2c_register_div.exit

bcm2835_i2c_register_div.exit:                    ; preds = %if.end.i27.i, %if.end.i.bcm2835_i2c_register_div.exit_crit_edge
  %retval.0.i28.i = phi ptr [ %26, %if.end.i27.i ], [ %24, %if.end.i.bcm2835_i2c_register_div.exit_crit_edge ]
  %call12.i = call i32 @clk_hw_register_clkdev(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.24, ptr noundef %retval.0.i28.i) #9
  %call14.i = call ptr @devm_clk_register(ptr noundef %dev, ptr noundef nonnull %call.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  %bus_clk = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %bus_clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call14.i, ptr %bus_clk, align 4
  %cmp.i156 = icmp ugt ptr %call14.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %bcm2835_i2c_register_div.exit.do.end_crit_edge, label %if.end28

bcm2835_i2c_register_div.exit.do.end_crit_edge:   ; preds = %bcm2835_i2c_register_div.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %bcm2835_i2c_register_div.exit.do.end_crit_edge, %bcm2835_i2c_register_div.exit.thread
  %bus_clk172 = phi ptr [ %bus_clk170, %bcm2835_i2c_register_div.exit.thread ], [ %bus_clk, %bcm2835_i2c_register_div.exit.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  %28 = ptrtoint ptr %bus_clk172 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bus_clk172, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %cleanup

if.end28:                                         ; preds = %bcm2835_i2c_register_div.exit
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %31 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_node, align 8
  %call.i.i157 = call i32 @of_property_read_variable_u32_array(ptr noundef %32, ptr noundef nonnull @.str.7, ptr noundef nonnull %bus_clk_rate, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i157)
  %cmp = icmp slt i32 %call.i.i157, 0
  br i1 %cmp, label %do.end34, label %if.end28.if.end36_crit_edge

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.9) #12
  %33 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 100000, ptr %bus_clk_rate, align 4
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %if.end28.if.end36_crit_edge
  %34 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bus_clk, align 4
  %36 = ptrtoint ptr %bus_clk_rate to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bus_clk_rate, align 4
  %call38 = call i32 @clk_set_rate_exclusive(ptr noundef %35, i32 noundef %37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  %38 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bus_clk, align 4
  %call.i158 = call i32 @clk_prepare(ptr noundef %39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool.not.i = icmp eq i32 %call.i158, 0
  br i1 %tobool.not.i, label %if.end.i160, label %if.end45.do.end52_crit_edge

if.end45.do.end52_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end52

if.end.i160:                                      ; preds = %if.end45
  %call1.i159 = call i32 @clk_enable(ptr noundef %39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i159)
  %tobool2.not.i = icmp eq i32 %call1.i159, 0
  br i1 %tobool2.not.i, label %if.end54, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %39) #9
  br label %do.end52

do.end52:                                         ; preds = %if.then3.i, %if.end45.do.end52_crit_edge
  %retval.0.i161.ph = phi i32 [ %call1.i159, %if.then3.i ], [ %call.i158, %if.end45.do.end52_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #12
  br label %cleanup

if.end54:                                         ; preds = %if.end.i160
  %call55 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 2
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call55, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp57 = icmp slt i32 %call55, 0
  br i1 %cmp57, label %if.end54.cleanup_crit_edge, label %if.end60

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end60:                                         ; preds = %if.end54
  %41 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i162 = icmp eq ptr %42, null
  br i1 %tobool.not.i162, label %if.end.i163, label %if.end60.dev_name.exit_crit_edge

if.end60.dev_name.exit_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i163:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i163, %if.end60.dev_name.exit_crit_edge
  %retval.0.i164 = phi ptr [ %44, %if.end.i163 ], [ %42, %if.end60.dev_name.exit_crit_edge ]
  %call.i165 = call i32 @request_threaded_irq(i32 noundef %call55, ptr noundef nonnull @bcm2835_i2c_isr, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i164, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %tobool65.not = icmp eq i32 %call.i165, 0
  br i1 %tobool65.not, label %if.end71, label %do.end69

do.end69:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end71:                                         ; preds = %dev_name.exit
  %adapter = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 3
  %driver_data.i.i166 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 3, i32 9, i32 8
  %45 = ptrtoint ptr %driver_data.i.i166 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %driver_data.i.i166, align 4
  %46 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 256, ptr %class, align 4
  %name = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 3, i32 12
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %tobool.not.i167 = icmp eq ptr %49, null
  br i1 %tobool.not.i167, label %if.end71.of_node_full_name.exit_crit_edge, label %cond.true.i

if.end71.of_node_full_name.exit_crit_edge:        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %if.end71.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %51, %cond.true.i ], [ @.str.27, %if.end71.of_node_full_name.exit_crit_edge ]
  %call75 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.21, ptr noundef %cond.i)
  %algo = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @bcm2835_i2c_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 3, i32 9, i32 1
  %53 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev, ptr %parent, align 8
  %54 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node, align 8
  %of_node81 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 3, i32 9, i32 27
  %56 = ptrtoint ptr %of_node81 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %of_node81, align 8
  %call83 = call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %quirks = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %call.i, i32 0, i32 3, i32 17
  %57 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call83, ptr %quirks, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  call void @arm_heavy_mb() #9
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %59, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  call void @arm_heavy_mb() #9
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 0) #9, !srcloc !94
  %call84 = call i32 @i2c_add_adapter(ptr noundef %adapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %of_node_full_name.exit.cleanup_crit_edge, label %if.then86

of_node_full_name.exit.cleanup_crit_edge:         ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then86:                                        ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq, align 8
  %call88 = call ptr @free_irq(i32 noundef %63, ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %of_node_full_name.exit.cleanup_crit_edge, %do.end69, %if.end54.cleanup_crit_edge, %do.end52, %do.end43, %do.end, %if.then15, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then8 ], [ %call18, %if.then15 ], [ %30, %do.end ], [ %call38, %do.end43 ], [ %retval.0.i161.ph, %do.end52 ], [ -19, %do.end69 ], [ -12, %entry.cleanup_crit_edge ], [ %call55, %if.end54.cleanup_crit_edge ], [ %call84, %if.then86 ], [ 0, %of_node_full_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_clk_rate) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bus_clk = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_rate_exclusive_put(ptr noundef %3) #9
  %4 = ptrtoint ptr %bus_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %irq = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 8
  %call2 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #9
  %adapter = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 3
  tail call void @i2c_del_adapter(ptr noundef %adapter) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate_exclusive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_i2c_isr(i32 noundef %this_irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !95
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %and = and i32 %3, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.complete_crit_edge

entry.complete_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %complete

if.end:                                           ; preds = %entry
  %and1 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end21, label %if.then3

if.then3:                                         ; preds = %if.end
  %curr_msg = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curr_msg, align 8
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %do.end, label %if.else

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.25) #12
  br label %if.end12

if.else:                                          ; preds = %if.then3
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool8.not = icmp eq i16 %10, 0
  br i1 %tobool8.not, label %if.else.if.end12_crit_edge, label %if.then9

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.else
  %msg_buf_remaining.i = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %data, i32 0, i32 10
  %11 = ptrtoint ptr %msg_buf_remaining.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_buf_remaining.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not12.i = icmp eq i32 %12, 0
  br i1 %tobool.not12.i, label %if.then9.bcm2835_drain_rxfifo.exit_crit_edge, label %while.body.lr.ph.i

if.then9.bcm2835_drain_rxfifo.exit_crit_edge:     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_drain_rxfifo.exit

while.body.lr.ph.i:                               ; preds = %if.then9
  %msg_buf.i = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %data, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %16 = and i32 %15, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool1.not.i = icmp eq i32 %16, 0
  br i1 %tobool1.not.i, label %while.body.i.bcm2835_drain_rxfifo.exit_crit_edge, label %if.end.i

while.body.i.bcm2835_drain_rxfifo.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_drain_rxfifo.exit

if.end.i:                                         ; preds = %while.body.i
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %18, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #9, !srcloc !95
  %20 = lshr i32 %19, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %conv.i = trunc i32 %20 to i8
  %21 = ptrtoint ptr %msg_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msg_buf.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i, ptr %22, align 1
  %24 = load ptr, ptr %msg_buf.i, align 8
  %incdec.ptr.i = getelementptr i8, ptr %24, i32 1
  store ptr %incdec.ptr.i, ptr %msg_buf.i, align 8
  %25 = ptrtoint ptr %msg_buf_remaining.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %msg_buf_remaining.i, align 4
  %dec.i = add i32 %26, -1
  store i32 %dec.i, ptr %msg_buf_remaining.i, align 4
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i.bcm2835_drain_rxfifo.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.bcm2835_drain_rxfifo.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_drain_rxfifo.exit

bcm2835_drain_rxfifo.exit:                        ; preds = %if.end.i.bcm2835_drain_rxfifo.exit_crit_edge, %while.body.i.bcm2835_drain_rxfifo.exit_crit_edge, %if.then9.bcm2835_drain_rxfifo.exit_crit_edge
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i79) #9, !srcloc !95
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  br label %if.end12

if.end12:                                         ; preds = %bcm2835_drain_rxfifo.exit, %if.else.if.end12_crit_edge, %do.end
  %val.0 = phi i32 [ %30, %bcm2835_drain_rxfifo.exit ], [ %3, %if.else.if.end12_crit_edge ], [ %3, %do.end ]
  %and13 = and i32 %val.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %if.end12.complete_crit_edge

if.end12.complete_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %complete

lor.lhs.false:                                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %msg_buf_remaining = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %data, i32 0, i32 10
  %31 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %msg_buf_remaining, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool15.not = icmp eq i32 %32, 0
  %spec.select = select i1 %tobool15.not, i32 0, i32 1024
  br label %complete

if.end21:                                         ; preds = %if.end
  %and22 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end36, label %if.then24

if.then24:                                        ; preds = %if.end21
  %msg_buf_remaining25 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %data, i32 0, i32 10
  %33 = ptrtoint ptr %msg_buf_remaining25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %msg_buf_remaining25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool26.not = icmp eq i32 %34, 0
  br i1 %tobool26.not, label %if.then27, label %while.body.lr.ph.i83

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %or = or i32 %3, 1024
  br label %complete

while.body.lr.ph.i83:                             ; preds = %if.then24
  %msg_buf.i82 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %data, i32 0, i32 9
  br label %while.body.i86

while.body.i86:                                   ; preds = %if.end.i91.while.body.i86_crit_edge, %while.body.lr.ph.i83
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i84 = getelementptr i8, ptr %36, i32 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i84) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %38 = and i32 %37, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool1.not.i85 = icmp eq i32 %38, 0
  br i1 %tobool1.not.i85, label %while.body.i86.bcm2835_fill_txfifo.exit_crit_edge, label %if.end.i91

while.body.i86.bcm2835_fill_txfifo.exit_crit_edge: ; preds = %while.body.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_fill_txfifo.exit

if.end.i91:                                       ; preds = %while.body.i86
  %39 = ptrtoint ptr %msg_buf.i82 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %msg_buf.i82, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %conv.i87 = zext i8 %42 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %43 = shl nuw i32 %conv.i87, 24
  %44 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %45, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %43) #9, !srcloc !94
  %46 = ptrtoint ptr %msg_buf.i82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %msg_buf.i82, align 8
  %incdec.ptr.i88 = getelementptr i8, ptr %47, i32 1
  store ptr %incdec.ptr.i88, ptr %msg_buf.i82, align 8
  %48 = ptrtoint ptr %msg_buf_remaining25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_buf_remaining25, align 4
  %dec.i89 = add i32 %49, -1
  store i32 %dec.i89, ptr %msg_buf_remaining25, align 4
  %tobool.not.i90 = icmp eq i32 %dec.i89, 0
  br i1 %tobool.not.i90, label %if.end.i91.bcm2835_fill_txfifo.exit_crit_edge, label %if.end.i91.while.body.i86_crit_edge

if.end.i91.while.body.i86_crit_edge:              ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i86

if.end.i91.bcm2835_fill_txfifo.exit_crit_edge:    ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %bcm2835_fill_txfifo.exit

bcm2835_fill_txfifo.exit:                         ; preds = %if.end.i91.bcm2835_fill_txfifo.exit_crit_edge, %while.body.i86.bcm2835_fill_txfifo.exit_crit_edge
  %num_msgs = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %data, i32 0, i32 7
  %50 = ptrtoint ptr %num_msgs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_msgs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool30.not = icmp eq i32 %51, 0
  br i1 %tobool30.not, label %bcm2835_fill_txfifo.exit.cleanup_crit_edge, label %land.lhs.true

bcm2835_fill_txfifo.exit.cleanup_crit_edge:       ; preds = %bcm2835_fill_txfifo.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %bcm2835_fill_txfifo.exit
  %52 = ptrtoint ptr %msg_buf_remaining25 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %msg_buf_remaining25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool32.not = icmp eq i32 %53, 0
  br i1 %tobool32.not, label %if.then33, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %curr_msg34 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %data, i32 0, i32 5
  %54 = ptrtoint ptr %curr_msg34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %curr_msg34, align 8
  %incdec.ptr = getelementptr %struct.i2c_msg, ptr %55, i32 1
  store ptr %incdec.ptr, ptr %curr_msg34, align 8
  tail call fastcc void @bcm2835_i2c_start_transfer(ptr noundef %data)
  br label %cleanup

if.end36:                                         ; preds = %if.end21
  %and37 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %if.then39

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then39:                                        ; preds = %if.end36
  %msg_buf_remaining40 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %data, i32 0, i32 10
  %56 = ptrtoint ptr %msg_buf_remaining40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %msg_buf_remaining40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool41.not = icmp eq i32 %57, 0
  br i1 %tobool41.not, label %if.then42, label %while.body.lr.ph.i96

if.then42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #11
  %or43 = or i32 %3, 1024
  br label %complete

while.body.lr.ph.i96:                             ; preds = %if.then39
  %msg_buf.i95 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %data, i32 0, i32 9
  br label %while.body.i99

while.body.i99:                                   ; preds = %if.end.i105.while.body.i99_crit_edge, %while.body.lr.ph.i96
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %59, i32 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i97) #9, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %61 = and i32 %60, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool1.not.i98 = icmp eq i32 %61, 0
  br i1 %tobool1.not.i98, label %while.body.i99.cleanup_crit_edge, label %if.end.i105

while.body.i99.cleanup_crit_edge:                 ; preds = %while.body.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i105:                                      ; preds = %while.body.i99
  %62 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i, align 4
  %add.ptr.i11.i100 = getelementptr i8, ptr %63, i32 16
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i100) #9, !srcloc !95
  %65 = lshr i32 %64, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %conv.i101 = trunc i32 %65 to i8
  %66 = ptrtoint ptr %msg_buf.i95 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %msg_buf.i95, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv.i101, ptr %67, align 1
  %69 = load ptr, ptr %msg_buf.i95, align 8
  %incdec.ptr.i102 = getelementptr i8, ptr %69, i32 1
  store ptr %incdec.ptr.i102, ptr %msg_buf.i95, align 8
  %70 = ptrtoint ptr %msg_buf_remaining40 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %msg_buf_remaining40, align 4
  %dec.i103 = add i32 %71, -1
  store i32 %dec.i103, ptr %msg_buf_remaining40, align 4
  %tobool.not.i104 = icmp eq i32 %dec.i103, 0
  br i1 %tobool.not.i104, label %if.end.i105.cleanup_crit_edge, label %if.end.i105.while.body.i99_crit_edge

if.end.i105.while.body.i99_crit_edge:             ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i99

if.end.i105.cleanup_crit_edge:                    ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

complete:                                         ; preds = %if.then42, %if.then27, %lor.lhs.false, %if.end12.complete_crit_edge, %entry.complete_crit_edge
  %.sink = phi i32 [ %or43, %if.then42 ], [ %or, %if.then27 ], [ %and, %entry.complete_crit_edge ], [ 1024, %if.end12.complete_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %msg_err17 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %data, i32 0, i32 8
  %72 = ptrtoint ptr %msg_err17 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %.sink, ptr %msg_err17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 268435456) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %75 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %76, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 33751040) #9, !srcloc !94
  %completion = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %data, i32 0, i32 4
  tail call void @complete(ptr noundef %completion) #9
  br label %cleanup

cleanup:                                          ; preds = %complete, %if.end.i105.cleanup_crit_edge, %while.body.i99.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then33, %land.lhs.true.cleanup_crit_edge, %bcm2835_fill_txfifo.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %complete ], [ 1, %if.then33 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %bcm2835_fill_txfifo.exit.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ], [ 1, %while.body.i99.cleanup_crit_edge ], [ 1, %if.end.i105.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_bcm2835_i2c_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_dev = getelementptr inbounds %struct.clk_bcm2835_i2c, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c_dev, align 4
  %regs.i = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !95
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %add = add i32 %parent_rate, -1
  %sub = add i32 %add, %5
  %div1 = udiv i32 %sub, %5
  ret i32 %div1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_bcm2835_i2c_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %add.i = add i32 %1, -1
  %sub.i = add i32 %add.i, %rate
  %div.i = udiv i32 %sub.i, %rate
  %and.i = and i32 %div.i, 1
  %spec.select.i = add i32 %and.i, %div.i
  %2 = add i32 %spec.select.i, -65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65533, i32 %2)
  %3 = icmp ult i32 %2, -65533
  %retval.0.i = select i1 %3, i32 -22, i32 %spec.select.i
  %sub = add i32 %add.i, %retval.0.i
  %div = udiv i32 %sub, %retval.0.i
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_bcm2835_i2c_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.i = add i32 %rate, -1
  %sub.i = add i32 %add.i, %parent_rate
  %div.i = udiv i32 %sub.i, %rate
  %and.i = and i32 %div.i, 1
  %spec.select.i = add i32 %and.i, %div.i
  %0 = add i32 %spec.select.i, -65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65533, i32 %0)
  %1 = icmp ult i32 %0, -65533
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_dev = getelementptr inbounds %struct.clk_bcm2835_i2c, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c_dev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %4 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #9
  %regs.i = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !94
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %spec.select.i)
  %cmp3 = icmp ugt i32 %spec.select.i, 31
  %7 = shl nuw nsw i32 %spec.select.i, 12
  %phi.bo = and i32 %7, -65536
  %cond = select i1 %cmp3, i32 %phi.bo, i32 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %spec.select.i)
  %cmp6 = icmp ugt i32 %spec.select.i, 7
  %div425 = lshr i32 %spec.select.i, 2
  %cond10 = select i1 %cmp6, i32 %div425, i32 1
  %8 = ptrtoint ptr %i2c_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c_dev, align 4
  %or = or i32 %cond, %cond10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  %regs.i26 = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %regs.i26 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %10) #9, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835_i2c_start_transfer(ptr nocapture noundef %i2c_dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_msgs = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %i2c_dev, i32 0, i32 7
  %0 = ptrtoint ptr %num_msgs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_msgs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %curr_msg = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %i2c_dev, i32 0, i32 5
  %2 = ptrtoint ptr %curr_msg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %curr_msg, align 8
  %dec = add i32 %1, -1
  %4 = ptrtoint ptr %num_msgs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dec, ptr %num_msgs, align 8
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  %msg_buf = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %i2c_dev, i32 0, i32 9
  %7 = ptrtoint ptr %msg_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %msg_buf, align 8
  %len = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %len, align 4
  %conv = zext i16 %9 to i32
  %msg_buf_remaining = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %i2c_dev, i32 0, i32 10
  %10 = ptrtoint ptr %msg_buf_remaining to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %msg_buf_remaining, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 2
  %13 = and i16 %12, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool4.not = icmp eq i16 %13, 0
  %. = select i1 %tobool4.not, i32 33408, i32 33921
  %or10 = or i32 %., 256
  %c.1 = select i1 %cmp, i32 %or10, i32 %.
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %3, align 4
  %conv12 = zext i16 %15 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv12) #9
  %regs.i = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %i2c_dev, i32 0, i32 1
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #9, !srcloc !94
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %len, align 4
  %conv14 = zext i16 %20 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv14) #9
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %21) #9, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %24 = tail call i32 @llvm.bswap.i32(i32 %c.1) #9
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #9, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %sub = add i32 %num, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp58 = icmp sgt i32 %sub, 0
  br i1 %cmp58, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, %sub
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.059, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %for.cond, label %do.body

do.body:                                          ; preds = %for.body
  %.b56 = load i1, ptr @bcm2835_i2c_xfer.__print_once, align 1
  br i1 %.b56, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @bcm2835_i2c_xfer.__print_once, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.28) #12
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %curr_msg = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %msgs, ptr %curr_msg, align 8
  %num_msgs = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %num_msgs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %num, ptr %num_msgs, align 8
  %completion = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %completion, align 4
  tail call fastcc void @bcm2835_i2c_start_transfer(ptr noundef %1)
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 7
  %10 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timeout, align 4
  %call8 = tail call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef %11) #9
  %12 = ptrtoint ptr %curr_msg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %curr_msg, align 8
  %13 = ptrtoint ptr %num_msgs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %num_msgs, align 8
  %msg_buf.i = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %msg_buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %msg_buf.i, align 8
  %msg_buf_remaining.i = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 10
  %15 = ptrtoint ptr %msg_buf_remaining.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %msg_buf_remaining.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end15

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  tail call void @arm_heavy_mb() #9
  %regs.i = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 268435456) #9, !srcloc !94
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.31) #12
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %msg_err = getelementptr inbounds %struct.bcm2835_i2c_dev, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool16.not = icmp eq i32 %21, 0
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %do.body19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body19:                                        ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835_i2c_xfer.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835_i2c_xfer, %do.end30)) #9
          to label %if.then25 [label %do.end30], !srcloc !97

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %24 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_err, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835_i2c_xfer.__UNIQUE_ID_ddebug292, ptr noundef %23, ptr noundef nonnull @.str.34, i32 noundef %25) #9
  br label %do.end30

do.end30:                                         ; preds = %if.then25, %do.body19
  %26 = ptrtoint ptr %msg_err to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %msg_err, align 4
  %and32 = and i32 %27, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %. = select i1 %tobool33.not, i32 -5, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end15.cleanup_crit_edge, %if.then10, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then10 ], [ -95, %if.then2 ], [ -95, %do.body.cleanup_crit_edge ], [ %num, %if.end15.cleanup_crit_edge ], [ %., %do.end30 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bcm2835_i2c_func(ptr nocapture noundef readnone %adap) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !52, !54, !56, !58, !59, !60, !61, !63, !65, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_i2c_bcm2835__293_525_bcm2835_i2c_driver_init6, !1, !"__initcall__kmod_i2c_bcm2835__293_525_bcm2835_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 525, i32 1}
!2 = !{ptr @__exitcall_bcm2835_i2c_driver_exit, !1, !"__exitcall_bcm2835_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 527, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 528, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 529, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias298, !11, !"__UNIQUE_ID_alias298", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 530, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 521, i32 11}
!14 = !{ptr @bcm2835_i2c_driver, !15, !"bcm2835_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 517, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 431, i32 10}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 436, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @bcm2835_i2c_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @bcm2835_i2c_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 440, i32 48}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 443, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @bcm2835_i2c_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @bcm2835_i2c_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 450, i32 3}
!35 = !{ptr @bcm2835_i2c_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @bcm2835_i2c_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 456, i32 3}
!39 = !{ptr @bcm2835_i2c_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @bcm2835_i2c_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 467, i32 3}
!43 = !{ptr @bcm2835_i2c_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bcm2835_i2c_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 475, i32 43}
!47 = !{ptr @init_completion.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/linux/completion.h", i32 87, i32 2}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 172, i32 31}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 189, i32 36}
!54 = !{ptr @clk_bcm2835_i2c_ops, !55, !"clk_bcm2835_i2c_ops", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 157, i32 29}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 295, i32 4}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @bcm2835_i2c_isr._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @bcm2835_i2c_isr._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/of.h", i32 261, i32 30}
!63 = !{ptr @bcm2835_i2c_algo, !64, !"bcm2835_i2c_algo", i1 false, i1 false}
!64 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 393, i32 35}
!65 = distinct !{null, !66, !"__print_once", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 354, i32 4}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @bcm2835_i2c_xfer._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @bcm2835_i2c_xfer._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 373, i32 3}
!73 = !{ptr @bcm2835_i2c_xfer._entry.30, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @bcm2835_i2c_xfer._entry_ptr.32, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 380, i32 2}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @bcm2835_i2c_xfer.__UNIQUE_ID_ddebug292, !76, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!79 = !{ptr @bcm2835_i2c_of_match, !80, !"bcm2835_i2c_of_match", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 510, i32 34}
!81 = !{ptr @bcm2835_i2c_quirks, !82, !"bcm2835_i2c_quirks", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-bcm2835.c", i32 403, i32 40}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{i64 2155666780}
!94 = !{i64 6928384}
!95 = !{i64 6928802}
!96 = !{i64 2155667620}
!97 = !{i64 2148733930, i64 2148733935, i64 2148733948, i64 2148733992, i64 2148734026, i64 2148734047}
