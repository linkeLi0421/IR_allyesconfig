; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/meson_mx_ao_arc.c_pt.bc'
source_filename = "../drivers/remoteproc/meson_mx_ao_arc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.rproc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.rproc = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.device, %struct.atomic_t, i32, i32, %struct.mutex, ptr, %struct.list_head, i32, %struct.list_head, %struct.list_head, i64, %struct.list_head, %struct.list_head, %struct.idr, i32, %struct.work_struct, i32, i8, i32, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, i32, i8, i16, %struct.cdev, i8 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.meson_mx_ao_arc_rproc_priv = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }

@__initcall__kmod_meson_mx_ao_arc__242_257_meson_mx_ao_arc_rproc_driver_init6 = internal global ptr @meson_mx_ao_arc_rproc_driver_init, section ".initcall6.init", align 4
@meson_mx_ao_arc_rproc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_mx_ao_arc_rproc_probe, ptr @meson_mx_ao_arc_rproc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_mx_ao_arc_rproc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_mx_ao_arc_rproc_driver_exit = internal global ptr @meson_mx_ao_arc_rproc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description243 = internal constant [83 x i8] c"meson_mx_ao_arc.description=Amlogic Meson6/8/8b/8m2 AO ARC remote processor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author244 = internal constant [80 x i8] c"meson_mx_ao_arc.author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [56 x i8] c"meson_mx_ao_arc.file=drivers/remoteproc/meson_mx_ao_arc\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [31 x i8] c"meson_mx_ao_arc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"meson-mx-ao-arc-rproc\00", [42 x i8] zeroinitializer }, align 32
@meson_mx_ao_arc_rproc_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-ao-arc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-ao-arc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"firmware-name\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"meson-mx-ao-arc\00", [16 x i8] zeroinitializer }, align 32
@meson_mx_ao_arc_rproc_ops = internal global { %struct.rproc_ops, [60 x i8] } { %struct.rproc_ops { ptr null, ptr null, ptr @meson_mx_ao_arc_rproc_start, ptr @meson_mx_ao_arc_rproc_stop, ptr null, ptr null, ptr null, ptr @meson_mx_ao_arc_rproc_da_to_va, ptr null, ptr null, ptr null, ptr null, ptr @rproc_elf_load_segments, ptr @rproc_elf_sanity_check, ptr @rproc_elf_get_boot_addr, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sram\00", [27 x i8] zeroinitializer }, align 32
@meson_mx_ao_arc_rproc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 165, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Could not get SRAM pool\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"meson_mx_ao_arc_rproc_probe\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/remoteproc/meson_mx_ao_arc.c\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_mx_ao_arc_rproc_probe._entry_ptr = internal global ptr @meson_mx_ao_arc_rproc_probe._entry, section ".printk_index", align 4
@meson_mx_ao_arc_rproc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 173, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not alloc memory in SRAM pool\0A\00", [59 x i8] zeroinitializer }, align 32
@meson_mx_ao_arc_rproc_probe._entry_ptr.11 = internal global ptr @meson_mx_ao_arc_rproc_probe._entry.9, section ".printk_index", align 4
@meson_mx_ao_arc_rproc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 179, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"SRAM address contains unusable bits\0A\00", [59 x i8] zeroinitializer }, align 32
@meson_mx_ao_arc_rproc_probe._entry_ptr.14 = internal global ptr @meson_mx_ao_arc_rproc_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"amlogic,secbus2\00", [16 x i8] zeroinitializer }, align 32
@meson_mx_ao_arc_rproc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 187, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to find SECBUS2 regmap\0A\00", [33 x i8] zeroinitializer }, align 32
@meson_mx_ao_arc_rproc_probe._entry_ptr.18 = internal global ptr @meson_mx_ao_arc_rproc_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"remap\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@meson_mx_ao_arc_rproc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 206, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get ARC reset\0A\00", [39 x i8] zeroinitializer }, align 32
@meson_mx_ao_arc_rproc_probe._entry_ptr.23 = internal global ptr @meson_mx_ao_arc_rproc_probe._entry.21, section ".printk_index", align 4
@meson_mx_ao_arc_rproc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.6, i32 213, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get the ARC PCLK\0A\00", [36 x i8] zeroinitializer }, align 32
@meson_mx_ao_arc_rproc_probe._entry_ptr.26 = internal global ptr @meson_mx_ao_arc_rproc_probe._entry.24, section ".printk_index", align 4
@___asan_gen_.27 = private unnamed_addr constant [29 x i8] c"meson_mx_ao_arc_rproc_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 249, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 253, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"meson_mx_ao_arc_rproc_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 242, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 152, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 154, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [26 x i8] c"meson_mx_ao_arc_rproc_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 135, i32 25 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 163, i32 50 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 165, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 173, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 179, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 185, i32 15 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 187, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 192, i32 65 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 198, i32 63 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 206, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [40 x i8] c"../drivers/remoteproc/meson_mx_ao_arc.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 213, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author244, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_meson_mx_ao_arc_rproc_driver_exit, ptr @__initcall__kmod_meson_mx_ao_arc__242_257_meson_mx_ao_arc_rproc_driver_init6, ptr @meson_mx_ao_arc_rproc_driver_exit, ptr @meson_mx_ao_arc_rproc_probe._entry, ptr @meson_mx_ao_arc_rproc_probe._entry.12, ptr @meson_mx_ao_arc_rproc_probe._entry.16, ptr @meson_mx_ao_arc_rproc_probe._entry.21, ptr @meson_mx_ao_arc_rproc_probe._entry.24, ptr @meson_mx_ao_arc_rproc_probe._entry.9, ptr @meson_mx_ao_arc_rproc_probe._entry_ptr, ptr @meson_mx_ao_arc_rproc_probe._entry_ptr.11, ptr @meson_mx_ao_arc_rproc_probe._entry_ptr.14, ptr @meson_mx_ao_arc_rproc_probe._entry_ptr.18, ptr @meson_mx_ao_arc_rproc_probe._entry_ptr.23, ptr @meson_mx_ao_arc_rproc_probe._entry_ptr.26, ptr @meson_mx_ao_arc_rproc_driver, ptr @.str, ptr @meson_mx_ao_arc_rproc_match, ptr @.str.1, ptr @.str.2, ptr @meson_mx_ao_arc_rproc_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_ao_arc_rproc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_ao_arc_rproc_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_ao_arc_rproc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_ao_arc_rproc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_ao_arc_rproc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_ao_arc_rproc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_ao_arc_rproc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_ao_arc_rproc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_ao_arc_rproc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_ao_arc_rproc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_mx_ao_arc_rproc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_ao_arc_rproc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_mx_ao_arc_rproc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_ao_arc_rproc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fw_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_name) #7
  %0 = ptrtoint ptr %fw_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fw_name, align 4
  %call = call i32 @device_property_read_string(ptr noundef %dev1, ptr noundef nonnull @.str.1, ptr noundef nonnull %fw_name) #7
  %1 = ptrtoint ptr %fw_name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw_name, align 4
  %call2 = call ptr @devm_rproc_alloc(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @meson_mx_ao_arc_rproc_ops, ptr noundef %2, i32 noundef 36) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %has_iommu = getelementptr inbounds %struct.rproc, ptr %call2, i32 0, i32 29
  %3 = ptrtoint ptr %has_iommu to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %has_iommu, align 8
  %priv3 = getelementptr inbounds %struct.rproc, ptr %call2, i32 0, i32 4
  %4 = ptrtoint ptr %priv3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv3, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call4 = call ptr @of_gen_pool_get(ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef 0) #7
  %sram_pool = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %sram_pool to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %sram_pool, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = call i32 @gen_pool_avail(ptr noundef nonnull %call4) #7
  %sram_size = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %sram_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call10, ptr %sram_size, align 4
  %10 = ptrtoint ptr %sram_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sram_pool, align 4
  %algo.i = getelementptr inbounds %struct.gen_pool, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %algo.i, align 4
  %data.i = getelementptr inbounds %struct.gen_pool, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %call.i.i = call i32 @gen_pool_alloc_algo_owner(ptr noundef %11, i32 noundef %call10, ptr noundef %13, ptr noundef %15, ptr noundef null) #7
  %sram_va = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %sram_va to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call.i.i, ptr %sram_va, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool15.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool15.not, label %do.end19, label %if.end20

do.end19:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %sram_pool to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sram_pool, align 4
  %call23 = call i32 @gen_pool_virt_to_phys(ptr noundef %18, i32 noundef %call.i.i) #7
  %sram_pa = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %sram_pa to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call23, ptr %sram_pa, align 4
  %20 = and i32 %call23, 802815
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool25.not = icmp eq i32 %20, 0
  br i1 %tobool25.not, label %if.end30, label %do.end29

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #10
  br label %err_free_genpool

if.end30:                                         ; preds = %if.end20
  %21 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %of_node, align 8
  %call32 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %22, ptr noundef nonnull @.str.15) #7
  %secbus2_regmap = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %5, i32 0, i32 8
  %23 = ptrtoint ptr %secbus2_regmap to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call32, ptr %secbus2_regmap, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  %24 = ptrtoint ptr %secbus2_regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %secbus2_regmap, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %err_free_genpool

if.end41:                                         ; preds = %if.end30
  %call42 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.19) #7
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call42, ptr %5, align 4
  %cmp.i135 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i135, label %if.then45, label %if.end48

if.then45:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %call42 to i32
  br label %err_free_genpool

if.end48:                                         ; preds = %if.end41
  %call49 = call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.20) #7
  %cpu_base = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %5, i32 0, i32 1
  %29 = ptrtoint ptr %cpu_base to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call49, ptr %cpu_base, align 4
  %cmp.i136 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call49 to i32
  br label %err_free_genpool

if.end55:                                         ; preds = %if.end48
  %call.i = call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %arc_reset = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %5, i32 0, i32 6
  %31 = ptrtoint ptr %arc_reset to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %arc_reset, align 4
  %cmp.i137 = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i137, label %do.end62, label %if.end65

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #10
  %32 = ptrtoint ptr %arc_reset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arc_reset, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %err_free_genpool

if.end65:                                         ; preds = %if.end55
  %call66 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %arc_pclk = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %5, i32 0, i32 7
  %35 = ptrtoint ptr %arc_pclk to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call66, ptr %arc_pclk, align 4
  %cmp.i138 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %do.end72, label %if.end75

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #10
  %36 = ptrtoint ptr %arc_pclk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arc_pclk, align 4
  %38 = ptrtoint ptr %37 to i32
  br label %err_free_genpool

if.end75:                                         ; preds = %if.end65
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %call76 = call i32 @rproc_add(ptr noundef nonnull %call2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end75.cleanup_crit_edge, label %if.end75.err_free_genpool_crit_edge

if.end75.err_free_genpool_crit_edge:              ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_genpool

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_free_genpool:                                 ; preds = %if.end75.err_free_genpool_crit_edge, %do.end72, %do.end62, %if.then52, %if.then45, %do.end38, %do.end29
  %ret.0 = phi i32 [ -22, %do.end29 ], [ %26, %do.end38 ], [ %28, %if.then45 ], [ %30, %if.then52 ], [ %34, %do.end62 ], [ %38, %do.end72 ], [ %call76, %if.end75.err_free_genpool_crit_edge ]
  %40 = ptrtoint ptr %sram_pool to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sram_pool, align 4
  %42 = ptrtoint ptr %sram_va to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sram_va, align 4
  %44 = ptrtoint ptr %sram_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sram_size, align 4
  call void @gen_pool_free_owner(ptr noundef %41, i32 noundef %43, i32 noundef %45, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_genpool, %if.end75.cleanup_crit_edge, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_free_genpool ], [ -12, %do.end19 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end75.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_name) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_ao_arc_rproc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv1 = getelementptr inbounds %struct.rproc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 4
  %call2 = tail call i32 @rproc_del(ptr noundef %1) #7
  %sram_pool = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %sram_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sram_pool, align 4
  %sram_va = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %sram_va to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sram_va, align 4
  %sram_size = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %sram_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sram_size, align 4
  tail call void @gen_pool_free_owner(ptr noundef %5, i32 noundef %7, i32 noundef %9, ptr noundef null) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rproc_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_avail(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_ao_arc_rproc_start(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %arc_pclk = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %arc_pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arc_pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body5, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %cleanup

do.body5:                                         ; preds = %if.end.i
  %sram_pa = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %sram_pa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sram_pa, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %6 = shl i32 %5, 10
  %7 = and i32 %6, 251658240
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr30 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 0) #7, !srcloc !68
  %12 = ptrtoint ptr %sram_pa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sram_pa, align 4
  %secbus2_regmap = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %secbus2_regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %secbus2_regmap, align 4
  %16 = lshr i32 %13, 4
  %and60 = and i32 %16, 65280
  %call.i124 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 0, i32 noundef 65280, i32 noundef %and60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %arc_reset = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %arc_reset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arc_reset, align 4
  %call62 = tail call i32 @reset_control_reset(ptr noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end66, label %if.then64

if.then64:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %arc_pclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arc_pclk, align 4
  tail call void @clk_disable(ptr noundef %20) #7
  tail call void @clk_unprepare(ptr noundef %20) #7
  br label %cleanup

if.end66:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #7
  %21 = ptrtoint ptr %sram_pa to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sram_pa, align 4
  %sub = add i32 %22, -268435456
  %23 = lshr i32 %sub, 4
  %shl93 = and i32 %23, 268369920
  %or = or i32 %shl93, 257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %or)
  %cpu_base = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %cpu_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cpu_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %24) #7, !srcloc !68
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 200, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.then64, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call62, %if.then64 ], [ 0, %if.end66 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_ao_arc_rproc_stop(ptr nocapture noundef readonly %rproc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %cpu_base = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cpu_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 131072) #7, !srcloc !68
  %arc_pclk = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %arc_pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arc_pclk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @meson_mx_ao_arc_rproc_da_to_va(ptr nocapture noundef readonly %rproc, i64 noundef %da, i32 noundef %len, ptr nocapture noundef readnone %is_iomem) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rproc, ptr %rproc, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %conv = zext i32 %len to i64
  %add = add i64 %conv, %da
  %sram_size = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %sram_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sram_size, align 4
  %conv2 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv2)
  %cmp = icmp ugt i64 %add, %conv2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sram_va = getelementptr inbounds %struct.meson_mx_ao_arc_rproc_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %sram_va to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sram_va, align 4
  %6 = inttoptr i32 %5 to ptr
  %idx.ext = trunc i64 %da to i32
  %add.ptr = getelementptr i8, ptr %6, i32 %idx.ext
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_load_segments(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_elf_sanity_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rproc_elf_get_boot_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rproc_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !49, !50, !52, !53, !54, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_meson_mx_ao_arc__242_257_meson_mx_ao_arc_rproc_driver_init6, !1, !"__initcall__kmod_meson_mx_ao_arc__242_257_meson_mx_ao_arc_rproc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 257, i32 1}
!2 = !{ptr @__exitcall_meson_mx_ao_arc_rproc_driver_exit, !1, !"__exitcall_meson_mx_ao_arc_rproc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description243, !4, !"__UNIQUE_ID_description243", i1 false, i1 false}
!4 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 259, i32 1}
!5 = !{ptr @__UNIQUE_ID_author244, !6, !"__UNIQUE_ID_author244", i1 false, i1 false}
!6 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 260, i32 1}
!7 = !{ptr @__UNIQUE_ID_file245, !8, !"__UNIQUE_ID_file245", i1 false, i1 false}
!8 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 261, i32 1}
!9 = !{ptr @__UNIQUE_ID_license246, !8, !"__UNIQUE_ID_license246", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 253, i32 11}
!12 = !{ptr @meson_mx_ao_arc_rproc_driver, !13, !"meson_mx_ao_arc_rproc_driver", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 249, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 152, i32 35}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 154, i32 32}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 163, i32 50}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 165, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @meson_mx_ao_arc_rproc_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @meson_mx_ao_arc_rproc_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 173, i32 3}
!30 = !{ptr @meson_mx_ao_arc_rproc_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @meson_mx_ao_arc_rproc_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 179, i32 3}
!34 = !{ptr @meson_mx_ao_arc_rproc_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @meson_mx_ao_arc_rproc_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 185, i32 15}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 187, i32 3}
!40 = !{ptr @meson_mx_ao_arc_rproc_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @meson_mx_ao_arc_rproc_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 192, i32 65}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 198, i32 63}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 206, i32 3}
!48 = !{ptr @meson_mx_ao_arc_rproc_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @meson_mx_ao_arc_rproc_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 213, i32 3}
!52 = !{ptr @meson_mx_ao_arc_rproc_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @meson_mx_ao_arc_rproc_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @meson_mx_ao_arc_rproc_ops, !55, !"meson_mx_ao_arc_rproc_ops", i1 false, i1 false}
!55 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 135, i32 25}
!56 = !{ptr @meson_mx_ao_arc_rproc_match, !57, !"meson_mx_ao_arc_rproc_match", i1 false, i1 false}
!57 = !{!"../drivers/remoteproc/meson_mx_ao_arc.c", i32 242, i32 34}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2154174578}
!68 = !{i64 3115101}
!69 = !{i64 2154174981}
!70 = !{i64 2154260797}
!71 = !{i64 2154261302}
