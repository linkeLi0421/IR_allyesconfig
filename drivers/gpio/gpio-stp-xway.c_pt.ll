; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-stp-xway.c_pt.bc'
source_filename = "../drivers/gpio/gpio-stp-xway.c"
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
%struct.xway_stp = type { %struct.gpio_chip, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }

@__initcall__kmod_gpio_stp_xway__223_340_xway_stp_init4 = internal global ptr @xway_stp_init, section ".initcall4.init", align 4
@xway_stp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xway_stp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xway_stp_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpio-stp-xway\00", [18 x i8] zeroinitializer }, align 32
@xway_stp_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lantiq,gpio-stp-xway\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"stp-xway\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lantiq,shadow\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lantiq,groups\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lantiq,dsl\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lantiq,ar9\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lantiq,gr9\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lantiq,vr9\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lantiq,ar10\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lantiq,grx390\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lantiq,phy1\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lantiq,phy2\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lantiq,phy3\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lantiq,phy4\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lantiq,rising\00", [18 x i8] zeroinitializer }, align 32
@xway_stp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 300, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xway_stp_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/gpio/gpio-stp-xway.c\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xway_stp_probe._entry_ptr = internal global ptr @xway_stp_probe._entry, section ".printk_index", align 4
@xway_stp_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xway_stp_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xway_stp_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.17, i32 316, ptr @.str.22, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Init done\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xway_stp_probe._entry_ptr.23 = internal global ptr @xway_stp_probe._entry.20, section ".printk_index", align 4
@xway_stp_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.17, i32 155, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"GPIO %d is driven by hardware\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xway_stp_request\00", [47 x i8] zeroinitializer }, align 32
@xway_stp_request._entry_ptr = internal global ptr @xway_stp_request._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"xway_stp_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 327, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 330, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"xway_stp_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 321, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 248, i32 19 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 257, i32 47 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 261, i32 47 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 268, i32 47 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 272, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 273, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 274, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 275, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 276, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 277, i32 48 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 279, i32 48 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 285, i32 48 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 290, i32 48 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 295, i32 43 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 300, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 310, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 316, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [32 x i8] c"../drivers/gpio/gpio-stp-xway.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 155, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__initcall__kmod_gpio_stp_xway__223_340_xway_stp_init4, ptr @xway_stp_probe._entry, ptr @xway_stp_probe._entry.20, ptr @xway_stp_probe._entry_ptr, ptr @xway_stp_probe._entry_ptr.23, ptr @xway_stp_request._entry, ptr @xway_stp_request._entry_ptr, ptr @xway_stp_driver, ptr @.str, ptr @xway_stp_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @xway_stp_probe.lock_key, ptr @xway_stp_probe.request_key, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xway_stp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xway_stp_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xway_stp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xway_stp_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xway_stp_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xway_stp_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xway_stp_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xway_stp_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xway_stp_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xway_stp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %shadow = alloca i32, align 4
  %groups = alloca i32, align 4
  %dsl = alloca i32, align 4
  %phy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shadow) #6
  %0 = ptrtoint ptr %shadow to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %shadow, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %groups) #6
  %1 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %groups, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dsl) #6
  %2 = ptrtoint ptr %dsl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dsl, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy) #6
  %3 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %phy, align 4, !annotation !66
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 368, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %virt = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %virt, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.1, ptr %call.i, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %8 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @xway_stp_dir_out, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %9 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xway_stp_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %10 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xway_stp_set, ptr %set, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @xway_stp_request, ptr %request, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %base, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %owner, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef nonnull %shadow, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool18.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool18.not, label %if.then19, label %if.end7.if.end21_crit_edge

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then19:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shadow, align 4
  %shadow20 = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %shadow20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %shadow20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end7.if.end21_crit_edge
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call.i.i180 = call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.3, ptr noundef nonnull %groups, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i180)
  %tobool25.not = icmp sgt i32 %call.i.i180, -1
  br i1 %tobool25.not, label %if.then26, label %if.end21.if.end29_crit_edge

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %groups, align 4
  %23 = trunc i32 %22 to i8
  %conv = and i8 %23, 7
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end21.if.end29_crit_edge
  %.sink = phi i8 [ %conv, %if.then26 ], [ 1, %if.end21.if.end29_crit_edge ]
  %24 = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %.sink, ptr %24, align 4
  %conv31 = zext i8 %.sink to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.sink)
  %tobool.not.i = icmp eq i8 %.sink, 0
  %26 = call i32 @llvm.ctlz.i32(i32 %conv31, i1 true) #6, !range !67
  %27 = trunc i32 %26 to i16
  %.neg = mul nsw i16 %27, -8
  %.op = add nsw i16 %.neg, 256
  %spec.select = select i1 %tobool.not.i, i16 0, i16 %.op
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %28 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %spec.select, ptr %ngpio, align 4
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %call.i.i181 = call i32 @of_property_read_variable_u32_array(ptr noundef %30, ptr noundef nonnull @.str.4, ptr noundef nonnull %dsl, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i181)
  %tobool38.not = icmp sgt i32 %call.i.i181, -1
  br i1 %tobool38.not, label %if.then39, label %if.end29.if.end43_crit_edge

if.end29.if.end43_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %dsl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dsl, align 4
  %33 = trunc i32 %32 to i8
  %conv41 = and i8 %33, 3
  %dsl42 = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %dsl42 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv41, ptr %dsl42, align 1
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end29.if.end43_crit_edge
  %call44 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %lor.lhs.false, label %if.end43.if.then57_crit_edge

if.end43.if.then57_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false:                                    ; preds = %if.end43
  %call46 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %lor.lhs.false48, label %lor.lhs.false.if.then57_crit_edge

lor.lhs.false.if.then57_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false48:                                  ; preds = %lor.lhs.false
  %call49 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %lor.lhs.false51, label %lor.lhs.false48.if.then57_crit_edge

lor.lhs.false48.if.then57_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false51:                                  ; preds = %lor.lhs.false48
  %call52 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %lor.lhs.false54, label %lor.lhs.false51.if.then57_crit_edge

lor.lhs.false51.if.then57_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false54:                                  ; preds = %lor.lhs.false51
  %call55 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %lor.lhs.false54.if.end74_crit_edge, label %lor.lhs.false54.if.then57_crit_edge

lor.lhs.false54.if.then57_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

lor.lhs.false54.if.end74_crit_edge:               ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then57:                                        ; preds = %lor.lhs.false54.if.then57_crit_edge, %lor.lhs.false51.if.then57_crit_edge, %lor.lhs.false48.if.then57_crit_edge, %lor.lhs.false.if.then57_crit_edge, %if.end43.if.then57_crit_edge
  %35 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node, align 8
  %call.i.i182 = call i32 @of_property_read_variable_u32_array(ptr noundef %36, ptr noundef nonnull @.str.10, ptr noundef nonnull %phy, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i182)
  %tobool61.not = icmp sgt i32 %call.i.i182, -1
  br i1 %tobool61.not, label %if.then62, label %if.then57.if.end65_crit_edge

if.then57.if.end65_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then62:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phy, align 4
  %39 = trunc i32 %38 to i8
  %conv64 = and i8 %39, 7
  %phy1 = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 6
  %40 = ptrtoint ptr %phy1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv64, ptr %phy1, align 2
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.then57.if.end65_crit_edge
  %41 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %of_node, align 8
  %call.i.i183 = call i32 @of_property_read_variable_u32_array(ptr noundef %42, ptr noundef nonnull @.str.11, ptr noundef nonnull %phy, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i183)
  %tobool69.not = icmp sgt i32 %call.i.i183, -1
  br i1 %tobool69.not, label %if.then70, label %if.end65.if.end74_crit_edge

if.end65.if.end74_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %phy, align 4
  %45 = trunc i32 %44 to i8
  %conv72 = and i8 %45, 7
  %phy2 = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 7
  %46 = ptrtoint ptr %phy2 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv72, ptr %phy2, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end65.if.end74_crit_edge, %lor.lhs.false54.if.end74_crit_edge
  %call75 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %lor.lhs.false77, label %if.end74.if.then80_crit_edge

if.end74.if.then80_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then80

lor.lhs.false77:                                  ; preds = %if.end74
  %call78 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %lor.lhs.false77.if.end89_crit_edge, label %lor.lhs.false77.if.then80_crit_edge

lor.lhs.false77.if.then80_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then80

lor.lhs.false77.if.end89_crit_edge:               ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then80:                                        ; preds = %lor.lhs.false77.if.then80_crit_edge, %if.end74.if.then80_crit_edge
  %47 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node, align 8
  %call.i.i184 = call i32 @of_property_read_variable_u32_array(ptr noundef %48, ptr noundef nonnull @.str.12, ptr noundef nonnull %phy, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i184)
  %tobool84.not = icmp sgt i32 %call.i.i184, -1
  br i1 %tobool84.not, label %if.then85, label %if.then80.if.end89_crit_edge

if.then80.if.end89_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end89

if.then85:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %phy, align 4
  %51 = trunc i32 %50 to i8
  %conv87 = and i8 %51, 7
  %phy3 = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 8
  %52 = ptrtoint ptr %phy3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv87, ptr %phy3, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then85, %if.then80.if.end89_crit_edge, %lor.lhs.false77.if.end89_crit_edge
  %call90 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end89.if.end101_crit_edge, label %if.then92

if.end89.if.end101_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then92:                                        ; preds = %if.end89
  %53 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node, align 8
  %call.i.i185 = call i32 @of_property_read_variable_u32_array(ptr noundef %54, ptr noundef nonnull @.str.13, ptr noundef nonnull %phy, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i185)
  %tobool96.not = icmp sgt i32 %call.i.i185, -1
  br i1 %tobool96.not, label %if.then97, label %if.then92.if.end101_crit_edge

if.then92.if.end101_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then97:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %phy, align 4
  %57 = trunc i32 %56 to i8
  %conv99 = and i8 %57, 7
  %phy4 = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 9
  %58 = ptrtoint ptr %phy4 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv99, ptr %phy4, align 1
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %if.then92.if.end101_crit_edge, %if.end89.if.end101_crit_edge
  %59 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %of_node, align 8
  %call104 = call ptr @of_find_property(ptr noundef %60, ptr noundef nonnull @.str.14, ptr noundef null) #6
  %tobool105.not = icmp eq ptr %call104, null
  br i1 %tobool105.not, label %if.then106, label %if.end101.if.end107_crit_edge

if.end101.if.end107_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then106:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %edge = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 2
  %61 = ptrtoint ptr %edge to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 67108864, ptr %edge, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.end101.if.end107_crit_edge
  %call109 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %cmp.i186 = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %do.end, label %if.end114

do.end:                                           ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  %62 = ptrtoint ptr %call109 to i32
  br label %cleanup

if.end114:                                        ; preds = %if.end107
  %call.i187 = call i32 @clk_prepare(ptr noundef %call109) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i187)
  %tobool.not.i188 = icmp eq i32 %call.i187, 0
  br i1 %tobool.not.i188, label %if.end.i, label %if.end114.cleanup_crit_edge

if.end114.cleanup_crit_edge:                      ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end114
  %call1.i = call i32 @clk_enable(ptr noundef %call109) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end118, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call109) #6
  br label %cleanup

if.end118:                                        ; preds = %if.end.i
  %63 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %virt, align 4
  %add.ptr.i = getelementptr i8, ptr %64, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !68
  %65 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %virt, align 4
  %add.ptr2.i = getelementptr i8, ptr %66, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #6, !srcloc !68
  %67 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %virt, align 4
  %add.ptr4.i = getelementptr i8, ptr %68, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #6, !srcloc !68
  %69 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %virt, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 -2147483648) #6, !srcloc !68
  %71 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %virt, align 4
  %add.ptr8.i = getelementptr i8, ptr %72, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 0) #6, !srcloc !68
  %73 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %virt, align 4
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #6, !srcloc !69
  %and.i = and i32 %75, -67108865
  %edge.i = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 2
  %76 = ptrtoint ptr %edge.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %edge.i, align 4
  %or.i = or i32 %and.i, %77
  %78 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %virt, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %or.i) #6, !srcloc !68
  %80 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %virt, align 4
  %add.ptr14.i = getelementptr i8, ptr %81, i32 4
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #6, !srcloc !69
  %and16.i = and i32 %82, -8
  %83 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %24, align 4
  %conv.i = zext i8 %84 to i32
  %or17.i = or i32 %and16.i, %conv.i
  %85 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %virt, align 4
  %add.ptr19.i = getelementptr i8, ptr %86, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %or17.i) #6, !srcloc !68
  %87 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %virt, align 4
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #6, !srcloc !69
  %and23.i = and i32 %89, -50331649
  %dsl.i = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 5
  %90 = ptrtoint ptr %dsl.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %dsl.i, align 1
  %conv24.i = zext i8 %91 to i32
  %shl.i = shl nuw i32 %conv24.i, 24
  %or25.i = or i32 %shl.i, %and23.i
  %92 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %virt, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %or25.i) #6, !srcloc !68
  %94 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %virt, align 4
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #6, !srcloc !69
  %and31.i = and i32 %96, -939524097
  %phy1.i = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 6
  %97 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %phy1.i, align 2
  %conv32.i = zext i8 %98 to i32
  %shl33.i = shl i32 %conv32.i, 27
  %or34.i = or i32 %shl33.i, %and31.i
  %99 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %virt, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %or34.i) #6, !srcloc !68
  %101 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %virt, align 4
  %add.ptr38.i = getelementptr i8, ptr %102, i32 4
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #6, !srcloc !69
  %and40.i = and i32 %103, -57
  %phy2.i = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 7
  %104 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %phy2.i, align 1
  %conv41.i = zext i8 %105 to i32
  %shl42.i = shl nuw nsw i32 %conv41.i, 3
  %or43.i = or i32 %shl42.i, %and40.i
  %106 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %virt, align 4
  %add.ptr45.i = getelementptr i8, ptr %107, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45.i, i32 %or43.i) #6, !srcloc !68
  %call46.i = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool.not.i189 = icmp eq i32 %call46.i, 0
  br i1 %tobool.not.i189, label %lor.lhs.false.i, label %if.end118.if.then.i_crit_edge

if.end118.if.then.i_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end118
  %call47.i = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %lor.lhs.false.i.if.end.i190_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

lor.lhs.false.i.if.end.i190_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i190

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end118.if.then.i_crit_edge
  %108 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %virt, align 4
  %add.ptr50.i = getelementptr i8, ptr %109, i32 4
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr50.i) #6, !srcloc !69
  %and52.i = and i32 %110, -449
  %phy3.i = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 8
  %111 = ptrtoint ptr %phy3.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %phy3.i, align 4
  %conv53.i = zext i8 %112 to i32
  %shl54.i = shl nuw nsw i32 %conv53.i, 6
  %or55.i = or i32 %shl54.i, %and52.i
  %113 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %virt, align 4
  %add.ptr57.i = getelementptr i8, ptr %114, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %or55.i) #6, !srcloc !68
  br label %if.end.i190

if.end.i190:                                      ; preds = %if.then.i, %lor.lhs.false.i.if.end.i190_crit_edge
  %call58.i = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end.i190.if.end70.i_crit_edge, label %if.then60.i

if.end.i190.if.end70.i_crit_edge:                 ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.then60.i:                                      ; preds = %if.end.i190
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %virt, align 4
  %add.ptr62.i = getelementptr i8, ptr %116, i32 4
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.i) #6, !srcloc !69
  %and64.i = and i32 %117, -229377
  %phy4.i = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 9
  %118 = ptrtoint ptr %phy4.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %phy4.i, align 1
  %conv65.i = zext i8 %119 to i32
  %shl66.i = shl nuw nsw i32 %conv65.i, 15
  %or67.i = or i32 %shl66.i, %and64.i
  %120 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %virt, align 4
  %add.ptr69.i = getelementptr i8, ptr %121, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 %or67.i) #6, !srcloc !68
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then60.i, %if.end.i190.if.end70.i_crit_edge
  %122 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %phy2.i, align 1
  %shl80.i = shl i8 %123, 5
  %124 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %phy1.i, align 2
  %shl84.i = shl i8 %125, 2
  %or85.i = or i8 %shl84.i, %shl80.i
  %126 = ptrtoint ptr %dsl.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %dsl.i, align 1
  %or88.i = or i8 %or85.i, %127
  %reserved.i = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 10
  %128 = ptrtoint ptr %reserved.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %or88.i, ptr %reserved.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or88.i)
  %tobool91.not.i = icmp eq i8 %or88.i, 0
  br i1 %tobool91.not.i, label %if.end70.i.xway_stp_hw_init.exit_crit_edge, label %if.then92.i

if.end70.i.xway_stp_hw_init.exit_crit_edge:       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xway_stp_hw_init.exit

if.then92.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  %129 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %virt, align 4
  %add.ptr94.i = getelementptr i8, ptr %130, i32 4
  %131 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94.i) #6, !srcloc !69
  %and96.i = and i32 %131, 1073741823
  %or97.i = or i32 %and96.i, -2147483648
  %132 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %virt, align 4
  %add.ptr99.i = getelementptr i8, ptr %133, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99.i, i32 %or97.i) #6, !srcloc !68
  %134 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %virt, align 4
  %add.ptr101.i = getelementptr i8, ptr %135, i32 4
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr101.i) #6, !srcloc !69
  %and103.i = and i32 %136, -260046849
  %or104.i = or i32 %and103.i, 25165824
  %137 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %virt, align 4
  %add.ptr106.i = getelementptr i8, ptr %138, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i, i32 %or104.i) #6, !srcloc !68
  %139 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %virt, align 4
  %add.ptr108.i = getelementptr i8, ptr %140, i32 4
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108.i) #6, !srcloc !69
  %and110.i = and i32 %141, -3145729
  %or111.i = or i32 %and110.i, 2097152
  %142 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %virt, align 4
  %add.ptr113.i = getelementptr i8, ptr %143, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113.i, i32 %or111.i) #6, !srcloc !68
  br label %xway_stp_hw_init.exit

xway_stp_hw_init.exit:                            ; preds = %if.then92.i, %if.end70.i.xway_stp_hw_init.exit_crit_edge
  %call121 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @xway_stp_probe.lock_key, ptr noundef nonnull @xway_stp_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %do.end127, label %if.then123

if.then123:                                       ; preds = %xway_stp_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_disable(ptr noundef %call109) #6
  call void @clk_unprepare(ptr noundef %call109) #6
  br label %cleanup

do.end127:                                        ; preds = %xway_stp_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end127, %if.then123, %if.then3.i, %if.end114.cleanup_crit_edge, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then4 ], [ %62, %do.end ], [ %call121, %if.then123 ], [ 0, %do.end127 ], [ -12, %entry.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i187, %if.end114.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dsl) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %groups) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shadow) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xway_stp_dir_out(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  %shl1.i = shl nuw i32 1, %gpio
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shadow.i = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %shadow.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shadow.i, align 4
  %or.i = or i32 %1, %shl1.i
  store i32 %or.i, ptr %shadow.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i = xor i32 %shl1.i, -1
  %shadow2.i = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %shadow2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shadow2.i, align 4
  %and.i = and i32 %3, %neg.i
  store i32 %and.i, ptr %shadow2.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %shadow3.i = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %shadow3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shadow3.i, align 4
  %virt.i = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #6, !srcloc !68
  %reserved.i = getelementptr inbounds %struct.xway_stp, ptr %call.i, i32 0, i32 10
  %8 = ptrtoint ptr %reserved.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reserved.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not.i = icmp eq i8 %9, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.xway_stp_set.exit_crit_edge

if.end.i.xway_stp_set.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xway_stp_set.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !69
  %or10.i = or i32 %12, -2147483648
  %13 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %or10.i) #6, !srcloc !68
  br label %xway_stp_set.exit

xway_stp_set.exit:                                ; preds = %if.then5.i, %if.end.i.xway_stp_set.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xway_stp_get(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %virt = getelementptr inbounds %struct.xway_stp, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  %shl = shl nuw i32 1, %gpio
  %and = and i32 %2, %shl
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xway_stp_set(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %shl1 = shl nuw i32 1, %gpio
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shadow = getelementptr inbounds %struct.xway_stp, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %shadow to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shadow, align 4
  %or = or i32 %1, %shl1
  store i32 %or, ptr %shadow, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %neg = xor i32 %shl1, -1
  %shadow2 = getelementptr inbounds %struct.xway_stp, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %shadow2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %shadow2, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %shadow2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %shadow3 = getelementptr inbounds %struct.xway_stp, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %shadow3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %shadow3, align 4
  %virt = getelementptr inbounds %struct.xway_stp, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #6, !srcloc !68
  %reserved = getelementptr inbounds %struct.xway_stp, ptr %call, i32 0, i32 10
  %8 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %reserved, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !69
  %or10 = or i32 %12, -2147483648
  %13 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %or10) #6, !srcloc !68
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %if.end.if.end13_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xway_stp_request(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %gpio)
  %cmp = icmp ult i32 %gpio, 8
  br i1 %cmp, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %reserved = getelementptr inbounds %struct.xway_stp, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reserved, align 2
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 1, %gpio
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %do.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, i32 noundef %gpio) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_gpio_stp_xway__223_340_xway_stp_init4, !1, !"__initcall__kmod_gpio_stp_xway__223_340_xway_stp_init4", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 340, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 330, i32 11}
!4 = !{ptr @xway_stp_driver, !5, !"xway_stp_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 327, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 248, i32 19}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 257, i32 47}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 261, i32 47}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 268, i32 47}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 272, i32 31}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 273, i32 29}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 274, i32 29}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 275, i32 29}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 276, i32 29}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 277, i32 48}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 279, i32 48}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 285, i32 48}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 290, i32 48}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 295, i32 43}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 300, i32 3}
!36 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @xway_stp_probe._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @xway_stp_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @xway_stp_probe.lock_key, !43, !"lock_key", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 310, i32 8}
!44 = !{ptr @xway_stp_probe.request_key, !43, !"request_key", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 316, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @xway_stp_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @xway_stp_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 155, i32 3}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @xway_stp_request._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @xway_stp_request._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @xway_stp_match, !56, !"xway_stp_match", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpio-stp-xway.c", i32 321, i32 34}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
!67 = !{i32 0, i32 33}
!68 = !{i64 5414197}
!69 = !{i64 5414615}
