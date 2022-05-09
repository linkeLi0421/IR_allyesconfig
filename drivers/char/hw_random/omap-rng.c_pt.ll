; ModuleID = '/llk/IR_all_yes/drivers/char/hw_random/omap-rng.c_pt.bc'
source_filename = "../drivers/char/hw_random/omap-rng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap_rng_pdata = type { ptr, i32, ptr, ptr, ptr }
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
%struct.omap_rng_dev = type { ptr, ptr, ptr, %struct.hwrng, ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }

@__initcall__kmod_omap_rng__188_568_omap_rng_driver_init6 = internal global ptr @omap_rng_driver_init, section ".initcall6.init", align 4
@omap_rng_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_rng_probe, ptr @omap_rng_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_rng_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_rng_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_rng_driver_exit = internal global ptr @omap_rng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias189 = internal constant [33 x i8] c"omap_rng.alias=platform:omap_rng\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [43 x i8] c"omap_rng.author=Deepak Saxena (and others)\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [46 x i8] c"omap_rng.file=drivers/char/hw_random/omap-rng\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [21 x i8] c"omap_rng.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap_rng\00", [23 x i8] zeroinitializer }, align 32
@omap_rng_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2_rng_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-rng\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_rng_pdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"inside-secure,safexcel-eip76\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @eip76_rng_pdata }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@omap_rng_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @omap_rng_suspend, ptr @omap_rng_resume, ptr @omap_rng_suspend, ptr @omap_rng_resume, ptr @omap_rng_suspend, ptr @omap_rng_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_rng_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 459, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to runtime_get device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_rng_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/char/hw_random/omap-rng.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_rng_probe._entry_ptr = internal global ptr @omap_rng_probe._entry, section ".printk_index", align 4
@omap_rng_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to enable the clk: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_rng_probe._entry_ptr.8 = internal global ptr @omap_rng_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@omap_rng_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to enable the register clk: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@omap_rng_probe._entry_ptr.12 = internal global ptr @omap_rng_probe._entry.10, section ".printk_index", align 4
@omap_rng_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 498, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Random Number Generator ver. %02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_rng_probe._entry_ptr.16 = internal global ptr @omap_rng_probe._entry.13, section ".printk_index", align 4
@omap_rng_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"initialization failed.\0A\00", [40 x i8] zeroinitializer }, align 32
@omap_rng_probe._entry_ptr.19 = internal global ptr @omap_rng_probe._entry.17, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,omap4-rng\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"inside-secure,safexcel-eip76\00", [35 x i8] zeroinitializer }, align 32
@of_get_omap_rng_device_details._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 398, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to request irq %d, err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"of_get_omap_rng_device_details\00", [33 x i8] zeroinitializer }, align 32
@of_get_omap_rng_device_details._entry_ptr = internal global ptr @of_get_omap_rng_device_details._entry, section ".printk_index", align 4
@omap2_rng_pdata = internal global { %struct.omap_rng_pdata, [44 x i8] } { %struct.omap_rng_pdata { ptr @reg_map_omap2, i32 4, ptr @omap2_rng_data_present, ptr @omap2_rng_init, ptr @omap2_rng_cleanup }, [44 x i8] zeroinitializer }, align 32
@reg_map_omap2 = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 0, i16 0, i16 0, i16 0, i16 4, i16 0, i16 0, i16 0, i16 40, i16 0, i16 0, i16 0, i16 0, i16 0, i16 60, i16 64], [32 x i8] zeroinitializer }, align 32
@omap4_rng_pdata = internal global { %struct.omap_rng_pdata, [44 x i8] } { %struct.omap_rng_pdata { ptr @reg_map_omap4, i32 8, ptr @omap4_rng_data_present, ptr @omap4_rng_init, ptr @omap4_rng_cleanup }, [44 x i8] zeroinitializer }, align 32
@eip76_rng_pdata = internal global { %struct.omap_rng_pdata, [44 x i8] } { %struct.omap_rng_pdata { ptr @reg_map_eip76, i32 16, ptr @omap4_rng_data_present, ptr @eip76_rng_init, ptr @omap4_rng_cleanup }, [44 x i8] zeroinitializer }, align 32
@reg_map_omap4 = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 0, i16 4, i16 0, i16 0, i16 8, i16 12, i16 16, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40, i16 44, i16 8160, i16 8164], [32 x i8] zeroinitializer }, align 32
@reg_map_eip76 = internal constant { [15 x i16], [34 x i8] } { [15 x i16] [i16 0, i16 4, i16 8, i16 12, i16 16, i16 0, i16 16, i16 20, i16 24, i16 28, i16 32, i16 36, i16 40, i16 44, i16 124], [34 x i8] zeroinitializer }, align 32
@omap_rng_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.24, ptr @.str.3, i32 547, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_rng_resume\00", [16 x i8] zeroinitializer }, align 32
@omap_rng_resume._entry_ptr = internal global ptr @omap_rng_resume._entry, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"omap_rng_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 558, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 560, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"omap_rng_of_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 360, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"omap_rng_pm\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 556, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 459, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 469, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 475, i32 43 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 481, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 497, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 510, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 388, i32 44 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 389, i32 44 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 397, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"omap2_rng_pdata\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 238, i32 30 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"reg_map_omap2\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 95, i32 18 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"omap4_rng_pdata\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 344, i32 30 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"eip76_rng_pdata\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 352, i32 30 }
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"reg_map_omap4\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 103, i32 18 }
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"reg_map_eip76\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 120, i32 18 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [37 x i8] c"../drivers/char/hw_random/omap-rng.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 547, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_alias189, ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_omap_rng_driver_exit, ptr @__initcall__kmod_omap_rng__188_568_omap_rng_driver_init6, ptr @of_get_omap_rng_device_details._entry, ptr @of_get_omap_rng_device_details._entry_ptr, ptr @omap_rng_driver_exit, ptr @omap_rng_probe._entry, ptr @omap_rng_probe._entry.10, ptr @omap_rng_probe._entry.13, ptr @omap_rng_probe._entry.17, ptr @omap_rng_probe._entry.6, ptr @omap_rng_probe._entry_ptr, ptr @omap_rng_probe._entry_ptr.12, ptr @omap_rng_probe._entry_ptr.16, ptr @omap_rng_probe._entry_ptr.19, ptr @omap_rng_probe._entry_ptr.8, ptr @omap_rng_resume._entry, ptr @omap_rng_resume._entry_ptr, ptr @omap_rng_driver, ptr @.str, ptr @omap_rng_of_match, ptr @omap_rng_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @omap2_rng_pdata, ptr @reg_map_omap2, ptr @omap4_rng_pdata, ptr @eip76_rng_pdata, ptr @reg_map_omap4, ptr @reg_map_eip76, ptr @.str.24], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rng_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rng_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rng_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rng_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rng_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rng_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rng_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rng_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_get_omap_rng_device_details._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_rng_pdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_map_omap2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_rng_pdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eip76_rng_pdata to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_map_omap4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_map_eip76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rng_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rng_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_rng_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_rng_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_rng_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rng_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 120, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup95_crit_edge, label %if.end

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup95

if.end:                                           ; preds = %entry
  %rng = getelementptr inbounds %struct.omap_rng_dev, ptr %call.i, i32 0, i32 3
  %read = getelementptr inbounds %struct.omap_rng_dev, ptr %call.i, i32 0, i32 3, i32 5
  %0 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @omap_rng_do_read, ptr %read, align 4
  %init = getelementptr inbounds %struct.omap_rng_dev, ptr %call.i, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @omap_rng_init, ptr %init, align 4
  %cleanup = getelementptr inbounds %struct.omap_rng_dev, ptr %call.i, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @omap_rng_cleanup, ptr %cleanup, align 4
  %quality = getelementptr inbounds %struct.omap_rng_dev, ptr %call.i, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %quality to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 900, ptr %quality, align 4
  %4 = ptrtoint ptr %call.i to i32
  %priv6 = getelementptr inbounds %struct.omap_rng_dev, ptr %call.i, i32 0, i32 3, i32 6
  %5 = ptrtoint ptr %priv6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %priv6, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev7 = getelementptr inbounds %struct.omap_rng_dev, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %dev7, align 4
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call8 to i32
  br label %do.end94

if.end14:                                         ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end14.dev_name.exit_crit_edge

if.end14.dev_name.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end14.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end14.dev_name.exit_crit_edge ]
  %call16 = tail call noalias ptr @devm_kstrdup(ptr noundef %dev1, ptr noundef %retval.0.i, i32 noundef 3264) #6
  %14 = ptrtoint ptr %rng to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call16, ptr %rng, align 4
  %tobool20.not = icmp eq ptr %call16, null
  br i1 %tobool20.not, label %dev_name.exit.do.end94_crit_edge, label %if.end22

dev_name.exit.do.end94_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end94

if.end22:                                         ; preds = %dev_name.exit
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i153 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %cmp.i154 = icmp slt i32 %call.i153, 0
  br i1 %cmp.i154, label %if.then.i, label %if.end28

if.then.i:                                        ; preds = %if.end22
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !80
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !81
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call.i153) #9
  br label %do.end94

if.end28:                                         ; preds = %if.end22
  %call30 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.omap_rng_dev, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call30, ptr %clk, align 4
  %cmp33 = icmp eq ptr %call30, inttoptr (i32 -517 to ptr)
  br i1 %cmp33, label %if.end28.cleanup95_crit_edge, label %if.end35

if.end28.cleanup95_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup95

if.end35:                                         ; preds = %if.end28
  %cmp.i156 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %if.end35.if.end48_crit_edge, label %if.then38

if.end35.if.end48_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then38:                                        ; preds = %if.end35
  %call.i157 = tail call i32 @clk_prepare(ptr noundef %call30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool.not.i158 = icmp eq i32 %call.i157, 0
  br i1 %tobool.not.i158, label %if.end.i159, label %if.then38.do.end45_crit_edge

if.then38.do.end45_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

if.end.i159:                                      ; preds = %if.then38
  %call1.i = tail call i32 @clk_enable(ptr noundef %call30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i159.if.end48_crit_edge, label %if.then3.i

if.end.i159.if.end48_crit_edge:                   ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then3.i:                                       ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call30) #6
  br label %do.end45

do.end45:                                         ; preds = %if.then3.i, %if.then38.do.end45_crit_edge
  %retval.0.i160.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i157, %if.then38.do.end45_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i160.ph) #9
  br label %err_register

if.end48:                                         ; preds = %if.end.i159.if.end48_crit_edge, %if.end35.if.end48_crit_edge
  %call50 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #6
  %clk_reg = getelementptr inbounds %struct.omap_rng_dev, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %clk_reg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call50, ptr %clk_reg, align 4
  %cmp53 = icmp eq ptr %call50, inttoptr (i32 -517 to ptr)
  br i1 %cmp53, label %if.end48.cleanup95_crit_edge, label %if.end55

if.end48.cleanup95_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup95

if.end55:                                         ; preds = %if.end48
  %cmp.i161 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.end55.if.end68_crit_edge, label %if.then58

if.end55.if.end68_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then58:                                        ; preds = %if.end55
  %call60 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call50)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then58.if.end68_crit_edge, label %do.end65

if.then58.if.end68_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

do.end65:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call60) #9
  br label %err_register

if.end68:                                         ; preds = %if.then58.if.end68_crit_edge, %if.end55.if.end68_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %tobool69.not = icmp eq ptr %19, null
  br i1 %tobool69.not, label %cond.end.thread, label %cond.end

cond.end.thread:                                  ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %pdata.i = getelementptr inbounds %struct.omap_rng_dev, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %pdata.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @omap2_rng_pdata, ptr %pdata.i, align 4
  br label %if.end74

cond.end:                                         ; preds = %if.end68
  %call70 = tail call fastcc i32 @of_get_omap_rng_device_details(ptr noundef nonnull %call.i, ptr noundef %pdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool72.not = icmp eq i32 %call70, 0
  br i1 %tobool72.not, label %cond.end.if.end74_crit_edge, label %cond.end.err_register_crit_edge

cond.end.err_register_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_register

cond.end.if.end74_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end74

if.end74:                                         ; preds = %cond.end.if.end74_crit_edge, %cond.end.thread
  %call77 = tail call i32 @devm_hwrng_register(ptr noundef %dev1, ptr noundef %rng) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %do.end83, label %if.end74.err_register_crit_edge

if.end74.err_register_crit_edge:                  ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_register

do.end83:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %pdata.i162 = getelementptr inbounds %struct.omap_rng_dev, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %pdata.i162 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata.i162, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %arrayidx.i = getelementptr i16, ptr %26, i32 14
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %28 to i32
  %add.ptr.i = getelementptr i8, ptr %22, i32 %conv.i
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !82
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %29) #9
  br label %cleanup95

err_register:                                     ; preds = %if.end74.err_register_crit_edge, %cond.end.err_register_crit_edge, %do.end65, %do.end45
  %ret.0 = phi i32 [ %call70, %cond.end.err_register_crit_edge ], [ %call77, %if.end74.err_register_crit_edge ], [ %call60, %do.end65 ], [ %retval.0.i160.ph, %do.end45 ]
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %call.i, align 4
  %call.i163 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  %clk_reg90 = getelementptr inbounds %struct.omap_rng_dev, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %clk_reg90 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %clk_reg90, align 4
  tail call void @clk_disable(ptr noundef %32) #6
  tail call void @clk_unprepare(ptr noundef %32) #6
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %34) #6
  tail call void @clk_unprepare(ptr noundef %34) #6
  br label %do.end94

do.end94:                                         ; preds = %err_register, %do.end, %dev_name.exit.do.end94_crit_edge, %if.then11
  %ret.1 = phi i32 [ %9, %if.then11 ], [ %call.i153, %do.end ], [ %ret.0, %err_register ], [ -12, %dev_name.exit.do.end94_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #9
  br label %cleanup95

cleanup95:                                        ; preds = %do.end94, %do.end83, %if.end48.cleanup95_crit_edge, %if.end28.cleanup95_crit_edge, %entry.cleanup95_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.end94 ], [ 0, %do.end83 ], [ -12, %entry.cleanup95_crit_edge ], [ -517, %if.end28.cleanup95_crit_edge ], [ -517, %if.end48.cleanup95_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rng_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata = getelementptr inbounds %struct.omap_rng_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %cleanup = getelementptr inbounds %struct.omap_rng_pdata, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cleanup, align 4
  tail call void %5(ptr noundef %1) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  %clk = getelementptr inbounds %struct.omap_rng_dev, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %clk_reg = getelementptr inbounds %struct.omap_rng_dev, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %clk_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_reg, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rng_do_read(ptr nocapture noundef readonly %rng, ptr noundef %data, i32 noundef %max, i1 noundef zeroext %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv1, align 4
  %2 = inttoptr i32 %1 to ptr
  %pdata = getelementptr inbounds %struct.omap_rng_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata, align 4
  %data_size = getelementptr inbounds %struct.omap_rng_pdata, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %max)
  %cmp = icmp ugt i32 %6, %max
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %entry.for.body_crit_edge
  %i.033 = phi i32 [ %inc, %if.end6.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 4
  %data_present = getelementptr inbounds %struct.omap_rng_pdata, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %data_present to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data_present, align 4
  %call = tail call i32 %10(ptr noundef %2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %11 = and i1 %tobool.not, %wait
  br i1 %11, label %if.end6, label %for.end

if.end6:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #6
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, 100
  br i1 %exitcond.not, label %if.end6.cleanup_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %for.end.cleanup_crit_edge, label %if.end9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %15 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdata, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %18, align 2
  %conv = zext i16 %20 to i32
  %add.ptr = getelementptr i8, ptr %14, i32 %conv
  %data_size12 = getelementptr inbounds %struct.omap_rng_pdata, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %data_size12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_size12, align 4
  tail call void @mmiocpy(ptr noundef %data, ptr noundef %add.ptr, i32 noundef %22) #6
  %23 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdata, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %arrayidx15 = getelementptr i16, ptr %26, i32 6
  %27 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool16.not = icmp eq i16 %28, 0
  br i1 %tobool16.not, label %if.end9.if.end18_crit_edge, label %if.then17

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %2, align 4
  %conv.i = zext i16 %28 to i32
  %add.ptr.i = getelementptr i8, ptr %30, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #6, !srcloc !83
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end9.if.end18_crit_edge
  %31 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdata, align 4
  %data_size20 = getelementptr inbounds %struct.omap_rng_pdata, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %data_size20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_size20, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %for.end.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %34, %if.end18 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rng_init(ptr nocapture noundef readonly %rng) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv1, align 4
  %2 = inttoptr i32 %1 to ptr
  %pdata = getelementptr inbounds %struct.omap_rng_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata, align 4
  %init = getelementptr inbounds %struct.omap_rng_pdata, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init, align 4
  %call = tail call i32 %6(ptr noundef %2) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_rng_cleanup(ptr nocapture noundef readonly %rng) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv1, align 4
  %2 = inttoptr i32 %1 to ptr
  %pdata = getelementptr inbounds %struct.omap_rng_dev, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata, align 4
  %cleanup = getelementptr inbounds %struct.omap_rng_pdata, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cleanup, align 4
  tail call void %6(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_get_omap_rng_device_details(ptr noundef %priv, ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %pdata = getelementptr inbounds %struct.omap_rng_dev, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %pdata, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call3 = tail call i32 @of_device_is_compatible(ptr noundef %2, ptr noundef nonnull @.str.20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %if.end.if.then8_crit_edge

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call6 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str.21) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then8_crit_edge

lor.lhs.false.if.then8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %lor.lhs.false.if.then8_crit_edge, %if.end.if.then8_crit_edge
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.then8.cleanup_crit_edge, label %if.end11

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.then8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.dev_name.exit_crit_edge

if.end11.dev_name.exit_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end11.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end11.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call9, ptr noundef nonnull @omap4_rng_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %priv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool14.not = icmp eq i32 %call.i, 0
  br i1 %tobool14.not, label %if.end16, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %call9, i32 noundef %call.i) #9
  br label %cleanup

if.end16:                                         ; preds = %dev_name.exit
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %arrayidx = getelementptr i16, ptr %12, i32 5
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool18.not = icmp eq i16 %14, 0
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i16 %14 to i32
  %add.ptr.i = getelementptr i8, ptr %16, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2) #6, !srcloc !83
  br label %cleanup

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i41 = getelementptr i16, ptr %12, i32 7
  %17 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx.i41, align 2
  %conv.i42 = zext i16 %18 to i32
  %add.ptr.i43 = getelementptr i8, ptr %16, i32 %conv.i42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 2) #6, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then19, %do.end, %if.then8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ %call9, %if.then8.cleanup_crit_edge ], [ 0, %if.then19 ], [ 0, %if.else ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_rng_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %pdata.i = getelementptr inbounds %struct.omap_rng_dev, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i16, ptr %5, i32 12
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !83
  %8 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_id, align 4
  %10 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %arrayidx.i11 = getelementptr i16, ptr %13, i32 13
  %14 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx.i11, align 2
  %conv.i12 = zext i16 %15 to i32
  %add.ptr.i13 = getelementptr i8, ptr %9, i32 %conv.i12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 0) #6, !srcloc !83
  %16 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_id, align 4
  %18 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %arrayidx.i15 = getelementptr i16, ptr %21, i32 10
  %22 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i15, align 2
  %conv.i16 = zext i16 %23 to i32
  %add.ptr.i17 = getelementptr i8, ptr %17, i32 %conv.i16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #6, !srcloc !82
  %neg = and i32 %24, 16777215
  %and = xor i32 %neg, 16777215
  %25 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_id, align 4
  %27 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %arrayidx.i19 = getelementptr i16, ptr %30, i32 11
  %31 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.i19, align 2
  %conv.i20 = zext i16 %32 to i32
  %add.ptr.i21 = getelementptr i8, ptr %26, i32 %conv.i20
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #6, !srcloc !82
  %or = or i32 %33, %and
  %34 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_id, align 4
  %36 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdata.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %arrayidx.i23 = getelementptr i16, ptr %39, i32 11
  %40 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx.i23, align 2
  %conv.i24 = zext i16 %41 to i32
  %add.ptr.i25 = getelementptr i8, ptr %35, i32 %conv.i24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %or) #6, !srcloc !83
  %42 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_id, align 4
  %44 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdata.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %arrayidx.i27 = getelementptr i16, ptr %47, i32 10
  %48 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx.i27, align 2
  %conv.i28 = zext i16 %49 to i32
  %add.ptr.i29 = getelementptr i8, ptr %43, i32 %conv.i28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 16777215) #6, !srcloc !83
  %50 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev_id, align 4
  %52 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdata.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 4
  %arrayidx.i31 = getelementptr i16, ptr %55, i32 6
  %56 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %arrayidx.i31, align 2
  %conv.i32 = zext i16 %57 to i32
  %add.ptr.i33 = getelementptr i8, ptr %51, i32 %conv.i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 2) #6, !srcloc !83
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_rng_data_present(ptr nocapture noundef readonly %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pdata.i = getelementptr inbounds %struct.omap_rng_dev, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i16, ptr %5, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_rng_init(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pdata.i = getelementptr inbounds %struct.omap_rng_dev, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i16, ptr %5, i32 15
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #6, !srcloc !83
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2_rng_cleanup(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pdata.i = getelementptr inbounds %struct.omap_rng_dev, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i16, ptr %5, i32 15
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_rng_data_present(ptr nocapture noundef readonly %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pdata.i = getelementptr inbounds %struct.omap_rng_dev, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i16, ptr %5, i32 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !82
  %and = and i32 %8, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_rng_init(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pdata.i = getelementptr inbounds %struct.omap_rng_dev, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i16, ptr %5, i32 7
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !82
  %and = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %arrayidx.i14 = getelementptr i16, ptr %14, i32 8
  %15 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i14, align 2
  %conv.i15 = zext i16 %16 to i32
  %add.ptr.i16 = getelementptr i8, ptr %10, i32 %conv.i15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 2228257) #6, !srcloc !83
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %19 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %arrayidx.i18 = getelementptr i16, ptr %22, i32 11
  %23 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i18, align 2
  %conv.i19 = zext i16 %24 to i32
  %add.ptr.i20 = getelementptr i8, ptr %18, i32 %conv.i19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 0) #6, !srcloc !83
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %27 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %arrayidx.i22 = getelementptr i16, ptr %30, i32 10
  %31 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.i22, align 2
  %conv.i23 = zext i16 %32 to i32
  %add.ptr.i24 = getelementptr i8, ptr %26, i32 %conv.i23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 16777215) #6, !srcloc !83
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 4
  %35 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdata.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %arrayidx.i26 = getelementptr i16, ptr %38, i32 9
  %39 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i26, align 2
  %conv.i27 = zext i16 %40 to i32
  %add.ptr.i28 = getelementptr i8, ptr %34, i32 %conv.i27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 262399) #6, !srcloc !83
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %priv, align 4
  %43 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdata.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %arrayidx.i30 = getelementptr i16, ptr %46, i32 7
  %47 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx.i30, align 2
  %conv.i31 = zext i16 %48 to i32
  %add.ptr.i32 = getelementptr i8, ptr %42, i32 %conv.i31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 16712704) #6, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_rng_cleanup(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pdata.i = getelementptr inbounds %struct.omap_rng_dev, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i16, ptr %5, i32 7
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !82
  %and = and i32 %8, -1025
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %arrayidx.i4 = getelementptr i16, ptr %14, i32 7
  %15 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i4, align 2
  %conv.i5 = zext i16 %16 to i32
  %add.ptr.i6 = getelementptr i8, ptr %10, i32 %conv.i5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %and) #6, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eip76_rng_init(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %pdata.i = getelementptr inbounds %struct.omap_rng_dev, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr i16, ptr %5, i32 7
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !82
  %and = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %11 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %arrayidx.i8 = getelementptr i16, ptr %14, i32 8
  %15 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i8, align 2
  %conv.i9 = zext i16 %16 to i32
  %add.ptr.i10 = getelementptr i8, ptr %10, i32 %conv.i9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 2228229) #6, !srcloc !83
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 4
  %19 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %arrayidx.i12 = getelementptr i16, ptr %22, i32 11
  %23 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i12, align 2
  %conv.i13 = zext i16 %24 to i32
  %add.ptr.i14 = getelementptr i8, ptr %18, i32 %conv.i13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #6, !srcloc !83
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 4
  %27 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %arrayidx.i16 = getelementptr i16, ptr %30, i32 10
  %31 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx.i16, align 2
  %conv.i17 = zext i16 %32 to i32
  %add.ptr.i18 = getelementptr i8, ptr %26, i32 %conv.i17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 16777215) #6, !srcloc !83
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %priv, align 4
  %35 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdata.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %arrayidx.i20 = getelementptr i16, ptr %38, i32 7
  %39 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx.i20, align 2
  %conv.i21 = zext i16 %40 to i32
  %add.ptr.i22 = getelementptr i8, ptr %34, i32 %conv.i21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 1024) #6, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rng_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdata = getelementptr inbounds %struct.omap_rng_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %cleanup = getelementptr inbounds %struct.omap_rng_pdata, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cleanup, align 4
  tail call void %5(ptr noundef %1) #6
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rng_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end

if.then.i:                                        ; preds = %entry
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !80
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !81
  br label %do.end

do.end:                                           ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pdata = getelementptr inbounds %struct.omap_rng_dev, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata, align 4
  %init = getelementptr inbounds %struct.omap_rng_pdata, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init, align 4
  %call2 = tail call i32 %6(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_omap_rng__188_568_omap_rng_driver_init6, !1, !"__initcall__kmod_omap_rng__188_568_omap_rng_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/hw_random/omap-rng.c", i32 568, i32 1}
!2 = !{ptr @__exitcall_omap_rng_driver_exit, !1, !"__exitcall_omap_rng_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias189, !4, !"__UNIQUE_ID_alias189", i1 false, i1 false}
!4 = !{!"../drivers/char/hw_random/omap-rng.c", i32 569, i32 1}
!5 = !{ptr @__UNIQUE_ID_author190, !6, !"__UNIQUE_ID_author190", i1 false, i1 false}
!6 = !{!"../drivers/char/hw_random/omap-rng.c", i32 570, i32 1}
!7 = !{ptr @__UNIQUE_ID_file191, !8, !"__UNIQUE_ID_file191", i1 false, i1 false}
!8 = !{!"../drivers/char/hw_random/omap-rng.c", i32 571, i32 1}
!9 = !{ptr @__UNIQUE_ID_license192, !8, !"__UNIQUE_ID_license192", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/char/hw_random/omap-rng.c", i32 560, i32 12}
!12 = !{ptr @omap_rng_driver, !13, !"omap_rng_driver", i1 false, i1 false}
!13 = !{!"../drivers/char/hw_random/omap-rng.c", i32 558, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/char/hw_random/omap-rng.c", i32 459, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @omap_rng_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @omap_rng_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/hw_random/omap-rng.c", i32 469, i32 4}
!24 = !{ptr @omap_rng_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @omap_rng_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/char/hw_random/omap-rng.c", i32 475, i32 43}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/char/hw_random/omap-rng.c", i32 481, i32 4}
!30 = !{ptr @omap_rng_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @omap_rng_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/char/hw_random/omap-rng.c", i32 497, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @omap_rng_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @omap_rng_probe._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/char/hw_random/omap-rng.c", i32 510, i32 2}
!39 = !{ptr @omap_rng_probe._entry.17, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @omap_rng_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/char/hw_random/omap-rng.c", i32 388, i32 44}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/char/hw_random/omap-rng.c", i32 389, i32 44}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/char/hw_random/omap-rng.c", i32 397, i32 4}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @of_get_omap_rng_device_details._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @of_get_omap_rng_device_details._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @omap2_rng_pdata, !51, !"omap2_rng_pdata", i1 false, i1 false}
!51 = !{!"../drivers/char/hw_random/omap-rng.c", i32 238, i32 30}
!52 = !{ptr @reg_map_omap2, !53, !"reg_map_omap2", i1 false, i1 false}
!53 = !{!"../drivers/char/hw_random/omap-rng.c", i32 95, i32 18}
!54 = !{ptr @omap_rng_of_match, !55, !"omap_rng_of_match", i1 false, i1 false}
!55 = !{!"../drivers/char/hw_random/omap-rng.c", i32 360, i32 34}
!56 = !{ptr @omap4_rng_pdata, !57, !"omap4_rng_pdata", i1 false, i1 false}
!57 = !{!"../drivers/char/hw_random/omap-rng.c", i32 344, i32 30}
!58 = !{ptr @reg_map_omap4, !59, !"reg_map_omap4", i1 false, i1 false}
!59 = !{!"../drivers/char/hw_random/omap-rng.c", i32 103, i32 18}
!60 = !{ptr @eip76_rng_pdata, !61, !"eip76_rng_pdata", i1 false, i1 false}
!61 = !{!"../drivers/char/hw_random/omap-rng.c", i32 352, i32 30}
!62 = !{ptr @reg_map_eip76, !63, !"reg_map_eip76", i1 false, i1 false}
!63 = !{!"../drivers/char/hw_random/omap-rng.c", i32 120, i32 18}
!64 = !{ptr @omap_rng_pm, !65, !"omap_rng_pm", i1 false, i1 false}
!65 = !{!"../drivers/char/hw_random/omap-rng.c", i32 556, i32 8}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/char/hw_random/omap-rng.c", i32 547, i32 3}
!68 = !{ptr @omap_rng_resume._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @omap_rng_resume._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 2148352005}
!80 = !{i64 837625, i64 837650, i64 837672, i64 837688, i64 837700, i64 837720, i64 837744, i64 837760, i64 837772}
!81 = !{i64 2148352193}
!82 = !{i64 5425901}
!83 = !{i64 5425483}
