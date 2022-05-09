; ModuleID = '/llk/IR_all_yes/drivers/net/mdio/mdio-mux-mmioreg.c_pt.bc'
source_filename = "../drivers/net/mdio/mdio-mux-mmioreg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.mdio_mux_mmioreg_state = type { ptr, i32, i32, i32 }

@__initcall__kmod_mdio_mux_mmioreg__285_200_mdio_mux_mmioreg_driver_init6 = internal global ptr @mdio_mux_mmioreg_driver_init, section ".initcall6.init", align 4
@mdio_mux_mmioreg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mdio_mux_mmioreg_probe, ptr @mdio_mux_mmioreg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mdio_mux_mmioreg_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mdio_mux_mmioreg_driver_exit = internal global ptr @mdio_mux_mmioreg_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author286 = internal constant [57 x i8] c"mdio_mux_mmioreg.author=Timur Tabi <timur@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description287 = internal constant [66 x i8] c"mdio_mux_mmioreg.description=Memory-mapped device MDIO MUX driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file288 = internal constant [56 x i8] c"mdio_mux_mmioreg.file=drivers/net/mdio/mdio-mux-mmioreg\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [32 x i8] c"mdio_mux_mmioreg.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mdio-mux-mmioreg\00", [47 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mdio-mux-mmioreg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_probe.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mdio_mux_mmioreg\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mdio_mux_mmioreg_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/net/mdio/mdio-mux-mmioreg.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"probing node %pOF\0A\00", [45 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 114, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not obtain memory map for node %pOF\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_probe._entry_ptr = internal global ptr @mdio_mux_mmioreg_probe._entry, section ".printk_index", align 4
@mdio_mux_mmioreg_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 123, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"only 8/16/32-bit registers are supported\0A\00", [54 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_probe._entry_ptr.10 = internal global ptr @mdio_mux_mmioreg_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mux-mask\00", [23 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 129, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"missing or invalid mux-mask property\0A\00", [58 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_probe._entry_ptr.14 = internal global ptr @mdio_mux_mmioreg_probe._entry.12, section ".printk_index", align 4
@mdio_mux_mmioreg_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 133, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_probe._entry_ptr.16 = internal global ptr @mdio_mux_mmioreg_probe._entry.15, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 146, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"mdio-mux child node %pOF is missing a 'reg' property\0A\00", [42 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_probe._entry_ptr.20 = internal global ptr @mdio_mux_mmioreg_probe._entry.18, section ".printk_index", align 4
@mdio_mux_mmioreg_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 153, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mdio-mux child node %pOF has a 'reg' value with unmasked bits\0A\00", [33 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_probe._entry_ptr.23 = internal global ptr @mdio_mux_mmioreg_probe._entry.21, section ".printk_index", align 4
@mdio_mux_mmioreg_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 165, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to register mdio-mux bus %pOF\0A\00", [58 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_probe._entry_ptr.26 = internal global ptr @mdio_mux_mmioreg_probe._entry.24, section ".printk_index", align 4
@mdio_mux_mmioreg_switch_fn.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mdio_mux_mmioreg_switch_fn\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %02x -> %02x\0A\00", [46 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_switch_fn.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %04x -> %04x\0A\00", [46 x i8] zeroinitializer }, align 32
@mdio_mux_mmioreg_switch_fn.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.27, ptr @.str.3, ptr @.str.30, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: %08x -> %08x\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.33 = private unnamed_addr constant [24 x i8] c"mdio_mux_mmioreg_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 191, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 193, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [23 x i8] c"mdio_mux_mmioreg_match\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 183, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 105, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 113, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 123, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 127, i32 30 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 129, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 133, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 143, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 145, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 151, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 164, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 60, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 72, i32 5 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [39 x i8] c"../drivers/net/mdio/mdio-mux-mmioreg.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 84, i32 5 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author286, ptr @__UNIQUE_ID_description287, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__exitcall_mdio_mux_mmioreg_driver_exit, ptr @__initcall__kmod_mdio_mux_mmioreg__285_200_mdio_mux_mmioreg_driver_init6, ptr @mdio_mux_mmioreg_driver_exit, ptr @mdio_mux_mmioreg_probe._entry, ptr @mdio_mux_mmioreg_probe._entry.12, ptr @mdio_mux_mmioreg_probe._entry.15, ptr @mdio_mux_mmioreg_probe._entry.18, ptr @mdio_mux_mmioreg_probe._entry.21, ptr @mdio_mux_mmioreg_probe._entry.24, ptr @mdio_mux_mmioreg_probe._entry.8, ptr @mdio_mux_mmioreg_probe._entry_ptr, ptr @mdio_mux_mmioreg_probe._entry_ptr.10, ptr @mdio_mux_mmioreg_probe._entry_ptr.14, ptr @mdio_mux_mmioreg_probe._entry_ptr.16, ptr @mdio_mux_mmioreg_probe._entry_ptr.20, ptr @mdio_mux_mmioreg_probe._entry_ptr.23, ptr @mdio_mux_mmioreg_probe._entry_ptr.26, ptr @mdio_mux_mmioreg_driver, ptr @.str, ptr @mdio_mux_mmioreg_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_mmioreg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_mmioreg_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_mmioreg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_mmioreg_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_mmioreg_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_mmioreg_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_mmioreg_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_mmioreg_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdio_mux_mmioreg_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_mux_mmioreg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mdio_mux_mmioreg_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mdio_mux_mmioreg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mdio_mux_mmioreg_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_mux_mmioreg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #6
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %3 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdio_mux_mmioreg_probe.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdio_mux_mmioreg_probe, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !75

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mdio_mux_mmioreg_probe.__UNIQUE_ID_ddebug284, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %call9 = call i32 @of_address_to_resource(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %1) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %5 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %res, align 4
  %phys = getelementptr inbounds %struct.mdio_mux_mmioreg_state, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %phys, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %2, align 4
  %sub.i = sub i32 1, %6
  %add.i = add i32 %sub.i, %9
  %iosize = getelementptr inbounds %struct.mdio_mux_mmioreg_state, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %iosize to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %iosize, align 4
  %11 = zext i32 %add.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %add.i, label %do.end27 [
    i32 1, label %if.end16.if.end29_crit_edge
    i32 2, label %if.end16.if.end29_crit_edge150
    i32 4, label %if.end16.if.end29_crit_edge151
  ]

if.end16.if.end29_crit_edge151:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end16.if.end29_crit_edge150:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end16.if.end29_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end27:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end29:                                         ; preds = %if.end16.if.end29_crit_edge, %if.end16.if.end29_crit_edge150, %if.end16.if.end29_crit_edge151
  %call30 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %len) #6
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end29.do.end36_crit_edge, label %lor.lhs.false

if.end29.do.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

lor.lhs.false:                                    ; preds = %if.end29
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp32.not = icmp eq i32 %13, 4
  br i1 %cmp32.not, label %if.end38, label %lor.lhs.false.do.end36_crit_edge

lor.lhs.false.do.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end36

do.end36:                                         ; preds = %lor.lhs.false.do.end36_crit_edge, %if.end29.do.end36_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end38:                                         ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %call30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call30, align 4
  %16 = ptrtoint ptr %iosize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iosize, align 4
  %mul = shl i32 %17, 3
  %call39.highbits = lshr i32 %15, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.highbits)
  %cmp41.not = icmp eq i32 %call39.highbits, 0
  br i1 %cmp41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %mask = getelementptr inbounds %struct.mdio_mux_mmioreg_state, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %mask, align 4
  %call49 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #6
  %cmp50.not138 = icmp eq ptr %call49, null
  br i1 %cmp50.not138, label %if.end47.for.end_crit_edge, label %if.end47.for.body_crit_edge

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  br label %for.body

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end47.for.body_crit_edge
  %np2.0139 = phi ptr [ %call70, %for.inc.for.body_crit_edge ], [ %call49, %if.end47.for.body_crit_edge ]
  %call51 = call ptr @of_get_property(ptr noundef nonnull %np2.0139, ptr noundef nonnull @.str.17, ptr noundef nonnull %len) #6
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %for.body.do.end58_crit_edge, label %lor.lhs.false53

for.body.do.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

lor.lhs.false53:                                  ; preds = %for.body
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp54.not = icmp eq i32 %20, 4
  br i1 %cmp54.not, label %if.end60, label %lor.lhs.false53.do.end58_crit_edge

lor.lhs.false53.do.end58_crit_edge:               ; preds = %lor.lhs.false53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end58

do.end58:                                         ; preds = %lor.lhs.false53.do.end58_crit_edge, %for.body.do.end58_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull %np2.0139) #9
  call void @of_node_put(ptr noundef nonnull %np2.0139) #6
  br label %cleanup

if.end60:                                         ; preds = %lor.lhs.false53
  %21 = ptrtoint ptr %call51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call51, align 4
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask, align 4
  %neg = xor i32 %24, -1
  %and = and i32 %22, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %for.inc, label %do.end67

do.end67:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull %np2.0139) #9
  call void @of_node_put(ptr noundef nonnull %np2.0139) #6
  br label %cleanup

for.inc:                                          ; preds = %if.end60
  %call70 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %np2.0139) #6
  %cmp50.not = icmp eq ptr %call70, null
  br i1 %cmp50.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end47.for.end_crit_edge
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %call74 = call i32 @mdio_mux_init(ptr noundef %dev, ptr noundef %26, ptr noundef nonnull @mdio_mux_mmioreg_switch_fn, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef null) #6
  %27 = zext i32 %call74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %call74, label %do.end81 [
    i32 0, label %if.end84
    i32 -517, label %for.end.cleanup_crit_edge
  ]

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end81:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, ptr noundef %1) #9
  br label %cleanup

if.end84:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %28 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %platform_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %do.end81, %for.end.cleanup_crit_edge, %do.end67, %do.end58, %do.end45, %do.end36, %do.end27, %do.end14, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %do.end14 ], [ -22, %do.end27 ], [ -19, %do.end36 ], [ -22, %do.end45 ], [ -19, %do.end58 ], [ -19, %do.end67 ], [ 0, %if.end84 ], [ -12, %do.end.cleanup_crit_edge ], [ %call74, %for.end.cleanup_crit_edge ], [ %call74, %do.end81 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_mux_mmioreg_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @mdio_mux_uninit(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdio_mux_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdio_mux_mmioreg_switch_fn(i32 noundef %current_child, i32 noundef %desired_child, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_cmp4(i32 %current_child, i32 %desired_child)
  %tobool.not = icmp eq i32 %current_child, %desired_child
  br i1 %tobool.not, label %entry.cleanup98_crit_edge, label %if.then

entry.cleanup98_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup98

if.then:                                          ; preds = %entry
  %phys = getelementptr inbounds %struct.mdio_mux_mmioreg_state, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %phys, align 4
  %iosize = getelementptr inbounds %struct.mdio_mux_mmioreg_state, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %iosize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iosize, align 4
  %call = tail call ptr @ioremap(i32 noundef %1, i32 noundef %3) #6
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.then.cleanup98_crit_edge, label %if.end

if.then.cleanup98_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup98

if.end:                                           ; preds = %if.then
  %4 = ptrtoint ptr %iosize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iosize, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %5, label %if.end.cleanup98.sink.split_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb25
    i32 4, label %sw.bb65
  ]

if.end.cleanup98.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup98.sink.split

sw.bb:                                            ; preds = %if.end
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call) #6, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  %conv = zext i8 %7 to i32
  %mask = getelementptr inbounds %struct.mdio_mux_mmioreg_state, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %neg = xor i32 %9, -1
  %and = and i32 %neg, %conv
  %or = or i32 %and, %desired_child
  %conv7 = and i32 %or, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7, i32 %conv)
  %cmp.not = icmp eq i32 %conv7, %conv
  br i1 %cmp.not, label %sw.bb.cleanup98.sink.split_crit_edge, label %if.then9

sw.bb.cleanup98.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup98.sink.split

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %conv5 = trunc i32 %or to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %call, i8 %conv5) #6, !srcloc !79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdio_mux_mmioreg_switch_fn.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdio_mux_mmioreg_switch_fn, %if.then20)) #6
          to label %cleanup98.sink.split [label %if.then20], !srcloc !75

if.then20:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mdio_mux_mmioreg_switch_fn.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %conv7) #6
  br label %cleanup98.sink.split

sw.bb25:                                          ; preds = %if.end
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %call) #6, !srcloc !80
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %conv29 = zext i16 %11 to i32
  %mask30 = getelementptr inbounds %struct.mdio_mux_mmioreg_state, ptr %data, i32 0, i32 3
  %12 = ptrtoint ptr %mask30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask30, align 4
  %neg31 = xor i32 %13, -1
  %and32 = and i32 %conv29, %neg31
  %or33 = or i32 %and32, %desired_child
  %conv36 = and i32 %or33, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv36, i32 %conv29)
  %cmp37.not = icmp eq i32 %conv36, %conv29
  br i1 %cmp37.not, label %sw.bb25.cleanup98.sink.split_crit_edge, label %if.then39

sw.bb25.cleanup98.sink.split_crit_edge:           ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup98.sink.split

if.then39:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #8
  %conv34 = trunc i32 %or33 to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv34) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %call, i16 %14) #6, !srcloc !83
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdio_mux_mmioreg_switch_fn.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdio_mux_mmioreg_switch_fn, %if.then58)) #6
          to label %cleanup98.sink.split [label %if.then58], !srcloc !75

if.then58:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mdio_mux_mmioreg_switch_fn.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %conv29, i32 noundef %conv36) #6
  br label %cleanup98.sink.split

sw.bb65:                                          ; preds = %if.end
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call) #6, !srcloc !84
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  %mask69 = getelementptr inbounds %struct.mdio_mux_mmioreg_state, ptr %data, i32 0, i32 3
  %17 = ptrtoint ptr %mask69 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mask69, align 4
  %neg70 = xor i32 %18, -1
  %and71 = and i32 %16, %neg70
  %or72 = or i32 %and71, %desired_child
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %or72)
  %cmp73.not = icmp eq i32 %16, %or72
  br i1 %cmp73.not, label %sw.bb65.cleanup98.sink.split_crit_edge, label %if.then75

sw.bb65.cleanup98.sink.split_crit_edge:           ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup98.sink.split

if.then75:                                        ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %or72) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call, i32 %19) #6, !srcloc !87
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdio_mux_mmioreg_switch_fn.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdio_mux_mmioreg_switch_fn, %if.then92)) #6
          to label %cleanup98.sink.split [label %if.then92], !srcloc !75

if.then92:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mdio_mux_mmioreg_switch_fn.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.27, i32 noundef %16, i32 noundef %or72) #6
  br label %cleanup98.sink.split

cleanup98.sink.split:                             ; preds = %if.then92, %if.then75, %sw.bb65.cleanup98.sink.split_crit_edge, %if.then58, %if.then39, %sw.bb25.cleanup98.sink.split_crit_edge, %if.then20, %if.then9, %sw.bb.cleanup98.sink.split_crit_edge, %if.end.cleanup98.sink.split_crit_edge
  tail call void @iounmap(ptr noundef nonnull %call) #6
  br label %cleanup98

cleanup98:                                        ; preds = %cleanup98.sink.split, %if.then.cleanup98_crit_edge, %entry.cleanup98_crit_edge
  %retval.1 = phi i32 [ -12, %if.then.cleanup98_crit_edge ], [ 0, %entry.cleanup98_crit_edge ], [ 0, %cleanup98.sink.split ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdio_mux_uninit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_mdio_mux_mmioreg__285_200_mdio_mux_mmioreg_driver_init6, !1, !"__initcall__kmod_mdio_mux_mmioreg__285_200_mdio_mux_mmioreg_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 200, i32 1}
!2 = !{ptr @__exitcall_mdio_mux_mmioreg_driver_exit, !1, !"__exitcall_mdio_mux_mmioreg_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author286, !4, !"__UNIQUE_ID_author286", i1 false, i1 false}
!4 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 202, i32 1}
!5 = !{ptr @__UNIQUE_ID_description287, !6, !"__UNIQUE_ID_description287", i1 false, i1 false}
!6 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 203, i32 1}
!7 = !{ptr @__UNIQUE_ID_file288, !8, !"__UNIQUE_ID_file288", i1 false, i1 false}
!8 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 204, i32 1}
!9 = !{ptr @__UNIQUE_ID_license289, !8, !"__UNIQUE_ID_license289", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 193, i32 12}
!12 = !{ptr @mdio_mux_mmioreg_driver, !13, !"mdio_mux_mmioreg_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 191, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 105, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mdio_mux_mmioreg_probe.__UNIQUE_ID_ddebug284, !15, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 113, i32 3}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mdio_mux_mmioreg_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @mdio_mux_mmioreg_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 123, i32 3}
!28 = !{ptr @mdio_mux_mmioreg_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mdio_mux_mmioreg_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 127, i32 30}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 129, i32 3}
!34 = !{ptr @mdio_mux_mmioreg_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @mdio_mux_mmioreg_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @mdio_mux_mmioreg_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 133, i32 3}
!38 = !{ptr @mdio_mux_mmioreg_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 143, i32 32}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 145, i32 4}
!43 = !{ptr @mdio_mux_mmioreg_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mdio_mux_mmioreg_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 151, i32 4}
!47 = !{ptr @mdio_mux_mmioreg_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mdio_mux_mmioreg_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 164, i32 4}
!51 = !{ptr @mdio_mux_mmioreg_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mdio_mux_mmioreg_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 60, i32 5}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mdio_mux_mmioreg_switch_fn.__UNIQUE_ID_ddebug281, !54, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 72, i32 5}
!59 = !{ptr @mdio_mux_mmioreg_switch_fn.__UNIQUE_ID_ddebug282, !58, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 84, i32 5}
!62 = !{ptr @mdio_mux_mmioreg_switch_fn.__UNIQUE_ID_ddebug283, !61, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!63 = !{ptr @mdio_mux_mmioreg_match, !64, !"mdio_mux_mmioreg_match", i1 false, i1 false}
!64 = !{!"../drivers/net/mdio/mdio-mux-mmioreg.c", i32 183, i32 34}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"auto-init"}
!75 = !{i64 2148280319, i64 2148280324, i64 2148280337, i64 2148280381, i64 2148280415, i64 2148280436}
!76 = !{i64 6647543}
!77 = !{i64 2154186888}
!78 = !{i64 2154188493}
!79 = !{i64 6647148}
!80 = !{i64 6646925}
!81 = !{i64 2154187500}
!82 = !{i64 2154188917}
!83 = !{i64 6646725}
!84 = !{i64 6647763}
!85 = !{i64 2154188112}
!86 = !{i64 2154189467}
!87 = !{i64 6647345}
