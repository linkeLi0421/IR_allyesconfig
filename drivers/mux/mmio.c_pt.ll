; ModuleID = '/llk/IR_all_yes/drivers/mux/mmio.c_pt.bc'
source_filename = "../drivers/mux/mmio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mux_control_ops = type { ptr }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.mux_chip = type { i32, ptr, %struct.device, i32, ptr }
%struct.mux_control = type { %struct.semaphore, ptr, i32, i32, i32, i64 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }

@__initcall__kmod_mux_mmio__170_138_mux_mmio_driver_init6 = internal global ptr @mux_mmio_driver_init, section ".initcall6.init", align 4
@mux_mmio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mux_mmio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mux_mmio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mux_mmio_driver_exit = internal global ptr @mux_mmio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [74 x i8] c"mux_mmio.description=MMIO register bitfield-controlled multiplexer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [55 x i8] c"mux_mmio.author=Philipp Zabel <p.zabel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [35 x i8] c"mux_mmio.file=drivers/mux/mux-mmio\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [24 x i8] c"mux_mmio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmio-mux\00", [23 x i8] zeroinitializer }, align 32
@mux_mmio_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mmio-mux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"reg-mux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mux_mmio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 53, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get regmap: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mux_mmio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/mux/mmio.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mux_mmio_probe._entry_ptr = internal global ptr @mux_mmio_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mux-reg-masks\00", [18 x i8] zeroinitializer }, align 32
@mux_mmio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 62, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"mux-reg-masks property missing or invalid: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@mux_mmio_probe._entry_ptr.9 = internal global ptr @mux_mmio_probe._entry.7, section ".printk_index", align 4
@mux_mmio_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"bitfield %d: failed to read mux-reg-masks property: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mux_mmio_probe._entry_ptr.12 = internal global ptr @mux_mmio_probe._entry.10, section ".printk_index", align 4
@mux_mmio_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 98, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"bitfield %d: invalid mask 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@mux_mmio_probe._entry_ptr.15 = internal global ptr @mux_mmio_probe._entry.13, section ".printk_index", align 4
@mux_mmio_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 106, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bitfield %d: failed allocate: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mux_mmio_probe._entry_ptr.18 = internal global ptr @mux_mmio_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"idle-states\00", [20 x i8] zeroinitializer }, align 32
@mux_mmio_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"bitfield: %d: out of range idle state %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mux_mmio_probe._entry_ptr.22 = internal global ptr @mux_mmio_probe._entry.20, section ".printk_index", align 4
@mux_mmio_ops = internal constant { %struct.mux_control_ops, [28 x i8] } { %struct.mux_control_ops { ptr @mux_mmio_set }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"mux_mmio_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 131, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 133, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"mux_mmio_dt_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 29, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 53, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 57, i32 40 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 61, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 87, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 97, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 105, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 113, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 117, i32 5 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"mux_mmio_ops\00", align 1
@___asan_gen_.87 = private constant [22 x i8] c"../drivers/mux/mmio.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 25, i32 37 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_mux_mmio_driver_exit, ptr @__initcall__kmod_mux_mmio__170_138_mux_mmio_driver_init6, ptr @mux_mmio_driver_exit, ptr @mux_mmio_probe._entry, ptr @mux_mmio_probe._entry.10, ptr @mux_mmio_probe._entry.13, ptr @mux_mmio_probe._entry.16, ptr @mux_mmio_probe._entry.20, ptr @mux_mmio_probe._entry.7, ptr @mux_mmio_probe._entry_ptr, ptr @mux_mmio_probe._entry_ptr.12, ptr @mux_mmio_probe._entry_ptr.15, ptr @mux_mmio_probe._entry_ptr.18, ptr @mux_mmio_probe._entry_ptr.22, ptr @mux_mmio_probe._entry_ptr.9, ptr @mux_mmio_driver, ptr @.str, ptr @mux_mmio_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @mux_mmio_ops], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_mmio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_mmio_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_mmio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_mmio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_mmio_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_mmio_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_mmio_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_mmio_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_mmio_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_mmio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mux_mmio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mux_mmio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mux_mmio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_mmio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %idle_state = alloca i32, align 4
  %reg = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 @of_device_is_compatible(ptr noundef %1, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %call2 = tail call ptr @syscon_node_to_regmap(ptr noundef %3) #6
  br label %if.end

if.else:                                          ; preds = %entry
  %parent3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %parent3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent3, align 8
  %call4 = tail call ptr @dev_get_regmap(ptr noundef %5, ptr noundef null) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else.if.then8_crit_edge, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.else.if.then8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.end:                                           ; preds = %if.else.if.end_crit_edge, %if.then
  %regmap.0 = phi ptr [ %call2, %if.then ], [ %call4, %if.else.if.end_crit_edge ]
  %cmp.i = icmp ugt ptr %regmap.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.then8_crit_edge, label %if.end10

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.else.if.then8_crit_edge
  %regmap.0162 = phi ptr [ %regmap.0, %if.end.if.then8_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.else.if.then8_crit_edge ]
  %6 = ptrtoint ptr %regmap.0162 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %6) #9
  br label %cleanup93

if.end10:                                         ; preds = %if.end
  %call.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp ne i32 %call.i, 0
  %7 = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  %or.cond = and i1 %cmp, %tobool12.not
  %ret.0 = select i1 %or.cond, i32 %call.i, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp15 = icmp slt i32 %ret.0, 0
  br i1 %cmp15, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %ret.0) #9
  br label %cleanup93

if.end20:                                         ; preds = %if.end10
  %div165166 = lshr i32 %ret.0, 1
  %mul = shl nuw i32 %div165166, 2
  %call21 = tail call ptr @devm_mux_chip_alloc(ptr noundef %dev1, i32 noundef %div165166, i32 noundef %mul) #6
  %cmp.i158 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call21 to i32
  br label %cleanup93

if.end25:                                         ; preds = %if.end20
  %mux.i = getelementptr inbounds %struct.mux_chip, ptr %call21, i32 0, i32 1
  %9 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mux.i, align 4
  %11 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call21, align 8
  %arrayidx.i = getelementptr %struct.mux_control, ptr %10, i32 %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.0)
  %cmp27178.not = icmp ult i32 %ret.0, 2
  br i1 %cmp27178.not, label %if.end25.for.end_crit_edge, label %for.body.preheader

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.end25
  %umax = call i32 @llvm.umax.i32(i32 %div165166, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0179 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %13 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mux.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idle_state) #6
  %15 = ptrtoint ptr %idle_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %idle_state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %reg, align 4, !annotation !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #6
  %17 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %mask, align 4, !annotation !59
  %mul29 = shl nuw i32 %i.0179, 1
  %call30 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %mul29, ptr noundef nonnull %reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then32, label %for.body.if.end35_crit_edge

for.body.if.end35_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then32:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add = or i32 %mul29, 1
  %call34 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %add, ptr noundef nonnull %mask) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %for.body.if.end35_crit_edge
  %ret.1 = phi i32 [ %call30, %for.body.if.end35_crit_edge ], [ %call34, %if.then32 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp36 = icmp slt i32 %ret.1, 0
  br i1 %cmp36, label %do.end40, label %if.end41

do.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %i.0179, i32 noundef %ret.1) #9
  br label %cleanup.thread

if.end41:                                         ; preds = %if.end35
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  %20 = call i32 @llvm.ctlz.i32(i32 %19, i1 true) #6, !range !60
  %sub.i = sub nuw nsw i32 32, %20
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %21 = call i32 @llvm.cttz.i32(i32 %19, i1 true), !range !60
  %sub44 = select i1 %tobool.not.i, i32 -1, i32 %21
  %shl.neg = shl nsw i32 -1, %sub44
  %sub49 = sub nuw nsw i32 32, %cond.i
  %shr = lshr i32 -1, %sub49
  %and = and i32 %shr, %shl.neg
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %and)
  %cmp51.not = icmp eq i32 %19, %and
  br i1 %cmp51.not, label %if.end56, label %do.end55

do.end55:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %i.0179, i32 noundef %19) #9
  br label %cleanup.thread

if.end56:                                         ; preds = %if.end41
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg, align 4
  %sub = add nsw i32 %cond.i, -1
  %.fca.0.insert = insertvalue [5 x i32] poison, i32 %23, 0
  %.fca.1.insert = insertvalue [5 x i32] %.fca.0.insert, i32 %sub44, 1
  %.fca.2.insert = insertvalue [5 x i32] %.fca.1.insert, i32 %sub, 2
  %.fca.3.insert = insertvalue [5 x i32] %.fca.2.insert, i32 -1, 3
  %.fca.4.insert = insertvalue [5 x i32] %.fca.3.insert, i32 -1, 4
  %call57 = call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %regmap.0, [5 x i32] %.fca.4.insert) #6
  %arrayidx58 = getelementptr ptr, ptr %arrayidx.i, i32 %i.0179
  %24 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call57, ptr %arrayidx58, align 4
  %cmp.i159 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %if.then61, label %if.end67

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %call57 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %i.0179, i32 noundef %25) #9
  br label %cleanup.thread

if.end67:                                         ; preds = %if.end56
  %sub71 = sub nsw i32 %cond.i, %sub44
  %shl72 = shl nuw i32 1, %sub71
  %states = getelementptr %struct.mux_control, ptr %14, i32 %i.0179, i32 3
  %26 = ptrtoint ptr %states to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %shl72, ptr %states, align 8
  %call73 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %i.0179, ptr noundef nonnull %idle_state) #6
  %27 = ptrtoint ptr %idle_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %idle_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp74.not = icmp eq i32 %28, -1
  br i1 %cmp74.not, label %if.end67.for.inc_crit_edge, label %if.then75

if.end67.for.inc_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then75:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp76 = icmp slt i32 %28, 0
  br i1 %cmp76, label %if.then75.do.end83_crit_edge, label %lor.lhs.false77

if.then75.do.end83_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end83

lor.lhs.false77:                                  ; preds = %if.then75
  %29 = ptrtoint ptr %states to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %states, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp79.not = icmp ult i32 %28, %30
  br i1 %cmp79.not, label %if.end84, label %lor.lhs.false77.do.end83_crit_edge

lor.lhs.false77.do.end83_crit_edge:               ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end83

do.end83:                                         ; preds = %lor.lhs.false77.do.end83_crit_edge, %if.then75.do.end83_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %i.0179, i32 noundef %28) #9
  br label %cleanup.thread

if.end84:                                         ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #8
  %idle_state85 = getelementptr %struct.mux_control, ptr %14, i32 %i.0179, i32 4
  %31 = ptrtoint ptr %idle_state85 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %idle_state85, align 4
  br label %for.inc

cleanup.thread:                                   ; preds = %do.end83, %if.then61, %do.end55, %do.end40
  %retval.1.ph = phi i32 [ %ret.1, %do.end40 ], [ -22, %do.end55 ], [ %25, %if.then61 ], [ -22, %do.end83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idle_state) #6
  br label %cleanup93

for.inc:                                          ; preds = %if.end84, %if.end67.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idle_state) #6
  %inc = add nuw nsw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end25.for.end_crit_edge
  %ops = getelementptr inbounds %struct.mux_chip, ptr %call21, i32 0, i32 4
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mux_mmio_ops, ptr %ops, align 4
  %call92 = call i32 @devm_mux_chip_register(ptr noundef %dev1, ptr noundef %call21) #6
  br label %cleanup93

cleanup93:                                        ; preds = %for.end, %cleanup.thread, %if.then23, %do.end19, %if.then8
  %retval.2 = phi i32 [ %6, %if.then8 ], [ %ret.0, %do.end19 ], [ %8, %if.then23 ], [ %call92, %for.end ], [ %retval.1.ph, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mux_chip_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mux_chip_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_mmio_set(ptr noundef %mux, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.mux_control, ptr %mux, i32 0, i32 1
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 8
  %mux.i = getelementptr inbounds %struct.mux_chip, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mux.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %arrayidx.i = getelementptr %struct.mux_control, ptr %3, i32 %5
  %sub.ptr.lhs.cast.i = ptrtoint ptr %mux to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 80
  %arrayidx = getelementptr ptr, ptr %arrayidx.i, i32 %sub.ptr.div.i
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef %state, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_mux_mmio__170_138_mux_mmio_driver_init6, !1, !"__initcall__kmod_mux_mmio__170_138_mux_mmio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mux/mmio.c", i32 138, i32 1}
!2 = !{ptr @__exitcall_mux_mmio_driver_exit, !1, !"__exitcall_mux_mmio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/mux/mmio.c", i32 140, i32 1}
!5 = !{ptr @__UNIQUE_ID_author172, !6, !"__UNIQUE_ID_author172", i1 false, i1 false}
!6 = !{!"../drivers/mux/mmio.c", i32 141, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/mux/mmio.c", i32 142, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mux/mmio.c", i32 133, i32 11}
!12 = !{ptr @mux_mmio_driver, !13, !"mux_mmio_driver", i1 false, i1 false}
!13 = !{!"../drivers/mux/mmio.c", i32 131, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mux/mmio.c", i32 53, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mux_mmio_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mux_mmio_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mux/mmio.c", i32 57, i32 40}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mux/mmio.c", i32 61, i32 3}
!26 = !{ptr @mux_mmio_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mux_mmio_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mux/mmio.c", i32 87, i32 4}
!30 = !{ptr @mux_mmio_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mux_mmio_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/mux/mmio.c", i32 97, i32 4}
!34 = !{ptr @mux_mmio_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mux_mmio_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mux/mmio.c", i32 105, i32 4}
!38 = !{ptr @mux_mmio_probe._entry.16, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @mux_mmio_probe._entry_ptr.18, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mux/mmio.c", i32 113, i32 34}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mux/mmio.c", i32 117, i32 5}
!44 = !{ptr @mux_mmio_probe._entry.20, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mux_mmio_probe._entry_ptr.22, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @mux_mmio_ops, !47, !"mux_mmio_ops", i1 false, i1 false}
!47 = !{!"../drivers/mux/mmio.c", i32 25, i32 37}
!48 = !{ptr @mux_mmio_dt_ids, !49, !"mux_mmio_dt_ids", i1 false, i1 false}
!49 = !{!"../drivers/mux/mmio.c", i32 29, i32 34}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
!60 = !{i32 0, i32 33}
