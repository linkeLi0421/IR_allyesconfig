; ModuleID = '/llk/IR_all_yes/drivers/media/rc/sunxi-cir.c_pt.bc'
source_filename = "../drivers/media/rc/sunxi-cir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.sunxi_ir_quirks = type { i8, i32 }
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
%struct.sunxi_ir = type { ptr, ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ir_raw_event = type { %union.anon.73, i8, i8 }
%union.anon.73 = type { i32 }

@__initcall__kmod_sunxi_cir__234_425_sunxi_ir_driver_init6 = internal global ptr @sunxi_ir_driver_init, section ".initcall6.init", align 4
@sunxi_ir_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sunxi_ir_probe, ptr @sunxi_ir_remove, ptr @sunxi_ir_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_ir_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_ir_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sunxi_ir_driver_exit = internal global ptr @sunxi_ir_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description235 = internal constant [59 x i8] c"sunxi_cir.description=Allwinner sunXi IR controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [62 x i8] c"sunxi_cir.author=Alexsey Shestacov <wingrime@linux-sunxi.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [42 x i8] c"sunxi_cir.file=drivers/media/rc/sunxi-cir\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [22 x i8] c"sunxi_cir.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sunxi-ir\00", [23 x i8] zeroinitializer }, align 32
@sunxi_ir_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-ir\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_ir_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-ir\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_ir_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-ir\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_ir_quirks }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@sunxi_ir_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sunxi_ir_suspend, ptr @sunxi_ir_resume, ptr @sunxi_ir_suspend, ptr @sunxi_ir_resume, ptr @sunxi_ir_suspend, ptr @sunxi_ir_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 267, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to determine the quirks to use\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sunxi_ir_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/media/rc/sunxi-cir.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry_ptr = internal global ptr @sunxi_ir_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 276, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get a apb clock.\0A\00", [36 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry_ptr.9 = internal global ptr @sunxi_ir_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ir\00", [29 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get a ir clock.\0A\00", [37 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry_ptr.13 = internal global ptr @sunxi_ir_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set ir base clock failed!\0A\00", [37 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry_ptr.17 = internal global ptr @sunxi_ir_probe._entry.15, section ".printk_index", align 4
@sunxi_ir_probe.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sunxi_cir\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"set base clock frequency to %d Hz.\0A\00", [60 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 310, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to allocate device\0A\00", [37 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry_ptr.22 = internal global ptr @sunxi_ir_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sunxi-ir/input0\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linux,rc-map-name\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register rc device\0A\00", [34 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry_ptr.28 = internal global ptr @sunxi_ir_probe._entry.26, section ".printk_index", align 4
@sunxi_ir_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed request irq\0A\00", [44 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry_ptr.31 = internal global ptr @sunxi_ir_probe._entry.29, section ".printk_index", align 4
@sunxi_ir_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 358, ptr @.str.34, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"initialized sunXi IR driver\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sunxi_ir_probe._entry_ptr.35 = internal global ptr @sunxi_ir_probe._entry.32, section ".printk_index", align 4
@sunxi_ir_set_timeout.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sunxi_ir_set_timeout\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"setting idle threshold to %u\0A\00", [34 x i8] zeroinitializer }, align 32
@sunxi_ir_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to enable apb clk\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sunxi_ir_hw_init\00", [47 x i8] zeroinitializer }, align 32
@sunxi_ir_hw_init._entry_ptr = internal global ptr @sunxi_ir_hw_init._entry, section ".printk_index", align 4
@sunxi_ir_hw_init._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to enable ir clk\0A\00", [39 x i8] zeroinitializer }, align 32
@sunxi_ir_hw_init._entry_ptr.42 = internal global ptr @sunxi_ir_hw_init._entry.40, section ".printk_index", align 4
@sun4i_a10_ir_quirks = internal constant { %struct.sunxi_ir_quirks, [24 x i8] } { %struct.sunxi_ir_quirks { i8 0, i32 16 }, [24 x i8] zeroinitializer }, align 32
@sun5i_a13_ir_quirks = internal constant { %struct.sunxi_ir_quirks, [24 x i8] } { %struct.sunxi_ir_quirks { i8 0, i32 64 }, [24 x i8] zeroinitializer }, align 32
@sun6i_a31_ir_quirks = internal constant { %struct.sunxi_ir_quirks, [24 x i8] } { %struct.sunxi_ir_quirks { i8 1, i32 64 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"sunxi_ir_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 414, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 419, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"sunxi_ir_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 397, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"sunxi_ir_pm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 249, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 267, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 274, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 276, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 279, i32 30 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 281, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 286, i32 27 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 297, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 300, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 310, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 316, i32 23 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 321, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 322, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 335, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 350, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 358, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 161, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 184, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 190, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c"sun4i_a10_ir_quirks\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 382, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant [20 x i8] c"sun5i_a13_ir_quirks\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 387, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"sun6i_a31_ir_quirks\00", align 1
@___asan_gen_.170 = private constant [32 x i8] c"../drivers/media/rc/sunxi-cir.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 392, i32 37 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_sunxi_ir_driver_exit, ptr @__initcall__kmod_sunxi_cir__234_425_sunxi_ir_driver_init6, ptr @sunxi_ir_driver_exit, ptr @sunxi_ir_hw_init._entry, ptr @sunxi_ir_hw_init._entry.40, ptr @sunxi_ir_hw_init._entry_ptr, ptr @sunxi_ir_hw_init._entry_ptr.42, ptr @sunxi_ir_probe._entry, ptr @sunxi_ir_probe._entry.11, ptr @sunxi_ir_probe._entry.15, ptr @sunxi_ir_probe._entry.20, ptr @sunxi_ir_probe._entry.26, ptr @sunxi_ir_probe._entry.29, ptr @sunxi_ir_probe._entry.32, ptr @sunxi_ir_probe._entry.7, ptr @sunxi_ir_probe._entry_ptr, ptr @sunxi_ir_probe._entry_ptr.13, ptr @sunxi_ir_probe._entry_ptr.17, ptr @sunxi_ir_probe._entry_ptr.22, ptr @sunxi_ir_probe._entry_ptr.28, ptr @sunxi_ir_probe._entry_ptr.31, ptr @sunxi_ir_probe._entry_ptr.35, ptr @sunxi_ir_probe._entry_ptr.9, ptr @sunxi_ir_driver, ptr @.str, ptr @sunxi_ir_match, ptr @sunxi_ir_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @sun4i_a10_ir_quirks, ptr @sun5i_a13_ir_quirks, ptr @sun6i_a31_ir_quirks], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ir_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ir_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ir_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ir_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ir_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ir_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ir_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ir_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ir_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ir_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ir_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ir_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ir_hw_init._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_ir_quirks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_a13_ir_quirks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_a31_ir_quirks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_ir_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_ir_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_ir_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_ir_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_ir_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %b_clk_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b_clk_freq) #6
  %2 = ptrtoint ptr %b_clk_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 8000000, ptr %b_clk_freq, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %fifo_size = getelementptr inbounds %struct.sunxi_ir_quirks, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fifo_size, align 4
  %fifo_size8 = getelementptr inbounds %struct.sunxi_ir, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %fifo_size8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %fifo_size8, align 4
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #6
  %apb_clk = getelementptr inbounds %struct.sunxi_ir, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %apb_clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9, ptr %apb_clk, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  %7 = ptrtoint ptr %apb_clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %apb_clk, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %call19 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #6
  %clk = getelementptr inbounds %struct.sunxi_ir, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call19, ptr %clk, align 4
  %cmp.i205 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i205, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %b_clk_freq, i32 noundef 1, i32 noundef 0) #6
  %14 = ptrtoint ptr %call3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call3, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool30.not = icmp eq i8 %15, 0
  br i1 %tobool30.not, label %if.end28.if.end39_crit_edge, label %if.then31

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then31:                                        ; preds = %if.end28
  %call.i206 = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %rst = getelementptr inbounds %struct.sunxi_ir, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i206, ptr %rst, align 4
  %cmp.i207 = icmp ugt ptr %call.i206, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207, label %if.then35, label %if.then31.if.end39_crit_edge

if.then31.if.end39_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then35:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call.i206 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.then31.if.end39_crit_edge, %if.end28.if.end39_crit_edge
  %18 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk, align 4
  %20 = ptrtoint ptr %b_clk_freq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %b_clk_freq, align 4
  %call41 = call i32 @clk_set_rate(ptr noundef %19, i32 noundef %21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %do.body48, label %do.end46

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #9
  br label %cleanup

do.body48:                                        ; preds = %if.end39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_ir_probe.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_ir_probe, %if.then53)) #6
          to label %do.end56 [label %if.then53], !srcloc !100

if.then53:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %b_clk_freq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %b_clk_freq, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_ir_probe.__UNIQUE_ID_ddebug233, ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %23) #6
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %do.body48
  %call57 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.sunxi_ir, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call57, ptr %base, align 4
  %cmp.i208 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %if.then60, label %if.end63

if.then60:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call57 to i32
  br label %cleanup

if.end63:                                         ; preds = %do.end56
  %call64 = call ptr @rc_allocate_device(i32 noundef 1) #6
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call64, ptr %call.i, align 4
  %tobool66.not = icmp eq ptr %call64, null
  br i1 %tobool66.not, label %do.end70, label %if.end71

do.end70:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #9
  br label %cleanup

if.end71:                                         ; preds = %if.end63
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call64, i32 0, i32 24
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %priv, align 4
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str, ptr %device_name, align 8
  %31 = load ptr, ptr %call.i, align 4
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.23, ptr %input_phys, align 4
  %33 = load ptr, ptr %call.i, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 25, ptr %input_id, align 8
  %35 = load ptr, ptr %call.i, align 4
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %35, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %vendor, align 2
  %37 = load ptr, ptr %call.i, align 4
  %product = getelementptr inbounds %struct.rc_dev, ptr %37, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 1, ptr %product, align 4
  %39 = load ptr, ptr %call.i, align 4
  %version = getelementptr inbounds %struct.rc_dev, ptr %39, i32 0, i32 5, i32 3
  %40 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 256, ptr %version, align 2
  %call82 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef null) #6
  %map_name = getelementptr inbounds %struct.sunxi_ir, ptr %call.i, i32 0, i32 7
  %41 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call82, ptr %map_name, align 4
  %tobool84.not = icmp eq ptr %call82, null
  %..str.25 = select i1 %tobool84.not, ptr @.str.25, ptr %call82
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %map_name86 = getelementptr inbounds %struct.rc_dev, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %map_name86 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %..str.25, ptr %map_name86, align 4
  %45 = load ptr, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev1, ptr %parent, align 8
  %47 = load ptr, ptr %call.i, align 4
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 130023420, ptr %allowed_protocols, align 8
  %49 = ptrtoint ptr %b_clk_freq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %b_clk_freq, align 4
  %div204 = lshr i32 %50, 6
  %div90 = udiv i32 1000000, %div204
  %51 = load ptr, ptr %call.i, align 4
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %51, i32 0, i32 37
  %52 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div90, ptr %rx_resolution, align 8
  %53 = load ptr, ptr %call.i, align 4
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %53, i32 0, i32 34
  %54 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 125000, ptr %timeout, align 4
  %div5.i = lshr i32 %50, 13
  %div16.i = lshr i32 %50, 14
  %mul.i = add nuw nsw i32 %div16.i, 1000000
  %div3.i = udiv i32 %mul.i, %div5.i
  %55 = load ptr, ptr %call.i, align 4
  %min_timeout = getelementptr inbounds %struct.rc_dev, ptr %55, i32 0, i32 35
  %56 = ptrtoint ptr %min_timeout to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div3.i, ptr %min_timeout, align 8
  %add2.i = add nuw nsw i32 %div16.i, 256000000
  %div3.i212 = udiv i32 %add2.i, %div5.i
  %57 = load ptr, ptr %call.i, align 4
  %max_timeout = getelementptr inbounds %struct.rc_dev, ptr %57, i32 0, i32 36
  %58 = ptrtoint ptr %max_timeout to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %div3.i212, ptr %max_timeout, align 4
  %59 = load ptr, ptr %call.i, align 4
  %s_timeout = getelementptr inbounds %struct.rc_dev, ptr %59, i32 0, i32 60
  %60 = ptrtoint ptr %s_timeout to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @sunxi_ir_set_timeout, ptr %s_timeout, align 8
  %61 = load ptr, ptr %call.i, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str, ptr %driver_name, align 8
  %63 = load ptr, ptr %call.i, align 4
  %call100 = call i32 @rc_register_device(ptr noundef %63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end106, label %if.end71.exit_free_dev.sink.split_crit_edge

if.end71.exit_free_dev.sink.split_crit_edge:      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_dev.sink.split

if.end106:                                        ; preds = %if.end71
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call107 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.sunxi_ir, ptr %call.i, i32 0, i32 2
  %65 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %call107, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp = icmp slt i32 %call107, 0
  br i1 %cmp, label %if.end106.exit_free_dev_crit_edge, label %if.end111

if.end106.exit_free_dev_crit_edge:                ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_dev

if.end111:                                        ; preds = %if.end106
  %call.i213 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call107, ptr noundef nonnull @sunxi_ir_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %tobool114.not = icmp eq i32 %call.i213, 0
  br i1 %tobool114.not, label %if.end119, label %if.end111.exit_free_dev.sink.split_crit_edge

if.end111.exit_free_dev.sink.split_crit_edge:     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_dev.sink.split

if.end119:                                        ; preds = %if.end111
  %call120 = call fastcc i32 @sunxi_ir_hw_init(ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %do.end126, label %if.end119.exit_free_dev_crit_edge

if.end119.exit_free_dev_crit_edge:                ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_dev

do.end126:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.33) #9
  br label %cleanup

exit_free_dev.sink.split:                         ; preds = %if.end111.exit_free_dev.sink.split_crit_edge, %if.end71.exit_free_dev.sink.split_crit_edge
  %.str.30.sink = phi ptr [ @.str.27, %if.end71.exit_free_dev.sink.split_crit_edge ], [ @.str.30, %if.end111.exit_free_dev.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call100, %if.end71.exit_free_dev.sink.split_crit_edge ], [ %call.i213, %if.end111.exit_free_dev.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.30.sink) #9
  br label %exit_free_dev

exit_free_dev:                                    ; preds = %exit_free_dev.sink.split, %if.end119.exit_free_dev_crit_edge, %if.end106.exit_free_dev_crit_edge
  %ret.0 = phi i32 [ %call120, %if.end119.exit_free_dev_crit_edge ], [ %call107, %if.end106.exit_free_dev_crit_edge ], [ %ret.0.ph, %exit_free_dev.sink.split ]
  %66 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call.i, align 4
  call void @rc_free_device(ptr noundef %67) #6
  br label %cleanup

cleanup:                                          ; preds = %exit_free_dev, %do.end126, %do.end70, %if.then60, %do.end46, %if.then35, %do.end25, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %do.end15 ], [ %13, %do.end25 ], [ %17, %if.then35 ], [ %call41, %do.end46 ], [ %25, %if.then60 ], [ %ret.0, %exit_free_dev ], [ 0, %do.end126 ], [ -12, %do.end70 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b_clk_freq) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_ir_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @rc_unregister_device(ptr noundef %3) #6
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %clk.i = getelementptr inbounds %struct.sunxi_ir, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %apb_clk.i = getelementptr inbounds %struct.sunxi_ir, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %apb_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apb_clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %rst.i = getelementptr inbounds %struct.sunxi_ir, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rst.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sunxi_ir_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk.i = getelementptr inbounds %struct.sunxi_ir, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %apb_clk.i = getelementptr inbounds %struct.sunxi_ir, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %apb_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %rst.i = getelementptr inbounds %struct.sunxi_ir, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %7) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_ir_set_timeout(ptr nocapture noundef %rc_dev, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc_dev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %clk = getelementptr inbounds %struct.sunxi_ir, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %3) #6
  %div3.i = lshr i32 %call, 13
  %mul.i = mul i32 %div3.i, %timeout
  %sub.i = add i32 %mul.i, 999999
  %div1.i = udiv i32 %sub.i, 1000000
  %sub2.i = add nsw i32 %div1.i, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_ir_set_timeout.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_ir_set_timeout, %if.then)) #6
          to label %do.body5 [label %if.then], !srcloc !100

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.device, ptr %rc_dev, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_ir_set_timeout.__UNIQUE_ID_ddebug232, ptr noundef %5, ptr noundef nonnull @.str.37, i32 noundef %sub2.i) #6
  br label %do.body5

do.body5:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %shl = shl nsw i32 %sub2.i, 8
  %and = and i32 %shl, 65280
  %or = or i32 %and, 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %or)
  %base = getelementptr inbounds %struct.sunxi_ir, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #6, !srcloc !102
  %9 = mul i32 %sub2.i, 1000000
  %div16.i = lshr i32 %call, 14
  %mul.i16 = add nuw nsw i32 %div16.i, 1000000
  %add2.i = add i32 %mul.i16, %9
  %div3.i17 = udiv i32 %add2.i, %div3.i
  %timeout9 = getelementptr inbounds %struct.rc_dev, ptr %rc_dev, i32 0, i32 34
  %10 = ptrtoint ptr %timeout9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div3.i17, ptr %timeout9, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_ir_irq(i32 noundef %irqno, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %.compoundliteral.i = alloca %struct.ir_raw_event, align 4
  %rawir = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir) #6
  %0 = ptrtoint ptr %rawir to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %rawir, align 8
  %base = getelementptr inbounds %struct.sunxi_ir, ptr %dev_id, i32 0, i32 1
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 48
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !103
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %or = or i32 %4, 255
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #6, !srcloc !102
  %and = and i32 %4, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %shr = lshr i32 %4, 8
  %fifo_size = getelementptr inbounds %struct.sunxi_ir, ptr %dev_id, i32 0, i32 3
  %8 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo_size, align 4
  %mul = shl i32 %9, 1
  %sub = add i32 %mul, 16777215
  %and4 = and i32 %sub, %shr
  %10 = tail call i32 @llvm.umin.i32(i32 %and4, i32 %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp756.not = icmp eq i32 %10, 0
  br i1 %cmp756.not, label %if.then.if.end_crit_edge, label %for.body.lr.ph

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %cnt.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %12, i32 32
  %13 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11) #6, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %and15.lobit = and i8 %13, -128
  %14 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %pulse, align 1
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %and15.lobit
  store i8 %bf.set, ptr %pulse, align 1
  %15 = and i8 %13, 127
  %narrow = add nuw i8 %15, 1
  %add = zext i8 %narrow to i32
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 4
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %17, i32 0, i32 37
  %18 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_resolution, align 8
  %mul21 = mul i32 %19, %add
  %20 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul21, ptr %rawir, align 8
  %call23 = call i32 @ir_raw_event_store_with_filter(ptr noundef %17, ptr noundef nonnull %rawir) #6
  %inc = add nuw nsw i32 %cnt.057, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %and24 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral.i)
  %23 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %.compoundliteral.i, align 4
  %duty_cycle.i = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral.i, i32 0, i32 1
  %24 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %duty_cycle.i, align 4
  %pulse.i = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral.i, i32 0, i32 2
  %25 = ptrtoint ptr %pulse.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 64, ptr %pulse.i, align 1
  %call.i = call i32 @ir_raw_event_store(ptr noundef %22, ptr noundef nonnull %.compoundliteral.i) #6
  %idle.i = getelementptr inbounds %struct.rc_dev, ptr %22, i32 0, i32 14
  %26 = ptrtoint ptr %idle.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %idle.i, align 8
  call void @ir_raw_event_handle(ptr noundef %22) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral.i)
  br label %if.end36

if.else:                                          ; preds = %if.end
  %and28 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %27 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_id, align 4
  br i1 %tobool29.not, label %if.else33, label %if.then30

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @ir_raw_event_set_idle(ptr noundef %28, i1 noundef zeroext true) #6
  %29 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_id, align 4
  call void @ir_raw_event_handle(ptr noundef %30) #6
  br label %if.end36

if.else33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @ir_raw_event_handle(ptr noundef %28) #6
  br label %if.end36

if.end36:                                         ; preds = %if.else33, %if.then30, %if.then26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_ir_hw_init(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rst = getelementptr inbounds %struct.sunxi_ir, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rst, align 4
  %call1 = tail call i32 @reset_control_deassert(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %apb_clk = getelementptr inbounds %struct.sunxi_ir, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %apb_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end5, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #9
  br label %exit_assert_reset

if.end5:                                          ; preds = %if.end.i
  %clk = getelementptr inbounds %struct.sunxi_ir, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call.i69 = tail call i32 @clk_prepare(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %if.end.i73, label %if.end5.do.end11_crit_edge

if.end5.do.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

if.end.i73:                                       ; preds = %if.end5
  %call1.i71 = tail call i32 @clk_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i71)
  %tobool2.not.i72 = icmp eq i32 %call1.i71, 0
  br i1 %tobool2.not.i72, label %do.body13, label %if.then3.i74

if.then3.i74:                                     ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %do.end11

do.end11:                                         ; preds = %if.then3.i74, %if.end5.do.end11_crit_edge
  %retval.0.i75.ph = phi i32 [ %call1.i71, %if.then3.i74 ], [ %call.i69, %if.end5.do.end11_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #9
  %8 = ptrtoint ptr %apb_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apb_clk, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  br label %exit_assert_reset

do.body13:                                        ; preds = %if.end.i73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.sunxi_ir, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 805306368) #6, !srcloc !102
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %13, i32 0, i32 34
  %14 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeout, align 4
  %priv.i = getelementptr inbounds %struct.rc_dev, ptr %13, i32 0, i32 24
  %16 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv.i, align 4
  %clk.i = getelementptr inbounds %struct.sunxi_ir, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk.i, align 4
  %call.i77 = tail call i32 @clk_get_rate(ptr noundef %19) #6
  %div3.i.i = lshr i32 %call.i77, 13
  %mul.i.i = mul i32 %div3.i.i, %15
  %sub.i.i = add i32 %mul.i.i, 999999
  %div1.i.i = udiv i32 %sub.i.i, 1000000
  %sub2.i.i = add nsw i32 %div1.i.i, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sunxi_ir_set_timeout.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sunxi_ir_hw_init, %if.then.i)) #6
          to label %sunxi_ir_set_timeout.exit [label %if.then.i], !srcloc !100

if.then.i:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %parent.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sunxi_ir_set_timeout.__UNIQUE_ID_ddebug232, ptr noundef %21, ptr noundef nonnull @.str.37, i32 noundef %sub2.i.i) #6
  br label %sunxi_ir_set_timeout.exit

sunxi_ir_set_timeout.exit:                        ; preds = %if.then.i, %do.body13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %shl.i = shl nsw i32 %sub2.i.i, 8
  %and.i = and i32 %shl.i, 65280
  %or.i = or i32 %and.i, 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %base.i = getelementptr inbounds %struct.sunxi_ir, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #6, !srcloc !102
  %25 = mul i32 %sub2.i.i, 1000000
  %div16.i.i = lshr i32 %call.i77, 14
  %mul.i16.i = add nuw nsw i32 %div16.i.i, 1000000
  %add2.i.i = add i32 %mul.i16.i, %25
  %div3.i17.i = udiv i32 %add2.i.i, %div3.i.i
  %26 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div3.i17.i, ptr %timeout, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 67108864) #6, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %30, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 -16777216) #6, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %fifo_size = getelementptr inbounds %struct.sunxi_ir, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fifo_size, align 4
  %div = sdiv i32 %32, 2
  %sub = shl i32 %div, 8
  %or = add i32 %sub, -237
  %33 = tail call i32 @llvm.bswap.i32(i32 %or)
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %35, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %33) #6, !srcloc !102
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %39 = or i32 %38, 50331648
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #6, !srcloc !102
  br label %cleanup

exit_assert_reset:                                ; preds = %do.end11, %do.end
  %ret.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i75.ph, %do.end11 ]
  %42 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rst, align 4
  %call47 = tail call i32 @reset_control_assert(ptr noundef %43) #6
  br label %cleanup

cleanup:                                          ; preds = %exit_assert_reset, %sunxi_ir_set_timeout.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit_assert_reset ], [ 0, %sunxi_ir_set_timeout.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store_with_filter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_set_idle(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_ir_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk.i = getelementptr inbounds %struct.sunxi_ir, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %apb_clk.i = getelementptr inbounds %struct.sunxi_ir, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %apb_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %apb_clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %rst.i = getelementptr inbounds %struct.sunxi_ir, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %rst.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sunxi_ir_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sunxi_ir_hw_init(ptr noundef %dev)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_sunxi_cir__234_425_sunxi_ir_driver_init6, !1, !"__initcall__kmod_sunxi_cir__234_425_sunxi_ir_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/sunxi-cir.c", i32 425, i32 1}
!2 = !{ptr @__exitcall_sunxi_ir_driver_exit, !1, !"__exitcall_sunxi_ir_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description235, !4, !"__UNIQUE_ID_description235", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/sunxi-cir.c", i32 427, i32 1}
!5 = !{ptr @__UNIQUE_ID_author236, !6, !"__UNIQUE_ID_author236", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/sunxi-cir.c", i32 428, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/sunxi-cir.c", i32 429, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/sunxi-cir.c", i32 419, i32 11}
!12 = !{ptr @sunxi_ir_driver, !13, !"sunxi_ir_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/sunxi-cir.c", i32 414, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/sunxi-cir.c", i32 267, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sunxi_ir_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sunxi_ir_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/rc/sunxi-cir.c", i32 274, i32 34}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/sunxi-cir.c", i32 276, i32 3}
!26 = !{ptr @sunxi_ir_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sunxi_ir_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/rc/sunxi-cir.c", i32 279, i32 30}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/rc/sunxi-cir.c", i32 281, i32 3}
!32 = !{ptr @sunxi_ir_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sunxi_ir_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/rc/sunxi-cir.c", i32 286, i32 27}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/rc/sunxi-cir.c", i32 297, i32 3}
!38 = !{ptr @sunxi_ir_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @sunxi_ir_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/rc/sunxi-cir.c", i32 300, i32 2}
!42 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @sunxi_ir_probe.__UNIQUE_ID_ddebug233, !41, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/rc/sunxi-cir.c", i32 310, i32 3}
!46 = !{ptr @sunxi_ir_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sunxi_ir_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/rc/sunxi-cir.c", i32 316, i32 23}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/rc/sunxi-cir.c", i32 321, i32 37}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/rc/sunxi-cir.c", i32 322, i32 37}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/rc/sunxi-cir.c", i32 335, i32 3}
!56 = !{ptr @sunxi_ir_probe._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @sunxi_ir_probe._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/rc/sunxi-cir.c", i32 350, i32 3}
!60 = !{ptr @sunxi_ir_probe._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @sunxi_ir_probe._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/rc/sunxi-cir.c", i32 358, i32 2}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sunxi_ir_probe._entry.32, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @sunxi_ir_probe._entry_ptr.35, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/rc/sunxi-cir.c", i32 161, i32 2}
!69 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sunxi_ir_set_timeout.__UNIQUE_ID_ddebug232, !68, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/rc/sunxi-cir.c", i32 184, i32 3}
!73 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @sunxi_ir_hw_init._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @sunxi_ir_hw_init._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/rc/sunxi-cir.c", i32 190, i32 3}
!78 = !{ptr @sunxi_ir_hw_init._entry.40, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sunxi_ir_hw_init._entry_ptr.42, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @sunxi_ir_match, !81, !"sunxi_ir_match", i1 false, i1 false}
!81 = !{!"../drivers/media/rc/sunxi-cir.c", i32 397, i32 34}
!82 = !{ptr @sun4i_a10_ir_quirks, !83, !"sun4i_a10_ir_quirks", i1 false, i1 false}
!83 = !{!"../drivers/media/rc/sunxi-cir.c", i32 382, i32 37}
!84 = !{ptr @sun5i_a13_ir_quirks, !85, !"sun5i_a13_ir_quirks", i1 false, i1 false}
!85 = !{!"../drivers/media/rc/sunxi-cir.c", i32 387, i32 37}
!86 = !{ptr @sun6i_a31_ir_quirks, !87, !"sun6i_a31_ir_quirks", i1 false, i1 false}
!87 = !{!"../drivers/media/rc/sunxi-cir.c", i32 392, i32 37}
!88 = !{ptr @sunxi_ir_pm_ops, !89, !"sunxi_ir_pm_ops", i1 false, i1 false}
!89 = !{!"../drivers/media/rc/sunxi-cir.c", i32 249, i32 8}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i8 0, i8 2}
!100 = !{i64 2148730648, i64 2148730653, i64 2148730666, i64 2148730710, i64 2148730744, i64 2148730765}
!101 = !{i64 2154445438}
!102 = !{i64 4238361}
!103 = !{i64 4238779}
!104 = !{i64 2154439209}
!105 = !{i64 2154439441}
!106 = !{i64 4238559}
!107 = !{i64 2154440124}
!108 = !{i64 2154451093}
!109 = !{i64 2154451763}
!110 = !{i64 2154452231}
!111 = !{i64 2154453024}
!112 = !{i64 2154454037}
!113 = !{i64 2154454478}
