; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/path.c_pt.bc'
source_filename = "../drivers/thunderbolt/path.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.tb_regs_hop = type { i64 }
%struct.tb_regs_port_header = type { i16, i16, [12 x i8], i32, i32, i32, i32 }
%struct.tb_port = type { %struct.tb_regs_port_header, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, i8, %struct.ida, %struct.ida, %struct.list_head, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.tb_path = type { ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, ptr, i32, i8 }
%struct.tb_path_hop = type { ptr, ptr, i32, i32, i32, i32, i32 }

@tb_path_discover._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%llx:%x: failed to read path at %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tb_path_discover\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/thunderbolt/path.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tb_path_discover._entry_ptr = internal global ptr @tb_path_discover._entry, section ".printk_index", align 4
@tb_path_discover._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@tb_path_discover._entry_ptr.6 = internal global ptr @tb_path_discover._entry.5, section ".printk_index", align 4
@tb_path_discover._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 209, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%llx:%x: failed to discover path starting at HopID %d\0A\00", [41 x i8] zeroinitializer }, align 32
@tb_path_discover._entry_ptr.9 = internal global ptr @tb_path_discover._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s %s: trying to deactivate an inactive path\0A\00", [50 x i8] zeroinitializer }, align 32
@tb_path_deactivate.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tb_path_deactivate\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"deactivating %s path from %llx:%u to %llx:%u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s %s: trying to activate already activated path\0A\00", [46 x i8] zeroinitializer }, align 32
@tb_path_activate.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tb_path_activate\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"activating %s path from %llx:%u to %llx:%u\0A\00", [52 x i8] zeroinitializer }, align 32
@tb_path_activate.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%llx:%x: Writing hop %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tb_path_activate.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"path activation complete\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s %s: path activation failed\0A\00", [33 x i8] zeroinitializer }, align 32
@tb_path_find_dst_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.20, ptr @.str.2, i32 50, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tb_path_find_dst_port\00", [42 x i8] zeroinitializer }, align 32
@tb_path_find_dst_port._entry_ptr = internal global ptr @tb_path_find_dst_port._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tb_path_deactivate_hops._entry = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 454, ptr @.str.3, ptr @.str.4 }, align 1
@.str.21 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%llx:%x: hop deactivation failed for hop %d, index %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__tb_path_deactivate_hops\00", [38 x i8] zeroinitializer }, align 32
@__tb_path_deactivate_hops._entry_ptr = internal global ptr @__tb_path_deactivate_hops._entry, section ".printk_index", align 4
@__tb_path_deallocate_nfc._entry = internal constant %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 382, ptr @.str.3, ptr @.str.4 }, align 1
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%llx:%x: nfc credits deallocation failed for hop %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"__tb_path_deallocate_nfc\00", [39 x i8] zeroinitializer }, align 32
@__tb_path_deallocate_nfc._entry_ptr = internal global ptr @__tb_path_deallocate_nfc._entry, section ".printk_index", align 4
@tb_dump_hop.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tb_dump_hop\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%llx:%x:  In HopID: %d => Out port: %d Out HopID: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@tb_dump_hop.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.25, ptr @.str.2, ptr @.str.27, i8 0, i8 6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%llx:%x:   Weight: %d Priority: %d Credits: %d Drop: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@tb_dump_hop.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 0, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%llx:%x:    Counter enabled: %d Counter index: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@tb_dump_hop.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.25, ptr @.str.2, ptr @.str.29, i8 0, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%llx:%x:   Flow Control (In/Eg): %d/%d Shared Buffer (In/Eg): %d/%d\0A\00", [59 x i8] zeroinitializer }, align 32
@tb_dump_hop.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.25, ptr @.str.2, ptr @.str.30, i8 0, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%llx:%x:   Unknown1: %#x Unknown2: %#x Unknown3: %#x\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 136, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 179, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 208, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 461, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 464, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 489, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 493, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 553, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 564, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 567, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 50, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 452, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 380, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 20, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 22, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 25, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 27, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [30 x i8] c"../drivers/thunderbolt/path.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 30, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__tb_path_deactivate_hops._entry, ptr @__tb_path_deactivate_hops._entry_ptr, ptr @__tb_path_deallocate_nfc._entry, ptr @__tb_path_deallocate_nfc._entry_ptr, ptr @tb_path_discover._entry, ptr @tb_path_discover._entry.5, ptr @tb_path_discover._entry.7, ptr @tb_path_discover._entry_ptr, ptr @tb_path_discover._entry_ptr.6, ptr @tb_path_discover._entry_ptr.9, ptr @tb_path_find_dst_port._entry, ptr @tb_path_find_dst_port._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_path_discover._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_path_discover._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_path_discover._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_path_find_dst_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_path_discover(ptr noundef %src, i32 noundef %src_hopid, ptr noundef readnone %dst, i32 noundef %dst_hopid, ptr noundef writeonly %last, ptr noundef %name, i1 noundef zeroext %alloc_hopid) local_unnamed_addr #0 align 64 {
entry:
  %hop.i.i = alloca %struct.tb_regs_hop, align 8
  %hop = alloca %struct.tb_regs_hop, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %alloc_hopid to i8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hop) #9
  %0 = ptrtoint ptr %hop to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %hop, align 8, !annotation !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_hopid)
  %cmp = icmp sgt i32 %src_hopid, -1
  %tobool.not = icmp eq ptr %dst, null
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then:                                          ; preds = %entry
  %max_in_hop_id.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %src, i32 0, i32 4
  %1 = ptrtoint ptr %max_in_hop_id.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %bf.load14.i = load i32, ptr %max_in_hop_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %bf.load14.i)
  %cmp.not16.i = icmp ult i32 %bf.load14.i, 16777216
  br i1 %cmp.not16.i, label %if.then.cleanup128_crit_edge, label %for.body.lr.ph.i

if.then.cleanup128_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup128

for.body.lr.ph.i:                                 ; preds = %if.then
  %tobool.not48.not.i.i = icmp eq ptr %src, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 8, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hop.i.i) #9
  %2 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %hop.i.i, align 8, !annotation !75
  br i1 %tobool.not48.not.i.i, label %for.body.i.for.end.i.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.for.end.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.end11.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %hopid.051.i.i = phi i32 [ %bf.cast18.i.i, %if.end11.i.i.for.body.i.i_crit_edge ], [ %i.017.i, %for.body.i.for.body.i.i_crit_edge ]
  %i.050.i.i = phi i32 [ %inc.i.i, %if.end11.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %port.049.i.i = phi ptr [ %37, %if.end11.i.i.for.body.i.i_crit_edge ], [ %src, %for.body.i.for.body.i.i_crit_edge ]
  %sw1.i.i = getelementptr inbounds %struct.tb_port, ptr %port.049.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %sw1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw1.i.i, align 4
  %is_unplugged.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %is_unplugged.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_unplugged.i.i.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i.i.i, label %tb_port_read.exit.i.i, label %for.body.i.i.do.body.i.i_crit_edge

for.body.i.i.do.body.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

tb_port_read.exit.i.i:                            ; preds = %for.body.i.i
  %mul.i.i = shl i32 %hopid.051.i.i, 1
  %tb.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %tb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb.i.i.i, align 8
  %ctl.i.i.i = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ctl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl.i.i.i, align 8
  %route_hi.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %route_hi.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load.i.i.i.i = load i64, ptr %route_hi.i.i.i.i, align 4
  %12 = lshr i64 %bf.load.i.i.i.i, 1
  %shl.i.i.i.i = and i64 %12, 9223372032559808512
  %route_lo.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %route_lo.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %route_lo.i.i.i.i, align 8
  %conv2.i.i.i.i = zext i32 %14 to i64
  %or.i.i.i.i = or i64 %shl.i.i.i.i, %conv2.i.i.i.i
  %port3.i.i.i = getelementptr inbounds %struct.tb_port, ptr %port.049.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %port3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port3.i.i.i, align 4
  %conv.i.i.i = zext i8 %16 to i32
  %call4.i.i.i = call i32 @tb_cfg_read(ptr noundef %10, ptr noundef nonnull %hop.i.i, i64 noundef %or.i.i.i.i, i32 noundef %conv.i.i.i, i32 noundef 0, i32 noundef %mul.i.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %tb_port_read.exit.i.i.do.body.i.i_crit_edge

tb_port_read.exit.i.i.do.body.i.i_crit_edge:      ; preds = %tb_port_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %tb_port_read.exit.i.i.do.body.i.i_crit_edge, %for.body.i.i.do.body.i.i_crit_edge
  %sw1.i.i.le = getelementptr inbounds %struct.tb_port, ptr %port.049.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %sw1.i.i.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sw1.i.i.le, align 4
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tb.i.i, align 8
  %nhi.i.i = getelementptr inbounds %struct.tb, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %nhi.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nhi.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.tb_nhi, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %26 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %26, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %28 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %port7.i.i = getelementptr inbounds %struct.tb_port, ptr %port.049.i.i, i32 0, i32 9
  %29 = ptrtoint ptr %port7.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port7.i.i, align 4
  %conv.i.i = zext i8 %30 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i.i, ptr noundef nonnull @.str, i64 noundef %or.i.i.i, i32 noundef %conv.i.i, i32 noundef %hopid.051.i.i) #12
  br label %tb_path_find_dst_port.exit.i

if.end.i.i:                                       ; preds = %tb_port_read.exit.i.i
  %31 = ptrtoint ptr %hop.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %bf.load.i.i = load i64, ptr %hop.i.i, align 8
  %32 = and i64 %bf.load.i.i, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %bf.cast.not.i.i = icmp eq i64 %32, 0
  br i1 %bf.cast.not.i.i, label %if.end.i.i.tb_path_find_dst_port.exit.i_crit_edge, label %if.end11.i.i

if.end.i.i.tb_path_find_dst_port.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tb_path_find_dst_port.exit.i

if.end11.i.i:                                     ; preds = %if.end.i.i
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 2
  %33 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ports.i.i, align 4
  %bf.lshr13.i.i = lshr i64 %bf.load.i.i, 47
  %35 = trunc i64 %bf.lshr13.i.i to i32
  %bf.cast15.i.i = and i32 %35, 63
  %bf.lshr17.i.i = lshr i64 %bf.load.i.i, 53
  %bf.cast18.i.i = trunc i64 %bf.lshr17.i.i to i32
  %remote.i.i = getelementptr %struct.tb_port, ptr %34, i32 %bf.cast15.i.i, i32 2
  %36 = ptrtoint ptr %remote.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %remote.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.050.i.i, 1
  %tobool.not.i.i = icmp ne ptr %37, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i.050.i.i)
  %cmp.i.i = icmp ult i32 %i.050.i.i, 13
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end11.i.i.for.body.i.i_crit_edge, label %for.cond.for.end_crit_edge.i.i

if.end11.i.i.for.body.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.cond.for.end_crit_edge.i.i:                   ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.cast18.i.i.le = trunc i64 %bf.lshr17.i.i to i32
  %arrayidx.le.i.i = getelementptr %struct.tb_port, ptr %34, i32 %bf.cast15.i.i
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.cond.for.end_crit_edge.i.i, %for.body.i.for.end.i.i_crit_edge
  %out_port.0.lcssa.i.i = phi ptr [ %arrayidx.le.i.i, %for.cond.for.end_crit_edge.i.i ], [ null, %for.body.i.for.end.i.i_crit_edge ]
  %hopid.0.lcssa.i.i = phi i32 [ %bf.cast18.i.i.le, %for.cond.for.end_crit_edge.i.i ], [ %i.017.i, %for.body.i.for.end.i.i_crit_edge ]
  %tobool19.not.i.i = icmp ne ptr %out_port.0.lcssa.i.i, null
  call void @__sanitizer_cov_trace_cmp4(i32 %hopid.0.lcssa.i.i, i32 %dst_hopid)
  %cmp20.i.i = icmp eq i32 %hopid.0.lcssa.i.i, %dst_hopid
  %or.cond38.i.i = select i1 %tobool19.not.i.i, i1 %cmp20.i.i, i1 false
  %cond.i.i = select i1 %or.cond38.i.i, ptr %out_port.0.lcssa.i.i, ptr null
  br label %tb_path_find_dst_port.exit.i

tb_path_find_dst_port.exit.i:                     ; preds = %for.end.i.i, %if.end.i.i.tb_path_find_dst_port.exit.i_crit_edge, %do.body.i.i
  %retval.0.i.i = phi ptr [ null, %do.body.i.i ], [ %cond.i.i, %for.end.i.i ], [ null, %if.end.i.i.tb_path_find_dst_port.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hop.i.i) #9
  %cmp1.i = icmp eq ptr %retval.0.i.i, %dst
  br i1 %cmp1.i, label %tb_path_find_dst_port.exit.i.if.end3_crit_edge, label %for.inc.i

tb_path_find_dst_port.exit.i.if.end3_crit_edge:   ; preds = %tb_path_find_dst_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

for.inc.i:                                        ; preds = %tb_path_find_dst_port.exit.i
  %inc.i = add nuw nsw i32 %i.017.i, 1
  %38 = ptrtoint ptr %max_in_hop_id.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load.i = load i32, ptr %max_in_hop_id.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 21
  %cmp.not.not.i = icmp ult i32 %i.017.i, %bf.lshr.i
  br i1 %cmp.not.not.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup128_crit_edge

for.inc.i.cleanup128_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup128

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end3:                                          ; preds = %tb_path_find_dst_port.exit.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %src_hopid.addr.0 = phi i32 [ %src_hopid, %entry.if.end3_crit_edge ], [ %i.017.i, %tb_path_find_dst_port.exit.i.if.end3_crit_edge ]
  %tobool4.not288.not = icmp eq ptr %src, null
  br i1 %tobool4.not288.not, label %if.end3.for.end_crit_edge, label %for.body.lr.ph

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end3
  %tobool23.not = icmp eq ptr %last, null
  br label %for.body

for.body:                                         ; preds = %if.end25.for.body_crit_edge, %for.body.lr.ph
  %h.0292 = phi i32 [ %src_hopid.addr.0, %for.body.lr.ph ], [ %bf.cast28, %if.end25.for.body_crit_edge ]
  %i.0291 = phi i32 [ 0, %for.body.lr.ph ], [ %inc29, %if.end25.for.body_crit_edge ]
  %p.0289 = phi ptr [ %src, %for.body.lr.ph ], [ %74, %if.end25.for.body_crit_edge ]
  %sw6 = getelementptr inbounds %struct.tb_port, ptr %p.0289, i32 0, i32 1
  %39 = ptrtoint ptr %sw6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sw6, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %40, i32 0, i32 20
  %41 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_unplugged.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

tb_port_read.exit:                                ; preds = %for.body
  %mul = shl i32 %h.0292, 1
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %40, i32 0, i32 5
  %43 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %40, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %bf.load.i.i208 = load i64, ptr %route_hi.i.i, align 4
  %48 = lshr i64 %bf.load.i.i208, 1
  %shl.i.i = and i64 %48, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %40, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %50 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %p.0289, i32 0, i32 9
  %51 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %52 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %46, ptr noundef nonnull %hop, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 0, i32 noundef %mul, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool8.not = icmp eq i32 %call4.i, 0
  br i1 %tobool8.not, label %if.end16, label %tb_port_read.exit.do.body_crit_edge

tb_port_read.exit.do.body_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %tb_port_read.exit.do.body_crit_edge, %for.body.do.body_crit_edge
  %sw6.le = getelementptr inbounds %struct.tb_port, ptr %p.0289, i32 0, i32 1
  %53 = ptrtoint ptr %sw6.le to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sw6.le, align 4
  %tb = getelementptr inbounds %struct.tb_switch, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %54, i32 0, i32 1, i32 4
  %61 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %bf.load.i210 = load i64, ptr %route_hi.i, align 4
  %62 = lshr i64 %bf.load.i210, 1
  %shl.i = and i64 %62, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %54, i32 0, i32 1, i32 3
  %63 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %64 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %p.0289, i32 0, i32 9
  %65 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %port, align 4
  %conv = zext i8 %66 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str, i64 noundef %or.i, i32 noundef %conv, i32 noundef %h.0292) #12
  br label %cleanup128

if.end16:                                         ; preds = %tb_port_read.exit
  %67 = ptrtoint ptr %hop to i32
  call void @__asan_load8_noabort(i32 %67)
  %bf.load = load i64, ptr %hop, align 8
  %68 = and i64 %bf.load, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %bf.cast.not = icmp eq i64 %68, 0
  br i1 %bf.cast.not, label %if.end16.for.end_crit_edge, label %if.end18

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end18:                                         ; preds = %if.end16
  %ports = getelementptr inbounds %struct.tb_switch, ptr %40, i32 0, i32 2
  %69 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ports, align 4
  %bf.lshr20 = lshr i64 %bf.load, 47
  %71 = trunc i64 %bf.lshr20 to i32
  %bf.cast22 = and i32 %71, 63
  br i1 %tobool23.not, label %if.end18.if.end25_crit_edge, label %if.then24

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.tb_port, ptr %70, i32 %bf.cast22
  %72 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %arrayidx, ptr %last, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end18.if.end25_crit_edge
  %bf.lshr27 = lshr i64 %bf.load, 53
  %bf.cast28 = trunc i64 %bf.lshr27 to i32
  %remote = getelementptr %struct.tb_port, ptr %70, i32 %bf.cast22, i32 2
  %73 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %remote, align 4
  %inc29 = add nuw nsw i32 %i.0291, 1
  %tobool4.not = icmp ne ptr %74, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %i.0291)
  %cmp5 = icmp ult i32 %i.0291, 13
  %or.cond206 = select i1 %tobool4.not, i1 %cmp5, i1 false
  br i1 %or.cond206, label %if.end25.for.body_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end25.for.end_crit_edge, %if.end16.for.end_crit_edge, %if.end3.for.end_crit_edge
  %num_hops.0.lcssa = phi i32 [ 0, %if.end3.for.end_crit_edge ], [ %inc29, %if.end25.for.end_crit_edge ], [ %i.0291, %if.end16.for.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %75 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 40) #13
  %tobool31.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not, label %for.end.cleanup128_crit_edge, label %if.end33

for.end.cleanup128_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup128

if.end33:                                         ; preds = %for.end
  %name34 = getelementptr inbounds %struct.tb_path, ptr %call7.i.i, i32 0, i32 1
  %76 = ptrtoint ptr %name34 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %name, ptr %name34, align 4
  %sw35 = getelementptr inbounds %struct.tb_port, ptr %src, i32 0, i32 1
  %77 = ptrtoint ptr %sw35 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sw35, align 4
  %tb36 = getelementptr inbounds %struct.tb_switch, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %tb36 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tb36, align 8
  %81 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %call7.i.i, align 8
  %path_length = getelementptr inbounds %struct.tb_path, ptr %call7.i.i, i32 0, i32 11
  %82 = ptrtoint ptr %path_length to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %num_hops.0.lcssa, ptr %path_length, align 8
  %activated = getelementptr inbounds %struct.tb_path, ptr %call7.i.i, i32 0, i32 8
  %83 = ptrtoint ptr %activated to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %activated, align 2
  %alloc_hopid39 = getelementptr inbounds %struct.tb_path, ptr %call7.i.i, i32 0, i32 12
  %84 = ptrtoint ptr %alloc_hopid39 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %frombool, ptr %alloc_hopid39, align 4
  %85 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_hops.0.lcssa, i32 28) #9
  %86 = extractvalue { i32, i1 } %85, 1
  br i1 %86, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !77

kcalloc.exit.thread:                              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %hops247 = getelementptr inbounds %struct.tb_path, ptr %call7.i.i, i32 0, i32 10
  %87 = ptrtoint ptr %hops247 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %hops247, align 4
  br label %if.then44

if.end7.i.i:                                      ; preds = %if.end33
  %88 = extractvalue { i32, i1 } %85, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %88, i32 noundef 3520) #14
  %hops = getelementptr inbounds %struct.tb_path, ptr %call7.i.i, i32 0, i32 10
  %89 = ptrtoint ptr %hops to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call8.i.i, ptr %hops, align 4
  %tobool43.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool43.not, label %if.end7.i.i.if.then44_crit_edge, label %for.cond46.preheader

if.end7.i.i.if.then44_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then44

for.cond46.preheader:                             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_hops.0.lcssa)
  %cmp47294.not = icmp eq i32 %num_hops.0.lcssa, 0
  br i1 %cmp47294.not, label %for.cond46.preheader.cleanup128_crit_edge, label %for.cond46.preheader.for.body49_crit_edge

for.cond46.preheader.for.body49_crit_edge:        ; preds = %for.cond46.preheader
  br label %for.body49

for.cond46.preheader.cleanup128_crit_edge:        ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup128

if.then44:                                        ; preds = %if.end7.i.i.if.then44_crit_edge, %kcalloc.exit.thread
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup128

for.body49:                                       ; preds = %for.inc109.for.body49_crit_edge, %for.cond46.preheader.for.body49_crit_edge
  %h.1298 = phi i32 [ %bf.cast88263, %for.inc109.for.body49_crit_edge ], [ %src_hopid.addr.0, %for.cond46.preheader.for.body49_crit_edge ]
  %i.1297 = phi i32 [ %inc110, %for.inc109.for.body49_crit_edge ], [ 0, %for.cond46.preheader.for.body49_crit_edge ]
  %p.1295 = phi ptr [ %139, %for.inc109.for.body49_crit_edge ], [ %src, %for.cond46.preheader.for.body49_crit_edge ]
  %sw50 = getelementptr inbounds %struct.tb_port, ptr %p.1295, i32 0, i32 1
  %90 = ptrtoint ptr %sw50 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sw50, align 4
  %is_unplugged.i214 = getelementptr inbounds %struct.tb_switch, ptr %91, i32 0, i32 20
  %92 = ptrtoint ptr %is_unplugged.i214 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %is_unplugged.i214, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i215 = icmp eq i8 %93, 0
  br i1 %tobool.not.i215, label %tb_port_read.exit229, label %for.body49.do.body55_crit_edge

for.body49.do.body55_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body55

tb_port_read.exit229:                             ; preds = %for.body49
  %mul51 = shl i32 %h.1298, 1
  %tb.i216 = getelementptr inbounds %struct.tb_switch, ptr %91, i32 0, i32 5
  %94 = ptrtoint ptr %tb.i216 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tb.i216, align 8
  %ctl.i217 = getelementptr inbounds %struct.tb, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %ctl.i217 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ctl.i217, align 8
  %route_hi.i.i218 = getelementptr inbounds %struct.tb_switch, ptr %91, i32 0, i32 1, i32 4
  %98 = ptrtoint ptr %route_hi.i.i218 to i32
  call void @__asan_loadN_noabort(i32 %98, i32 8)
  %bf.load.i.i219 = load i64, ptr %route_hi.i.i218, align 4
  %99 = lshr i64 %bf.load.i.i219, 1
  %shl.i.i220 = and i64 %99, 9223372032559808512
  %route_lo.i.i221 = getelementptr inbounds %struct.tb_switch, ptr %91, i32 0, i32 1, i32 3
  %100 = ptrtoint ptr %route_lo.i.i221 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %route_lo.i.i221, align 8
  %conv2.i.i222 = zext i32 %101 to i64
  %or.i.i223 = or i64 %shl.i.i220, %conv2.i.i222
  %port3.i224 = getelementptr inbounds %struct.tb_port, ptr %p.1295, i32 0, i32 9
  %102 = ptrtoint ptr %port3.i224 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %port3.i224, align 4
  %conv.i225 = zext i8 %103 to i32
  %call4.i226 = call i32 @tb_cfg_read(ptr noundef %97, ptr noundef nonnull %hop, i64 noundef %or.i.i223, i32 noundef %conv.i225, i32 noundef 0, i32 noundef %mul51, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i226)
  %tobool53.not = icmp eq i32 %call4.i226, 0
  br i1 %tobool53.not, label %if.end71, label %tb_port_read.exit229.do.body55_crit_edge

tb_port_read.exit229.do.body55_crit_edge:         ; preds = %tb_port_read.exit229
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body55

do.body55:                                        ; preds = %tb_port_read.exit229.do.body55_crit_edge, %for.body49.do.body55_crit_edge
  %sw50.le = getelementptr inbounds %struct.tb_port, ptr %p.1295, i32 0, i32 1
  %104 = ptrtoint ptr %sw50.le to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sw50.le, align 4
  %tb61 = getelementptr inbounds %struct.tb_switch, ptr %105, i32 0, i32 5
  %106 = ptrtoint ptr %tb61 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tb61, align 8
  %nhi62 = getelementptr inbounds %struct.tb, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %nhi62 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %nhi62, align 4
  %pdev63 = getelementptr inbounds %struct.tb_nhi, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %pdev63 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev63, align 4
  %dev64 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %route_hi.i230 = getelementptr inbounds %struct.tb_switch, ptr %105, i32 0, i32 1, i32 4
  %112 = ptrtoint ptr %route_hi.i230 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 8)
  %bf.load.i231 = load i64, ptr %route_hi.i230, align 4
  %113 = lshr i64 %bf.load.i231, 1
  %shl.i232 = and i64 %113, 9223372032559808512
  %route_lo.i233 = getelementptr inbounds %struct.tb_switch, ptr %105, i32 0, i32 1, i32 3
  %114 = ptrtoint ptr %route_lo.i233 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %route_lo.i233, align 8
  %conv2.i234 = zext i32 %115 to i64
  %or.i235 = or i64 %shl.i232, %conv2.i234
  %port67 = getelementptr inbounds %struct.tb_port, ptr %p.1295, i32 0, i32 9
  %116 = ptrtoint ptr %port67 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %port67, align 4
  %conv68 = zext i8 %117 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev64, ptr noundef nonnull @.str, i64 noundef %or.i235, i32 noundef %conv68, i32 noundef %h.1298) #12
  br label %do.body112

if.end71:                                         ; preds = %tb_port_read.exit229
  br i1 %alloc_hopid, label %land.lhs.true74, label %if.end79

land.lhs.true74:                                  ; preds = %if.end71
  %call75 = call i32 @tb_port_alloc_in_hopid(ptr noundef %p.1295, i32 noundef %h.1298, i32 noundef %h.1298) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %land.lhs.true74.do.body112_crit_edge, label %land.lhs.true91

land.lhs.true74.do.body112_crit_edge:             ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body112

if.end79:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  %ports80 = getelementptr inbounds %struct.tb_switch, ptr %91, i32 0, i32 2
  %118 = ptrtoint ptr %ports80 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ports80, align 4
  %120 = ptrtoint ptr %hop to i32
  call void @__asan_load8_noabort(i32 %120)
  %bf.load81 = load i64, ptr %hop, align 8
  %bf.lshr82 = lshr i64 %bf.load81, 47
  %121 = trunc i64 %bf.lshr82 to i32
  %bf.cast84 = and i32 %121, 63
  %arrayidx85 = getelementptr %struct.tb_port, ptr %119, i32 %bf.cast84
  %bf.lshr87 = lshr i64 %bf.load81, 53
  %bf.cast88 = trunc i64 %bf.lshr87 to i32
  br label %for.inc109

land.lhs.true91:                                  ; preds = %land.lhs.true74
  %ports80251 = getelementptr inbounds %struct.tb_switch, ptr %91, i32 0, i32 2
  %122 = ptrtoint ptr %ports80251 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ports80251, align 4
  %124 = ptrtoint ptr %hop to i32
  call void @__asan_load8_noabort(i32 %124)
  %bf.load81252 = load i64, ptr %hop, align 8
  %bf.lshr82253 = lshr i64 %bf.load81252, 47
  %125 = trunc i64 %bf.lshr82253 to i32
  %bf.cast84254 = and i32 %125, 63
  %arrayidx85255 = getelementptr %struct.tb_port, ptr %123, i32 %bf.cast84254
  %bf.lshr87256 = lshr i64 %bf.load81252, 53
  %bf.cast88257 = trunc i64 %bf.lshr87256 to i32
  %call92 = call i32 @tb_port_alloc_out_hopid(ptr noundef %arrayidx85255, i32 noundef %bf.cast88257, i32 noundef %bf.cast88257) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %if.then95, label %land.lhs.true91.for.inc109_crit_edge

land.lhs.true91.for.inc109_crit_edge:             ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc109

if.then95:                                        ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #11
  call void @tb_port_release_in_hopid(ptr noundef %p.1295, i32 noundef %h.1298) #9
  br label %do.body112

for.inc109:                                       ; preds = %land.lhs.true91.for.inc109_crit_edge, %if.end79
  %bf.cast88263 = phi i32 [ %bf.cast88257, %land.lhs.true91.for.inc109_crit_edge ], [ %bf.cast88, %if.end79 ]
  %arrayidx85261 = phi ptr [ %arrayidx85255, %land.lhs.true91.for.inc109_crit_edge ], [ %arrayidx85, %if.end79 ]
  %bf.cast84258 = phi i32 [ %bf.cast84254, %land.lhs.true91.for.inc109_crit_edge ], [ %bf.cast84, %if.end79 ]
  %126 = phi ptr [ %123, %land.lhs.true91.for.inc109_crit_edge ], [ %119, %if.end79 ]
  %127 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hops, align 4
  %arrayidx98 = getelementptr %struct.tb_path_hop, ptr %128, i32 %i.1297
  %129 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %p.1295, ptr %arrayidx98, align 4
  %130 = load ptr, ptr %hops, align 4
  %in_hop_index = getelementptr %struct.tb_path_hop, ptr %130, i32 %i.1297, i32 2
  %131 = ptrtoint ptr %in_hop_index to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %h.1298, ptr %in_hop_index, align 4
  %132 = load ptr, ptr %hops, align 4
  %in_counter_index = getelementptr %struct.tb_path_hop, ptr %132, i32 %i.1297, i32 3
  %133 = ptrtoint ptr %in_counter_index to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %in_counter_index, align 4
  %134 = load ptr, ptr %hops, align 4
  %out_port105 = getelementptr %struct.tb_path_hop, ptr %134, i32 %i.1297, i32 1
  %135 = ptrtoint ptr %out_port105 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %arrayidx85261, ptr %out_port105, align 4
  %136 = load ptr, ptr %hops, align 4
  %next_hop_index = getelementptr %struct.tb_path_hop, ptr %136, i32 %i.1297, i32 4
  %137 = ptrtoint ptr %next_hop_index to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %bf.cast88263, ptr %next_hop_index, align 4
  %remote108 = getelementptr %struct.tb_port, ptr %126, i32 %bf.cast84258, i32 2
  %138 = ptrtoint ptr %remote108 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %remote108, align 4
  %inc110 = add nuw nsw i32 %i.1297, 1
  %exitcond.not = icmp eq i32 %inc110, %num_hops.0.lcssa
  br i1 %exitcond.not, label %for.inc109.cleanup128_crit_edge, label %for.inc109.for.body49_crit_edge

for.inc109.for.body49_crit_edge:                  ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body49

for.inc109.cleanup128_crit_edge:                  ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup128

do.body112:                                       ; preds = %if.then95, %land.lhs.true74.do.body112_crit_edge, %do.body55
  %140 = ptrtoint ptr %sw35 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sw35, align 4
  %tb118 = getelementptr inbounds %struct.tb_switch, ptr %141, i32 0, i32 5
  %142 = ptrtoint ptr %tb118 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tb118, align 8
  %nhi119 = getelementptr inbounds %struct.tb, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %nhi119 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %nhi119, align 4
  %pdev120 = getelementptr inbounds %struct.tb_nhi, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %pdev120 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pdev120, align 4
  %dev121 = getelementptr inbounds %struct.pci_dev, ptr %147, i32 0, i32 44
  %route_hi.i236 = getelementptr inbounds %struct.tb_switch, ptr %141, i32 0, i32 1, i32 4
  %148 = ptrtoint ptr %route_hi.i236 to i32
  call void @__asan_loadN_noabort(i32 %148, i32 8)
  %bf.load.i237 = load i64, ptr %route_hi.i236, align 4
  %149 = lshr i64 %bf.load.i237, 1
  %shl.i238 = and i64 %149, 9223372032559808512
  %route_lo.i239 = getelementptr inbounds %struct.tb_switch, ptr %141, i32 0, i32 1, i32 3
  %150 = ptrtoint ptr %route_lo.i239 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %route_lo.i239, align 8
  %conv2.i240 = zext i32 %151 to i64
  %or.i241 = or i64 %shl.i238, %conv2.i240
  %port124 = getelementptr inbounds %struct.tb_port, ptr %src, i32 0, i32 9
  %152 = ptrtoint ptr %port124 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %port124, align 4
  %conv125 = zext i8 %153 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev121, ptr noundef nonnull @.str.8, i64 noundef %or.i241, i32 noundef %conv125, i32 noundef %src_hopid.addr.0) #12
  call void @tb_path_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup128

cleanup128:                                       ; preds = %do.body112, %for.inc109.cleanup128_crit_edge, %if.then44, %for.cond46.preheader.cleanup128_crit_edge, %for.end.cleanup128_crit_edge, %do.body, %for.inc.i.cleanup128_crit_edge, %if.then.cleanup128_crit_edge
  %retval.0 = phi ptr [ null, %do.body ], [ null, %do.body112 ], [ null, %if.then44 ], [ null, %for.end.cleanup128_crit_edge ], [ null, %if.then.cleanup128_crit_edge ], [ %call7.i.i, %for.cond46.preheader.cleanup128_crit_edge ], [ %call7.i.i, %for.inc109.cleanup128_crit_edge ], [ null, %for.inc.i.cleanup128_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hop) #9
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_port_alloc_in_hopid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_port_alloc_out_hopid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_port_release_in_hopid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_path_free(ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_hopid = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 12
  %0 = ptrtoint ptr %alloc_hopid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %alloc_hopid, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %for.cond.preheader

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.cond.preheader:                               ; preds = %entry
  %path_length = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 11
  %2 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %path_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22 = icmp sgt i32 %3, 0
  br i1 %cmp22, label %for.body.lr.ph, label %for.cond.preheader.if.end8_crit_edge

for.cond.preheader.if.end8_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hops = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end7.for.body_crit_edge ]
  %4 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hops, align 4
  %arrayidx = getelementptr %struct.tb_path_hop, ptr %5, i32 %i.023
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %for.body.if.end_crit_edge, label %if.then2

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %in_hop_index = getelementptr %struct.tb_path_hop, ptr %5, i32 %i.023, i32 2
  %8 = ptrtoint ptr %in_hop_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %in_hop_index, align 4
  tail call void @tb_port_release_in_hopid(ptr noundef nonnull %7, i32 noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %if.then2, %for.body.if.end_crit_edge
  %out_port = getelementptr %struct.tb_path_hop, ptr %5, i32 %i.023, i32 1
  %10 = ptrtoint ptr %out_port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %out_port, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %next_hop_index = getelementptr %struct.tb_path_hop, ptr %5, i32 %i.023, i32 4
  %12 = ptrtoint ptr %next_hop_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %next_hop_index, align 4
  tail call void @tb_port_release_out_hopid(ptr noundef nonnull %11, i32 noundef %13) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %inc = add nuw nsw i32 %i.023, 1
  %14 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %path_length, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %if.end7.if.end8_crit_edge

if.end7.if.end8_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end8:                                          ; preds = %if.end7.if.end8_crit_edge, %for.cond.preheader.if.end8_crit_edge, %entry.if.end8_crit_edge
  %hops9 = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 10
  %16 = ptrtoint ptr %hops9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hops9, align 4
  tail call void @kfree(ptr noundef %17) #9
  tail call void @kfree(ptr noundef %path) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_path_alloc(ptr noundef %tb, ptr noundef %src, i32 noundef %src_hopid, ptr noundef %dst, i32 noundef %dst_hopid, i32 noundef %link_nr, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @tb_next_port_on_path(ptr noundef %src, ptr noundef %dst, ptr noundef null) #9
  %tobool2.not185 = icmp eq ptr %call1, null
  br i1 %tobool2.not185, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0188 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %first_port.0187 = phi ptr [ %spec.select, %for.body.for.body_crit_edge ], [ null, %if.end.for.body_crit_edge ]
  %in_port.0186 = phi ptr [ %call6, %for.body.for.body_crit_edge ], [ %call1, %if.end.for.body_crit_edge ]
  %tobool3.not = icmp eq ptr %first_port.0187, null
  %spec.select = select i1 %tobool3.not, ptr %in_port.0186, ptr %first_port.0187
  %inc = add i32 %i.0188, 1
  %call6 = tail call ptr @tb_next_port_on_path(ptr noundef %src, ptr noundef %dst, ptr noundef nonnull %in_port.0186) #9
  %tobool2.not = icmp eq ptr %call6, null
  br i1 %tobool2.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %first_port.0.lcssa = phi ptr [ null, %if.end.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %last_port.0.lcssa = phi ptr [ null, %if.end.for.end_crit_edge ], [ %in_port.0186, %for.body.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %cmp.not = icmp eq ptr %first_port.0.lcssa, %src
  %cmp7.not = icmp eq ptr %last_port.0.lcssa, %dst
  %or.cond = and i1 %cmp.not, %cmp7.not
  br i1 %or.cond, label %if.end9, label %if.then8

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %div = sdiv i32 %i.0.lcssa, 2
  %1 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 28) #9
  %2 = extractvalue { i32, i1 } %1, 1
  br i1 %2, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !77

kcalloc.exit.thread:                              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %hops177 = getelementptr inbounds %struct.tb_path, ptr %call7.i.i, i32 0, i32 10
  %3 = ptrtoint ptr %hops177 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %hops177, align 4
  br label %if.then13

if.end7.i.i:                                      ; preds = %if.end9
  %4 = extractvalue { i32, i1 } %1, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #14
  %hops = getelementptr inbounds %struct.tb_path, ptr %call7.i.i, i32 0, i32 10
  %5 = ptrtoint ptr %hops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %hops, align 4
  %tobool12.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool12.not, label %if.end7.i.i.if.then13_crit_edge, label %if.end14

if.end7.i.i.if.then13_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13

if.then13:                                        ; preds = %if.end7.i.i.if.then13_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end7.i.i
  %alloc_hopid = getelementptr inbounds %struct.tb_path, ptr %call7.i.i, i32 0, i32 12
  %6 = ptrtoint ptr %alloc_hopid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %alloc_hopid, align 4
  %i.0.lcssa.off = add i32 %i.0.lcssa, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0.lcssa.off)
  %7 = icmp ult i32 %i.0.lcssa.off, 3
  br i1 %7, label %if.end14.for.end95_crit_edge, label %for.body17.lr.ph

if.end14.for.end95_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end95

for.body17.lr.ph:                                 ; preds = %if.end14
  %sub = add nsw i32 %div, -1
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body17

for.body17:                                       ; preds = %if.end81.for.body17_crit_edge, %for.body17.lr.ph
  %i.1194 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc94, %if.end81.for.body17_crit_edge ]
  %in_hopid.0193 = phi i32 [ %src_hopid, %for.body17.lr.ph ], [ %ret.0, %if.end81.for.body17_crit_edge ]
  %out_port.0192 = phi ptr [ null, %for.body17.lr.ph ], [ %out_port.1, %if.end81.for.body17_crit_edge ]
  %call18 = tail call ptr @tb_next_port_on_path(ptr noundef %src, ptr noundef %dst, ptr noundef %out_port.0192) #9
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %for.body17.err_crit_edge, label %if.end21

for.body17.err_crit_edge:                         ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end21:                                         ; preds = %for.body17
  %bonded = getelementptr inbounds %struct.tb_port, ptr %call18, i32 0, i32 11
  %8 = ptrtoint ptr %bonded to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bonded, align 2, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool22.not = icmp eq i8 %9, 0
  br i1 %tobool22.not, label %land.lhs.true, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true:                                    ; preds = %if.end21
  %dual_link_port = getelementptr inbounds %struct.tb_port, ptr %call18, i32 0, i32 12
  %10 = ptrtoint ptr %dual_link_port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dual_link_port, align 4
  %tobool23.not = icmp eq ptr %11, null
  br i1 %tobool23.not, label %land.lhs.true.if.end30_crit_edge, label %land.lhs.true24

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true24:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %link_nr25 = getelementptr inbounds %struct.tb_port, ptr %call18, i32 0, i32 13
  %12 = ptrtoint ptr %link_nr25 to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %link_nr25, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %conv = zext i8 %bf.lshr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %link_nr)
  %cmp26.not = icmp eq i32 %conv, %link_nr
  %spec.select175 = select i1 %cmp26.not, ptr %call18, ptr %11
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true24, %land.lhs.true.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  %in_port.1 = phi ptr [ %call18, %if.end21.if.end30_crit_edge ], [ %call18, %land.lhs.true.if.end30_crit_edge ], [ %spec.select175, %land.lhs.true24 ]
  %call31 = tail call i32 @tb_port_alloc_in_hopid(ptr noundef nonnull %in_port.1, i32 noundef %in_hopid.0193, i32 noundef %in_hopid.0193) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.err_crit_edge, label %if.end35

if.end30.err_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end35:                                         ; preds = %if.end30
  %call36 = tail call ptr @tb_next_port_on_path(ptr noundef %src, ptr noundef %dst, ptr noundef nonnull %in_port.1) #9
  %tobool37.not = icmp eq ptr %call36, null
  br i1 %tobool37.not, label %if.end35.err_crit_edge, label %if.end39

if.end35.err_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end39:                                         ; preds = %if.end35
  %dual_link_port40 = getelementptr inbounds %struct.tb_port, ptr %call36, i32 0, i32 12
  %13 = ptrtoint ptr %dual_link_port40 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dual_link_port40, align 4
  %tobool41.not = icmp eq ptr %14, null
  br i1 %tobool41.not, label %if.end39.if.end70_crit_edge, label %if.then42

if.end39.if.end70_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then42:                                        ; preds = %if.end39
  %bonded43 = getelementptr inbounds %struct.tb_port, ptr %in_port.1, i32 0, i32 11
  %15 = ptrtoint ptr %bonded43 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bonded43, align 2, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool44.not = icmp eq i8 %16, 0
  br i1 %tobool44.not, label %land.lhs.true45, label %if.then42.if.else_crit_edge

if.then42.if.else_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true45:                                  ; preds = %if.then42
  %bonded46 = getelementptr inbounds %struct.tb_port, ptr %call36, i32 0, i32 11
  %17 = ptrtoint ptr %bonded46 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bonded46, align 2, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool47.not = icmp eq i8 %18, 0
  br i1 %tobool47.not, label %land.lhs.true45.if.else_crit_edge, label %land.lhs.true49

land.lhs.true45.if.else_crit_edge:                ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true49:                                  ; preds = %land.lhs.true45
  %link_nr50 = getelementptr inbounds %struct.tb_port, ptr %call36, i32 0, i32 13
  %19 = ptrtoint ptr %link_nr50 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load51 = load i8, ptr %link_nr50, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load51)
  %tobool54.not = icmp sgt i8 %bf.load51, -1
  br i1 %tobool54.not, label %land.lhs.true49.if.else_crit_edge, label %land.lhs.true49.if.end70_crit_edge

land.lhs.true49.if.end70_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

land.lhs.true49.if.else_crit_edge:                ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true49.if.else_crit_edge, %land.lhs.true45.if.else_crit_edge, %if.then42.if.else_crit_edge
  %bonded57 = getelementptr inbounds %struct.tb_port, ptr %call36, i32 0, i32 11
  %20 = ptrtoint ptr %bonded57 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bonded57, align 2, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool58.not = icmp eq i8 %21, 0
  br i1 %tobool58.not, label %land.lhs.true59, label %if.else.if.end70_crit_edge

if.else.if.end70_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

land.lhs.true59:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %link_nr60 = getelementptr inbounds %struct.tb_port, ptr %call36, i32 0, i32 13
  %22 = ptrtoint ptr %link_nr60 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load61 = load i8, ptr %link_nr60, align 4
  %bf.lshr62 = lshr i8 %bf.load61, 7
  %conv63 = zext i8 %bf.lshr62 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv63, i32 %link_nr)
  %cmp64.not = icmp eq i32 %conv63, %link_nr
  %spec.select184 = select i1 %cmp64.not, ptr %call36, ptr %14
  br label %if.end70

if.end70:                                         ; preds = %land.lhs.true59, %if.else.if.end70_crit_edge, %land.lhs.true49.if.end70_crit_edge, %if.end39.if.end70_crit_edge
  %out_port.1 = phi ptr [ %call36, %if.else.if.end70_crit_edge ], [ %call36, %if.end39.if.end70_crit_edge ], [ %14, %land.lhs.true49.if.end70_crit_edge ], [ %spec.select184, %land.lhs.true59 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1194, i32 %sub)
  %cmp71 = icmp eq i32 %i.1194, %sub
  br i1 %cmp71, label %if.then73, label %if.else75

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %call74 = tail call i32 @tb_port_alloc_out_hopid(ptr noundef nonnull %out_port.1, i32 noundef %dst_hopid, i32 noundef %dst_hopid) #9
  br label %if.end77

if.else75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %call76 = tail call i32 @tb_port_alloc_out_hopid(ptr noundef nonnull %out_port.1, i32 noundef -1, i32 noundef -1) #9
  br label %if.end77

if.end77:                                         ; preds = %if.else75, %if.then73
  %ret.0 = phi i32 [ %call74, %if.then73 ], [ %call76, %if.else75 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp78 = icmp slt i32 %ret.0, 0
  br i1 %cmp78, label %if.end77.err_crit_edge, label %if.end81

if.end77.err_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end81:                                         ; preds = %if.end77
  %23 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hops, align 4
  %in_hop_index = getelementptr %struct.tb_path_hop, ptr %24, i32 %i.1194, i32 2
  %25 = ptrtoint ptr %in_hop_index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call31, ptr %in_hop_index, align 4
  %26 = load ptr, ptr %hops, align 4
  %arrayidx84 = getelementptr %struct.tb_path_hop, ptr %26, i32 %i.1194
  %27 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %in_port.1, ptr %arrayidx84, align 4
  %28 = load ptr, ptr %hops, align 4
  %in_counter_index = getelementptr %struct.tb_path_hop, ptr %28, i32 %i.1194, i32 3
  %29 = ptrtoint ptr %in_counter_index to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %in_counter_index, align 4
  %30 = load ptr, ptr %hops, align 4
  %out_port90 = getelementptr %struct.tb_path_hop, ptr %30, i32 %i.1194, i32 1
  %31 = ptrtoint ptr %out_port90 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %out_port.1, ptr %out_port90, align 4
  %32 = load ptr, ptr %hops, align 4
  %next_hop_index = getelementptr %struct.tb_path_hop, ptr %32, i32 %i.1194, i32 4
  %33 = ptrtoint ptr %next_hop_index to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %ret.0, ptr %next_hop_index, align 4
  %inc94 = add nuw i32 %i.1194, 1
  %exitcond.not = icmp eq i32 %inc94, %umax
  br i1 %exitcond.not, label %if.end81.for.end95_crit_edge, label %if.end81.for.body17_crit_edge

if.end81.for.body17_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

if.end81.for.end95_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end95

for.end95:                                        ; preds = %if.end81.for.end95_crit_edge, %if.end14.for.end95_crit_edge
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tb, ptr %call7.i.i, align 8
  %path_length = getelementptr inbounds %struct.tb_path, ptr %call7.i.i, i32 0, i32 11
  %35 = ptrtoint ptr %path_length to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %div, ptr %path_length, align 8
  %name97 = getelementptr inbounds %struct.tb_path, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %name97 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %name, ptr %name97, align 4
  br label %cleanup

err:                                              ; preds = %if.end77.err_crit_edge, %if.end35.err_crit_edge, %if.end30.err_crit_edge, %for.body17.err_crit_edge
  tail call void @tb_path_free(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end95, %if.then13, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then8 ], [ null, %err ], [ %call7.i.i, %for.end95 ], [ null, %if.then13 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_next_port_on_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_port_release_out_hopid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tb_path_deactivate(ptr nocapture noundef %path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %activated = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 8
  %0 = ptrtoint ptr %activated to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %activated, align 2, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %do.body23

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %nhi = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %8 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %path, align 4
  %nhi7 = getelementptr inbounds %struct.tb, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nhi7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nhi7, align 4
  %pdev8 = getelementptr inbounds %struct.tb_nhi, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev8, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %16 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i71 = phi ptr [ %17, %if.end.i ], [ %15, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 461, i32 noundef 9, ptr noundef nonnull @.str.10, ptr noundef %call, ptr noundef %retval.0.i71) #9
  br label %return

do.body23:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_path_deactivate.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_path_deactivate, %if.then33)) #9
          to label %do.end55 [label %if.then33], !srcloc !78

if.then33:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %path, align 4
  %nhi35 = getelementptr inbounds %struct.tb, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %nhi35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nhi35, align 4
  %pdev36 = getelementptr inbounds %struct.tb_nhi, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev36, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %name = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 1
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  %hops = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 10
  %26 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hops, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sw, align 4
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %31, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %33 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %33, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %31, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %35 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %29, i32 0, i32 9
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %port, align 4
  %conv = zext i8 %37 to i32
  %path_length = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 11
  %38 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %path_length, align 4
  %sub = add i32 %39, -1
  %out_port = getelementptr %struct.tb_path_hop, ptr %27, i32 %sub, i32 1
  %40 = ptrtoint ptr %out_port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %out_port, align 4
  %sw44 = getelementptr inbounds %struct.tb_port, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %sw44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sw44, align 4
  %route_hi.i72 = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %route_hi.i72 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %bf.load.i73 = load i64, ptr %route_hi.i72, align 4
  %45 = lshr i64 %bf.load.i73, 1
  %shl.i74 = and i64 %45, 9223372032559808512
  %route_lo.i75 = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %route_lo.i75 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %route_lo.i75, align 8
  %conv2.i76 = zext i32 %47 to i64
  %or.i77 = or i64 %shl.i74, %conv2.i76
  %port51 = getelementptr inbounds %struct.tb_port, ptr %41, i32 0, i32 9
  %48 = ptrtoint ptr %port51 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %port51, align 4
  %conv52 = zext i8 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_path_deactivate.__UNIQUE_ID_ddebug241, ptr noundef %dev37, ptr noundef nonnull @.str.13, ptr noundef %25, i64 noundef %or.i, i32 noundef %conv, i64 noundef %or.i77, i32 noundef %conv52) #9
  br label %do.end55

do.end55:                                         ; preds = %if.then33, %do.body23
  tail call fastcc void @__tb_path_deactivate_hops(ptr noundef %path, i32 noundef 0)
  %path_length.i = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 11
  %50 = ptrtoint ptr %path_length.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %path_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp21.i = icmp sgt i32 %51, 0
  br i1 %cmp21.i, label %for.body.lr.ph.i, label %do.end55.__tb_path_deallocate_nfc.exit_crit_edge

do.end55.__tb_path_deallocate_nfc.exit_crit_edge: ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %__tb_path_deallocate_nfc.exit

for.body.lr.ph.i:                                 ; preds = %do.end55
  %hops.i = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %52 = ptrtoint ptr %hops.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hops.i, align 4
  %arrayidx.i = getelementptr %struct.tb_path_hop, ptr %53, i32 %i.022.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 4
  %nfc_credits.i = getelementptr %struct.tb_path_hop, ptr %53, i32 %i.022.i, i32 6
  %56 = ptrtoint ptr %nfc_credits.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nfc_credits.i, align 4
  %sub.i = sub i32 0, %57
  %call.i = tail call i32 @tb_port_add_nfc_credits(ptr noundef %55, i32 noundef %sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i78 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i78, label %for.body.i.for.inc.i_crit_edge, label %do.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %hops.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hops.i, align 4
  %arrayidx4.i = getelementptr %struct.tb_path_hop, ptr %59, i32 %i.022.i
  %60 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx4.i, align 4
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sw.i, align 4
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %63, i32 0, i32 5
  %64 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tb.i, align 8
  %nhi.i = getelementptr inbounds %struct.tb, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %63, i32 0, i32 1, i32 4
  %70 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %71 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %71, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %63, i32 0, i32 1, i32 3
  %72 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %73 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port.i = getelementptr inbounds %struct.tb_port, ptr %61, i32 0, i32 9
  %74 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %port.i, align 4
  %conv.i = zext i8 %75 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef %i.022.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %76 = ptrtoint ptr %path_length.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %path_length.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %77
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.__tb_path_deallocate_nfc.exit_crit_edge

for.inc.i.__tb_path_deallocate_nfc.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__tb_path_deallocate_nfc.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

__tb_path_deallocate_nfc.exit:                    ; preds = %for.inc.i.__tb_path_deallocate_nfc.exit_crit_edge, %do.end55.__tb_path_deallocate_nfc.exit_crit_edge
  %78 = ptrtoint ptr %activated to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %activated, align 2
  br label %return

return:                                           ; preds = %__tb_path_deallocate_nfc.exit, %dev_name.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tb_path_deactivate_hops(ptr nocapture noundef readonly %path, i32 noundef %first_hop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %path_length = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 11
  %0 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %path_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %first_hop)
  %cmp30 = icmp sgt i32 %1, %first_hop
  br i1 %cmp30, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %hops = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 10
  %clear_fc = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ %first_hop, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hops, align 4
  %arrayidx = getelementptr %struct.tb_path_hop, ptr %3, i32 %i.031
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %in_hop_index = getelementptr %struct.tb_path_hop, ptr %3, i32 %i.031, i32 2
  %6 = ptrtoint ptr %in_hop_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_hop_index, align 4
  %8 = ptrtoint ptr %clear_fc to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %clear_fc, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  %call = tail call fastcc i32 @__tb_path_deactivate_hop(ptr noundef %5, i32 noundef %7, i1 noundef zeroext %tobool)
  %10 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.body [
    i32 0, label %for.body.for.inc_crit_edge
    i32 -19, label %for.body.for.inc_crit_edge33
  ]

for.body.for.inc_crit_edge33:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hops, align 4
  %arrayidx6 = getelementptr %struct.tb_path_hop, ptr %12, i32 %i.031
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx6, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw, align 4
  %tb = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %24 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %24, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %26 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %14, i32 0, i32 9
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %port, align 4
  %conv = zext i8 %28 to i32
  %in_hop_index13 = getelementptr %struct.tb_path_hop, ptr %12, i32 %i.031, i32 2
  %29 = ptrtoint ptr %in_hop_index13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %in_hop_index13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.21, i64 noundef %or.i, i32 noundef %conv, i32 noundef %i.031, i32 noundef %30) #12
  br label %for.inc

for.inc:                                          ; preds = %do.body, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge33
  %inc = add nsw i32 %i.031, 1
  %31 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %path_length, align 4
  %cmp = icmp slt i32 %inc, %32
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tb_path_activate(ptr noundef %path) local_unnamed_addr #0 align 64 {
entry:
  %hop = alloca %struct.tb_regs_hop, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %activated = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 8
  %0 = ptrtoint ptr %activated to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %activated, align 2, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body23, label %do.end

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %path, align 4
  %nhi = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %call = tail call ptr @dev_driver_string(ptr noundef %dev) #9
  %8 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %path, align 4
  %nhi7 = getelementptr inbounds %struct.tb, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nhi7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nhi7, align 4
  %pdev8 = getelementptr inbounds %struct.tb_nhi, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev8, align 4
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %16 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i413 = phi ptr [ %17, %if.end.i ], [ %15, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 489, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call, ptr noundef %retval.0.i413) #9
  br label %cleanup323

do.body23:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_path_activate.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_path_activate, %if.then33)) #9
          to label %do.end55 [label %if.then33], !srcloc !78

if.then33:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %path, align 4
  %nhi35 = getelementptr inbounds %struct.tb, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %nhi35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nhi35, align 4
  %pdev36 = getelementptr inbounds %struct.tb_nhi, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pdev36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev36, align 4
  %dev37 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %name = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 1
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  %hops = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 10
  %26 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hops, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sw, align 4
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %31, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %33 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %33, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %31, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %35 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %29, i32 0, i32 9
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %port, align 4
  %conv = zext i8 %37 to i32
  %path_length = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 11
  %38 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %path_length, align 4
  %sub = add i32 %39, -1
  %out_port = getelementptr %struct.tb_path_hop, ptr %27, i32 %sub, i32 1
  %40 = ptrtoint ptr %out_port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %out_port, align 4
  %sw44 = getelementptr inbounds %struct.tb_port, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %sw44 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sw44, align 4
  %route_hi.i414 = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 1, i32 4
  %44 = ptrtoint ptr %route_hi.i414 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 8)
  %bf.load.i415 = load i64, ptr %route_hi.i414, align 4
  %45 = lshr i64 %bf.load.i415, 1
  %shl.i416 = and i64 %45, 9223372032559808512
  %route_lo.i417 = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 1, i32 3
  %46 = ptrtoint ptr %route_lo.i417 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %route_lo.i417, align 8
  %conv2.i418 = zext i32 %47 to i64
  %or.i419 = or i64 %shl.i416, %conv2.i418
  %port51 = getelementptr inbounds %struct.tb_port, ptr %41, i32 0, i32 9
  %48 = ptrtoint ptr %port51 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %port51, align 4
  %conv52 = zext i8 %49 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_path_activate.__UNIQUE_ID_ddebug242, ptr noundef %dev37, ptr noundef nonnull @.str.16, ptr noundef %25, i64 noundef %or.i, i32 noundef %conv, i64 noundef %or.i419, i32 noundef %conv52) #9
  br label %do.end55

do.end55:                                         ; preds = %if.then33, %do.body23
  %path_length56 = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 11
  %50 = ptrtoint ptr %path_length56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %path_length56, align 4
  %i.0486 = add i32 %51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0486)
  %cmp487 = icmp sgt i32 %i.0486, -1
  br i1 %cmp487, label %for.body.lr.ph, label %do.end55.for.end_crit_edge

do.end55.for.end_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end55
  %hops59 = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0488 = phi i32 [ %i.0486, %for.body.lr.ph ], [ %i.0, %for.inc.for.body_crit_edge ]
  %52 = ptrtoint ptr %hops59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hops59, align 4
  %in_counter_index = getelementptr %struct.tb_path_hop, ptr %53, i32 %i.0488, i32 3
  %54 = ptrtoint ptr %in_counter_index to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %in_counter_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %55)
  %cmp61 = icmp eq i32 %55, -1
  br i1 %cmp61, label %for.body.for.inc_crit_edge, label %if.end64

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end64:                                         ; preds = %for.body
  %arrayidx60 = getelementptr %struct.tb_path_hop, ptr %53, i32 %i.0488
  %56 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx60, align 4
  %call71 = tail call i32 @tb_port_clear_counter(ptr noundef %57, i32 noundef %55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end64.for.inc_crit_edge, label %if.end64.do.end299_crit_edge

if.end64.do.end299_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end299

if.end64.for.inc_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end64.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.0 = add i32 %i.0488, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end55.for.end_crit_edge
  %58 = ptrtoint ptr %path_length56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %path_length56, align 4
  %hops81 = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 10
  br label %for.cond77

for.cond77:                                       ; preds = %for.body80.for.cond77_crit_edge, %for.end
  %i.1.in = phi i32 [ %59, %for.end ], [ %i.1, %for.body80.for.cond77_crit_edge ]
  %i.1 = add i32 %i.1.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.1)
  %cmp78 = icmp sgt i32 %i.1, -1
  br i1 %cmp78, label %for.body80, label %for.end92

for.body80:                                       ; preds = %for.cond77
  %60 = ptrtoint ptr %hops81 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hops81, align 4
  %arrayidx82 = getelementptr %struct.tb_path_hop, ptr %61, i32 %i.1
  %62 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx82, align 4
  %nfc_credits = getelementptr %struct.tb_path_hop, ptr %61, i32 %i.1, i32 6
  %64 = ptrtoint ptr %nfc_credits to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nfc_credits, align 4
  %call86 = tail call i32 @tb_port_add_nfc_credits(ptr noundef %63, i32 noundef %65) #9
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %for.body80.for.cond77_crit_edge, label %if.then88

for.body80.for.cond77_crit_edge:                  ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond77

if.then88:                                        ; preds = %for.body80
  %66 = ptrtoint ptr %path_length56 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %path_length56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %i.1)
  %cmp21.i = icmp sgt i32 %67, %i.1
  br i1 %cmp21.i, label %if.then88.for.body.i_crit_edge, label %if.then88.do.end299_crit_edge

if.then88.do.end299_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end299

if.then88.for.body.i_crit_edge:                   ; preds = %if.then88
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then88.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ %i.1, %if.then88.for.body.i_crit_edge ]
  %68 = ptrtoint ptr %hops81 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hops81, align 4
  %arrayidx.i = getelementptr %struct.tb_path_hop, ptr %69, i32 %i.022.i
  %70 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i, align 4
  %nfc_credits.i = getelementptr %struct.tb_path_hop, ptr %69, i32 %i.022.i, i32 6
  %72 = ptrtoint ptr %nfc_credits.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nfc_credits.i, align 4
  %sub.i = sub i32 0, %73
  %call.i = tail call i32 @tb_port_add_nfc_credits(ptr noundef %71, i32 noundef %sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i420 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i420, label %for.body.i.for.inc.i_crit_edge, label %do.body.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

do.body.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %hops81 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hops81, align 4
  %arrayidx4.i = getelementptr %struct.tb_path_hop, ptr %75, i32 %i.022.i
  %76 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx4.i, align 4
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sw.i, align 4
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tb.i, align 8
  %nhi.i = getelementptr inbounds %struct.tb, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %nhi.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %nhi.i, align 4
  %pdev.i = getelementptr inbounds %struct.tb_nhi, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %79, i32 0, i32 1, i32 4
  %86 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %87 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %87, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %79, i32 0, i32 1, i32 3
  %88 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %89 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port.i = getelementptr inbounds %struct.tb_port, ptr %77, i32 0, i32 9
  %90 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %port.i, align 4
  %conv.i = zext i8 %91 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef %i.022.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nsw i32 %i.022.i, 1
  %92 = ptrtoint ptr %path_length56 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %path_length56, align 4
  %cmp.i = icmp slt i32 %inc.i, %93
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end299_crit_edge

for.inc.i.do.end299_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end299

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end92:                                        ; preds = %for.cond77
  %94 = ptrtoint ptr %path_length56 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %path_length56, align 4
  %i.2489 = add i32 %95, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.2489)
  %cmp96490 = icmp sgt i32 %i.2489, -1
  br i1 %cmp96490, label %for.body98.lr.ph, label %for.end92.for.end265_crit_edge

for.end92.for.end265_crit_edge:                   ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end265

for.body98.lr.ph:                                 ; preds = %for.end92
  %clear_fc = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 9
  %weight = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 6
  %drop_packages = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 7
  %ingress_fc_enable = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 4
  %egress_fc_enable = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 5
  %ingress_shared_buffer = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 2
  %egress_shared_buffer = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 3
  br label %for.body98

for.body98:                                       ; preds = %cleanup.for.body98_crit_edge, %for.body98.lr.ph
  %i.2492 = phi i32 [ %i.2489, %for.body98.lr.ph ], [ %i.2, %cleanup.for.body98_crit_edge ]
  %i.2.in491 = phi i32 [ %95, %for.body98.lr.ph ], [ %i.2492, %cleanup.for.body98_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hop) #9
  %96 = ptrtoint ptr %hop to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 0, ptr %hop, align 8
  %97 = ptrtoint ptr %hops81 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hops81, align 4
  %arrayidx100 = getelementptr %struct.tb_path_hop, ptr %98, i32 %i.2492
  %99 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx100, align 4
  %in_hop_index = getelementptr %struct.tb_path_hop, ptr %98, i32 %i.2492, i32 2
  %101 = ptrtoint ptr %in_hop_index to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %in_hop_index, align 4
  %103 = ptrtoint ptr %clear_fc to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %clear_fc, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool104 = icmp ne i8 %104, 0
  %call105 = call fastcc i32 @__tb_path_deactivate_hop(ptr noundef %100, i32 noundef %102, i1 noundef zeroext %tobool104)
  %105 = ptrtoint ptr %hops81 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %hops81, align 4
  %next_hop_index = getelementptr %struct.tb_path_hop, ptr %106, i32 %i.2492, i32 4
  %107 = ptrtoint ptr %next_hop_index to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %next_hop_index, align 4
  %109 = ptrtoint ptr %hop to i32
  call void @__asan_load8_noabort(i32 %109)
  %bf.load = load i64, ptr %hop, align 8
  %bf.value = zext i32 %108 to i64
  %bf.shl = shl i64 %bf.value, 53
  %bf.clear = and i64 %bf.load, 9007199254740991
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %hop, align 8
  %out_port110 = getelementptr %struct.tb_path_hop, ptr %106, i32 %i.2492, i32 1
  %110 = ptrtoint ptr %out_port110 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %out_port110, align 4
  %port111 = getelementptr inbounds %struct.tb_port, ptr %111, i32 0, i32 9
  %112 = ptrtoint ptr %port111 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %port111, align 4
  %114 = and i8 %113, 63
  %bf.value114 = zext i8 %114 to i64
  %bf.shl115 = shl nuw nsw i64 %bf.value114, 47
  %bf.clear116 = and i64 %bf.set, -8866461766385665
  %bf.set117 = or i64 %bf.shl115, %bf.clear116
  store i64 %bf.set117, ptr %hop, align 8
  %initial_credits = getelementptr %struct.tb_path_hop, ptr %106, i32 %i.2492, i32 5
  %115 = ptrtoint ptr %initial_credits to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %initial_credits, align 4
  %117 = and i32 %116, 255
  %bf.value122 = zext i32 %117 to i64
  %bf.shl123 = shl nuw nsw i64 %bf.value122, 39
  %bf.clear124 = and i64 %bf.set117, -140737487306753
  %bf.set125 = or i64 %bf.clear124, %bf.shl123
  %bf.set132 = or i64 %bf.set125, 4294967296
  %118 = ptrtoint ptr %path_length56 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %path_length56, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.2.in491, i32 %119)
  %cmp135 = icmp eq i32 %i.2.in491, %119
  %cond = select i1 %cmp135, i32 4, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2492)
  %cmp137 = icmp eq i32 %i.2492, 0
  %cond139 = select i1 %cmp137, i32 1, i32 2
  %120 = ptrtoint ptr %weight to i32
  call void @__asan_load1_noabort(i32 %120)
  %bf.load140 = load i8, ptr %weight, align 4
  %121 = lshr i8 %bf.load140, 1
  %bf.value143 = zext i8 %121 to i64
  %bf.shl144 = shl nuw nsw i64 %bf.value143, 28
  %bf.lshr = lshr i8 %bf.load140, 5
  %122 = zext i8 %bf.lshr to i64
  %bf.shl155 = shl nuw nsw i64 %122, 21
  %123 = ptrtoint ptr %drop_packages to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %drop_packages, align 1, !range !76
  %125 = zext i8 %124 to i64
  %bf.shl161 = shl nuw nsw i64 %125, 20
  %bf.shl144.masked = and i64 %bf.shl144, 4026531840
  %bf.set146.masked = or i64 %bf.shl144.masked, %bf.set132
  %bf.clear162 = or i64 %bf.set146.masked, %bf.shl155
  %bf.set163 = or i64 %bf.clear162, %bf.shl161
  %126 = ptrtoint ptr %hop to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %bf.set163, ptr %hop, align 8
  %in_counter_index168 = getelementptr %struct.tb_path_hop, ptr %106, i32 %i.2492, i32 3
  %127 = ptrtoint ptr %in_counter_index168 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %in_counter_index168, align 4
  %129 = shl i32 %128, 9
  %130 = and i32 %129, 1048064
  %bf.shl171 = zext i32 %130 to i64
  %bf.clear172 = and i64 %bf.set163, -541418585601
  %bf.set173 = or i64 %bf.clear172, %bf.shl171
  store i64 %bf.set173, ptr %hop, align 8
  %131 = load i32, ptr %in_counter_index168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %131)
  %cmp178.not = icmp eq i32 %131, -1
  %bf.shl181 = select i1 %cmp178.not, i64 0, i64 256
  %bf.clear182 = and i64 %bf.set173, -541417538040
  %bf.set183 = or i64 %bf.clear182, %bf.shl181
  %132 = ptrtoint ptr %ingress_fc_enable to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ingress_fc_enable, align 4
  %and = and i32 %133, %cond139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool186.not = icmp eq i32 %and, 0
  %bf.shl188 = select i1 %tobool186.not, i64 0, i64 128
  %bf.set190 = or i64 %bf.set183, %bf.shl188
  %134 = ptrtoint ptr %egress_fc_enable to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %egress_fc_enable, align 4
  %and193 = and i32 %135, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  %bf.shl196 = select i1 %tobool194.not, i64 0, i64 64
  %bf.set198 = or i64 %bf.set190, %bf.shl196
  %136 = ptrtoint ptr %ingress_shared_buffer to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ingress_shared_buffer, align 4
  %and201 = and i32 %137, %cond139
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  %bf.shl204 = select i1 %tobool202.not, i64 0, i64 32
  %bf.set206 = or i64 %bf.set198, %bf.shl204
  %138 = ptrtoint ptr %egress_shared_buffer to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %egress_shared_buffer, align 4
  %and209 = and i32 %139, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  %bf.shl212 = select i1 %tobool210.not, i64 0, i64 16
  %bf.set214 = or i64 %bf.set206, %bf.shl212
  %140 = ptrtoint ptr %hop to i32
  call void @__asan_store8_noabort(i32 %140)
  store i64 %bf.set214, ptr %hop, align 8
  %arrayidx222 = getelementptr %struct.tb_path_hop, ptr %106, i32 %i.2492
  %141 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx222, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_path_activate.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_path_activate, %if.then236)) #9
          to label %do.end248 [label %if.then236], !srcloc !78

if.then236:                                       ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #11
  %sw237 = getelementptr inbounds %struct.tb_port, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %sw237 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sw237, align 4
  %tb238 = getelementptr inbounds %struct.tb_switch, ptr %144, i32 0, i32 5
  %145 = ptrtoint ptr %tb238 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %tb238, align 8
  %nhi239 = getelementptr inbounds %struct.tb, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %nhi239 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %nhi239, align 4
  %pdev240 = getelementptr inbounds %struct.tb_nhi, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %pdev240 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pdev240, align 4
  %dev241 = getelementptr inbounds %struct.pci_dev, ptr %150, i32 0, i32 44
  %route_hi.i421 = getelementptr inbounds %struct.tb_switch, ptr %144, i32 0, i32 1, i32 4
  %151 = ptrtoint ptr %route_hi.i421 to i32
  call void @__asan_loadN_noabort(i32 %151, i32 8)
  %bf.load.i422 = load i64, ptr %route_hi.i421, align 4
  %152 = lshr i64 %bf.load.i422, 1
  %shl.i423 = and i64 %152, 9223372032559808512
  %route_lo.i424 = getelementptr inbounds %struct.tb_switch, ptr %144, i32 0, i32 1, i32 3
  %153 = ptrtoint ptr %route_lo.i424 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %route_lo.i424, align 8
  %conv2.i425 = zext i32 %154 to i64
  %or.i426 = or i64 %shl.i423, %conv2.i425
  %port244 = getelementptr inbounds %struct.tb_port, ptr %142, i32 0, i32 9
  %155 = ptrtoint ptr %port244 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %port244, align 4
  %conv245 = zext i8 %156 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_path_activate.__UNIQUE_ID_ddebug243, ptr noundef %dev241, ptr noundef nonnull @.str.17, i64 noundef %or.i426, i32 noundef %conv245, i32 noundef %i.2492) #9
  br label %do.end248

do.end248:                                        ; preds = %if.then236, %for.body98
  %157 = ptrtoint ptr %hops81 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hops81, align 4
  %arrayidx252 = getelementptr %struct.tb_path_hop, ptr %158, i32 %i.2492
  call fastcc void @tb_dump_hop(ptr noundef %arrayidx252, ptr noundef nonnull %hop)
  %159 = ptrtoint ptr %hops81 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %hops81, align 4
  %arrayidx254 = getelementptr %struct.tb_path_hop, ptr %160, i32 %i.2492
  %161 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %arrayidx254, align 4
  %sw.i427 = getelementptr inbounds %struct.tb_port, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %sw.i427 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %sw.i427, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %164, i32 0, i32 20
  %165 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %is_unplugged.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %166)
  %tobool.not.i428 = icmp eq i8 %166, 0
  br i1 %tobool.not.i428, label %tb_port_write.exit, label %do.end248.if.then261_crit_edge

do.end248.if.then261_crit_edge:                   ; preds = %do.end248
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then261

tb_port_write.exit:                               ; preds = %do.end248
  %in_hop_index258 = getelementptr %struct.tb_path_hop, ptr %160, i32 %i.2492, i32 2
  %167 = ptrtoint ptr %in_hop_index258 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %in_hop_index258, align 4
  %mul = shl i32 %168, 1
  %tb.i429 = getelementptr inbounds %struct.tb_switch, ptr %164, i32 0, i32 5
  %169 = ptrtoint ptr %tb.i429 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tb.i429, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i430 = getelementptr inbounds %struct.tb_switch, ptr %164, i32 0, i32 1, i32 4
  %173 = ptrtoint ptr %route_hi.i.i430 to i32
  call void @__asan_loadN_noabort(i32 %173, i32 8)
  %bf.load.i.i431 = load i64, ptr %route_hi.i.i430, align 4
  %174 = lshr i64 %bf.load.i.i431, 1
  %shl.i.i432 = and i64 %174, 9223372032559808512
  %route_lo.i.i433 = getelementptr inbounds %struct.tb_switch, ptr %164, i32 0, i32 1, i32 3
  %175 = ptrtoint ptr %route_lo.i.i433 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %route_lo.i.i433, align 8
  %conv2.i.i434 = zext i32 %176 to i64
  %or.i.i435 = or i64 %shl.i.i432, %conv2.i.i434
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %162, i32 0, i32 9
  %177 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %port3.i, align 4
  %conv.i436 = zext i8 %178 to i32
  %call4.i = call i32 @tb_cfg_write(ptr noundef %172, ptr noundef nonnull %hop, i64 noundef %or.i.i435, i32 noundef %conv.i436, i32 noundef 0, i32 noundef %mul, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool260.not = icmp eq i32 %call4.i, 0
  br i1 %tobool260.not, label %cleanup, label %tb_port_write.exit.if.then261_crit_edge

tb_port_write.exit.if.then261_crit_edge:          ; preds = %tb_port_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then261

if.then261:                                       ; preds = %tb_port_write.exit.if.then261_crit_edge, %do.end248.if.then261_crit_edge
  %retval.0.i438478 = phi i32 [ %call4.i, %tb_port_write.exit.if.then261_crit_edge ], [ -19, %do.end248.if.then261_crit_edge ]
  call fastcc void @__tb_path_deactivate_hops(ptr noundef %path, i32 noundef %i.2492)
  %179 = ptrtoint ptr %path_length56 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %path_length56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp21.i440 = icmp sgt i32 %180, 0
  br i1 %cmp21.i440, label %if.then261.for.body.i449_crit_edge, label %if.then261.cleanup.thread_crit_edge

if.then261.cleanup.thread_crit_edge:              ; preds = %if.then261
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

if.then261.for.body.i449_crit_edge:               ; preds = %if.then261
  br label %for.body.i449

for.body.i449:                                    ; preds = %for.inc.i467.for.body.i449_crit_edge, %if.then261.for.body.i449_crit_edge
  %i.022.i443 = phi i32 [ %inc.i465, %for.inc.i467.for.body.i449_crit_edge ], [ 0, %if.then261.for.body.i449_crit_edge ]
  %181 = ptrtoint ptr %hops81 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hops81, align 4
  %arrayidx.i444 = getelementptr %struct.tb_path_hop, ptr %182, i32 %i.022.i443
  %183 = ptrtoint ptr %arrayidx.i444 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %arrayidx.i444, align 4
  %nfc_credits.i445 = getelementptr %struct.tb_path_hop, ptr %182, i32 %i.022.i443, i32 6
  %185 = ptrtoint ptr %nfc_credits.i445 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %nfc_credits.i445, align 4
  %sub.i446 = sub i32 0, %186
  %call.i447 = call i32 @tb_port_add_nfc_credits(ptr noundef %184, i32 noundef %sub.i446) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i447)
  %tobool.not.i448 = icmp eq i32 %call.i447, 0
  br i1 %tobool.not.i448, label %for.body.i449.for.inc.i467_crit_edge, label %do.body.i464

for.body.i449.for.inc.i467_crit_edge:             ; preds = %for.body.i449
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i467

do.body.i464:                                     ; preds = %for.body.i449
  call void @__sanitizer_cov_trace_pc() #11
  %187 = ptrtoint ptr %hops81 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %hops81, align 4
  %arrayidx4.i450 = getelementptr %struct.tb_path_hop, ptr %188, i32 %i.022.i443
  %189 = ptrtoint ptr %arrayidx4.i450 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx4.i450, align 4
  %sw.i451 = getelementptr inbounds %struct.tb_port, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %sw.i451 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %sw.i451, align 4
  %tb.i452 = getelementptr inbounds %struct.tb_switch, ptr %192, i32 0, i32 5
  %193 = ptrtoint ptr %tb.i452 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %tb.i452, align 8
  %nhi.i453 = getelementptr inbounds %struct.tb, ptr %194, i32 0, i32 2
  %195 = ptrtoint ptr %nhi.i453 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %nhi.i453, align 4
  %pdev.i454 = getelementptr inbounds %struct.tb_nhi, ptr %196, i32 0, i32 1
  %197 = ptrtoint ptr %pdev.i454 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %pdev.i454, align 4
  %dev.i455 = getelementptr inbounds %struct.pci_dev, ptr %198, i32 0, i32 44
  %route_hi.i.i456 = getelementptr inbounds %struct.tb_switch, ptr %192, i32 0, i32 1, i32 4
  %199 = ptrtoint ptr %route_hi.i.i456 to i32
  call void @__asan_loadN_noabort(i32 %199, i32 8)
  %bf.load.i.i457 = load i64, ptr %route_hi.i.i456, align 4
  %200 = lshr i64 %bf.load.i.i457, 1
  %shl.i.i458 = and i64 %200, 9223372032559808512
  %route_lo.i.i459 = getelementptr inbounds %struct.tb_switch, ptr %192, i32 0, i32 1, i32 3
  %201 = ptrtoint ptr %route_lo.i.i459 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %route_lo.i.i459, align 8
  %conv2.i.i460 = zext i32 %202 to i64
  %or.i.i461 = or i64 %shl.i.i458, %conv2.i.i460
  %port.i462 = getelementptr inbounds %struct.tb_port, ptr %190, i32 0, i32 9
  %203 = ptrtoint ptr %port.i462 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %port.i462, align 4
  %conv.i463 = zext i8 %204 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i455, ptr noundef nonnull @.str.23, i64 noundef %or.i.i461, i32 noundef %conv.i463, i32 noundef %i.022.i443) #12
  br label %for.inc.i467

for.inc.i467:                                     ; preds = %do.body.i464, %for.body.i449.for.inc.i467_crit_edge
  %inc.i465 = add nuw nsw i32 %i.022.i443, 1
  %205 = ptrtoint ptr %path_length56 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %path_length56, align 4
  %cmp.i466 = icmp slt i32 %inc.i465, %206
  br i1 %cmp.i466, label %for.inc.i467.for.body.i449_crit_edge, label %for.inc.i467.cleanup.thread_crit_edge

for.inc.i467.cleanup.thread_crit_edge:            ; preds = %for.inc.i467
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

for.inc.i467.for.body.i449_crit_edge:             ; preds = %for.inc.i467
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i449

cleanup.thread:                                   ; preds = %for.inc.i467.cleanup.thread_crit_edge, %if.then261.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hop) #9
  br label %do.end299

cleanup:                                          ; preds = %tb_port_write.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hop) #9
  %i.2 = add i32 %i.2492, -1
  %cmp96 = icmp sgt i32 %i.2, -1
  br i1 %cmp96, label %cleanup.for.body98_crit_edge, label %cleanup.for.end265_crit_edge

cleanup.for.end265_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end265

cleanup.for.body98_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body98

for.end265:                                       ; preds = %cleanup.for.end265_crit_edge, %for.end92.for.end265_crit_edge
  %207 = ptrtoint ptr %activated to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 1, ptr %activated, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_path_activate.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_path_activate, %if.then279)) #9
          to label %cleanup323 [label %if.then279], !srcloc !78

if.then279:                                       ; preds = %for.end265
  call void @__sanitizer_cov_trace_pc() #11
  %208 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %path, align 4
  %nhi281 = getelementptr inbounds %struct.tb, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %nhi281 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %nhi281, align 4
  %pdev282 = getelementptr inbounds %struct.tb_nhi, ptr %211, i32 0, i32 1
  %212 = ptrtoint ptr %pdev282 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %pdev282, align 4
  %dev283 = getelementptr inbounds %struct.pci_dev, ptr %213, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_path_activate.__UNIQUE_ID_ddebug244, ptr noundef %dev283, ptr noundef nonnull @.str.18) #9
  br label %cleanup323

do.end299:                                        ; preds = %cleanup.thread, %for.inc.i.do.end299_crit_edge, %if.then88.do.end299_crit_edge, %if.end64.do.end299_crit_edge
  %res.0 = phi i32 [ %call86, %if.then88.do.end299_crit_edge ], [ %retval.0.i438478, %cleanup.thread ], [ %call86, %for.inc.i.do.end299_crit_edge ], [ %call71, %if.end64.do.end299_crit_edge ]
  %214 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %path, align 4
  %nhi301 = getelementptr inbounds %struct.tb, ptr %215, i32 0, i32 2
  %216 = ptrtoint ptr %nhi301 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %nhi301, align 4
  %pdev302 = getelementptr inbounds %struct.tb_nhi, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %pdev302 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %pdev302, align 4
  %dev303 = getelementptr inbounds %struct.pci_dev, ptr %219, i32 0, i32 44
  %call304 = call ptr @dev_driver_string(ptr noundef %dev303) #9
  %220 = ptrtoint ptr %path to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %path, align 4
  %nhi306 = getelementptr inbounds %struct.tb, ptr %221, i32 0, i32 2
  %222 = ptrtoint ptr %nhi306 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %nhi306, align 4
  %pdev307 = getelementptr inbounds %struct.tb_nhi, ptr %223, i32 0, i32 1
  %224 = ptrtoint ptr %pdev307 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %pdev307, align 4
  %init_name.i469 = getelementptr inbounds %struct.pci_dev, ptr %225, i32 0, i32 44, i32 3
  %226 = ptrtoint ptr %init_name.i469 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %init_name.i469, align 8
  %tobool.not.i470 = icmp eq ptr %227, null
  br i1 %tobool.not.i470, label %if.end.i471, label %do.end299.dev_name.exit473_crit_edge

do.end299.dev_name.exit473_crit_edge:             ; preds = %do.end299
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit473

if.end.i471:                                      ; preds = %do.end299
  call void @__sanitizer_cov_trace_pc() #11
  %dev308 = getelementptr inbounds %struct.pci_dev, ptr %225, i32 0, i32 44
  %228 = ptrtoint ptr %dev308 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dev308, align 4
  br label %dev_name.exit473

dev_name.exit473:                                 ; preds = %if.end.i471, %do.end299.dev_name.exit473_crit_edge
  %retval.0.i472 = phi ptr [ %229, %if.end.i471 ], [ %227, %do.end299.dev_name.exit473_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 567, i32 noundef 9, ptr noundef nonnull @.str.19, ptr noundef %call304, ptr noundef %retval.0.i472) #9
  br label %cleanup323

cleanup323:                                       ; preds = %dev_name.exit473, %if.then279, %for.end265, %dev_name.exit
  %retval.0 = phi i32 [ -22, %dev_name.exit ], [ %res.0, %dev_name.exit473 ], [ 0, %if.then279 ], [ 0, %for.end265 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_port_clear_counter(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_port_add_nfc_credits(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__tb_path_deactivate_hop(ptr nocapture noundef readonly %port, i32 noundef %hop_index, i1 noundef zeroext %clear_fc) unnamed_addr #0 align 64 {
entry:
  %hop = alloca %struct.tb_regs_hop, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hop) #9
  %0 = ptrtoint ptr %hop to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %hop, align 8, !annotation !75
  %mul = shl i32 %hop_index, 1
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_unplugged.i, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tb_port_read.exit:                                ; preds = %entry
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %10 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %10, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %12 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %13 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %14 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %8, ptr noundef nonnull %hop, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 0, i32 noundef %mul, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %tb_port_read.exit
  %15 = ptrtoint ptr %hop to i32
  call void @__asan_load8_noabort(i32 %15)
  %bf.load = load i64, ptr %hop, align 8
  %16 = and i64 %bf.load, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %bf.cast.not = icmp eq i64 %16, 0
  br i1 %bf.cast.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %bf.clear4 = and i64 %bf.load, -4294967297
  %17 = ptrtoint ptr %hop to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %bf.clear4, ptr %hop, align 8
  %18 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i60 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %is_unplugged.i60 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_unplugged.i60, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i61 = icmp eq i8 %21, 0
  br i1 %tobool.not.i61, label %tb_port_write.exit, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tb_port_write.exit:                               ; preds = %if.end2
  %tb.i62 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 5
  %22 = ptrtoint ptr %tb.i62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tb.i62, align 8
  %ctl.i63 = getelementptr inbounds %struct.tb, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %ctl.i63 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctl.i63, align 8
  %route_hi.i.i64 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %route_hi.i.i64 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %bf.load.i.i65 = load i64, ptr %route_hi.i.i64, align 4
  %27 = lshr i64 %bf.load.i.i65, 1
  %shl.i.i66 = and i64 %27, 9223372032559808512
  %route_lo.i.i67 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %route_lo.i.i67 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %route_lo.i.i67, align 8
  %conv2.i.i68 = zext i32 %29 to i64
  %or.i.i69 = or i64 %shl.i.i66, %conv2.i.i68
  %30 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %port3.i, align 4
  %conv.i71 = zext i8 %31 to i32
  %call4.i72 = call i32 @tb_cfg_write(ptr noundef %25, ptr noundef nonnull %hop, i64 noundef %or.i.i69, i32 noundef %conv.i71, i32 noundef 0, i32 noundef %mul, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i72)
  %tobool7.not = icmp eq i32 %call4.i72, 0
  br i1 %tobool7.not, label %if.end9, label %tb_port_write.exit.cleanup_crit_edge

tb_port_write.exit.cleanup_crit_edge:             ; preds = %tb_port_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %tb_port_write.exit
  %call10 = call i64 @ktime_get() #9
  %add.i = add i64 %call10, 500000000
  br label %do.body

do.body:                                          ; preds = %if.end42.do.body_crit_edge, %if.end9
  %32 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i76 = getelementptr inbounds %struct.tb_switch, ptr %33, i32 0, i32 20
  %34 = ptrtoint ptr %is_unplugged.i76 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %is_unplugged.i76, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i77 = icmp eq i8 %35, 0
  br i1 %tobool.not.i77, label %tb_port_read.exit91, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

tb_port_read.exit91:                              ; preds = %do.body
  %tb.i78 = getelementptr inbounds %struct.tb_switch, ptr %33, i32 0, i32 5
  %36 = ptrtoint ptr %tb.i78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tb.i78, align 8
  %ctl.i79 = getelementptr inbounds %struct.tb, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %ctl.i79 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctl.i79, align 8
  %route_hi.i.i80 = getelementptr inbounds %struct.tb_switch, ptr %33, i32 0, i32 1, i32 4
  %40 = ptrtoint ptr %route_hi.i.i80 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %bf.load.i.i81 = load i64, ptr %route_hi.i.i80, align 4
  %41 = lshr i64 %bf.load.i.i81, 1
  %shl.i.i82 = and i64 %41, 9223372032559808512
  %route_lo.i.i83 = getelementptr inbounds %struct.tb_switch, ptr %33, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %route_lo.i.i83 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %route_lo.i.i83, align 8
  %conv2.i.i84 = zext i32 %43 to i64
  %or.i.i85 = or i64 %shl.i.i82, %conv2.i.i84
  %44 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %port3.i, align 4
  %conv.i87 = zext i8 %45 to i32
  %call4.i88 = call i32 @tb_cfg_read(ptr noundef %39, ptr noundef nonnull %hop, i64 noundef %or.i.i85, i32 noundef %conv.i87, i32 noundef 0, i32 noundef %mul, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i88)
  %tobool14.not = icmp eq i32 %call4.i88, 0
  br i1 %tobool14.not, label %if.end16, label %tb_port_read.exit91.cleanup_crit_edge

tb_port_read.exit91.cleanup_crit_edge:            ; preds = %tb_port_read.exit91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %tb_port_read.exit91
  %46 = ptrtoint ptr %hop to i32
  call void @__asan_load8_noabort(i32 %46)
  %bf.load17 = load i64, ptr %hop, align 8
  %47 = and i64 %bf.load17, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %bf.cast20.not = icmp eq i64 %47, 0
  br i1 %bf.cast20.not, label %if.then21, label %if.end42

if.then21:                                        ; preds = %if.end16
  br i1 %clear_fc, label %if.then23, label %if.then21.cleanup_crit_edge

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %if.then21
  %48 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sw.i, align 4
  %thunderbolt_version.i = getelementptr inbounds %struct.tb_switch, ptr %49, i32 0, i32 1, i32 4
  %50 = ptrtoint ptr %thunderbolt_version.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %bf.load.i = load i64, ptr %thunderbolt_version.i, align 4
  %bf.cast1.i = and i64 %bf.load.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i)
  %cmp.i = icmp eq i64 %bf.cast1.i, 32
  br i1 %cmp.i, label %if.then23.if.end32_crit_edge, label %if.then25

if.then23.if.end32_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then25:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear30 = and i64 %bf.load17, -161
  %51 = ptrtoint ptr %hop to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %bf.clear30, ptr %hop, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.then23.if.end32_crit_edge
  %52 = ptrtoint ptr %hop to i32
  call void @__asan_load8_noabort(i32 %52)
  %bf.load33 = load i64, ptr %hop, align 8
  %bf.clear37 = and i64 %bf.load33, -81
  store i64 %bf.clear37, ptr %hop, align 8
  %call40 = call fastcc i32 @tb_port_write(ptr noundef %port, ptr noundef nonnull %hop, i32 noundef %mul)
  br label %cleanup

if.end42:                                         ; preds = %if.end16
  call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #9
  %call43 = call i64 @ktime_get() #9
  %cmp.i.i = icmp slt i64 %call43, %add.i
  br i1 %cmp.i.i, label %if.end42.do.body_crit_edge, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42.do.body_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup:                                          ; preds = %if.end42.cleanup_crit_edge, %if.end32, %if.then21.cleanup_crit_edge, %tb_port_read.exit91.cleanup_crit_edge, %do.body.cleanup_crit_edge, %tb_port_write.exit.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tb_port_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call40, %if.end32 ], [ %call4.i, %tb_port_read.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call4.i72, %tb_port_write.exit.cleanup_crit_edge ], [ 0, %if.then21.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end2.cleanup_crit_edge ], [ -19, %do.body.cleanup_crit_edge ], [ -110, %if.end42.cleanup_crit_edge ], [ %call4.i88, %tb_port_read.exit91.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hop) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_dump_hop(ptr nocapture noundef readonly %hop, ptr nocapture noundef readonly %regs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hop to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hop, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_dump_hop.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_dump_hop, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !78

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sw = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw, align 4
  %tb = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %11 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %11, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %13 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port6 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %port6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port6, align 4
  %conv = zext i8 %15 to i32
  %in_hop_index = getelementptr inbounds %struct.tb_path_hop, ptr %hop, i32 0, i32 2
  %16 = ptrtoint ptr %in_hop_index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %in_hop_index, align 4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %bf.load = load i64, ptr %regs, align 1
  %bf.lshr = lshr i64 %bf.load, 47
  %19 = trunc i64 %bf.lshr to i32
  %bf.cast = and i32 %19, 63
  %bf.lshr8 = lshr i64 %bf.load, 53
  %bf.cast9 = trunc i64 %bf.lshr8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_dump_hop.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.26, i64 noundef %or.i, i32 noundef %conv, i32 noundef %17, i32 noundef %bf.cast, i32 noundef %bf.cast9) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_dump_hop.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_dump_hop, %if.then26)) #9
          to label %do.end55 [label %if.then26], !srcloc !78

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %sw27 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %sw27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw27, align 4
  %tb28 = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %tb28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tb28, align 8
  %nhi29 = getelementptr inbounds %struct.tb, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %nhi29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nhi29, align 4
  %pdev30 = getelementptr inbounds %struct.tb_nhi, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev30, align 4
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %route_hi.i226 = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %route_hi.i226 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %bf.load.i227 = load i64, ptr %route_hi.i226, align 4
  %29 = lshr i64 %bf.load.i227, 1
  %shl.i228 = and i64 %29, 9223372032559808512
  %route_lo.i229 = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %route_lo.i229 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %route_lo.i229, align 8
  %conv2.i230 = zext i32 %31 to i64
  %or.i231 = or i64 %shl.i228, %conv2.i230
  %port34 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %port34 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %port34, align 4
  %conv35 = zext i8 %33 to i32
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %bf.load36 = load i64, ptr %regs, align 1
  %35 = trunc i64 %bf.load36 to i32
  %36 = lshr i32 %35, 28
  %37 = lshr i32 %35, 21
  %bf.cast43 = and i32 %37, 7
  %bf.lshr45 = lshr i64 %bf.load36, 39
  %38 = trunc i64 %bf.lshr45 to i32
  %bf.cast47 = and i32 %38, 255
  %39 = lshr i32 %35, 20
  %40 = and i32 %39, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_dump_hop.__UNIQUE_ID_ddebug237, ptr noundef %dev31, ptr noundef nonnull @.str.27, i64 noundef %or.i231, i32 noundef %conv35, i32 noundef %36, i32 noundef %bf.cast43, i32 noundef %bf.cast47, i32 noundef %40) #9
  br label %do.end55

do.end55:                                         ; preds = %if.then26, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_dump_hop.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_dump_hop, %if.then72)) #9
          to label %do.end93 [label %if.then72], !srcloc !78

if.then72:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  %sw73 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %sw73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sw73, align 4
  %tb74 = getelementptr inbounds %struct.tb_switch, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %tb74 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tb74, align 8
  %nhi75 = getelementptr inbounds %struct.tb, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %nhi75 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %nhi75, align 4
  %pdev76 = getelementptr inbounds %struct.tb_nhi, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev76, align 4
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %route_hi.i232 = getelementptr inbounds %struct.tb_switch, ptr %42, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %route_hi.i232 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %bf.load.i233 = load i64, ptr %route_hi.i232, align 4
  %50 = lshr i64 %bf.load.i233, 1
  %shl.i234 = and i64 %50, 9223372032559808512
  %route_lo.i235 = getelementptr inbounds %struct.tb_switch, ptr %42, i32 0, i32 1, i32 3
  %51 = ptrtoint ptr %route_lo.i235 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %route_lo.i235, align 8
  %conv2.i236 = zext i32 %52 to i64
  %or.i237 = or i64 %shl.i234, %conv2.i236
  %port80 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 9
  %53 = ptrtoint ptr %port80 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %port80, align 4
  %conv81 = zext i8 %54 to i32
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %bf.load82 = load i64, ptr %regs, align 1
  %56 = trunc i64 %bf.load82 to i32
  %57 = lshr i32 %56, 8
  %58 = and i32 %57, 1
  %59 = lshr i32 %56, 9
  %bf.cast90 = and i32 %59, 2047
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_dump_hop.__UNIQUE_ID_ddebug238, ptr noundef %dev77, ptr noundef nonnull @.str.28, i64 noundef %or.i237, i32 noundef %conv81, i32 noundef %58, i32 noundef %bf.cast90) #9
  br label %do.end93

do.end93:                                         ; preds = %if.then72, %do.end55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_dump_hop.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_dump_hop, %if.then110)) #9
          to label %do.end142 [label %if.then110], !srcloc !78

if.then110:                                       ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #11
  %sw111 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %sw111 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sw111, align 4
  %tb112 = getelementptr inbounds %struct.tb_switch, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %tb112 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tb112, align 8
  %nhi113 = getelementptr inbounds %struct.tb, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %nhi113 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %nhi113, align 4
  %pdev114 = getelementptr inbounds %struct.tb_nhi, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %pdev114 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev114, align 4
  %dev115 = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  %route_hi.i238 = getelementptr inbounds %struct.tb_switch, ptr %61, i32 0, i32 1, i32 4
  %68 = ptrtoint ptr %route_hi.i238 to i32
  call void @__asan_loadN_noabort(i32 %68, i32 8)
  %bf.load.i239 = load i64, ptr %route_hi.i238, align 4
  %69 = lshr i64 %bf.load.i239, 1
  %shl.i240 = and i64 %69, 9223372032559808512
  %route_lo.i241 = getelementptr inbounds %struct.tb_switch, ptr %61, i32 0, i32 1, i32 3
  %70 = ptrtoint ptr %route_lo.i241 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %route_lo.i241, align 8
  %conv2.i242 = zext i32 %71 to i64
  %or.i243 = or i64 %shl.i240, %conv2.i242
  %port118 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 9
  %72 = ptrtoint ptr %port118 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %port118, align 4
  %conv119 = zext i8 %73 to i32
  %74 = ptrtoint ptr %regs to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %bf.load120 = load i64, ptr %regs, align 1
  %75 = trunc i64 %bf.load120 to i32
  %76 = lshr i32 %75, 7
  %77 = and i32 %76, 1
  %78 = lshr i32 %75, 6
  %79 = and i32 %78, 1
  %80 = lshr i32 %75, 5
  %81 = and i32 %80, 1
  %82 = lshr i32 %75, 4
  %83 = and i32 %82, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_dump_hop.__UNIQUE_ID_ddebug239, ptr noundef %dev115, ptr noundef nonnull @.str.29, i64 noundef %or.i243, i32 noundef %conv119, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83) #9
  br label %do.end142

do.end142:                                        ; preds = %if.then110, %do.end93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_dump_hop.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_dump_hop, %if.then159)) #9
          to label %do.end182 [label %if.then159], !srcloc !78

if.then159:                                       ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #11
  %sw160 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 1
  %84 = ptrtoint ptr %sw160 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sw160, align 4
  %tb161 = getelementptr inbounds %struct.tb_switch, ptr %85, i32 0, i32 5
  %86 = ptrtoint ptr %tb161 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tb161, align 8
  %nhi162 = getelementptr inbounds %struct.tb, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %nhi162 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %nhi162, align 4
  %pdev163 = getelementptr inbounds %struct.tb_nhi, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %pdev163 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pdev163, align 4
  %dev164 = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  %route_hi.i244 = getelementptr inbounds %struct.tb_switch, ptr %85, i32 0, i32 1, i32 4
  %92 = ptrtoint ptr %route_hi.i244 to i32
  call void @__asan_loadN_noabort(i32 %92, i32 8)
  %bf.load.i245 = load i64, ptr %route_hi.i244, align 4
  %93 = lshr i64 %bf.load.i245, 1
  %shl.i246 = and i64 %93, 9223372032559808512
  %route_lo.i247 = getelementptr inbounds %struct.tb_switch, ptr %85, i32 0, i32 1, i32 3
  %94 = ptrtoint ptr %route_lo.i247 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %route_lo.i247, align 8
  %conv2.i248 = zext i32 %95 to i64
  %or.i249 = or i64 %shl.i246, %conv2.i248
  %port167 = getelementptr inbounds %struct.tb_port, ptr %1, i32 0, i32 9
  %96 = ptrtoint ptr %port167 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %port167, align 4
  %conv168 = zext i8 %97 to i32
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_loadN_noabort(i32 %98, i32 8)
  %bf.load169 = load i64, ptr %regs, align 1
  %bf.lshr170 = lshr i64 %bf.load169, 33
  %99 = trunc i64 %bf.lshr170 to i32
  %bf.cast172 = and i32 %99, 63
  %100 = trunc i64 %bf.load169 to i32
  %101 = lshr i32 %100, 24
  %bf.cast176 = and i32 %101, 15
  %bf.cast179 = and i32 %100, 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_dump_hop.__UNIQUE_ID_ddebug240, ptr noundef %dev164, ptr noundef nonnull @.str.30, i64 noundef %or.i249, i32 noundef %conv168, i32 noundef %bf.cast172, i32 noundef %bf.cast176, i32 noundef %bf.cast179) #9
  br label %do.end182

do.end182:                                        ; preds = %if.then159, %do.end142
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_port_write(ptr nocapture noundef readonly %port, ptr noundef %buffer, i32 noundef %offset) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %sw = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw, align 4
  %is_unplugged = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %is_unplugged to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_unplugged, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tb = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb, align 8
  %ctl = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctl, align 8
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %9 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %9, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %11 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port3 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %12 = ptrtoint ptr %port3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port3, align 4
  %conv = zext i8 %13 to i32
  %call4 = tail call i32 @tb_cfg_write(ptr noundef %7, ptr noundef %buffer, i64 noundef %or.i, i32 noundef %conv, i32 noundef 0, i32 noundef %offset, i32 noundef 2) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tb_path_is_invalid(ptr nocapture noundef readonly %path) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %path_length = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 11
  %0 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %path_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13 = icmp sgt i32 %1, 0
  br i1 %cmp13, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %hops = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 10
  %2 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %sw18 = getelementptr inbounds %struct.tb_port, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %sw18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sw18, align 4
  %is_unplugged19 = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 20
  %8 = ptrtoint ptr %is_unplugged19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_unplugged19, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not20 = icmp eq i8 %9, 0
  br i1 %tobool.not20, label %for.body.lr.ph.if.end_crit_edge, label %for.body.lr.ph.cleanup_crit_edge

for.body.lr.ph.cleanup_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.if.end_crit_edge:                  ; preds = %for.body.lr.ph
  br label %if.end

for.cond:                                         ; preds = %if.end
  %inc = add nuw nsw i32 %i.01422, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp = icmp slt i32 %inc, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr %struct.tb_path_hop, ptr %3, i32 %inc
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %sw = getelementptr inbounds %struct.tb_port, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw, align 4
  %is_unplugged = getelementptr inbounds %struct.tb_switch, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %is_unplugged to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_unplugged, align 8, !range !76
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.body.lr.ph.if.end_crit_edge
  %i.01422 = phi i32 [ %inc, %for.body.if.end_crit_edge ], [ 0, %for.body.lr.ph.if.end_crit_edge ]
  %cmp1521 = phi i1 [ %cmp, %for.body.if.end_crit_edge ], [ true, %for.body.lr.ph.if.end_crit_edge ]
  %out_port = getelementptr %struct.tb_path_hop, ptr %3, i32 %i.01422, i32 1
  %16 = ptrtoint ptr %out_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %out_port, align 4
  %sw3 = getelementptr inbounds %struct.tb_port, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %sw3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw3, align 4
  %is_unplugged4 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %is_unplugged4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_unplugged4, align 8, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool5.not = icmp eq i8 %21, 0
  br i1 %tobool5.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.lr.ph.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %for.body.lr.ph.cleanup_crit_edge ], [ %cmp, %for.body.cleanup_crit_edge ], [ %cmp1521, %if.end.cleanup_crit_edge ], [ %cmp, %for.cond.cleanup_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tb_path_port_on_path(ptr nocapture noundef readonly %path, ptr noundef readnone %port) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %path_length = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 11
  %0 = ptrtoint ptr %path_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %path_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11 = icmp sgt i32 %1, 0
  br i1 %cmp11, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %hops = getelementptr inbounds %struct.tb_path, ptr %path, i32 0, i32 10
  %2 = ptrtoint ptr %hops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hops, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cmp116 = icmp eq ptr %5, %port
  br i1 %cmp116, label %for.body.lr.ph.cleanup_crit_edge, label %for.body.lr.ph.lor.lhs.false_crit_edge

for.body.lr.ph.lor.lhs.false_crit_edge:           ; preds = %for.body.lr.ph
  br label %lor.lhs.false

for.body.lr.ph.cleanup_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %lor.lhs.false
  %inc = add nuw nsw i32 %i.01218, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %cmp = icmp slt i32 %inc, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %1)
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr %struct.tb_path_hop, ptr %3, i32 %inc
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp1 = icmp eq ptr %7, %port
  br i1 %cmp1, label %for.body.cleanup_crit_edge, label %for.body.lor.lhs.false_crit_edge

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body.lor.lhs.false_crit_edge, %for.body.lr.ph.lor.lhs.false_crit_edge
  %i.01218 = phi i32 [ %inc, %for.body.lor.lhs.false_crit_edge ], [ 0, %for.body.lr.ph.lor.lhs.false_crit_edge ]
  %cmp1317 = phi i1 [ %cmp, %for.body.lor.lhs.false_crit_edge ], [ true, %for.body.lr.ph.lor.lhs.false_crit_edge ]
  %out_port = getelementptr %struct.tb_path_hop, ptr %3, i32 %i.01218, i32 1
  %8 = ptrtoint ptr %out_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out_port, align 4
  %cmp4 = icmp eq ptr %9, %port
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %for.cond

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.lr.ph.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ true, %for.body.lr.ph.cleanup_crit_edge ], [ %cmp1317, %lor.lhs.false.cleanup_crit_edge ], [ %cmp, %for.body.cleanup_crit_edge ], [ %cmp, %for.cond.cleanup_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !33, !34, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/path.c", i32 136, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tb_path_discover._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tb_path_discover._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @tb_path_discover._entry.5, !9, !"_entry", i1 false, i1 false}
!9 = !{!"../drivers/thunderbolt/path.c", i32 179, i32 4}
!10 = !{ptr @tb_path_discover._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/thunderbolt/path.c", i32 208, i32 2}
!13 = !{ptr @tb_path_discover._entry.7, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @tb_path_discover._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/thunderbolt/path.c", i32 461, i32 3}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/thunderbolt/path.c", i32 464, i32 2}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @tb_path_deactivate.__UNIQUE_ID_ddebug241, !18, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thunderbolt/path.c", i32 489, i32 3}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thunderbolt/path.c", i32 493, i32 2}
!26 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tb_path_activate.__UNIQUE_ID_ddebug242, !25, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/thunderbolt/path.c", i32 553, i32 3}
!30 = !{ptr @tb_path_activate.__UNIQUE_ID_ddebug243, !29, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/thunderbolt/path.c", i32 564, i32 2}
!33 = !{ptr @tb_path_activate.__UNIQUE_ID_ddebug244, !32, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/thunderbolt/path.c", i32 567, i32 2}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/thunderbolt/path.c", i32 50, i32 4}
!38 = !{ptr @tb_path_find_dst_port._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tb_path_find_dst_port._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/thunderbolt/path.c", i32 452, i32 4}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__tb_path_deactivate_hops._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @__tb_path_deactivate_hops._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thunderbolt/path.c", i32 380, i32 4}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__tb_path_deallocate_nfc._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @__tb_path_deallocate_nfc._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/thunderbolt/path.c", i32 20, i32 2}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @tb_dump_hop.__UNIQUE_ID_ddebug236, !51, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/thunderbolt/path.c", i32 22, i32 2}
!56 = !{ptr @tb_dump_hop.__UNIQUE_ID_ddebug237, !55, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/thunderbolt/path.c", i32 25, i32 2}
!59 = !{ptr @tb_dump_hop.__UNIQUE_ID_ddebug238, !58, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/thunderbolt/path.c", i32 27, i32 2}
!62 = !{ptr @tb_dump_hop.__UNIQUE_ID_ddebug239, !61, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/thunderbolt/path.c", i32 30, i32 2}
!65 = !{ptr @tb_dump_hop.__UNIQUE_ID_ddebug240, !64, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i8 0, i8 2}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 2148214926, i64 2148214931, i64 2148214944, i64 2148214988, i64 2148215022, i64 2148215043}
