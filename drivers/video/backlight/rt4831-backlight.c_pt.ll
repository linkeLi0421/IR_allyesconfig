; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/rt4831-backlight.c_pt.bc'
source_filename = "../drivers/video/backlight/rt4831-backlight.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
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
%struct.rt4831_priv = type { ptr, ptr, ptr }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_rt4831_backlight__307_200_rt4831_bl_driver_init6 = internal global ptr @rt4831_bl_driver_init, section ".initcall6.init", align 4
@rt4831_bl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rt4831_bl_probe, ptr @rt4831_bl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rt4831_bl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rt4831_bl_driver_exit = internal global ptr @rt4831_bl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [61 x i8] c"rt4831_backlight.author=ChiYuan Huang <cy_huang@richtek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [63 x i8] c"rt4831_backlight.file=drivers/video/backlight/rt4831-backlight\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [32 x i8] c"rt4831_backlight.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rt4831-backlight\00", [47 x i8] zeroinitializer }, align 32
@rt4831_bl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"richtek,rt4831-backlight\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__const.rt4831_bl_probe.bl_props = private unnamed_addr constant %struct.backlight_properties { i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 1 }, align 4
@rt4831_bl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 152, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to init regmap\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rt4831_bl_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/video/backlight/rt4831-backlight.c\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rt4831_bl_probe._entry_ptr = internal global ptr @rt4831_bl_probe._entry, section ".printk_index", align 4
@rt4831_bl_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to parse backlight properties\0A\00", [58 x i8] zeroinitializer }, align 32
@rt4831_bl_probe._entry_ptr.8 = internal global ptr @rt4831_bl_probe._entry.6, section ".printk_index", align 4
@rt4831_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @rt4831_bl_update_status, ptr @rt4831_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@rt4831_bl_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 165, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@rt4831_bl_probe._entry_ptr.11 = internal global ptr @rt4831_bl_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max-brightness\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"default-brightness\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"richtek,pwm-enable\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"richtek,bled-ovp-sel\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"richtek,channel-use\00", [44 x i8] zeroinitializer }, align 32
@rt4831_parse_backlight_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 125, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"richtek,channel-use DT property missing\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rt4831_parse_backlight_properties\00", [62 x i8] zeroinitializer }, align 32
@rt4831_parse_backlight_properties._entry_ptr = internal global ptr @rt4831_parse_backlight_properties._entry, section ".printk_index", align 4
@rt4831_parse_backlight_properties._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No channel specified\0A\00", [42 x i8] zeroinitializer }, align 32
@rt4831_parse_backlight_properties._entry_ptr.21 = internal global ptr @rt4831_parse_backlight_properties._entry.19, section ".printk_index", align 4
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"rt4831_bl_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 192, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 194, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"rt4831_bl_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 186, i32 49 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 152, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 158, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"rt4831_bl_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 77, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 165, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 93, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 99, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 106, i32 37 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 113, i32 37 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 123, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 125, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [46 x i8] c"../drivers/video/backlight/rt4831-backlight.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 130, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_rt4831_bl_driver_exit, ptr @__initcall__kmod_rt4831_backlight__307_200_rt4831_bl_driver_init6, ptr @rt4831_bl_driver_exit, ptr @rt4831_bl_probe._entry, ptr @rt4831_bl_probe._entry.6, ptr @rt4831_bl_probe._entry.9, ptr @rt4831_bl_probe._entry_ptr, ptr @rt4831_bl_probe._entry_ptr.11, ptr @rt4831_bl_probe._entry_ptr.8, ptr @rt4831_parse_backlight_properties._entry, ptr @rt4831_parse_backlight_properties._entry.19, ptr @rt4831_parse_backlight_properties._entry_ptr, ptr @rt4831_parse_backlight_properties._entry_ptr.21, ptr @rt4831_bl_driver, ptr @.str, ptr @rt4831_bl_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @rt4831_bl_ops, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4831_bl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4831_bl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4831_bl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4831_bl_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4831_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4831_bl_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4831_parse_backlight_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt4831_parse_backlight_properties._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4831_bl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rt4831_bl_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rt4831_bl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @rt4831_bl_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4831_bl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %propval.i = alloca i8, align 1
  %brightness.i = alloca i32, align 4
  %bl_props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bl_props) #6
  %0 = call ptr @memcpy(ptr %bl_props, ptr @__const.rt4831_bl_probe.bl_props, i32 28)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call4 = tail call ptr @dev_get_regmap(ptr noundef %3, ptr noundef null) #6
  %regmap = getelementptr inbounds %struct.rt4831_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %regmap, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %propval.i) #6
  %7 = ptrtoint ptr %propval.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %propval.i, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %brightness.i) #6
  %8 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %brightness.i, align 4, !annotation !60
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef nonnull %brightness.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end9.if.end.i_crit_edge, label %if.then.i

if.end9.if.end.i_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2048, ptr %brightness.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end9.if.end.i_crit_edge
  %10 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %brightness.i, align 4
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 2048) #6
  %max_brightness.i = getelementptr inbounds %struct.backlight_properties, ptr %bl_props, i32 0, i32 1
  %13 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max_brightness.i, align 4
  %call.i91.i = call i32 @device_property_read_u32_array(ptr noundef %6, ptr noundef nonnull @.str.13, ptr noundef nonnull %brightness.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %tobool3.not.i = icmp eq i32 %call.i91.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_brightness.i, align 4
  %16 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %brightness.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %17 = ptrtoint ptr %brightness.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %brightness.i, align 4
  %19 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_brightness.i, align 4
  %21 = call i32 @llvm.umin.i32(i32 %18, i32 %20) #6
  %22 = ptrtoint ptr %bl_props to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bl_props, align 4
  %call.i92.i = call zeroext i1 @device_property_present(ptr noundef %6, ptr noundef nonnull @.str.14) #6
  %val.0.i = zext i1 %call.i92.i to i32
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i93.i = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 2, i32 noundef 1, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %tobool19.not.i = icmp eq i32 %call.i93.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end6.i.rt4831_parse_backlight_properties.exit.thread_crit_edge

if.end6.i.rt4831_parse_backlight_properties.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rt4831_parse_backlight_properties.exit.thread

if.end21.i:                                       ; preds = %if.end6.i
  %call.i94.i = call i32 @device_property_read_u8_array(ptr noundef %6, ptr noundef nonnull @.str.15, ptr noundef nonnull %propval.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i)
  %tobool23.not.i = icmp eq i32 %call.i94.i, 0
  br i1 %tobool23.not.i, label %if.end21.i.if.end25.i_crit_edge, label %if.then24.i

if.end21.i.if.end25.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %propval.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %propval.i, align 1
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end25.i_crit_edge
  %26 = ptrtoint ptr %propval.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %propval.i, align 1
  %28 = call i8 @llvm.umin.i8(i8 %27, i8 3) #6
  %29 = ptrtoint ptr %propval.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %propval.i, align 1
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %32 = shl nuw nsw i8 %28, 5
  %shl.i = zext i8 %32 to i32
  %call.i95.i = call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 2, i32 noundef 224, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i)
  %tobool40.not.i = icmp eq i32 %call.i95.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end25.i.rt4831_parse_backlight_properties.exit.thread_crit_edge

if.end25.i.rt4831_parse_backlight_properties.exit.thread_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rt4831_parse_backlight_properties.exit.thread

if.end42.i:                                       ; preds = %if.end25.i
  %call.i96.i = call i32 @device_property_read_u8_array(ptr noundef %6, ptr noundef nonnull @.str.16, ptr noundef nonnull %propval.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i)
  %tobool44.not.i = icmp eq i32 %call.i96.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %if.end42.i.rt4831_parse_backlight_properties.exit.thread.sink.split_crit_edge

if.end42.i.rt4831_parse_backlight_properties.exit.thread.sink.split_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rt4831_parse_backlight_properties.exit.thread.sink.split

if.end46.i:                                       ; preds = %if.end42.i
  %33 = ptrtoint ptr %propval.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %propval.i, align 1
  %conv47.i = zext i8 %34 to i32
  %and.i = and i32 %conv47.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool48.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.rt4831_parse_backlight_properties.exit.thread.sink.split_crit_edge, label %rt4831_parse_backlight_properties.exit

if.end46.i.rt4831_parse_backlight_properties.exit.thread.sink.split_crit_edge: ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rt4831_parse_backlight_properties.exit.thread.sink.split

rt4831_parse_backlight_properties.exit.thread.sink.split: ; preds = %if.end46.i.rt4831_parse_backlight_properties.exit.thread.sink.split_crit_edge, %if.end42.i.rt4831_parse_backlight_properties.exit.thread.sink.split_crit_edge
  %.str.17.sink = phi ptr [ @.str.17, %if.end42.i.rt4831_parse_backlight_properties.exit.thread.sink.split_crit_edge ], [ @.str.20, %if.end46.i.rt4831_parse_backlight_properties.exit.thread.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ %call.i96.i, %if.end42.i.rt4831_parse_backlight_properties.exit.thread.sink.split_crit_edge ], [ -22, %if.end46.i.rt4831_parse_backlight_properties.exit.thread.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull %.str.17.sink) #9
  br label %rt4831_parse_backlight_properties.exit.thread

rt4831_parse_backlight_properties.exit.thread:    ; preds = %rt4831_parse_backlight_properties.exit.thread.sink.split, %if.end25.i.rt4831_parse_backlight_properties.exit.thread_crit_edge, %if.end6.i.rt4831_parse_backlight_properties.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i95.i, %if.end25.i.rt4831_parse_backlight_properties.exit.thread_crit_edge ], [ %call.i93.i, %if.end6.i.rt4831_parse_backlight_properties.exit.thread_crit_edge ], [ %retval.0.i.ph.ph, %rt4831_parse_backlight_properties.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %brightness.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %propval.i) #6
  br label %do.end15

rt4831_parse_backlight_properties.exit:           ; preds = %if.end46.i
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call.i97.i = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 8, i32 noundef 15, i32 noundef %conv47.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %brightness.i) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %propval.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool11.not = icmp eq i32 %call.i97.i, 0
  br i1 %tobool11.not, label %if.end17, label %rt4831_parse_backlight_properties.exit.do.end15_crit_edge

rt4831_parse_backlight_properties.exit.do.end15_crit_edge: ; preds = %rt4831_parse_backlight_properties.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

do.end15:                                         ; preds = %rt4831_parse_backlight_properties.exit.do.end15_crit_edge, %rt4831_parse_backlight_properties.exit.thread
  %retval.0.i61 = phi i32 [ %retval.0.i.ph, %rt4831_parse_backlight_properties.exit.thread ], [ %call.i97.i, %rt4831_parse_backlight_properties.exit.do.end15_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end17:                                         ; preds = %rt4831_parse_backlight_properties.exit
  %37 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev, align 8
  %call20 = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef %38, ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull @rt4831_bl_ops, ptr noundef nonnull %bl_props) #6
  %bl = getelementptr inbounds %struct.rt4831_priv, ptr %call.i, i32 0, i32 2
  %39 = ptrtoint ptr %bl to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call20, ptr %bl, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end26, label %if.end30

do.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %40 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bl, align 4
  %42 = ptrtoint ptr %41 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end17
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %call20, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %call20, i32 0, i32 3
  %43 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i, align 4
  %tobool.not.i55 = icmp eq ptr %44, null
  br i1 %tobool.not.i55, label %if.end30.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end30.backlight_update_status.exit_crit_edge:  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end30
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %46, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i57

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i57:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i56 = call i32 %46(ptr noundef %call20) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i57, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end30.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %do.end26, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i61, %do.end15 ], [ %42, %do.end26 ], [ 0, %backlight_update_status.exit ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bl_props) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4831_bl_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bl = getelementptr inbounds %struct.rt4831_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bl, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %3, align 8
  %5 = load ptr, ptr %bl, align 4
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #6
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

entry.backlight_update_status.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %entry
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %9, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 %9(ptr noundef %5) #6
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %entry.backlight_update_status.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4831_bl_update_status(ptr nocapture noundef readonly %bl_dev) #2 align 64 {
entry:
  %v = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl_dev, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl_dev, i32 0, i32 2
  %2 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %entry.backlight_get_brightness.exit.thread_crit_edge

entry.backlight_get_brightness.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit.thread

lor.lhs.false.i.i:                                ; preds = %entry
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl_dev, i32 0, i32 3
  %4 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.backlight_get_brightness.exit.thread_crit_edge

lor.lhs.false.i.i.backlight_get_brightness.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit.thread

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl_dev, i32 0, i32 5
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %backlight_get_brightness.exit, label %backlight_is_blank.exit.i.backlight_get_brightness.exit.thread_crit_edge

backlight_is_blank.exit.i.backlight_get_brightness.exit.thread_crit_edge: ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %backlight_get_brightness.exit.thread

backlight_get_brightness.exit.thread:             ; preds = %backlight_is_blank.exit.i.backlight_get_brightness.exit.thread_crit_edge, %lor.lhs.false.i.i.backlight_get_brightness.exit.thread_crit_edge, %entry.backlight_get_brightness.exit.thread_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v) #6
  %8 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %v, align 1, !annotation !60
  %9 = getelementptr inbounds [2 x i8], ptr %v, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !60
  br label %if.end10

backlight_get_brightness.exit:                    ; preds = %backlight_is_blank.exit.i
  %11 = ptrtoint ptr %bl_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bl_dev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v) #6
  %13 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %v, align 1, !annotation !60
  %14 = getelementptr inbounds [2 x i8], ptr %v, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %14, align 1, !annotation !60
  br i1 %tobool.not, label %backlight_get_brightness.exit.if.end10_crit_edge, label %if.then

backlight_get_brightness.exit.if.end10_crit_edge: ; preds = %backlight_get_brightness.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %backlight_get_brightness.exit
  %sub = add i32 %12, -1
  %16 = trunc i32 %sub to i8
  %conv = and i8 %16, 7
  %17 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %v, align 1
  %and4 = lshr i32 %sub, 3
  %conv5 = trunc i32 %and4 to i8
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv5, ptr %14, align 1
  %regmap = getelementptr inbounds %struct.rt4831_priv, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_raw_write(ptr noundef %20, i32 noundef 4, ptr noundef nonnull %v, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then.if.end10_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %backlight_get_brightness.exit.if.end10_crit_edge, %backlight_get_brightness.exit.thread
  %cond26 = phi i32 [ 0, %backlight_get_brightness.exit.thread ], [ 16, %if.then.if.end10_crit_edge ], [ 0, %backlight_get_brightness.exit.if.end10_crit_edge ]
  %regmap11 = getelementptr inbounds %struct.rt4831_priv, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap11, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 8, i32 noundef 16, i32 noundef %cond26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end10 ], [ %call7, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rt4831_bl_get_brightness(ptr nocapture noundef readonly %bl_dev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  %v = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl_dev, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %v) #6
  %3 = ptrtoint ptr %v to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %v, align 1, !annotation !60
  %4 = getelementptr inbounds [2 x i8], ptr %v, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !60
  %regmap = getelementptr inbounds %struct.rt4831_priv, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %7, i32 noundef 8, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %and = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_raw_read(ptr noundef %11, i32 noundef 4, ptr noundef nonnull %v, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %4, align 1
  %conv = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv, 3
  %14 = ptrtoint ptr %v to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %v, align 1
  %16 = and i8 %15, 7
  %and12 = zext i8 %16 to i32
  %add = or i32 %shl, 1
  %add13 = add nuw nsw i32 %add, %and12
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add13, %if.end9 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call6, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %v) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_rt4831_backlight__307_200_rt4831_bl_driver_init6, !1, !"__initcall__kmod_rt4831_backlight__307_200_rt4831_bl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 200, i32 1}
!2 = !{ptr @__exitcall_rt4831_bl_driver_exit, !1, !"__exitcall_rt4831_bl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 202, i32 1}
!5 = !{ptr @__UNIQUE_ID_file309, !6, !"__UNIQUE_ID_file309", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 203, i32 1}
!7 = !{ptr @__UNIQUE_ID_license310, !6, !"__UNIQUE_ID_license310", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 194, i32 11}
!10 = !{ptr @rt4831_bl_driver, !11, !"rt4831_bl_driver", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 192, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 152, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @rt4831_bl_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @rt4831_bl_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 158, i32 3}
!22 = !{ptr @rt4831_bl_probe._entry.6, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @rt4831_bl_probe._entry_ptr.8, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 165, i32 3}
!26 = !{ptr @rt4831_bl_probe._entry.9, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @rt4831_bl_probe._entry_ptr.11, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 93, i32 38}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 99, i32 38}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 106, i32 37}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 113, i32 37}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 123, i32 37}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 125, i32 3}
!40 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rt4831_parse_backlight_properties._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @rt4831_parse_backlight_properties._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 130, i32 3}
!45 = !{ptr @rt4831_parse_backlight_properties._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rt4831_parse_backlight_properties._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @rt4831_bl_ops, !48, !"rt4831_bl_ops", i1 false, i1 false}
!48 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 77, i32 35}
!49 = !{ptr @rt4831_bl_of_match, !50, !"rt4831_bl_of_match", i1 false, i1 false}
!50 = !{!"../drivers/video/backlight/rt4831-backlight.c", i32 186, i32 49}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
