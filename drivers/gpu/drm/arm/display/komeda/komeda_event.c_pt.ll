; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/komeda_event.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/komeda_event.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.komeda_str = type { ptr, i32, i32 }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.85 = type { i32, ptr }
%struct.komeda_dev = type { ptr, ptr, %struct.komeda_chip_info, %struct.komeda_format_caps_table, ptr, i32, %struct.mutex, i32, i32, [2 x ptr], ptr, ptr, ptr, ptr, i16 }
%struct.komeda_chip_info = type { i32, i32, i32, i32 }
%struct.komeda_format_caps_table = type { i32, ptr, ptr }
%struct.komeda_events = type { i64, [2 x i64] }
%struct.__va_list = type { ptr }

@komeda_print_events.en_print = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gcu: \00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", pipes[0]: \00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c", pipes[1]: \00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"err detect: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VSYNC|\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FLIP|\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EOW|\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OP-MODE|\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UNDERRUN|\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OVERRUN|\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MERR|\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"FRAMETO|\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DRIFTTO|\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TETO|\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CSCE|\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IBSY|\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EMPTY|\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FULL|\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AXIE|\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ACE0|\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ACE1|\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ACE2|\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ACE3|\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TCF|\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TTNG|\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TITR|\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TEMR|\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TTF|\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"COPROC|\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ZME|\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CFGE|\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant [29 x i8] c"komeda_print_events.en_print\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 144, i32 24 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 146, i32 24 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 148, i32 24 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 151, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 57, i32 23 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 61, i32 48 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 62, i32 47 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 63, i32 46 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 64, i32 47 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 66, i32 47 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 67, i32 46 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 70, i32 45 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 71, i32 48 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 74, i32 48 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 76, i32 45 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 77, i32 45 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 80, i32 47 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 81, i32 48 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 82, i32 47 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 83, i32 45 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 84, i32 45 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 85, i32 45 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 86, i32 45 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 87, i32 45 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 90, i32 44 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 91, i32 45 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 92, i32 45 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 93, i32 45 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 94, i32 44 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 97, i32 44 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 98, i32 44 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [53 x i8] c"../drivers/gpu/drm/arm/display/komeda/komeda_event.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 99, i32 45 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @komeda_print_events.en_print, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_print_events.en_print to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @komeda_print_events(ptr nocapture noundef readonly %evts, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca [256 x i8], align 1
  %str = alloca %struct.komeda_str, align 4
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %err_verbosity1 = getelementptr inbounds %struct.komeda_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %err_verbosity1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %err_verbosity1, align 4
  %4 = ptrtoint ptr %evts to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %evts, align 8
  %pipes = getelementptr inbounds %struct.komeda_events, ptr %evts, i32 0, i32 1
  %6 = ptrtoint ptr %pipes to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %pipes, align 8
  %arrayidx3 = getelementptr %struct.komeda_events, ptr %evts, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx3, align 8
  %or = or i64 %9, %7
  %or4 = or i64 %or, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  %and.i = and i64 %or, 34
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  %or.cond71 = select i1 %tobool.not, i1 %tobool.i.not, i1 false
  br i1 %or.cond71, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 false, ptr @komeda_print_events.en_print, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %.b = load i1, ptr @komeda_print_events.en_print, align 1
  br i1 %.b, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %and11 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %spec.select = select i1 %tobool12.not, i64 0, i64 4227842076
  %and17 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %or20 = or i64 %spec.select, 67109248
  %print_evts.1 = select i1 %tobool18.not, i64 %spec.select, i64 %or20
  %and23 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or26 = or i64 %print_evts.1, 99
  %print_evts.2 = select i1 %tobool24.not, i64 %print_evts.1, i64 %or26
  %and28 = and i64 %print_evts.2, %or4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and28)
  %tobool29.not = icmp eq i64 %and28, 0
  br i1 %tobool29.not, label %if.end9.cleanup_crit_edge, label %if.then30

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %msg) #6
  %10 = call ptr @memset(ptr %msg, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %str) #6
  %11 = getelementptr inbounds %struct.komeda_str, ptr %str, i32 0, i32 1
  %12 = getelementptr inbounds %struct.komeda_str, ptr %str, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #6
  %13 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %14 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %15 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %dev31 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %16 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev31, align 4
  %18 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @__drm_printfn_info, ptr %p, align 4, !alias.scope !75
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %13, align 4, !alias.scope !75
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %14, align 4, !alias.scope !75
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %15, align 4, !alias.scope !75
  %22 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg, ptr %str, align 4
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 256, ptr %11, align 4
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %12, align 4
  call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef nonnull %str, ptr noundef nonnull @.str)
  %25 = ptrtoint ptr %evts to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %evts, align 8
  call fastcc void @evt_str(ptr noundef nonnull %str, i64 noundef %26)
  call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef nonnull %str, ptr noundef nonnull @.str.1)
  %27 = ptrtoint ptr %pipes to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %pipes, align 8
  call fastcc void @evt_str(ptr noundef nonnull %str, i64 noundef %28)
  call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef nonnull %str, ptr noundef nonnull @.str.2)
  %29 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx3, align 8
  call fastcc void @evt_str(ptr noundef nonnull %str, i64 noundef %30)
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef nonnull %msg) #6
  %and43 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %and46 = and i64 %or4, 4294951324
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and46)
  %tobool47.not = icmp eq i64 %and46, 0
  %or.cond = select i1 %tobool44.not, i1 true, i1 %tobool47.not
  br i1 %or.cond, label %if.then30.if.end49_crit_edge, label %if.then48

if.then30.if.end49_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.then48:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_state_dump(ptr noundef %dev, ptr noundef nonnull %p) #6
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %if.then30.if.end49_crit_edge
  store i1 true, ptr @komeda_print_events.en_print, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %str) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %msg) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_sprintf(ptr nocapture noundef %str, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #2 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #6
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !78
  %sz = getelementptr inbounds %struct.komeda_str, ptr %str, i32 0, i32 1
  %1 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sz, align 4
  %len = getelementptr inbounds %struct.komeda_str, ptr %str, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %5 = xor i32 %4, -1
  %sub1 = add i32 %2, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub1)
  %cmp = icmp slt i32 %sub1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.va_start(ptr nonnull %args)
  %6 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %str, align 4
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %9
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %add.ptr, i32 noundef %sub1, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub1)
  %cmp4 = icmp slt i32 %call, %sub1
  %len.sz = select i1 %cmp4, ptr %len, ptr %sz
  %call. = select i1 %cmp4, i32 %call, i32 -1
  %11 = ptrtoint ptr %len.sz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.sz, align 4
  %sub8 = add i32 %12, %call.
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub8, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #6
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @evt_str(ptr noundef %str, i64 noundef %events) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %events)
  %cmp = icmp eq i64 %events, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.4)
  br label %if.end40

if.end:                                           ; preds = %entry
  %and = and i64 %events, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not.i = icmp eq i64 %and, 0
  br i1 %tobool.not.i, label %if.end.evt_sprintf.exit_crit_edge, label %if.then.i

if.end.evt_sprintf.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.5) #6
  br label %evt_sprintf.exit

evt_sprintf.exit:                                 ; preds = %if.then.i, %if.end.evt_sprintf.exit_crit_edge
  %and1 = and i64 %events, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool.not.i105 = icmp eq i64 %and1, 0
  br i1 %tobool.not.i105, label %evt_sprintf.exit.evt_sprintf.exit107_crit_edge, label %if.then.i106

evt_sprintf.exit.evt_sprintf.exit107_crit_edge:   ; preds = %evt_sprintf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit107

if.then.i106:                                     ; preds = %evt_sprintf.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.6) #6
  br label %evt_sprintf.exit107

evt_sprintf.exit107:                              ; preds = %if.then.i106, %evt_sprintf.exit.evt_sprintf.exit107_crit_edge
  %and2 = and i64 %events, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool.not.i108 = icmp eq i64 %and2, 0
  br i1 %tobool.not.i108, label %evt_sprintf.exit107.evt_sprintf.exit110_crit_edge, label %if.then.i109

evt_sprintf.exit107.evt_sprintf.exit110_crit_edge: ; preds = %evt_sprintf.exit107
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit110

if.then.i109:                                     ; preds = %evt_sprintf.exit107
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.7) #6
  br label %evt_sprintf.exit110

evt_sprintf.exit110:                              ; preds = %if.then.i109, %evt_sprintf.exit107.evt_sprintf.exit110_crit_edge
  %and3 = and i64 %events, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool.not.i111 = icmp eq i64 %and3, 0
  br i1 %tobool.not.i111, label %evt_sprintf.exit110.evt_sprintf.exit113_crit_edge, label %if.then.i112

evt_sprintf.exit110.evt_sprintf.exit113_crit_edge: ; preds = %evt_sprintf.exit110
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit113

if.then.i112:                                     ; preds = %evt_sprintf.exit110
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.8) #6
  br label %evt_sprintf.exit113

evt_sprintf.exit113:                              ; preds = %if.then.i112, %evt_sprintf.exit110.evt_sprintf.exit113_crit_edge
  %and4 = and i64 %events, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool.not.i114 = icmp eq i64 %and4, 0
  br i1 %tobool.not.i114, label %evt_sprintf.exit113.evt_sprintf.exit116_crit_edge, label %if.then.i115

evt_sprintf.exit113.evt_sprintf.exit116_crit_edge: ; preds = %evt_sprintf.exit113
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit116

if.then.i115:                                     ; preds = %evt_sprintf.exit113
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.9) #6
  br label %evt_sprintf.exit116

evt_sprintf.exit116:                              ; preds = %if.then.i115, %evt_sprintf.exit113.evt_sprintf.exit116_crit_edge
  %and5 = and i64 %events, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool.not.i117 = icmp eq i64 %and5, 0
  br i1 %tobool.not.i117, label %evt_sprintf.exit116.evt_sprintf.exit119_crit_edge, label %if.then.i118

evt_sprintf.exit116.evt_sprintf.exit119_crit_edge: ; preds = %evt_sprintf.exit116
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit119

if.then.i118:                                     ; preds = %evt_sprintf.exit116
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.10) #6
  br label %evt_sprintf.exit119

evt_sprintf.exit119:                              ; preds = %if.then.i118, %evt_sprintf.exit116.evt_sprintf.exit119_crit_edge
  %and6 = and i64 %events, 268435456
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool.not.i120 = icmp eq i64 %and6, 0
  br i1 %tobool.not.i120, label %evt_sprintf.exit119.evt_sprintf.exit122_crit_edge, label %if.then.i121

evt_sprintf.exit119.evt_sprintf.exit122_crit_edge: ; preds = %evt_sprintf.exit119
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit122

if.then.i121:                                     ; preds = %evt_sprintf.exit119
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.11) #6
  br label %evt_sprintf.exit122

evt_sprintf.exit122:                              ; preds = %if.then.i121, %evt_sprintf.exit119.evt_sprintf.exit122_crit_edge
  %and7 = and i64 %events, 33554432
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and7)
  %tobool.not.i123 = icmp eq i64 %and7, 0
  br i1 %tobool.not.i123, label %evt_sprintf.exit122.evt_sprintf.exit125_crit_edge, label %if.then.i124

evt_sprintf.exit122.evt_sprintf.exit125_crit_edge: ; preds = %evt_sprintf.exit122
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit125

if.then.i124:                                     ; preds = %evt_sprintf.exit122
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.12) #6
  br label %evt_sprintf.exit125

evt_sprintf.exit125:                              ; preds = %if.then.i124, %evt_sprintf.exit122.evt_sprintf.exit125_crit_edge
  %and8 = and i64 %events, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool.not.i126 = icmp eq i64 %and8, 0
  br i1 %tobool.not.i126, label %evt_sprintf.exit125.evt_sprintf.exit128_crit_edge, label %if.then.i127

evt_sprintf.exit125.evt_sprintf.exit128_crit_edge: ; preds = %evt_sprintf.exit125
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit128

if.then.i127:                                     ; preds = %evt_sprintf.exit125
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.13) #6
  br label %evt_sprintf.exit128

evt_sprintf.exit128:                              ; preds = %if.then.i127, %evt_sprintf.exit125.evt_sprintf.exit128_crit_edge
  br i1 %tobool.not.i123, label %evt_sprintf.exit128.evt_sprintf.exit131_crit_edge, label %if.then.i130

evt_sprintf.exit128.evt_sprintf.exit131_crit_edge: ; preds = %evt_sprintf.exit128
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit131

if.then.i130:                                     ; preds = %evt_sprintf.exit128
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.12) #6
  br label %evt_sprintf.exit131

evt_sprintf.exit131:                              ; preds = %if.then.i130, %evt_sprintf.exit128.evt_sprintf.exit131_crit_edge
  %and10 = and i64 %events, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and10)
  %tobool.not.i132 = icmp eq i64 %and10, 0
  br i1 %tobool.not.i132, label %evt_sprintf.exit131.evt_sprintf.exit134_crit_edge, label %if.then.i133

evt_sprintf.exit131.evt_sprintf.exit134_crit_edge: ; preds = %evt_sprintf.exit131
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit134

if.then.i133:                                     ; preds = %evt_sprintf.exit131
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.14) #6
  br label %evt_sprintf.exit134

evt_sprintf.exit134:                              ; preds = %if.then.i133, %evt_sprintf.exit131.evt_sprintf.exit134_crit_edge
  %and11 = and i64 %events, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool.not.i135 = icmp eq i64 %and11, 0
  br i1 %tobool.not.i135, label %evt_sprintf.exit134.evt_sprintf.exit137_crit_edge, label %if.then.i136

evt_sprintf.exit134.evt_sprintf.exit137_crit_edge: ; preds = %evt_sprintf.exit134
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit137

if.then.i136:                                     ; preds = %evt_sprintf.exit134
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.15) #6
  br label %evt_sprintf.exit137

evt_sprintf.exit137:                              ; preds = %if.then.i136, %evt_sprintf.exit134.evt_sprintf.exit137_crit_edge
  %and12 = and i64 %events, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and12)
  %tobool.not.i138 = icmp eq i64 %and12, 0
  br i1 %tobool.not.i138, label %evt_sprintf.exit137.evt_sprintf.exit140_crit_edge, label %if.then.i139

evt_sprintf.exit137.evt_sprintf.exit140_crit_edge: ; preds = %evt_sprintf.exit137
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit140

if.then.i139:                                     ; preds = %evt_sprintf.exit137
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.16) #6
  br label %evt_sprintf.exit140

evt_sprintf.exit140:                              ; preds = %if.then.i139, %evt_sprintf.exit137.evt_sprintf.exit140_crit_edge
  %and13 = and i64 %events, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13)
  %tobool.not.i141 = icmp eq i64 %and13, 0
  br i1 %tobool.not.i141, label %evt_sprintf.exit140.evt_sprintf.exit143_crit_edge, label %if.then.i142

evt_sprintf.exit140.evt_sprintf.exit143_crit_edge: ; preds = %evt_sprintf.exit140
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit143

if.then.i142:                                     ; preds = %evt_sprintf.exit140
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.17) #6
  br label %evt_sprintf.exit143

evt_sprintf.exit143:                              ; preds = %if.then.i142, %evt_sprintf.exit140.evt_sprintf.exit143_crit_edge
  %and14 = and i64 %events, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and14)
  %tobool.not.i144 = icmp eq i64 %and14, 0
  br i1 %tobool.not.i144, label %evt_sprintf.exit143.evt_sprintf.exit146_crit_edge, label %if.then.i145

evt_sprintf.exit143.evt_sprintf.exit146_crit_edge: ; preds = %evt_sprintf.exit143
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit146

if.then.i145:                                     ; preds = %evt_sprintf.exit143
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.18) #6
  br label %evt_sprintf.exit146

evt_sprintf.exit146:                              ; preds = %if.then.i145, %evt_sprintf.exit143.evt_sprintf.exit146_crit_edge
  %and15 = and i64 %events, 524288
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool.not.i147 = icmp eq i64 %and15, 0
  br i1 %tobool.not.i147, label %evt_sprintf.exit146.evt_sprintf.exit149_crit_edge, label %if.then.i148

evt_sprintf.exit146.evt_sprintf.exit149_crit_edge: ; preds = %evt_sprintf.exit146
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit149

if.then.i148:                                     ; preds = %evt_sprintf.exit146
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.19) #6
  br label %evt_sprintf.exit149

evt_sprintf.exit149:                              ; preds = %if.then.i148, %evt_sprintf.exit146.evt_sprintf.exit149_crit_edge
  %and16 = and i64 %events, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16)
  %tobool.not.i150 = icmp eq i64 %and16, 0
  br i1 %tobool.not.i150, label %evt_sprintf.exit149.evt_sprintf.exit152_crit_edge, label %if.then.i151

evt_sprintf.exit149.evt_sprintf.exit152_crit_edge: ; preds = %evt_sprintf.exit149
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit152

if.then.i151:                                     ; preds = %evt_sprintf.exit149
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.20) #6
  br label %evt_sprintf.exit152

evt_sprintf.exit152:                              ; preds = %if.then.i151, %evt_sprintf.exit149.evt_sprintf.exit152_crit_edge
  %and17 = and i64 %events, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool.not.i153 = icmp eq i64 %and17, 0
  br i1 %tobool.not.i153, label %evt_sprintf.exit152.evt_sprintf.exit155_crit_edge, label %if.then.i154

evt_sprintf.exit152.evt_sprintf.exit155_crit_edge: ; preds = %evt_sprintf.exit152
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit155

if.then.i154:                                     ; preds = %evt_sprintf.exit152
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.21) #6
  br label %evt_sprintf.exit155

evt_sprintf.exit155:                              ; preds = %if.then.i154, %evt_sprintf.exit152.evt_sprintf.exit155_crit_edge
  %and18 = and i64 %events, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and18)
  %tobool.not.i156 = icmp eq i64 %and18, 0
  br i1 %tobool.not.i156, label %evt_sprintf.exit155.evt_sprintf.exit158_crit_edge, label %if.then.i157

evt_sprintf.exit155.evt_sprintf.exit158_crit_edge: ; preds = %evt_sprintf.exit155
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit158

if.then.i157:                                     ; preds = %evt_sprintf.exit155
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.22) #6
  br label %evt_sprintf.exit158

evt_sprintf.exit158:                              ; preds = %if.then.i157, %evt_sprintf.exit155.evt_sprintf.exit158_crit_edge
  %and19 = and i64 %events, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and19)
  %tobool.not.i159 = icmp eq i64 %and19, 0
  br i1 %tobool.not.i159, label %evt_sprintf.exit158.evt_sprintf.exit161_crit_edge, label %if.then.i160

evt_sprintf.exit158.evt_sprintf.exit161_crit_edge: ; preds = %evt_sprintf.exit158
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit161

if.then.i160:                                     ; preds = %evt_sprintf.exit158
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.23) #6
  br label %evt_sprintf.exit161

evt_sprintf.exit161:                              ; preds = %if.then.i160, %evt_sprintf.exit158.evt_sprintf.exit161_crit_edge
  %and20 = and i64 %events, 536870912
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20)
  %tobool.not.i162 = icmp eq i64 %and20, 0
  br i1 %tobool.not.i162, label %evt_sprintf.exit161.evt_sprintf.exit164_crit_edge, label %if.then.i163

evt_sprintf.exit161.evt_sprintf.exit164_crit_edge: ; preds = %evt_sprintf.exit161
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit164

if.then.i163:                                     ; preds = %evt_sprintf.exit161
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.24) #6
  br label %evt_sprintf.exit164

evt_sprintf.exit164:                              ; preds = %if.then.i163, %evt_sprintf.exit161.evt_sprintf.exit164_crit_edge
  %and21 = and i64 %events, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool.not.i165 = icmp eq i64 %and21, 0
  br i1 %tobool.not.i165, label %evt_sprintf.exit164.evt_sprintf.exit167_crit_edge, label %if.then.i166

evt_sprintf.exit164.evt_sprintf.exit167_crit_edge: ; preds = %evt_sprintf.exit164
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit167

if.then.i166:                                     ; preds = %evt_sprintf.exit164
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.25) #6
  br label %evt_sprintf.exit167

evt_sprintf.exit167:                              ; preds = %if.then.i166, %evt_sprintf.exit164.evt_sprintf.exit167_crit_edge
  %and22 = and i64 %events, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool.not.i168 = icmp eq i64 %and22, 0
  br i1 %tobool.not.i168, label %evt_sprintf.exit167.evt_sprintf.exit170_crit_edge, label %if.then.i169

evt_sprintf.exit167.evt_sprintf.exit170_crit_edge: ; preds = %evt_sprintf.exit167
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit170

if.then.i169:                                     ; preds = %evt_sprintf.exit167
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.26) #6
  br label %evt_sprintf.exit170

evt_sprintf.exit170:                              ; preds = %if.then.i169, %evt_sprintf.exit167.evt_sprintf.exit170_crit_edge
  %and23 = and i64 %events, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23)
  %tobool.not.i171 = icmp eq i64 %and23, 0
  br i1 %tobool.not.i171, label %evt_sprintf.exit170.evt_sprintf.exit173_crit_edge, label %if.then.i172

evt_sprintf.exit170.evt_sprintf.exit173_crit_edge: ; preds = %evt_sprintf.exit170
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit173

if.then.i172:                                     ; preds = %evt_sprintf.exit170
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.27) #6
  br label %evt_sprintf.exit173

evt_sprintf.exit173:                              ; preds = %if.then.i172, %evt_sprintf.exit170.evt_sprintf.exit173_crit_edge
  %and24 = and i64 %events, 2147483648
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24)
  %tobool.not.i174 = icmp eq i64 %and24, 0
  br i1 %tobool.not.i174, label %evt_sprintf.exit173.evt_sprintf.exit176_crit_edge, label %if.then.i175

evt_sprintf.exit173.evt_sprintf.exit176_crit_edge: ; preds = %evt_sprintf.exit173
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit176

if.then.i175:                                     ; preds = %evt_sprintf.exit173
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.28) #6
  br label %evt_sprintf.exit176

evt_sprintf.exit176:                              ; preds = %if.then.i175, %evt_sprintf.exit173.evt_sprintf.exit176_crit_edge
  %and25 = and i64 %events, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25)
  %tobool.not.i177 = icmp eq i64 %and25, 0
  br i1 %tobool.not.i177, label %evt_sprintf.exit176.evt_sprintf.exit179_crit_edge, label %if.then.i178

evt_sprintf.exit176.evt_sprintf.exit179_crit_edge: ; preds = %evt_sprintf.exit176
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit179

if.then.i178:                                     ; preds = %evt_sprintf.exit176
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.29) #6
  br label %evt_sprintf.exit179

evt_sprintf.exit179:                              ; preds = %if.then.i178, %evt_sprintf.exit176.evt_sprintf.exit179_crit_edge
  %and26 = and i64 %events, 134217728
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26)
  %tobool.not.i180 = icmp eq i64 %and26, 0
  br i1 %tobool.not.i180, label %evt_sprintf.exit179.evt_sprintf.exit182_crit_edge, label %if.then.i181

evt_sprintf.exit179.evt_sprintf.exit182_crit_edge: ; preds = %evt_sprintf.exit179
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit182

if.then.i181:                                     ; preds = %evt_sprintf.exit179
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.30) #6
  br label %evt_sprintf.exit182

evt_sprintf.exit182:                              ; preds = %if.then.i181, %evt_sprintf.exit179.evt_sprintf.exit182_crit_edge
  %and27 = and i64 %events, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and27)
  %tobool.not.i183 = icmp eq i64 %and27, 0
  br i1 %tobool.not.i183, label %evt_sprintf.exit182.evt_sprintf.exit185_crit_edge, label %if.then.i184

evt_sprintf.exit182.evt_sprintf.exit185_crit_edge: ; preds = %evt_sprintf.exit182
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit185

if.then.i184:                                     ; preds = %evt_sprintf.exit182
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.31) #6
  br label %evt_sprintf.exit185

evt_sprintf.exit185:                              ; preds = %if.then.i184, %evt_sprintf.exit182.evt_sprintf.exit185_crit_edge
  br i1 %tobool.not.i171, label %evt_sprintf.exit185.evt_sprintf.exit188_crit_edge, label %if.then.i187

evt_sprintf.exit185.evt_sprintf.exit188_crit_edge: ; preds = %evt_sprintf.exit185
  call void @__sanitizer_cov_trace_pc() #8
  br label %evt_sprintf.exit188

if.then.i187:                                     ; preds = %evt_sprintf.exit185
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @komeda_sprintf(ptr noundef %str, ptr noundef nonnull @.str.27) #6
  br label %evt_sprintf.exit188

evt_sprintf.exit188:                              ; preds = %if.then.i187, %evt_sprintf.exit185.evt_sprintf.exit188_crit_edge
  %len = getelementptr inbounds %struct.komeda_str, ptr %str, i32 0, i32 2
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp29.not = icmp eq i32 %1, 0
  br i1 %cmp29.not, label %evt_sprintf.exit188.if.end40_crit_edge, label %land.lhs.true

evt_sprintf.exit188.if.end40_crit_edge:           ; preds = %evt_sprintf.exit188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

land.lhs.true:                                    ; preds = %evt_sprintf.exit188
  %2 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %str, align 4
  %sub = add i32 %1, -1
  %arrayidx = getelementptr i8, ptr %3, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 124, i8 %5)
  %cmp32 = icmp eq i8 %5, 124
  br i1 %cmp32, label %if.then34, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then34:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %len, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %land.lhs.true.if.end40_crit_edge, %evt_sprintf.exit188.if.end40_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_state_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_info(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = distinct !{null, !1, !"en_print", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 117, i32 14}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 144, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 146, i32 24}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 148, i32 24}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 151, i32 3}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 57, i32 23}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 61, i32 48}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 62, i32 47}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 63, i32 46}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 64, i32 47}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 66, i32 47}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 67, i32 46}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 70, i32 45}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 71, i32 48}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 74, i32 48}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 76, i32 45}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 77, i32 45}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 80, i32 47}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 81, i32 48}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 82, i32 47}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 83, i32 45}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 84, i32 45}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 85, i32 45}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 86, i32 45}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 87, i32 45}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 90, i32 44}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 91, i32 45}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 92, i32 45}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 93, i32 45}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 94, i32 44}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 97, i32 44}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 98, i32 44}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_event.c", i32 99, i32 45}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"drm_info_printer: %agg.result"}
!77 = distinct !{!77, !"drm_info_printer"}
!78 = !{!"auto-init"}
