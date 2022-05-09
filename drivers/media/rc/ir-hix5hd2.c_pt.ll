; ModuleID = '/llk/IR_all_yes/drivers/media/rc/ir-hix5hd2.c_pt.bc'
source_filename = "../drivers/media/rc/ir-hix5hd2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.hix5hd2_soc_data = type { i32, i32 }
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
%struct.hix5hd2_ir_priv = type { i32, ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.ir_raw_event = type { %union.anon.72, i8, i8 }
%union.anon.72 = type { i32 }

@__initcall__kmod_ir_hix5hd2__232_401_hix5hd2_ir_driver_init6 = internal global ptr @hix5hd2_ir_driver_init, section ".initcall6.init", align 4
@hix5hd2_ir_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hix5hd2_ir_probe, ptr @hix5hd2_ir_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hix5hd2_ir_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hix5hd2_ir_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hix5hd2_ir_driver_exit = internal global ptr @hix5hd2_ir_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description233 = internal constant [66 x i8] c"ir_hix5hd2.description=IR controller driver for hix5hd2 platforms\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [56 x i8] c"ir_hix5hd2.author=Guoxiong Yan <yanguoxiong@huawei.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [44 x i8] c"ir_hix5hd2.file=drivers/media/rc/ir-hix5hd2\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [26 x i8] c"ir_hix5hd2.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias237 = internal constant [37 x i8] c"ir_hix5hd2.alias=platform:hix5hd2-ir\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hix5hd2-ir\00", [21 x i8] zeroinitializer }, align 32
@hix5hd2_ir_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hix5hd2-ir\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hix5hd2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3796cv300-ir\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3796cv300_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hix5hd2_ir_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @hix5hd2_ir_suspend, ptr @hix5hd2_ir_resume, ptr @hix5hd2_ir_suspend, ptr @hix5hd2_ir_resume, ptr @hix5hd2_ir_suspend, ptr @hix5hd2_ir_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@hix5hd2_ir_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to initialize IR data\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hix5hd2_ir_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/rc/ir-hix5hd2.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hix5hd2_ir_probe._entry_ptr = internal global ptr @hix5hd2_ir_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hisilicon,power-syscon\00", [41 x i8] zeroinitializer }, align 32
@hix5hd2_ir_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 272, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"no power-reg\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hix5hd2_ir_probe._entry_ptr.10 = internal global ptr @hix5hd2_ir_probe._entry.7, section ".printk_index", align 4
@hix5hd2_ir_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clock not found\0A\00", [47 x i8] zeroinitializer }, align 32
@hix5hd2_ir_probe._entry_ptr.13 = internal global ptr @hix5hd2_ir_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linux,rc-map-name\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hix5hd2-ir/input0\00", [46 x i8] zeroinitializer }, align 32
@hix5hd2_ir_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 321, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IRQ %d register failed\0A\00", [40 x i8] zeroinitializer }, align 32
@hix5hd2_ir_probe._entry_ptr.19 = internal global ptr @hix5hd2_ir_probe._entry.17, section ".printk_index", align 4
@hix5hd2_ir_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 339, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to register device (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@hix5hd2_ir_probe._entry_ptr.22 = internal global ptr @hix5hd2_ir_probe._entry.20, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hix5hd2_ir_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 138, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IR_BUSY timeout\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hix5hd2_ir_config\00", [46 x i8] zeroinitializer }, align 32
@hix5hd2_ir_config._entry_ptr = internal global ptr @hix5hd2_ir_config._entry, section ".printk_index", align 4
@hix5hd2_ir_rx_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 204, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"overflow, level=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hix5hd2_ir_rx_interrupt\00", [40 x i8] zeroinitializer }, align 32
@hix5hd2_ir_rx_interrupt._entry_ptr = internal global ptr @hix5hd2_ir_rx_interrupt._entry, section ".printk_index", align 4
@hix5hd2_data = internal constant { %struct.hix5hd2_soc_data, [24 x i8] } { %struct.hix5hd2_soc_data { i32 72, i32 0 }, [24 x i8] zeroinitializer }, align 32
@hi3796cv300_data = internal constant { %struct.hix5hd2_soc_data, [24 x i8] } { %struct.hix5hd2_soc_data { i32 96, i32 1 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"hix5hd2_ir_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 391, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 393, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"hix5hd2_ir_table\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 241, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"hix5hd2_ir_pm_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 388, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 264, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 270, i32 14 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 272, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 290, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 304, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 305, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 307, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 321, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 339, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 138, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 203, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [13 x i8] c"hix5hd2_data\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 72, i32 38 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"hi3796cv300_data\00", align 1
@___asan_gen_.118 = private constant [33 x i8] c"../drivers/media/rc/ir-hix5hd2.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 76, i32 38 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_hix5hd2_ir_driver_exit, ptr @__initcall__kmod_ir_hix5hd2__232_401_hix5hd2_ir_driver_init6, ptr @hix5hd2_ir_config._entry, ptr @hix5hd2_ir_config._entry_ptr, ptr @hix5hd2_ir_driver_exit, ptr @hix5hd2_ir_probe._entry, ptr @hix5hd2_ir_probe._entry.11, ptr @hix5hd2_ir_probe._entry.17, ptr @hix5hd2_ir_probe._entry.20, ptr @hix5hd2_ir_probe._entry.7, ptr @hix5hd2_ir_probe._entry_ptr, ptr @hix5hd2_ir_probe._entry_ptr.10, ptr @hix5hd2_ir_probe._entry_ptr.13, ptr @hix5hd2_ir_probe._entry_ptr.19, ptr @hix5hd2_ir_probe._entry_ptr.22, ptr @hix5hd2_ir_rx_interrupt._entry, ptr @hix5hd2_ir_rx_interrupt._entry_ptr, ptr @hix5hd2_ir_driver, ptr @.str, ptr @hix5hd2_ir_table, ptr @hix5hd2_ir_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @hix5hd2_data, ptr @hi3796cv300_data], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_ir_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_ir_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_ir_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_ir_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_ir_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_ir_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_ir_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_ir_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_ir_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_ir_rx_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hix5hd2_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3796cv300_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_ir_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hix5hd2_ir_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hix5hd2_ir_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @hix5hd2_ir_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_ir_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_match_device(ptr noundef nonnull @hix5hd2_ir_table, ptr noundef %dev1) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %socdata = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %socdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %socdata, align 4
  %call7 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.6) #6
  %regmap = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %regmap, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end13, %if.end6.if.end15_crit_edge
  %call16 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %base, align 4
  %cmp.i143 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %call23 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call23, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp = icmp slt i32 %call23, 0
  br i1 %cmp, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %call28 = tail call ptr @rc_allocate_device(i32 noundef 1) #6
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %call32 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clock = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call32, ptr %clock, align 4
  %cmp.i144 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  %11 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clock, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %err

if.end41:                                         ; preds = %if.end31
  %call.i145 = tail call i32 @clk_prepare(ptr noundef %call32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %tobool.not.i = icmp eq i32 %call.i145, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end41.err_crit_edge

if.end41.err_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end.i:                                         ; preds = %if.end41
  %call1.i = tail call i32 @clk_enable(ptr noundef %call32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end46, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call32) #6
  br label %err

if.end46:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clock, align 4
  %call48 = tail call i32 @clk_get_rate(ptr noundef %15) #6
  %rate = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call48, ptr %rate, align 4
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 16
  %17 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 130023420, ptr %allowed_protocols, align 8
  %priv49 = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 24
  %18 = ptrtoint ptr %priv49 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %priv49, align 4
  %open = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 48
  %19 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @hix5hd2_ir_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 49
  %20 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @hix5hd2_ir_close, ptr %close, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 6
  %21 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str, ptr %driver_name, align 8
  %call50 = tail call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef null) #6
  %tobool51.not = icmp eq ptr %call50, null
  %..str.15 = select i1 %tobool51.not, ptr @.str.15, ptr %call50
  %map_name52 = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 7
  %22 = ptrtoint ptr %map_name52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %..str.15, ptr %map_name52, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 3
  %23 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str, ptr %device_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 4
  %24 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.16, ptr %input_phys, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 5
  %25 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 25, ptr %input_id, align 8
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 5, i32 2
  %27 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 256, ptr %version, align 2
  %rx_resolution = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 37
  %29 = ptrtoint ptr %rx_resolution to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 10, ptr %rx_resolution, align 8
  %timeout = getelementptr inbounds %struct.rc_dev, ptr %call28, i32 0, i32 34
  %30 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 160000, ptr %timeout, align 4
  %call56 = tail call i32 @rc_register_device(ptr noundef nonnull %call28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end46.clkerr_crit_edge, label %if.end59

if.end46.clkerr_crit_edge:                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %clkerr

if.end59:                                         ; preds = %if.end46
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call.i, align 4
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  %call.i146 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %32, ptr noundef nonnull @hix5hd2_ir_rx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %34, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp62 = icmp slt i32 %call.i146, 0
  br i1 %cmp62, label %do.end66, label %if.end68

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %36) #9
  tail call void @rc_unregister_device(ptr noundef nonnull %call28) #6
  br label %clkerr

if.end68:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %rdev69 = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %rdev69 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call28, ptr %rdev69, align 4
  %dev70 = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %dev70 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev1, ptr %dev70, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

clkerr:                                           ; preds = %do.end66, %if.end46.clkerr_crit_edge
  %rdev.0 = phi ptr [ %call28, %if.end46.clkerr_crit_edge ], [ null, %do.end66 ]
  %ret.0 = phi i32 [ %call56, %if.end46.clkerr_crit_edge ], [ -22, %do.end66 ]
  %40 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %41) #6
  tail call void @clk_unprepare(ptr noundef %41) #6
  br label %err

err:                                              ; preds = %clkerr, %if.then3.i, %if.end41.err_crit_edge, %do.end38
  %rdev.1 = phi ptr [ %call28, %do.end38 ], [ %rdev.0, %clkerr ], [ %call28, %if.end41.err_crit_edge ], [ %call28, %if.then3.i ]
  %ret.1 = phi i32 [ %13, %do.end38 ], [ %ret.0, %clkerr ], [ %call.i145, %if.end41.err_crit_edge ], [ %call1.i, %if.then3.i ]
  tail call void @rc_free_device(ptr noundef %rdev.1) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %ret.1) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end68, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then19 ], [ %ret.1, %err ], [ %call56, %if.end68 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call23, %if.end22.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_ir_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clock = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %rdev = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 4
  tail call void @rc_unregister_device(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_ir_open(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rc_dev, ptr %rdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call fastcc i32 @hix5hd2_ir_clk_enable(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %socdata.i.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %socdata.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socdata.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.hix5hd2_soc_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 1, i32 257
  %6 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #6
  %base.i.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !76
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %10, i32 28
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27.i) #6, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not28.i = icmp eq i32 %11, 0
  br i1 %tobool.not28.i, label %if.end.hix5hd2_ir_config.exit.thread_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.hix5hd2_ir_config.exit.thread_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %hix5hd2_ir_config.exit.thread

while.body.i:                                     ; preds = %if.then.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %timeout.029.i = phi i32 [ %dec.i, %if.then.i.while.body.i_crit_edge ], [ 10000, %if.end.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.029.i)
  %tobool1.not.i = icmp eq i32 %timeout.029.i, 0
  br i1 %tobool1.not.i, label %if.then4, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  %dec.i = add nsw i32 %timeout.029.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #6
  %13 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 28
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !77
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then.i.hix5hd2_ir_config.exit.thread_crit_edge, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.then.i.hix5hd2_ir_config.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %hix5hd2_ir_config.exit.thread

hix5hd2_ir_config.exit.thread:                    ; preds = %if.then.i.hix5hd2_ir_config.exit.thread_crit_edge, %if.end.hix5hd2_ir_config.exit.thread_crit_edge
  %rate2.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %rate2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate2.i, align 4
  %add.i = add i32 %17, 500000
  %div4.i = udiv i32 %add.i, 1000000
  %sub.i = shl i32 %div4.i, 24
  %and.i = add i32 %sub.i, 2130706432
  %18 = or i32 %and.i, -2147483648
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %18) #6, !srcloc !76
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %22, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 0) #6, !srcloc !76
  %23 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %24, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 16777216) #6, !srcloc !76
  br label %cleanup

if.then4:                                         ; preds = %while.body.i
  %dev.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.23) #9
  %27 = ptrtoint ptr %socdata.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %socdata.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %31 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %val.i, align 4, !annotation !78
  %regmap.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i, align 4
  %tobool.not.i13 = icmp eq ptr %33, null
  br i1 %tobool.not.i13, label %if.else9.i, label %if.then.i15

if.then.i15:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @regmap_read(ptr noundef nonnull %33, i32 noundef %30, ptr noundef nonnull %val.i) #6
  %34 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val.i, align 4
  %and.i14 = and i32 %35, -49
  %or6.i = or i32 %and.i14, 32
  store i32 %or6.i, ptr %val.i, align 4
  %36 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %37, i32 noundef %30, i32 noundef %or6.i) #6
  br label %hix5hd2_ir_clk_enable.exit

if.else9.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %clock.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clock.i, align 4
  tail call void @clk_disable(ptr noundef %39) #6
  tail call void @clk_unprepare(ptr noundef %39) #6
  br label %hix5hd2_ir_clk_enable.exit

hix5hd2_ir_clk_enable.exit:                       ; preds = %if.else9.i, %if.then.i15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

cleanup:                                          ; preds = %hix5hd2_ir_clk_enable.exit, %hix5hd2_ir_config.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %hix5hd2_ir_clk_enable.exit ], [ %call, %entry.cleanup_crit_edge ], [ 0, %hix5hd2_ir_config.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hix5hd2_ir_close(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rc_dev, ptr %rdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %socdata.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %socdata.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !78
  %regmap.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.else9.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @regmap_read(ptr noundef nonnull %8, i32 noundef %5, ptr noundef nonnull %val.i) #6
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %and.i = and i32 %10, -49
  %or6.i = or i32 %and.i, 32
  store i32 %or6.i, ptr %val.i, align 4
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %12, i32 noundef %5, i32 noundef %or6.i) #6
  br label %hix5hd2_ir_clk_enable.exit

if.else9.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clock.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %clock.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clock.i, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  br label %hix5hd2_ir_clk_enable.exit

hix5hd2_ir_clk_enable.exit:                       ; preds = %if.else9.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_ir_rx_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %.compoundliteral.i = alloca %struct.ir_raw_event, align 4
  %ev = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 44
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !77
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = and i32 %3, 67109888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %rdev = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rdev, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral.i)
  %6 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %.compoundliteral.i, align 4
  %duty_cycle.i = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral.i, i32 0, i32 1
  %7 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %duty_cycle.i, align 4
  %pulse.i = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral.i, i32 0, i32 2
  %8 = ptrtoint ptr %pulse.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 64, ptr %pulse.i, align 1
  %call.i = call i32 @ir_raw_event_store(ptr noundef %5, ptr noundef nonnull %.compoundliteral.i) #6
  %idle.i = getelementptr inbounds %struct.rc_dev, ptr %5, i32 0, i32 14
  %9 = ptrtoint ptr %idle.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %idle.i, align 8
  call void @ir_raw_event_handle(ptr noundef %5) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral.i)
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %11, i32 32
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #6, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp87.not = icmp eq i32 %12, 0
  br i1 %cmp87.not, label %if.then.for.end_crit_edge, label %for.body.preheader

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.then
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %umax = call i32 @llvm.umax.i32(i32 %13, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.088 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %15, i32 36
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !77
  %inc = add nuw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %18, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 1024) #6, !srcloc !76
  %dev = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %data, i32 0, i32 2
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.25, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  %and13 = and i32 %3, 16777472
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %and15 = and i32 %3, 33554944
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %21 = and i32 %3, 50332416
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %if.end.if.end61_crit_edge, label %if.then17

if.end.if.end61_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then17:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ev) #6
  %23 = ptrtoint ptr %ev to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 0, ptr %ev, align 8
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %25, i32 32
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #6, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp2489.not = icmp eq i32 %26, 0
  br i1 %cmp2489.not, label %if.then17.for.end48_crit_edge, label %for.body25.lr.ph

if.then17.for.end48_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48

for.body25.lr.ph:                                 ; preds = %if.then17
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %ev, i32 0, i32 2
  %rdev34 = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %data, i32 0, i32 3
  %umax91 = call i32 @llvm.umax.i32(i32 %27, i32 1)
  br label %for.body25

for.body25:                                       ; preds = %for.inc46.for.body25_crit_edge, %for.body25.lr.ph
  %i.190 = phi i32 [ 0, %for.body25.lr.ph ], [ %inc47, %for.inc46.for.body25_crit_edge ]
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr28 = getelementptr i8, ptr %29, i32 36
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !77
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %and31 = and i32 %31, 65535
  %mul = mul nuw nsw i32 %and31, 10
  %shr = lshr i32 %31, 16
  %mul33 = mul nuw nsw i32 %shr, 10
  %add = add nuw nsw i32 %mul, %mul33
  %32 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %mul, ptr %ev, align 8
  %33 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %pulse, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %pulse, align 1
  %34 = ptrtoint ptr %rdev34 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rdev34, align 4
  %call35 = call i32 @ir_raw_event_store(ptr noundef %35, ptr noundef nonnull %ev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 160000, i32 %add)
  %cmp36 = icmp ult i32 %add, 160000
  br i1 %cmp36, label %if.then37, label %if.else

if.then37:                                        ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %ev to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mul33, ptr %ev, align 8
  %37 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load39 = load i8, ptr %pulse, align 1
  %bf.clear40 = and i8 %bf.load39, 127
  store i8 %bf.clear40, ptr %pulse, align 1
  %38 = ptrtoint ptr %rdev34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rdev34, align 4
  %call43 = call i32 @ir_raw_event_store(ptr noundef %39, ptr noundef nonnull %ev) #6
  br label %for.inc46

if.else:                                          ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %rdev34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rdev34, align 4
  call void @ir_raw_event_set_idle(ptr noundef %41, i1 noundef zeroext true) #6
  br label %for.inc46

for.inc46:                                        ; preds = %if.else, %if.then37
  %inc47 = add nuw i32 %i.190, 1
  %exitcond92.not = icmp eq i32 %inc47, %umax91
  br i1 %exitcond92.not, label %for.inc46.for.end48_crit_edge, label %for.inc46.for.body25_crit_edge

for.inc46.for.body25_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body25

for.inc46.for.end48_crit_edge:                    ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end48

for.end48:                                        ; preds = %for.inc46.for.end48_crit_edge, %if.then17.for.end48_crit_edge
  br i1 %tobool14.not, label %for.end48.if.end54_crit_edge, label %if.then51

for.end48.if.end54_crit_edge:                     ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then51:                                        ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr53 = getelementptr i8, ptr %43, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53, i32 256) #6, !srcloc !76
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %for.end48.if.end54_crit_edge
  br i1 %tobool16.not, label %if.end54.if.end60_crit_edge, label %if.then57

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr59 = getelementptr i8, ptr %45, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 512) #6, !srcloc !76
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end54.if.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ev) #6
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end.if.end61_crit_edge
  %rdev62 = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %data, i32 0, i32 3
  %46 = ptrtoint ptr %rdev62 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rdev62, align 4
  call void @ir_raw_event_handle(ptr noundef %47) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hix5hd2_ir_clk_enable(ptr nocapture noundef readonly %dev, i1 noundef zeroext %on) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %socdata = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %socdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %socdata, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !78
  %regmap = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.else9, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = call i32 @regmap_read(ptr noundef nonnull %6, i32 noundef %3, ptr noundef nonnull %val) #6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = and i32 %8, -49
  %. = select i1 %on, i32 16, i32 32
  %or6 = or i32 %and, %.
  store i32 %or6, ptr %val, align 4
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call8 = call i32 @regmap_write(ptr noundef %10, i32 noundef %3, i32 noundef %or6) #6
  br label %if.end16

if.else9:                                         ; preds = %entry
  %clock = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %dev, i32 0, i32 5
  %11 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clock, align 4
  br i1 %on, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else9
  %call.i = tail call i32 @clk_prepare(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then11.if.end16_crit_edge

if.then11.if.end16_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.end.i:                                         ; preds = %if.then11
  %call1.i = tail call i32 @clk_enable(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end16_crit_edge, label %if.then3.i

if.end.i.if.end16_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %if.end16

if.else13:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_disable(ptr noundef %12) #6
  tail call void @clk_unprepare(ptr noundef %12) #6
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.then3.i, %if.end.i.if.end16_crit_edge, %if.then11.if.end16_crit_edge, %if.then
  %ret.0 = phi i32 [ 0, %if.then ], [ 0, %if.else13 ], [ %call.i, %if.then11.if.end16_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.if.end16_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_set_idle(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_ir_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clock = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %socdata.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %socdata.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i, align 4, !annotation !78
  %regmap.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.else9.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @regmap_read(ptr noundef nonnull %10, i32 noundef %7, ptr noundef nonnull %val.i) #6
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  %and.i = and i32 %12, -49
  %or6.i = or i32 %and.i, 32
  store i32 %or6.i, ptr %val.i, align 4
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %14, i32 noundef %7, i32 noundef %or6.i) #6
  br label %hix5hd2_ir_clk_enable.exit

if.else9.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %16) #6
  tail call void @clk_unprepare(ptr noundef %16) #6
  br label %hix5hd2_ir_clk_enable.exit

hix5hd2_ir_clk_enable.exit:                       ; preds = %if.else9.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hix5hd2_ir_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @hix5hd2_ir_clk_enable(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %clock = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clock, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end6, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i, %if.end.if.then4_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end.if.then4_crit_edge ]
  %socdata.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %socdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %socdata.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i, align 4, !annotation !78
  %regmap.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %tobool.not.i21 = icmp eq ptr %10, null
  br i1 %tobool.not.i21, label %if.else9.i, label %if.then.i

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %call.i22 = call i32 @regmap_read(ptr noundef nonnull %10, i32 noundef %7, ptr noundef nonnull %val.i) #6
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i, align 4
  %and.i = and i32 %12, -49
  %or6.i = or i32 %and.i, 32
  store i32 %or6.i, ptr %val.i, align 4
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %14, i32 noundef %7, i32 noundef %or6.i) #6
  br label %hix5hd2_ir_clk_enable.exit

if.else9.i:                                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clock, align 4
  tail call void @clk_disable(ptr noundef %16) #6
  tail call void @clk_unprepare(ptr noundef %16) #6
  br label %hix5hd2_ir_clk_enable.exit

hix5hd2_ir_clk_enable.exit:                       ; preds = %if.else9.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %socdata.i23 = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %socdata.i23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %socdata.i23, align 4
  %flags.i = getelementptr inbounds %struct.hix5hd2_soc_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i24 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  %spec.select.i = select i1 %tobool.not.i25, i32 1, i32 257
  %21 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #6
  %base.i = getelementptr inbounds %struct.hix5hd2_ir_priv, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !76
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !76
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr8 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -16777216) #6, !srcloc !76
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr10 = getelementptr i8, ptr %29, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 16777216) #6, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %hix5hd2_ir_clk_enable.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %hix5hd2_ir_clk_enable.exit ], [ 0, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_ir_hix5hd2__232_401_hix5hd2_ir_driver_init6, !1, !"__initcall__kmod_ir_hix5hd2__232_401_hix5hd2_ir_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 401, i32 1}
!2 = !{ptr @__exitcall_hix5hd2_ir_driver_exit, !1, !"__exitcall_hix5hd2_ir_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description233, !4, !"__UNIQUE_ID_description233", i1 false, i1 false}
!4 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 403, i32 1}
!5 = !{ptr @__UNIQUE_ID_author234, !6, !"__UNIQUE_ID_author234", i1 false, i1 false}
!6 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 404, i32 1}
!7 = !{ptr @__UNIQUE_ID_file235, !8, !"__UNIQUE_ID_file235", i1 false, i1 false}
!8 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 405, i32 1}
!9 = !{ptr @__UNIQUE_ID_license236, !8, !"__UNIQUE_ID_license236", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias237, !11, !"__UNIQUE_ID_alias237", i1 false, i1 false}
!11 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 406, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 393, i32 11}
!14 = !{ptr @hix5hd2_ir_driver, !15, !"hix5hd2_ir_driver", i1 false, i1 false}
!15 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 391, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 264, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @hix5hd2_ir_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @hix5hd2_ir_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 270, i32 14}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 272, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hix5hd2_ir_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @hix5hd2_ir_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 290, i32 3}
!33 = !{ptr @hix5hd2_ir_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @hix5hd2_ir_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 304, i32 35}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 305, i32 31}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 307, i32 21}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 321, i32 3}
!43 = !{ptr @hix5hd2_ir_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @hix5hd2_ir_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 339, i32 2}
!47 = !{ptr @hix5hd2_ir_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @hix5hd2_ir_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 138, i32 4}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @hix5hd2_ir_config._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @hix5hd2_ir_config._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 203, i32 3}
!56 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @hix5hd2_ir_rx_interrupt._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @hix5hd2_ir_rx_interrupt._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @hix5hd2_ir_table, !60, !"hix5hd2_ir_table", i1 false, i1 false}
!60 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 241, i32 34}
!61 = !{ptr @hix5hd2_data, !62, !"hix5hd2_data", i1 false, i1 false}
!62 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 72, i32 38}
!63 = !{ptr @hi3796cv300_data, !64, !"hi3796cv300_data", i1 false, i1 false}
!64 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 76, i32 38}
!65 = !{ptr @hix5hd2_ir_pm_ops, !66, !"hix5hd2_ir_pm_ops", i1 false, i1 false}
!66 = !{!"../drivers/media/rc/ir-hix5hd2.c", i32 388, i32 8}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 4245240}
!77 = !{i64 4245658}
!78 = !{!"auto-init"}
