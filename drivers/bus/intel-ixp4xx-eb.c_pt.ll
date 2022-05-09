; ModuleID = '/llk/IR_all_yes/drivers/bus/intel-ixp4xx-eb.c_pt.bc'
source_filename = "../drivers/bus/intel-ixp4xx-eb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ixp4xx_exp_tim_prop = type { ptr, i32, i32, i16 }
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
%struct.ixp4xx_eb = type { ptr, ptr, i32, i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_intel_ixp4xx_eb__178_426_ixp4xx_exp_driver_init6 = internal global ptr @ixp4xx_exp_driver_init, section ".initcall6.init", align 4
@ixp4xx_exp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ixp4xx_exp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ixp4xx_exp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ixp4xx_exp_driver_exit = internal global ptr @ixp4xx_exp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author179 = internal constant [64 x i8] c"intel_ixp4xx_eb.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description180 = internal constant [61 x i8] c"intel_ixp4xx_eb.description=Intel IXP4xx external bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file181 = internal constant [49 x i8] c"intel_ixp4xx_eb.file=drivers/bus/intel-ixp4xx-eb\00", section ".modinfo", align 1
@__UNIQUE_ID_license182 = internal constant [28 x i8] c"intel_ixp4xx_eb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intel-extbus\00", [19 x i8] zeroinitializer }, align 32
@ixp4xx_exp_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,ixp42x-expansion-bus-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,ixp43x-expansion-bus-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,ixp45x-expansion-bus-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,ixp46x-expansion-bus-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"intel,ixp42x-expansion-bus-controller\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"intel,ixp43x-expansion-bus-controller\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no regmap\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot read regmap\0A\00", [44 x i8] zeroinitializer }, align 32
@ixp4xx_exp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 377, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"expansion bus at %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ixp4xx_exp_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/bus/intel-ixp4xx-eb.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ixp4xx_exp_probe._entry_ptr = internal global ptr @ixp4xx_exp_probe._entry, section ".printk_index", align 4
@ixp4xx_exp_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 384, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IXP43x at 533 MHz\0A\00", [45 x i8] zeroinitializer }, align 32
@ixp4xx_exp_probe._entry_ptr.12 = internal global ptr @ixp4xx_exp_probe._entry.10, section ".printk_index", align 4
@ixp4xx_exp_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 387, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IXP43x at 400 MHz\0A\00", [45 x i8] zeroinitializer }, align 32
@ixp4xx_exp_probe._entry_ptr.15 = internal global ptr @ixp4xx_exp_probe._entry.13, section ".printk_index", align 4
@ixp4xx_exp_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 390, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IXP43x at 667 MHz\0A\00", [45 x i8] zeroinitializer }, align 32
@ixp4xx_exp_probe._entry_ptr.18 = internal global ptr @ixp4xx_exp_probe._entry.16, section ".printk_index", align 4
@ixp4xx_exp_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.7, i32 393, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IXP43x unknown speed\0A\00", [42 x i8] zeroinitializer }, align 32
@ixp4xx_exp_probe._entry_ptr.21 = internal global ptr @ixp4xx_exp_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_child.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.7, ptr @.str.25, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"intel_ixp4xx_eb\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ixp4xx_exp_setup_child\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"child %s has %d register sets\0A\00", [33 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_child._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.7, i32 321, ptr @.str.27, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"illegal CS %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_child._entry_ptr = internal global ptr @ixp4xx_exp_setup_child._entry, section ".printk_index", align 4
@ixp4xx_exp_setup_child.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.7, ptr @.str.28, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CS%d size %#08x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.7, i32 171, ptr @.str.27, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid chipselect %u, we only support 0-7\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ixp4xx_exp_setup_chipselect\00", [36 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry_ptr = internal global ptr @ixp4xx_exp_setup_chipselect._entry, section ".printk_index", align 4
@ixp4xx_exp_setup_chipselect._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.7, i32 177, ptr @.str.27, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid chipselect %u, we only support 0-3\0A\00", [52 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry_ptr.34 = internal global ptr @ixp4xx_exp_setup_chipselect._entry.32, section ".printk_index", align 4
@ixp4xx_exp_setup_chipselect._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.7, i32 197, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"CS%d at %#08x, size %#08x, config before: %#08x\0A\00", [47 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry_ptr.37 = internal global ptr @ixp4xx_exp_setup_chipselect._entry.35, section ".printk_index", align 4
@ixp4xx_exp_setup_chipselect._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.7, i32 205, ptr @.str.27, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"illegal size order %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry_ptr.40 = internal global ptr @ixp4xx_exp_setup_chipselect._entry.38, section ".printk_index", align 4
@ixp4xx_exp_setup_chipselect.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.31, ptr @.str.7, ptr @.str.41, i8 0, i8 52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CS%d size order: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@ixp4xx_exp_tim_props = internal constant { [11 x %struct.ixp4xx_exp_tim_prop], [48 x i8] } { [11 x %struct.ixp4xx_exp_tim_prop] [%struct.ixp4xx_exp_tim_prop { ptr @.str.66, i32 3, i32 402653184, i16 28 }, %struct.ixp4xx_exp_tim_prop { ptr @.str.67, i32 3, i32 201326592, i16 26 }, %struct.ixp4xx_exp_tim_prop { ptr @.str.68, i32 15, i32 62914560, i16 22 }, %struct.ixp4xx_exp_tim_prop { ptr @.str.69, i32 3, i32 3145728, i16 20 }, %struct.ixp4xx_exp_tim_prop { ptr @.str.70, i32 15, i32 983040, i16 16 }, %struct.ixp4xx_exp_tim_prop { ptr @.str.71, i32 1, i32 64, i16 0 }, %struct.ixp4xx_exp_tim_prop { ptr @.str.72, i32 1, i32 32, i16 0 }, %struct.ixp4xx_exp_tim_prop { ptr @.str.73, i32 1, i32 16, i16 0 }, %struct.ixp4xx_exp_tim_prop { ptr @.str.74, i32 1, i32 8, i16 0 }, %struct.ixp4xx_exp_tim_prop { ptr @.str.75, i32 1, i32 2, i16 0 }, %struct.ixp4xx_exp_tim_prop { ptr @.str.76, i32 1, i32 1, i16 0 }], [48 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.31, ptr @.str.7, i32 228, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CS%d %s %s\0A\00", [20 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry_ptr.44 = internal global ptr @ixp4xx_exp_setup_chipselect._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.31, ptr @.str.7, i32 235, ptr @.str.27, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CS%d too high value for %s: %u, capped at %u\0A\00", [50 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry_ptr.49 = internal global ptr @ixp4xx_exp_setup_chipselect._entry.47, section ".printk_index", align 4
@ixp4xx_exp_setup_chipselect._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.31, ptr @.str.7, i32 241, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CS%d set %s to %u\0A\00", [45 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry_ptr.52 = internal global ptr @ixp4xx_exp_setup_chipselect._entry.50, section ".printk_index", align 4
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"intel,ixp4xx-eb-cycle-type\00", [37 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.31, ptr @.str.7, i32 247, ptr @.str.27, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"illegal cycle type %d\0A\00", [41 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry_ptr.56 = internal global ptr @ixp4xx_exp_setup_chipselect._entry.54, section ".printk_index", align 4
@ixp4xx_exp_setup_chipselect._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.31, ptr @.str.7, i32 250, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CS%d set cycle type %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry_ptr.59 = internal global ptr @ixp4xx_exp_setup_chipselect._entry.57, section ".printk_index", align 4
@ixp4xx_exp_setup_chipselect._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.31, ptr @.str.7, i32 264, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"claims to be Intel strata flash\0A\00", [63 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry_ptr.62 = internal global ptr @ixp4xx_exp_setup_chipselect._entry.60, section ".printk_index", align 4
@ixp4xx_exp_setup_chipselect._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.31, ptr @.str.7, i32 271, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CS%d wrote %#08x into CS config\0A\00", [63 x i8] zeroinitializer }, align 32
@ixp4xx_exp_setup_chipselect._entry_ptr.65 = internal global ptr @ixp4xx_exp_setup_chipselect._entry.63, section ".printk_index", align 4
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel,ixp4xx-eb-t1\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel,ixp4xx-eb-t2\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel,ixp4xx-eb-t3\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel,ixp4xx-eb-t4\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel,ixp4xx-eb-t5\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"intel,ixp4xx-eb-byte-access-on-halfword\00", [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"intel,ixp4xx-eb-hpi-hrdy-pol-high\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"intel,ixp4xx-eb-mux-address-and-data\00", [59 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"intel,ixp4xx-eb-ahb-split-transfers\00", [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"intel,ixp4xx-eb-write-enable\00", [35 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"intel,ixp4xx-eb-byte-access\00", [36 x i8] zeroinitializer }, align 32
@switch.table.ixp4xx_exp_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.11, ptr @.str.14, ptr @.str.17], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"ixp4xx_exp_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 419, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 422, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"ixp4xx_exp_of_match\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 411, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 362, i32 43 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 363, i32 43 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 367, i32 48 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 372, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 377, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 384, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 387, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 390, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 393, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 295, i32 49 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 298, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 321, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 333, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 261, i32 30 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 169, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 175, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 195, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 205, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 208, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [21 x i8] c"ixp4xx_exp_tim_props\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 93, i32 41 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 226, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 233, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 241, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 244, i32 33 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 247, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 250, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 264, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 271, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 95, i32 11 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 101, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 107, i32 11 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 113, i32 11 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 119, i32 11 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 125, i32 11 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 130, i32 11 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 135, i32 11 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 140, i32 11 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 145, i32 11 }
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private constant [33 x i8] c"../drivers/bus/intel-ixp4xx-eb.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 150, i32 11 }
@___asan_gen_.284 = private unnamed_addr constant [30 x i8] c"switch.table.ixp4xx_exp_probe\00", align 1
@llvm.compiler.used = appending global [94 x ptr] [ptr @__UNIQUE_ID_author179, ptr @__UNIQUE_ID_description180, ptr @__UNIQUE_ID_file181, ptr @__UNIQUE_ID_license182, ptr @__exitcall_ixp4xx_exp_driver_exit, ptr @__initcall__kmod_intel_ixp4xx_eb__178_426_ixp4xx_exp_driver_init6, ptr @ixp4xx_exp_driver_exit, ptr @ixp4xx_exp_probe._entry, ptr @ixp4xx_exp_probe._entry.10, ptr @ixp4xx_exp_probe._entry.13, ptr @ixp4xx_exp_probe._entry.16, ptr @ixp4xx_exp_probe._entry.19, ptr @ixp4xx_exp_probe._entry_ptr, ptr @ixp4xx_exp_probe._entry_ptr.12, ptr @ixp4xx_exp_probe._entry_ptr.15, ptr @ixp4xx_exp_probe._entry_ptr.18, ptr @ixp4xx_exp_probe._entry_ptr.21, ptr @ixp4xx_exp_setup_child._entry, ptr @ixp4xx_exp_setup_child._entry_ptr, ptr @ixp4xx_exp_setup_chipselect._entry, ptr @ixp4xx_exp_setup_chipselect._entry.32, ptr @ixp4xx_exp_setup_chipselect._entry.35, ptr @ixp4xx_exp_setup_chipselect._entry.38, ptr @ixp4xx_exp_setup_chipselect._entry.42, ptr @ixp4xx_exp_setup_chipselect._entry.47, ptr @ixp4xx_exp_setup_chipselect._entry.50, ptr @ixp4xx_exp_setup_chipselect._entry.54, ptr @ixp4xx_exp_setup_chipselect._entry.57, ptr @ixp4xx_exp_setup_chipselect._entry.60, ptr @ixp4xx_exp_setup_chipselect._entry.63, ptr @ixp4xx_exp_setup_chipselect._entry_ptr, ptr @ixp4xx_exp_setup_chipselect._entry_ptr.34, ptr @ixp4xx_exp_setup_chipselect._entry_ptr.37, ptr @ixp4xx_exp_setup_chipselect._entry_ptr.40, ptr @ixp4xx_exp_setup_chipselect._entry_ptr.44, ptr @ixp4xx_exp_setup_chipselect._entry_ptr.49, ptr @ixp4xx_exp_setup_chipselect._entry_ptr.52, ptr @ixp4xx_exp_setup_chipselect._entry_ptr.56, ptr @ixp4xx_exp_setup_chipselect._entry_ptr.59, ptr @ixp4xx_exp_setup_chipselect._entry_ptr.62, ptr @ixp4xx_exp_setup_chipselect._entry_ptr.65, ptr @ixp4xx_exp_driver, ptr @.str, ptr @ixp4xx_exp_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @ixp4xx_exp_tim_props, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @switch.table.ixp4xx_exp_probe], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_setup_child._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_setup_chipselect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_setup_chipselect._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_setup_chipselect._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_setup_chipselect._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_tim_props to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_setup_chipselect._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_setup_chipselect._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_setup_chipselect._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_setup_chipselect._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_setup_chipselect._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_setup_chipselect._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ixp4xx_exp_setup_chipselect._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ixp4xx_exp_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ixp4xx_exp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ixp4xx_exp_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ixp4xx_exp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ixp4xx_exp_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ixp4xx_exp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !150
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4 = icmp ne i32 %call3, 0
  %is_42x = getelementptr inbounds %struct.ixp4xx_eb, ptr %call.i, i32 0, i32 3
  %frombool = zext i1 %tobool4 to i8
  %4 = ptrtoint ptr %is_42x to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %is_42x, align 4
  %call5 = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6 = icmp ne i32 %call5, 0
  %is_43x = getelementptr inbounds %struct.ixp4xx_eb, ptr %call.i, i32 0, i32 4
  %frombool7 = zext i1 %tobool6 to i8
  %5 = ptrtoint ptr %is_43x to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool7, ptr %is_43x, align 1
  %call8 = tail call ptr @syscon_node_to_regmap(ptr noundef %1) #6
  %rmap = getelementptr inbounds %struct.ixp4xx_eb, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %rmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %rmap, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call8 to i32
  %call14 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %7, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call17 = call i32 @regmap_read(ptr noundef %call8, i32 noundef 32, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call17, ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool22.not.inv = icmp slt i32 %9, 0
  %spec.select = select i1 %tobool22.not.inv, i32 0, i32 1342177280
  %10 = getelementptr inbounds %struct.ixp4xx_eb, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %spec.select) #9
  %12 = ptrtoint ptr %is_43x to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_43x, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool28.not = icmp eq i8 %13, 0
  br i1 %tobool28.not, label %if.end21.if.end62_crit_edge, label %if.then29

if.end21.if.end62_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then29:                                        ; preds = %if.end21
  %14 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmap, align 4
  %call31 = call i32 @regmap_read(ptr noundef %15, i32 noundef 40, ptr noundef nonnull %val) #6
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and47 = lshr i32 %17, 22
  %shr = and i32 %and47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %.not = icmp eq i32 %shr, 3
  br i1 %.not, label %if.then29.if.end62.sink.split_crit_edge, label %switch.lookup

if.then29.if.end62.sink.split_crit_edge:          ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62.sink.split

switch.lookup:                                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ixp4xx_exp_probe, i32 0, i32 %shr
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end62.sink.split

if.end62.sink.split:                              ; preds = %switch.lookup, %if.then29.if.end62.sink.split_crit_edge
  %.str.11.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.20, %if.then29.if.end62.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull %.str.11.sink) #9
  br label %if.end62

if.end62:                                         ; preds = %if.end62.sink.split, %if.end21.if.end62_crit_edge
  %call63 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #6
  %cmp.not106 = icmp eq ptr %call63, null
  br i1 %cmp.not106, label %if.end62.cleanup_crit_edge, label %if.end62.for.body_crit_edge

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  br label %for.body

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end62.for.body_crit_edge
  %child.0107 = phi ptr [ %call64, %for.body.for.body_crit_edge ], [ %call63, %if.end62.for.body_crit_edge ]
  call fastcc void @ixp4xx_exp_setup_child(ptr noundef nonnull %call.i, ptr noundef nonnull %child.0107)
  %call64 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.0107) #6
  %cmp.not = icmp eq ptr %call64, null
  br i1 %cmp.not, label %if.then66, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.then66:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call67 = call i32 @of_platform_default_populate(ptr noundef %1, ptr noundef null, ptr noundef %dev1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %if.end62.cleanup_crit_edge, %if.then19, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then11 ], [ %call20, %if.then19 ], [ %call67, %if.then66 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end62.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixp4xx_exp_setup_child(ptr nocapture noundef readonly %eb, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  %cs_sizes = alloca [8 x i32], align 4
  %csindex = alloca i32, align 4
  %rbase = alloca i32, align 4
  %rsize = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %cs_sizes) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csindex) #6
  %call = tail call i32 @of_property_count_elems_of_size(ptr noundef %np, ptr noundef nonnull @.str.22, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp slt i32 %call, 1
  br i1 %cmp, label %entry.cleanup70_crit_edge, label %do.body

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup70

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_exp_setup_child.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixp4xx_exp_setup_child, %if.then4)) #6
          to label %for.body10.preheader [label %if.then4], !srcloc !152

if.then4:                                         ; preds = %do.body
  %0 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eb, align 4
  %tobool.not.i = icmp eq ptr %np, null
  br i1 %tobool.not.i, label %if.then4.of_node_full_name.exit_crit_edge, label %cond.true.i

if.then4.of_node_full_name.exit_crit_edge:        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %2 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %if.then4.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ @.str.29, %if.then4.of_node_full_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_exp_setup_child.__UNIQUE_ID_ddebug171, ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef %cond.i, i32 noundef %call) #6
  br label %for.body10.preheader

for.body10.preheader:                             ; preds = %of_node_full_name.exit, %do.body
  %4 = call ptr @memset(ptr %cs_sizes, i32 0, i32 32)
  %5 = ptrtoint ptr %csindex to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %csindex, align 4
  br label %for.body10

for.body10:                                       ; preds = %for.inc57.for.body10_crit_edge, %for.body10.preheader
  %i.0112 = phi i32 [ %inc58, %for.inc57.for.body10_crit_edge ], [ 0, %for.body10.preheader ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rbase) #6
  %6 = ptrtoint ptr %rbase to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %rbase, align 4, !annotation !150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rsize) #6
  %7 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %rsize, align 4, !annotation !150
  %mul = mul i32 %i.0112, 3
  %call11 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.22, i32 noundef %mul, ptr noundef nonnull %csindex) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %for.body10.cleanup.thread_crit_edge

for.body10.cleanup.thread_crit_edge:              ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end14:                                         ; preds = %for.body10
  %add = add i32 %mul, 1
  %call16 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.22, i32 noundef %add, ptr noundef nonnull %rbase) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup.thread_crit_edge

if.end14.cleanup.thread_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end19:                                         ; preds = %if.end14
  %add21 = add i32 %mul, 2
  %call22 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.22, i32 noundef %add21, ptr noundef nonnull %rsize) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.cleanup.thread_crit_edge

if.end19.cleanup.thread_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end25:                                         ; preds = %if.end19
  %8 = ptrtoint ptr %csindex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %csindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %cmp26 = icmp ugt i32 %9, 7
  br i1 %cmp26, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %eb, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.26, i32 noundef %9) #9
  br label %for.inc57

if.end32:                                         ; preds = %if.end25
  %12 = ptrtoint ptr %rbase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rbase, align 4
  %14 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rsize, align 4
  %add33 = add i32 %15, %13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_exp_setup_child.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixp4xx_exp_setup_child, %if.then46)) #6
          to label %do.end50 [label %if.then46], !srcloc !152

if.then46:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %eb, align 4
  %18 = ptrtoint ptr %csindex to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %csindex, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_exp_setup_child.__UNIQUE_ID_ddebug172, ptr noundef %17, ptr noundef nonnull @.str.28, i32 noundef %19, i32 noundef %add33) #6
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %if.end32
  %20 = ptrtoint ptr %csindex to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %csindex, align 4
  %arrayidx51 = getelementptr [8 x i32], ptr %cs_sizes, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx51, align 4
  %24 = call i32 @llvm.umax.i32(i32 %23, i32 %add33)
  %25 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx51, align 4
  br label %for.inc57

cleanup.thread:                                   ; preds = %if.end19.cleanup.thread_crit_edge, %if.end14.cleanup.thread_crit_edge, %for.body10.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsize) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbase) #6
  br label %for.end59

for.inc57:                                        ; preds = %do.end50, %do.end30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rsize) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rbase) #6
  %inc58 = add nuw nsw i32 %i.0112, 1
  %exitcond.not = icmp eq i32 %inc58, %call
  br i1 %exitcond.not, label %for.inc57.for.end59_crit_edge, label %for.inc57.for.body10_crit_edge

for.inc57.for.body10_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10

for.inc57.for.end59_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end59

for.end59:                                        ; preds = %for.inc57.for.end59_crit_edge, %cleanup.thread
  %26 = ptrtoint ptr %csindex to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %csindex, align 4
  br label %for.body62

for.body62:                                       ; preds = %for.inc67.for.body62_crit_edge, %for.end59
  %storemerge101113 = phi i32 [ 0, %for.end59 ], [ %inc68, %for.inc67.for.body62_crit_edge ]
  %arrayidx63 = getelementptr [8 x i32], ptr %cs_sizes, i32 0, i32 %storemerge101113
  %27 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool64.not = icmp eq i32 %28, 0
  br i1 %tobool64.not, label %for.body62.for.inc67_crit_edge, label %if.end66

for.body62.for.inc67_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc67

if.end66:                                         ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @ixp4xx_exp_setup_chipselect(ptr noundef %eb, ptr noundef %np, i32 noundef %storemerge101113, i32 noundef %28)
  br label %for.inc67

for.inc67:                                        ; preds = %if.end66, %for.body62.for.inc67_crit_edge
  %29 = ptrtoint ptr %csindex to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %csindex, align 4
  %inc68 = add i32 %30, 1
  store i32 %inc68, ptr %csindex, align 4
  %cmp61 = icmp ult i32 %inc68, 8
  br i1 %cmp61, label %for.inc67.for.body62_crit_edge, label %for.inc67.cleanup70_crit_edge

for.inc67.cleanup70_crit_edge:                    ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup70

for.inc67.for.body62_crit_edge:                   ; preds = %for.inc67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body62

cleanup70:                                        ; preds = %for.inc67.cleanup70_crit_edge, %entry.cleanup70_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csindex) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %cs_sizes) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_default_populate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ixp4xx_exp_setup_chipselect(ptr nocapture noundef readonly %eb, ptr noundef %np, i32 noundef %cs_index, i32 noundef %cs_size) unnamed_addr #2 align 64 {
entry:
  %cs_cfg = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs_cfg) #6
  %0 = ptrtoint ptr %cs_cfg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cs_cfg, align 4, !annotation !150
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !150
  %is_42x = getelementptr inbounds %struct.ixp4xx_eb, ptr %eb, i32 0, i32 3
  %2 = ptrtoint ptr %is_42x to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_42x, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cs_index)
  %cmp = icmp ugt i32 %cs_index, 7
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %eb, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.30, i32 noundef %cs_index) #9
  br label %cleanup179

if.end:                                           ; preds = %entry
  %is_43x = getelementptr inbounds %struct.ixp4xx_eb, ptr %eb, i32 0, i32 4
  %6 = ptrtoint ptr %is_43x to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_43x, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp ne i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cs_index)
  %cmp3 = icmp ugt i32 %cs_index, 3
  %or.cond257 = and i1 %cmp3, %tobool1.not
  br i1 %or.cond257, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %eb, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33, i32 noundef %cs_index) #9
  br label %cleanup179

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %cs_size)
  %cmp10 = icmp ugt i32 %cs_size, 16777216
  %10 = tail call i32 @llvm.umin.i32(i32 %cs_size, i32 16777216)
  %rmap = getelementptr inbounds %struct.ixp4xx_eb, ptr %eb, i32 0, i32 1
  %11 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rmap, align 4
  %mul = shl i32 %cs_index, 2
  %call = call i32 @regmap_read(ptr noundef %12, i32 noundef %mul, ptr noundef nonnull %cs_cfg) #6
  %13 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %eb, align 4
  %bus_base = getelementptr inbounds %struct.ixp4xx_eb, ptr %eb, i32 0, i32 2
  %15 = ptrtoint ptr %bus_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bus_base, align 4
  %mul17 = shl i32 %cs_index, 24
  %add18 = add i32 %16, %mul17
  %17 = ptrtoint ptr %cs_cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cs_cfg, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %14, ptr noundef nonnull @.str.36, i32 noundef %cs_index, i32 noundef %add18, i32 noundef %10, i32 noundef %18) #9
  %sub.i259 = add nsw i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i259)
  %tobool.not.i.i.i = icmp eq i32 %sub.i259, 0
  %19 = call i32 @llvm.ctlz.i32(i32 %sub.i259, i1 true) #6, !range !153
  %sub.i.i.i = sub nuw nsw i32 32, %19
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %20 = call i32 @llvm.umax.i32(i32 %sub.i.i.op.i, i32 512)
  %21 = call i32 @llvm.ctlz.i32(i32 %20, i1 true), !range !153
  %.op = xor i32 %21, 31
  %sub.i.op.i260 = select i1 %tobool.not.i.i.i, i32 9, i32 %.op
  %22 = add nsw i32 %sub.i.op.i260, -25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %22)
  %23 = icmp ult i32 %22, -16
  br i1 %23, label %do.end65, label %do.body68

do.end65:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %eb, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.39, i32 noundef %sub.i.op.i260) #9
  br label %cleanup179

do.body68:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ixp4xx_exp_setup_chipselect.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ixp4xx_exp_setup_chipselect, %if.then73)) #6
          to label %do.end77 [label %if.then73], !srcloc !152

if.then73:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %eb, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ixp4xx_exp_setup_chipselect.__UNIQUE_ID_ddebug170, ptr noundef %27, ptr noundef nonnull @.str.41, i32 noundef %cs_index, i32 noundef %sub.i.op.i260) #6
  br label %do.end77

do.end77:                                         ; preds = %if.then73, %do.body68
  %28 = ptrtoint ptr %cs_cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cs_cfg, align 4
  %and = and i32 %29, -15361
  %sub78 = shl nuw nsw i32 %sub.i.op.i260, 10
  %shl79 = add nsw i32 %sub78, -9216
  %or = or i32 %and, %shl79
  store i32 %or, ptr %cs_cfg, align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.end77
  %i.0263 = phi i32 [ 0, %do.end77 ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [11 x %struct.ixp4xx_exp_tim_prop], ptr @ixp4xx_exp_tim_props, i32 0, i32 %i.0263
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef %31, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool83.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool83.not, label %if.end85, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end85:                                         ; preds = %for.body
  %max = getelementptr [11 x %struct.ixp4xx_exp_tim_prop], ptr @ixp4xx_exp_tim_props, i32 0, i32 %i.0263, i32 1
  %32 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max, align 4
  %34 = add nsw i32 %i.0263, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %34)
  %cmp86 = icmp ult i32 %34, 6
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  br i1 %cmp86, label %if.then88, label %if.end103

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool89.not = icmp eq i32 %36, 0
  %mask93 = getelementptr [11 x %struct.ixp4xx_exp_tim_prop], ptr @ixp4xx_exp_tim_props, i32 0, i32 %i.0263, i32 2
  %37 = ptrtoint ptr %mask93 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mask93, align 4
  br i1 %tobool89.not, label %if.else92, label %if.then90

if.then90:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %cs_cfg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cs_cfg, align 4
  %or91 = or i32 %40, %38
  br label %do.end98

if.else92:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %38, -1
  %41 = ptrtoint ptr %cs_cfg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cs_cfg, align 4
  %and94 = and i32 %42, %neg
  br label %do.end98

do.end98:                                         ; preds = %if.else92, %if.then90
  %cond101 = phi ptr [ @.str.45, %if.then90 ], [ @.str.46, %if.else92 ]
  %storemerge = phi i32 [ %or91, %if.then90 ], [ %and94, %if.else92 ]
  %43 = ptrtoint ptr %cs_cfg to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %storemerge, ptr %cs_cfg, align 4
  %44 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %eb, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.43, i32 noundef %cs_index, ptr noundef nonnull %cond101, ptr noundef %31) #9
  br label %cleanup

if.end103:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %33)
  %cmp105 = icmp ugt i32 %36, %33
  br i1 %cmp105, label %do.end110, label %if.end103.if.end115_crit_edge

if.end103.if.end115_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %eb, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.48, i32 noundef %cs_index, ptr noundef %31, i32 noundef %36, i32 noundef %33) #9
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %33, ptr %val, align 4
  br label %if.end115

if.end115:                                        ; preds = %do.end110, %if.end103.if.end115_crit_edge
  %mask116 = getelementptr [11 x %struct.ixp4xx_exp_tim_prop], ptr @ixp4xx_exp_tim_props, i32 0, i32 %i.0263, i32 2
  %49 = ptrtoint ptr %mask116 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mask116, align 4
  %neg117 = xor i32 %50, -1
  %51 = ptrtoint ptr %cs_cfg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cs_cfg, align 4
  %and118 = and i32 %52, %neg117
  %53 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val, align 4
  %shift = getelementptr [11 x %struct.ixp4xx_exp_tim_prop], ptr @ixp4xx_exp_tim_props, i32 0, i32 %i.0263, i32 3
  %55 = ptrtoint ptr %shift to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %shift, align 4
  %conv119 = zext i16 %56 to i32
  %shl120 = shl i32 %54, %conv119
  %or121 = or i32 %shl120, %and118
  store i32 %or121, ptr %cs_cfg, align 4
  %57 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %eb, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %58, ptr noundef nonnull @.str.51, i32 noundef %cs_index, ptr noundef %31, i32 noundef %54) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end115, %do.end98, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0263, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  %call.i.i261 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.53, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i261)
  %tobool128.not = icmp sgt i32 %call.i.i261, -1
  br i1 %tobool128.not, label %if.then129, label %for.end.if.end145_crit_edge

for.end.if.end145_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end145

if.then129:                                       ; preds = %for.end
  %59 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %60)
  %cmp130 = icmp ugt i32 %60, 3
  %61 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %eb, align 4
  br i1 %cmp130, label %do.end135, label %do.end140

do.end135:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.55, i32 noundef %60) #9
  br label %cleanup179

do.end140:                                        ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.58, i32 noundef %cs_index, i32 noundef %60) #9
  %63 = ptrtoint ptr %cs_cfg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cs_cfg, align 4
  %and142 = and i32 %64, -49153
  %65 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val, align 4
  %shl143 = shl i32 %66, 14
  %or144 = or i32 %shl143, %and142
  store i32 %or144, ptr %cs_cfg, align 4
  br label %if.end145

if.end145:                                        ; preds = %do.end140, %for.end.if.end145_crit_edge
  %67 = ptrtoint ptr %is_42x to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_42x, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool147.not = icmp eq i8 %68, 0
  br i1 %tobool147.not, label %if.end145.if.end150_crit_edge, label %if.then148

if.end145.if.end150_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150

if.then148:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %cs_cfg to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cs_cfg, align 4
  %and149 = and i32 %70, -1073742725
  store i32 %and149, ptr %cs_cfg, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.end145.if.end150_crit_edge
  %71 = ptrtoint ptr %is_43x to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %is_43x, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool152.not = icmp eq i8 %72, 0
  br i1 %tobool152.not, label %if.end150.if.end163_crit_edge, label %if.then153

if.end150.if.end163_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

if.then153:                                       ; preds = %if.end150
  %73 = ptrtoint ptr %cs_cfg to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cs_cfg, align 4
  %and154 = and i32 %74, -1073742373
  store i32 %and154, ptr %cs_cfg, align 4
  %and155 = and i32 %74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.then153.if.end163_crit_edge, label %do.end160

if.then153.if.end163_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

do.end160:                                        ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %eb, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.61) #9
  br label %if.end163

if.end163:                                        ; preds = %do.end160, %if.then153.if.end163_crit_edge, %if.end150.if.end163_crit_edge
  %77 = ptrtoint ptr %cs_cfg to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %cs_cfg, align 4
  %or164 = or i32 %78, -2147483648
  store i32 %or164, ptr %cs_cfg, align 4
  %79 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmap, align 4
  %call168 = call i32 @regmap_write(ptr noundef %80, i32 noundef %mul, i32 noundef %or164) #6
  %81 = ptrtoint ptr %eb to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %eb, align 4
  %83 = ptrtoint ptr %cs_cfg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cs_cfg, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %82, ptr noundef nonnull @.str.64, i32 noundef %cs_index, i32 noundef %84) #9
  br i1 %cmp10, label %if.then175, label %if.end163.cleanup179_crit_edge

if.end163.cleanup179_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup179

if.then175:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  %add176 = add i32 %cs_index, 1
  %sub177 = add i32 %cs_size, -16777216
  call fastcc void @ixp4xx_exp_setup_chipselect(ptr noundef %eb, ptr noundef %np, i32 noundef %add176, i32 noundef %sub177)
  br label %cleanup179

cleanup179:                                       ; preds = %if.then175, %if.end163.cleanup179_crit_edge, %do.end135, %do.end65, %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs_cfg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139}
!llvm.module.flags = !{!141, !142, !143, !144, !145, !146, !147, !148}
!llvm.ident = !{!149}

!0 = !{ptr @__initcall__kmod_intel_ixp4xx_eb__178_426_ixp4xx_exp_driver_init6, !1, !"__initcall__kmod_intel_ixp4xx_eb__178_426_ixp4xx_exp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 426, i32 1}
!2 = !{ptr @__exitcall_ixp4xx_exp_driver_exit, !1, !"__exitcall_ixp4xx_exp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author179, !4, !"__UNIQUE_ID_author179", i1 false, i1 false}
!4 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 427, i32 1}
!5 = !{ptr @__UNIQUE_ID_description180, !6, !"__UNIQUE_ID_description180", i1 false, i1 false}
!6 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 428, i32 1}
!7 = !{ptr @__UNIQUE_ID_file181, !8, !"__UNIQUE_ID_file181", i1 false, i1 false}
!8 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 429, i32 1}
!9 = !{ptr @__UNIQUE_ID_license182, !8, !"__UNIQUE_ID_license182", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 422, i32 11}
!12 = !{ptr @ixp4xx_exp_driver, !13, !"ixp4xx_exp_driver", i1 false, i1 false}
!13 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 419, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 362, i32 43}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 363, i32 43}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 367, i32 48}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 372, i32 34}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 377, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ixp4xx_exp_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ixp4xx_exp_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 384, i32 4}
!32 = !{ptr @ixp4xx_exp_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ixp4xx_exp_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 387, i32 4}
!36 = !{ptr @ixp4xx_exp_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ixp4xx_exp_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 390, i32 4}
!40 = !{ptr @ixp4xx_exp_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ixp4xx_exp_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 393, i32 4}
!44 = !{ptr @ixp4xx_exp_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @ixp4xx_exp_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 295, i32 49}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 298, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ixp4xx_exp_setup_child.__UNIQUE_ID_ddebug171, !49, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 321, i32 4}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ixp4xx_exp_setup_child._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ixp4xx_exp_setup_child._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 333, i32 3}
!60 = !{ptr @ixp4xx_exp_setup_child.__UNIQUE_ID_ddebug172, !59, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../include/linux/of.h", i32 261, i32 30}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 169, i32 3}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @ixp4xx_exp_setup_chipselect._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @ixp4xx_exp_setup_chipselect._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 175, i32 3}
!70 = !{ptr @ixp4xx_exp_setup_chipselect._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ixp4xx_exp_setup_chipselect._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 195, i32 2}
!74 = !{ptr @ixp4xx_exp_setup_chipselect._entry.35, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @ixp4xx_exp_setup_chipselect._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 205, i32 3}
!78 = !{ptr @ixp4xx_exp_setup_chipselect._entry.38, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ixp4xx_exp_setup_chipselect._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 208, i32 2}
!82 = !{ptr @ixp4xx_exp_setup_chipselect.__UNIQUE_ID_ddebug170, !81, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 226, i32 4}
!85 = !{ptr @ixp4xx_exp_setup_chipselect._entry.42, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ixp4xx_exp_setup_chipselect._entry_ptr.44, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.48, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 233, i32 4}
!91 = !{ptr @ixp4xx_exp_setup_chipselect._entry.47, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @ixp4xx_exp_setup_chipselect._entry_ptr.49, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 241, i32 3}
!95 = !{ptr @ixp4xx_exp_setup_chipselect._entry.50, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @ixp4xx_exp_setup_chipselect._entry_ptr.52, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 244, i32 33}
!99 = !{ptr @.str.55, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 247, i32 4}
!101 = !{ptr @ixp4xx_exp_setup_chipselect._entry.54, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @ixp4xx_exp_setup_chipselect._entry_ptr.56, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 250, i32 3}
!105 = !{ptr @ixp4xx_exp_setup_chipselect._entry.57, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @ixp4xx_exp_setup_chipselect._entry_ptr.59, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 264, i32 4}
!109 = !{ptr @ixp4xx_exp_setup_chipselect._entry.60, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @ixp4xx_exp_setup_chipselect._entry_ptr.62, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.64, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 271, i32 2}
!113 = !{ptr @ixp4xx_exp_setup_chipselect._entry.63, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @ixp4xx_exp_setup_chipselect._entry_ptr.65, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.66, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 95, i32 11}
!117 = !{ptr @.str.67, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 101, i32 11}
!119 = !{ptr @.str.68, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 107, i32 11}
!121 = !{ptr @.str.69, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 113, i32 11}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 119, i32 11}
!125 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 125, i32 11}
!127 = !{ptr @.str.72, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 130, i32 11}
!129 = !{ptr @.str.73, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 135, i32 11}
!131 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 140, i32 11}
!133 = !{ptr @.str.75, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 145, i32 11}
!135 = !{ptr @.str.76, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 150, i32 11}
!137 = !{ptr @ixp4xx_exp_tim_props, !138, !"ixp4xx_exp_tim_props", i1 false, i1 false}
!138 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 93, i32 41}
!139 = !{ptr @ixp4xx_exp_of_match, !140, !"ixp4xx_exp_of_match", i1 false, i1 false}
!140 = !{!"../drivers/bus/intel-ixp4xx-eb.c", i32 411, i32 34}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 1, !"min_enum_size", i32 4}
!143 = !{i32 8, !"branch-target-enforcement", i32 0}
!144 = !{i32 8, !"sign-return-address", i32 0}
!145 = !{i32 8, !"sign-return-address-all", i32 0}
!146 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!147 = !{i32 7, !"uwtable", i32 1}
!148 = !{i32 7, !"frame-pointer", i32 2}
!149 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!150 = !{!"auto-init"}
!151 = !{i8 0, i8 2}
!152 = !{i64 2148997767, i64 2148997772, i64 2148997785, i64 2148997829, i64 2148997863, i64 2148997884}
!153 = !{i32 0, i32 33}
