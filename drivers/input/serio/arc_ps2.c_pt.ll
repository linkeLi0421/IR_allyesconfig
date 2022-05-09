; ModuleID = '/llk/IR_all_yes/drivers/input/serio/arc_ps2.c_pt.bc'
source_filename = "../drivers/input/serio/arc_ps2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.arc_ps2_data = type { [2 x %struct.arc_ps2_port], ptr, i32, i32, i32 }
%struct.arc_ps2_port = type { ptr, ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }

@__initcall__kmod_arc_ps2__231_270_arc_ps2_driver_init6 = internal global ptr @arc_ps2_driver_init, section ".initcall6.init", align 4
@arc_ps2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @arc_ps2_probe, ptr @arc_ps2_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @arc_ps2_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_arc_ps2_driver_exit = internal global ptr @arc_ps2_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file232 = internal constant [41 x i8] c"arc_ps2.file=drivers/input/serio/arc_ps2\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [20 x i8] c"arc_ps2.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [53 x i8] c"arc_ps2.author=Pavel Sokolov <psokolov@synopsys.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [36 x i8] c"arc_ps2.description=ARC PS/2 Driver\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"arc_ps2\00", [24 x i8] zeroinitializer }, align 32
@arc_ps2_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,arc_ps2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arc_ps2_irq\00", [20 x i8] zeroinitializer }, align 32
@arc_ps2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 196, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"out of memory\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arc_ps2_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/input/serio/arc_ps2.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arc_ps2_probe._entry_ptr = internal global ptr @arc_ps2_probe._entry, section ".printk_index", align 4
@arc_ps2_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 206, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"irq = %d, address = 0x%p, ports = %i\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@arc_ps2_probe._entry_ptr.10 = internal global ptr @arc_ps2_probe._entry.7, section ".printk_index", align 4
@arc_ps2_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"device id does not match\0A\00", [38 x i8] zeroinitializer }, align 32
@arc_ps2_probe._entry_ptr.13 = internal global ptr @arc_ps2_probe._entry.11, section ".printk_index", align 4
@arc_ps2_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not allocate IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@arc_ps2_probe._entry_ptr.16 = internal global ptr @arc_ps2_probe._entry.14, section ".printk_index", align 4
@arc_ps2_check_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 73, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PS/2 hardware stuck\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arc_ps2_check_rx\00", [47 x i8] zeroinitializer }, align 32
@arc_ps2_check_rx._entry_ptr = internal global ptr @arc_ps2_check_rx._entry, section ".printk_index", align 4
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ARC PS/2 port%d\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"arc/serio%d\00", [20 x i8] zeroinitializer }, align 32
@arc_ps2_create_port.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arc_ps2_create_port\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"port%d is allocated (data = 0x%p, status = 0x%p)\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arc_ps2_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 104, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write timeout\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"arc_ps2_write\00", [18 x i8] zeroinitializer }, align 32
@arc_ps2_write._entry_ptr = internal global ptr @arc_ps2_write._entry, section ".printk_index", align 4
@arc_ps2_remove.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arc_ps2_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"interrupt count = %i\0A\00", [42 x i8] zeroinitializer }, align 32
@arc_ps2_remove.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.27, i8 0, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"frame error count = %i\0A\00", [40 x i8] zeroinitializer }, align 32
@arc_ps2_remove.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.28, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"buffer overflow count = %i\0A\00", [36 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"arc_ps2_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 261, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 263, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"arc_ps2_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 254, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 189, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 196, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 205, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 210, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 219, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 73, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 166, i32 39 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 167, i32 39 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 175, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 104, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 245, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 246, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [33 x i8] c"../drivers/input/serio/arc_ps2.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 247, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_arc_ps2_driver_exit, ptr @__initcall__kmod_arc_ps2__231_270_arc_ps2_driver_init6, ptr @arc_ps2_check_rx._entry, ptr @arc_ps2_check_rx._entry_ptr, ptr @arc_ps2_driver_exit, ptr @arc_ps2_probe._entry, ptr @arc_ps2_probe._entry.11, ptr @arc_ps2_probe._entry.14, ptr @arc_ps2_probe._entry.7, ptr @arc_ps2_probe._entry_ptr, ptr @arc_ps2_probe._entry_ptr.10, ptr @arc_ps2_probe._entry_ptr.13, ptr @arc_ps2_probe._entry_ptr.16, ptr @arc_ps2_write._entry, ptr @arc_ps2_write._entry_ptr, ptr @arc_ps2_driver, ptr @.str, ptr @arc_ps2_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_ps2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_ps2_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_ps2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_ps2_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_ps2_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_ps2_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_ps2_check_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arc_ps2_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arc_ps2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @arc_ps2_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arc_ps2_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @arc_ps2_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arc_ps2_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call7 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call5) #7
  %addr = getelementptr inbounds %struct.arc_ps2_data, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call7, ptr %addr, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %do.end16

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call7 to i32
  br label %cleanup

do.end16:                                         ; preds = %if.end4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call, ptr noundef %call7, i32 noundef 2) #10
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  call void @__sanitizer_cov_trace_const_cmp4(i32 167117056, i32 %4)
  %cmp21.not = icmp eq i32 %4, 167117056
  br i1 %cmp21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end27:                                         ; preds = %do.end16
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %addr, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %8 = and i32 %7, -603979777
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %8) #7, !srcloc !79
  %spec.select.i.1.i = getelementptr i8, ptr %6, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %spec.select.i.1.i) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %10 = and i32 %9, -603979777
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %spec.select.i.1.i, i32 %10) #7, !srcloc !79
  %call.i77 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef nonnull @arc_ps2_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool30.not = icmp eq i32 %call.i77, 0
  br i1 %tobool30.not, label %for.body.preheader, label %do.end34

for.body.preheader:                               ; preds = %if.end27
  %call38 = tail call fastcc i32 @arc_ps2_create_port(ptr noundef %pdev, ptr noundef nonnull %call.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %for.inc, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %cleanup

while.body.lr.ph:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %io = getelementptr inbounds %struct.arc_ps2_port, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io, align 4
  tail call void @serio_unregister_port(ptr noundef %12) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %call38.1 = tail call fastcc i32 @arc_ps2_create_port(ptr noundef %pdev, ptr noundef nonnull %call.i, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.1)
  %tobool39.not.1 = icmp eq i32 %call38.1, 0
  br i1 %tobool39.not.1, label %for.inc.1, label %while.body.lr.ph

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.1, %while.body.lr.ph, %do.end34, %for.body.preheader.cleanup_crit_edge, %do.end25, %if.then10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then10 ], [ -6, %do.end25 ], [ %call.i77, %do.end34 ], [ 0, %for.inc.1 ], [ -12, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call38.1, %while.body.lr.ph ], [ %call38, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arc_ps2_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %io = getelementptr [2 x %struct.arc_ps2_port], ptr %1, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io, align 4
  tail call void @serio_unregister_port(ptr noundef %3) #7
  %io.1 = getelementptr [2 x %struct.arc_ps2_port], ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %io.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io.1, align 4
  tail call void @serio_unregister_port(ptr noundef %5) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arc_ps2_remove.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arc_ps2_remove, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !80

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %total_int = getelementptr inbounds %struct.arc_ps2_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %total_int to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %total_int, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arc_ps2_remove.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %7) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arc_ps2_remove.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arc_ps2_remove, %if.then16)) #7
          to label %do.body21 [label %if.then16], !srcloc !80

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %frame_error = getelementptr inbounds %struct.arc_ps2_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %frame_error to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_error, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arc_ps2_remove.__UNIQUE_ID_ddebug229, ptr noundef %dev17, ptr noundef nonnull @.str.27, i32 noundef %9) #7
  br label %do.body21

do.body21:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arc_ps2_remove.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arc_ps2_remove, %if.then33)) #7
          to label %do.end37 [label %if.then33], !srcloc !80

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %dev34 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %buf_overflow = getelementptr inbounds %struct.arc_ps2_data, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %buf_overflow to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_overflow, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arc_ps2_remove.__UNIQUE_ID_ddebug230, ptr noundef %dev34, ptr noundef nonnull @.str.28, i32 noundef %11) #7
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %do.body21
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arc_ps2_interrupt(i32 noundef %irq, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %total_int.i = getelementptr inbounds %struct.arc_ps2_data, ptr %dev, i32 0, i32 4
  %frame_error.i = getelementptr inbounds %struct.arc_ps2_data, ptr %dev, i32 0, i32 2
  %buf_overflow.i = getelementptr inbounds %struct.arc_ps2_data, ptr %dev, i32 0, i32 3
  %status_addr.i = getelementptr [2 x %struct.arc_ps2_port], ptr %dev, i32 0, i32 0, i32 1
  %io.i = getelementptr [2 x %struct.arc_ps2_port], ptr %dev, i32 0, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.end13.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 1000, %entry ], [ %dec.i, %if.end13.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %status_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_addr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !76
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.arc_ps2_check_rx.exit_crit_edge, label %if.end.i

do.body.i.arc_ps2_check_rx.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %arc_ps2_check_rx.exit

if.end.i:                                         ; preds = %do.body.i
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !76
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %conv.i = trunc i32 %7 to i8
  %8 = ptrtoint ptr %total_int.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %total_int.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %total_int.i, align 4
  %and3.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.end.i.if.end13.sink.split.i_crit_edge

if.end.i.if.end13.sink.split.i_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  %and7.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.else.i.if.end13.i_crit_edge, label %if.else.i.if.end13.sink.split.i_crit_edge

if.else.i.if.end13.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.i

if.else.i.if.end13.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.sink.split.i:                            ; preds = %if.else.i.if.end13.sink.split.i_crit_edge, %if.end.i.if.end13.sink.split.i_crit_edge
  %buf_overflow.sink32.i = phi ptr [ %frame_error.i, %if.end.i.if.end13.sink.split.i_crit_edge ], [ %buf_overflow.i, %if.else.i.if.end13.sink.split.i_crit_edge ]
  %flag.0.ph.i = phi i32 [ 2, %if.end.i.if.end13.sink.split.i_crit_edge ], [ 4, %if.else.i.if.end13.sink.split.i_crit_edge ]
  %10 = ptrtoint ptr %buf_overflow.sink32.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_overflow.sink32.i, align 4
  %inc10.i = add i32 %11, 1
  store i32 %inc10.i, ptr %buf_overflow.sink32.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.end13.sink.split.i, %if.else.i.if.end13.i_crit_edge
  %flag.0.i = phi i32 [ 0, %if.else.i.if.end13.i_crit_edge ], [ %flag.0.ph.i, %if.end13.sink.split.i ]
  %12 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io.i, align 4
  %call14.i = tail call i32 @serio_interrupt(ptr noundef %13, i8 noundef zeroext %conv.i, i32 noundef %flag.0.i) #7
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool15.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool15.not.i, label %do.end18.i, label %if.end13.i.do.body.i_crit_edge

if.end13.i.do.body.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end18.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io.i, align 4
  %dev.i = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17) #10
  br label %arc_ps2_check_rx.exit

arc_ps2_check_rx.exit:                            ; preds = %do.end18.i, %do.body.i.arc_ps2_check_rx.exit_crit_edge
  %arrayidx.1 = getelementptr [2 x %struct.arc_ps2_port], ptr %dev, i32 0, i32 1
  %status_addr.i.1 = getelementptr [2 x %struct.arc_ps2_port], ptr %dev, i32 0, i32 1, i32 1
  %io.i.1 = getelementptr [2 x %struct.arc_ps2_port], ptr %dev, i32 0, i32 1, i32 2
  br label %do.body.i.1

do.body.i.1:                                      ; preds = %if.end13.i.1.do.body.i.1_crit_edge, %arc_ps2_check_rx.exit
  %timeout.0.i.1 = phi i32 [ 1000, %arc_ps2_check_rx.exit ], [ %dec.i.1, %if.end13.i.1.do.body.i.1_crit_edge ]
  %16 = ptrtoint ptr %status_addr.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %status_addr.i.1, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !76
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %and.i.1 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %do.body.i.1.arc_ps2_check_rx.exit.1_crit_edge, label %if.end.i.1

do.body.i.1.arc_ps2_check_rx.exit.1_crit_edge:    ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %arc_ps2_check_rx.exit.1

if.end.i.1:                                       ; preds = %do.body.i.1
  %20 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.1, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !76
  %23 = lshr i32 %22, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %conv.i.1 = trunc i32 %23 to i8
  %24 = ptrtoint ptr %total_int.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %total_int.i, align 4
  %inc.i.1 = add i32 %25, 1
  store i32 %inc.i.1, ptr %total_int.i, align 4
  %and3.i.1 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.1)
  %tobool4.not.i.1 = icmp eq i32 %and3.i.1, 0
  br i1 %tobool4.not.i.1, label %if.else.i.1, label %if.end.i.1.if.end13.sink.split.i.1_crit_edge

if.end.i.1.if.end13.sink.split.i.1_crit_edge:     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.i.1

if.else.i.1:                                      ; preds = %if.end.i.1
  %and7.i.1 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.1)
  %tobool8.not.i.1 = icmp eq i32 %and7.i.1, 0
  br i1 %tobool8.not.i.1, label %if.else.i.1.if.end13.i.1_crit_edge, label %if.else.i.1.if.end13.sink.split.i.1_crit_edge

if.else.i.1.if.end13.sink.split.i.1_crit_edge:    ; preds = %if.else.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.sink.split.i.1

if.else.i.1.if.end13.i.1_crit_edge:               ; preds = %if.else.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i.1

if.end13.sink.split.i.1:                          ; preds = %if.else.i.1.if.end13.sink.split.i.1_crit_edge, %if.end.i.1.if.end13.sink.split.i.1_crit_edge
  %buf_overflow.sink32.i.1 = phi ptr [ %frame_error.i, %if.end.i.1.if.end13.sink.split.i.1_crit_edge ], [ %buf_overflow.i, %if.else.i.1.if.end13.sink.split.i.1_crit_edge ]
  %flag.0.ph.i.1 = phi i32 [ 2, %if.end.i.1.if.end13.sink.split.i.1_crit_edge ], [ 4, %if.else.i.1.if.end13.sink.split.i.1_crit_edge ]
  %26 = ptrtoint ptr %buf_overflow.sink32.i.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %buf_overflow.sink32.i.1, align 4
  %inc10.i.1 = add i32 %27, 1
  store i32 %inc10.i.1, ptr %buf_overflow.sink32.i.1, align 4
  br label %if.end13.i.1

if.end13.i.1:                                     ; preds = %if.end13.sink.split.i.1, %if.else.i.1.if.end13.i.1_crit_edge
  %flag.0.i.1 = phi i32 [ 0, %if.else.i.1.if.end13.i.1_crit_edge ], [ %flag.0.ph.i.1, %if.end13.sink.split.i.1 ]
  %28 = ptrtoint ptr %io.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io.i.1, align 4
  %call14.i.1 = tail call i32 @serio_interrupt(ptr noundef %29, i8 noundef zeroext %conv.i.1, i32 noundef %flag.0.i.1) #7
  %dec.i.1 = add nsw i32 %timeout.0.i.1, -1
  %tobool15.not.i.1 = icmp eq i32 %dec.i.1, 0
  br i1 %tobool15.not.i.1, label %do.end18.i.1, label %if.end13.i.1.do.body.i.1_crit_edge

if.end13.i.1.do.body.i.1_crit_edge:               ; preds = %if.end13.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.1

do.end18.i.1:                                     ; preds = %if.end13.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %io.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io.i.1, align 4
  %dev.i.1 = getelementptr inbounds %struct.serio, ptr %31, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.1, ptr noundef nonnull @.str.17) #10
  br label %arc_ps2_check_rx.exit.1

arc_ps2_check_rx.exit.1:                          ; preds = %do.end18.i.1, %do.body.i.1.arc_ps2_check_rx.exit.1_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arc_ps2_create_port(ptr noundef %pdev, ptr noundef %arc_ps2, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [2 x %struct.arc_ps2_port], ptr %arc_ps2, i32 0, i32 %index
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1336) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %id, align 1
  %write = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @arc_ps2_write, ptr %write, align 8
  %open = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @arc_ps2_open, ptr %open, align 4
  %close = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @arc_ps2_close, ptr %close, align 8
  %name = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 1
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.19, i32 noundef %index)
  %phys = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.20, i32 noundef %index)
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %arrayidx, ptr %call7.i.i, align 8
  %io5 = getelementptr [2 x %struct.arc_ps2_port], ptr %arc_ps2, i32 0, i32 %index, i32 2
  %6 = ptrtoint ptr %io5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %io5, align 4
  %addr1.i = getelementptr inbounds %struct.arc_ps2_data, ptr %arc_ps2, i32 0, i32 1
  %7 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addr1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %mul.i = shl i32 %index, 2
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr2.i, ptr %arrayidx, align 4
  %10 = load ptr, ptr %addr1.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %10, i32 4
  %add.ptr2.i42 = getelementptr i8, ptr %add.ptr.i40, i32 %mul.i
  %spec.select.i = getelementptr i8, ptr %add.ptr2.i42, i32 8
  %status_addr = getelementptr [2 x %struct.arc_ps2_port], ptr %arc_ps2, i32 0, i32 %index, i32 1
  %11 = ptrtoint ptr %status_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select.i, ptr %status_addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arc_ps2_create_port.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arc_ps2_create_port, %if.then12)) #7
          to label %do.end [label %if.then12], !srcloc !80

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %status_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %status_addr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arc_ps2_create_port.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %index, ptr noundef %13, ptr noundef %15) #7
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end
  %16 = ptrtoint ptr %io5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io5, align 4
  tail call void @__serio_register_port(ptr noundef %17, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arc_ps2_write(ptr noundef %io, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %status_addr = getelementptr inbounds %struct.arc_ps2_port, ptr %1, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond9.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 128, %entry ], [ %dec, %do.cond9.do.body_crit_edge ]
  %2 = ptrtoint ptr %status_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status_addr, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !82
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %do.cond9, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %val to i32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %8 = shl nuw i32 %conv, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %8) #7, !srcloc !79
  br label %cleanup

do.cond9:                                         ; preds = %do.body
  %dec = add nsw i32 %timeout.0, -1
  %tobool10.not = icmp eq i32 %dec, 0
  br i1 %tobool10.not, label %do.end14, label %do.cond9.do.body_crit_edge

do.cond9.do.body_crit_edge:                       ; preds = %do.cond9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end14:                                         ; preds = %do.cond9
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.serio, ptr %io, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -110, %do.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arc_ps2_open(ptr nocapture noundef readonly %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %status_addr = getelementptr inbounds %struct.arc_ps2_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 67108864) #7, !srcloc !79
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arc_ps2_close(ptr nocapture noundef readonly %io) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %status_addr = getelementptr inbounds %struct.arc_ps2_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %status_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status_addr, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %5 = and i32 %4, -67108865
  %6 = ptrtoint ptr %status_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %status_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !79
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_arc_ps2__231_270_arc_ps2_driver_init6, !1, !"__initcall__kmod_arc_ps2__231_270_arc_ps2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/serio/arc_ps2.c", i32 270, i32 1}
!2 = !{ptr @__exitcall_arc_ps2_driver_exit, !1, !"__exitcall_arc_ps2_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file232, !4, !"__UNIQUE_ID_file232", i1 false, i1 false}
!4 = !{!"../drivers/input/serio/arc_ps2.c", i32 272, i32 1}
!5 = !{ptr @__UNIQUE_ID_license233, !4, !"__UNIQUE_ID_license233", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author234, !7, !"__UNIQUE_ID_author234", i1 false, i1 false}
!7 = !{!"../drivers/input/serio/arc_ps2.c", i32 273, i32 1}
!8 = !{ptr @__UNIQUE_ID_description235, !9, !"__UNIQUE_ID_description235", i1 false, i1 false}
!9 = !{!"../drivers/input/serio/arc_ps2.c", i32 274, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/serio/arc_ps2.c", i32 263, i32 12}
!12 = !{ptr @arc_ps2_driver, !13, !"arc_ps2_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/serio/arc_ps2.c", i32 261, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/serio/arc_ps2.c", i32 189, i32 38}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/serio/arc_ps2.c", i32 196, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @arc_ps2_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @arc_ps2_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/serio/arc_ps2.c", i32 205, i32 2}
!26 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @arc_ps2_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @arc_ps2_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/serio/arc_ps2.c", i32 210, i32 3}
!31 = !{ptr @arc_ps2_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @arc_ps2_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/serio/arc_ps2.c", i32 219, i32 3}
!35 = !{ptr @arc_ps2_probe._entry.14, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @arc_ps2_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/serio/arc_ps2.c", i32 73, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @arc_ps2_check_rx._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @arc_ps2_check_rx._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/serio/arc_ps2.c", i32 166, i32 39}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/serio/arc_ps2.c", i32 167, i32 39}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/serio/arc_ps2.c", i32 175, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @arc_ps2_create_port.__UNIQUE_ID_ddebug227, !47, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/serio/arc_ps2.c", i32 104, i32 2}
!52 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @arc_ps2_write._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @arc_ps2_write._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/serio/arc_ps2.c", i32 245, i32 2}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @arc_ps2_remove.__UNIQUE_ID_ddebug228, !56, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/serio/arc_ps2.c", i32 246, i32 2}
!61 = !{ptr @arc_ps2_remove.__UNIQUE_ID_ddebug229, !60, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/serio/arc_ps2.c", i32 247, i32 2}
!64 = !{ptr @arc_ps2_remove.__UNIQUE_ID_ddebug230, !63, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!65 = !{ptr @arc_ps2_match, !66, !"arc_ps2_match", i1 false, i1 false}
!66 = !{!"../drivers/input/serio/arc_ps2.c", i32 254, i32 34}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 4620738}
!77 = !{i64 2152161087}
!78 = !{i64 2152162442}
!79 = !{i64 4620320}
!80 = !{i64 2148957815, i64 2148957820, i64 2148957833, i64 2148957877, i64 2148957911, i64 2148957932}
!81 = !{i64 2153896460}
!82 = !{i64 2153896302}
