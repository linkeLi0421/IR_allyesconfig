; ModuleID = '/llk/IR_all_yes/drivers/dma/of-dma.c_pt.bc'
source_filename = "../drivers/dma/of-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_dma_controller_register\22, \22a\22\09"
module asm "\09.weak\09__crc_of_dma_controller_register\09\09\09\09"
module asm "\09.long\09__crc_of_dma_controller_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_controller_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_dma_controller_free\22, \22a\22\09"
module asm "\09.weak\09__crc_of_dma_controller_free\09\09\09\09"
module asm "\09.long\09__crc_of_dma_controller_free\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_controller_free:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_controller_free\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_controller_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_dma_router_register\22, \22a\22\09"
module asm "\09.weak\09__crc_of_dma_router_register\09\09\09\09"
module asm "\09.long\09__crc_of_dma_router_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_router_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_router_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_router_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_dma_request_slave_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_of_dma_request_slave_channel\09\09\09\09"
module asm "\09.long\09__crc_of_dma_request_slave_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_request_slave_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_request_slave_channel\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_request_slave_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_dma_simple_xlate\22, \22a\22\09"
module asm "\09.weak\09__crc_of_dma_simple_xlate\09\09\09\09"
module asm "\09.long\09__crc_of_dma_simple_xlate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_simple_xlate:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_simple_xlate\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_simple_xlate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+of_dma_xlate_by_chan_id\22, \22a\22\09"
module asm "\09.weak\09__crc_of_dma_xlate_by_chan_id\09\09\09\09"
module asm "\09.long\09__crc_of_dma_xlate_by_chan_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_dma_xlate_by_chan_id:\09\09\09\09\09"
module asm "\09.asciz \09\22of_dma_xlate_by_chan_id\22\09\09\09\09\09"
module asm "__kstrtabns_of_dma_xlate_by_chan_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dma_router = type { ptr, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.of_dma_filter_info = type { %struct.dma_cap_mask_t, ptr }

@of_dma_controller_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: not enough information provided\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"of_dma_controller_register\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/dma/of-dma.c\00", [43 x i8] zeroinitializer }, align 32
@of_dma_controller_register._entry_ptr = internal global ptr @of_dma_controller_register._entry, section ".printk_index", align 4
@of_dma_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @of_dma_lock, i64 52), ptr getelementptr (i8, ptr @of_dma_lock, i64 52) }, ptr @of_dma_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@of_dma_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @of_dma_list, ptr @of_dma_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_of_dma_controller_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_controller_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_controller_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_controller_register to i32), ptr @__kstrtab_of_dma_controller_register, ptr @__kstrtabns_of_dma_controller_register }, section "___ksymtab_gpl+of_dma_controller_register", align 4
@__kstrtab_of_dma_controller_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_controller_free = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_controller_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_controller_free to i32), ptr @__kstrtab_of_dma_controller_free, ptr @__kstrtabns_of_dma_controller_free }, section "___ksymtab_gpl+of_dma_controller_free", align 4
@of_dma_router_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"of_dma_router_register\00", [41 x i8] zeroinitializer }, align 32
@of_dma_router_register._entry_ptr = internal global ptr @of_dma_router_register._entry, section ".printk_index", align 4
@__kstrtab_of_dma_router_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_router_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_router_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_router_register to i32), ptr @__kstrtab_of_dma_router_register, ptr @__kstrtabns_of_dma_router_register }, section "___ksymtab_gpl+of_dma_router_register", align 4
@of_dma_request_slave_channel.last_index = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@of_dma_request_slave_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"of_dma_request_slave_channel\00", [35 x i8] zeroinitializer }, align 32
@of_dma_request_slave_channel._entry_ptr = internal global ptr @of_dma_request_slave_channel._entry, section ".printk_index", align 4
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmas\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma-names\00", [22 x i8] zeroinitializer }, align 32
@of_dma_request_slave_channel._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.4, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013%s: dma-names property of node '%pOF' missing or empty\0A\00", [38 x i8] zeroinitializer }, align 32
@of_dma_request_slave_channel._entry_ptr.9 = internal global ptr @of_dma_request_slave_channel._entry.7, section ".printk_index", align 4
@__kstrtab_of_dma_request_slave_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_request_slave_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_request_slave_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_request_slave_channel to i32), ptr @__kstrtab_of_dma_request_slave_channel, ptr @__kstrtabns_of_dma_request_slave_channel }, section "___ksymtab_gpl+of_dma_request_slave_channel", align 4
@__kstrtab_of_dma_simple_xlate = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_simple_xlate = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_simple_xlate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_simple_xlate to i32), ptr @__kstrtab_of_dma_simple_xlate, ptr @__kstrtabns_of_dma_simple_xlate }, section "___ksymtab_gpl+of_dma_simple_xlate", align 4
@__kstrtab_of_dma_xlate_by_chan_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_dma_xlate_by_chan_id = external dso_local constant [0 x i8], align 1
@__ksymtab_of_dma_xlate_by_chan_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_dma_xlate_by_chan_id to i32), ptr @__kstrtab_of_dma_xlate_by_chan_id, ptr @__kstrtabns_of_dma_xlate_by_chan_id }, section "___ksymtab_gpl+of_dma_xlate_by_chan_id", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"of_dma_lock.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"of_dma_lock\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"#dma-cells\00", [21 x i8] zeroinitializer }, align 32
@of_dma_find_controller.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 10, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"of_dma\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"of_dma_find_controller\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: can't find DMA controller %pOF\0A\00", [60 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 126, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"of_dma_lock\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [12 x i8] c"of_dma_list\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 20, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 193, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [11 x i8] c"last_index\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 259, i32 19 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 262, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 267, i32 28 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 270, i32 40 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 272, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 21, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 237, i32 45 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.77 = private constant [24 x i8] c"../drivers/dma/of-dma.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 40, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab_of_dma_controller_free, ptr @__ksymtab_of_dma_controller_register, ptr @__ksymtab_of_dma_request_slave_channel, ptr @__ksymtab_of_dma_router_register, ptr @__ksymtab_of_dma_simple_xlate, ptr @__ksymtab_of_dma_xlate_by_chan_id, ptr @of_dma_controller_register._entry, ptr @of_dma_controller_register._entry_ptr, ptr @of_dma_request_slave_channel._entry, ptr @of_dma_request_slave_channel._entry.7, ptr @of_dma_request_slave_channel._entry_ptr, ptr @of_dma_request_slave_channel._entry_ptr.9, ptr @of_dma_router_register._entry, ptr @of_dma_router_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @of_dma_lock, ptr @of_dma_list, ptr @.str.3, ptr @of_dma_request_slave_channel.last_index, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dma_controller_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dma_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dma_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dma_router_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dma_request_slave_channel.last_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dma_request_slave_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_dma_request_slave_channel._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_dma_controller_register(ptr noundef %np, ptr noundef %of_dma_xlate, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %np, null
  %tobool1.not = icmp eq ptr %of_dma_xlate, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.of_dma, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %np, ptr %of_node, align 8
  %of_dma_xlate6 = getelementptr inbounds %struct.of_dma, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %of_dma_xlate6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %of_dma_xlate, ptr %of_dma_xlate6, align 4
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %data, ptr %of_dma_data, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @of_dma_lock, i32 noundef 0) #7
  %4 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @of_dma_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %4, ptr noundef nonnull @of_dma_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add_tail.exit_crit_edge

if.end5.list_add_tail.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @of_dma_list, i32 0, i32 1), align 4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @of_dma_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i, ptr %4, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end5.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @of_dma_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @of_dma_controller_free(ptr noundef readnone %np) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @of_dma_lock, i32 noundef 0) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %ofdma.0.in = phi ptr [ @of_dma_list, %entry ], [ %ofdma.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %ofdma.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %ofdma.0 = load ptr, ptr %ofdma.0.in, align 4
  %cmp.not = icmp eq ptr %ofdma.0, @of_dma_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %of_node = getelementptr inbounds %struct.of_dma, ptr %ofdma.0, i32 0, i32 1
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 4
  %cmp1 = icmp eq ptr %2, %np
  br i1 %cmp1, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ofdma.0) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ofdma.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %ofdma.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ofdma.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %ofdma.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %ofdma.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ofdma.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %ofdma.0) #7
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @of_dma_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_dma_router_register(ptr noundef %np, ptr noundef %of_dma_route_allocate, ptr noundef %dma_router) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %np, null
  %tobool1.not = icmp eq ptr %of_dma_route_allocate, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %dma_router, null
  %or.cond18 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond18, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.of_dma, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %np, ptr %of_node, align 8
  %of_dma_xlate = getelementptr inbounds %struct.of_dma, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %of_dma_xlate to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @of_dma_router_xlate, ptr %of_dma_xlate, align 4
  %of_dma_route_allocate8 = getelementptr inbounds %struct.of_dma, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %of_dma_route_allocate8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %of_dma_route_allocate, ptr %of_dma_route_allocate8, align 8
  %dma_router9 = getelementptr inbounds %struct.of_dma, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %dma_router9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dma_router, ptr %dma_router9, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @of_dma_lock, i32 noundef 0) #7
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @of_dma_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %5, ptr noundef nonnull @of_dma_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @of_dma_list, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @of_dma_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %call7.i.i, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end7.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @of_dma_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @of_dma_router_xlate(ptr nocapture noundef readonly %dma_spec, ptr noundef %ofdma) #0 align 64 {
entry:
  %dma_spec_target = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %dma_spec_target) #7
  %0 = call ptr @memcpy(ptr %dma_spec_target, ptr %dma_spec, i32 72)
  %of_dma_route_allocate = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 3
  %1 = ptrtoint ptr %of_dma_route_allocate to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_dma_route_allocate, align 4
  %call = call ptr %2(ptr noundef nonnull %dma_spec_target, ptr noundef %ofdma) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %entry.for.cond.i_crit_edge

entry.for.cond.i_crit_edge:                       ; preds = %entry
  br label %for.cond.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry.for.cond.i_crit_edge
  %ofdma.0.in.i = phi ptr [ %ofdma.0.i, %for.body.i.for.cond.i_crit_edge ], [ @of_dma_list, %entry.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %ofdma.0.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %ofdma.0.i = load ptr, ptr %ofdma.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ofdma.0.i, @of_dma_list
  br i1 %cmp.not.i, label %do.body.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %of_node.i = getelementptr inbounds %struct.of_dma, ptr %ofdma.0.i, i32 0, i32 1
  %4 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i, align 4
  %6 = ptrtoint ptr %dma_spec_target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_spec_target, align 4
  %cmp1.i = icmp eq ptr %5, %7
  br i1 %cmp1.i, label %for.body.i.of_dma_find_controller.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.body.i.of_dma_find_controller.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_dma_find_controller.exit

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_dma_find_controller.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@of_dma_router_xlate, %of_dma_find_controller.exit)) #7
          to label %of_dma_find_controller.exit.thread [label %of_dma_find_controller.exit], !srcloc !58

of_dma_find_controller.exit.thread:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dma_spec_target to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_spec_target, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_dma_find_controller.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef %9) #7
  br label %if.then3

of_dma_find_controller.exit:                      ; preds = %do.body.i, %for.body.i.of_dma_find_controller.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.body.i ], [ %ofdma.0.i, %for.body.i.of_dma_find_controller.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %of_dma_find_controller.exit.if.then3_crit_edge, label %if.end6

of_dma_find_controller.exit.if.then3_crit_edge:   ; preds = %of_dma_find_controller.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %of_dma_find_controller.exit.if.then3_crit_edge, %of_dma_find_controller.exit.thread
  %dma_router = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 4
  %10 = ptrtoint ptr %dma_router to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_router, align 4
  %route_free = getelementptr inbounds %struct.dma_router, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %route_free to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %route_free, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  call void %13(ptr noundef %15, ptr noundef %call) #7
  br label %err

if.end6:                                          ; preds = %of_dma_find_controller.exit
  %of_dma_xlate = getelementptr inbounds %struct.of_dma, ptr %retval.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %of_dma_xlate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_dma_xlate, align 4
  %call7 = call ptr %17(ptr noundef nonnull %dma_spec_target, ptr noundef nonnull %retval.0.i) #7
  %tobool.not.i = icmp eq ptr %call7, null
  %cmp.i49 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i49
  %dma_router10 = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 4
  %18 = ptrtoint ptr %dma_router10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_router10, align 4
  br i1 %spec.select.i, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %route_free11 = getelementptr inbounds %struct.dma_router, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %route_free11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %route_free11, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  call void %21(ptr noundef %23, ptr noundef %call) #7
  br label %err

if.else:                                          ; preds = %if.end6
  %router = getelementptr inbounds %struct.dma_chan, ptr %call7, i32 0, i32 12
  %24 = ptrtoint ptr %router to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %19, ptr %router, align 4
  %route_data15 = getelementptr inbounds %struct.dma_chan, ptr %call7, i32 0, i32 13
  %25 = ptrtoint ptr %route_data15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call, ptr %route_data15, align 4
  %26 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call7, align 4
  %device_router_config = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 28
  %28 = ptrtoint ptr %device_router_config to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device_router_config, align 4
  %tobool16.not = icmp eq ptr %29, null
  br i1 %tobool16.not, label %if.else.err_crit_edge, label %if.end21

if.else.err_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end21:                                         ; preds = %if.else
  %call20 = call i32 %29(ptr noundef nonnull %call7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool22.not = icmp eq i32 %call20, 0
  br i1 %tobool22.not, label %if.end21.err_crit_edge, label %if.then23

if.end21.err_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void @dma_release_channel(ptr noundef nonnull %call7) #7
  %30 = inttoptr i32 %call20 to ptr
  br label %err

err:                                              ; preds = %if.then23, %if.end21.err_crit_edge, %if.else.err_crit_edge, %if.then9, %if.then3
  %chan.1 = phi ptr [ %call7, %if.then9 ], [ inttoptr (i32 -517 to ptr), %if.then3 ], [ %30, %if.then23 ], [ %call7, %if.end21.err_crit_edge ], [ %call7, %if.else.err_crit_edge ]
  %31 = ptrtoint ptr %dma_spec_target to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma_spec_target, align 4
  call void @of_node_put(ptr noundef %32) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %chan.1, %err ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %dma_spec_target) #7
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_dma_request_slave_channel(ptr noundef %np, ptr noundef readonly %name) #0 align 64 {
entry:
  %s.i = alloca ptr, align 4
  %dma_spec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %dma_spec) #7
  %0 = call ptr @memset(ptr %dma_spec, i32 255, i32 72)
  %tobool.not = icmp eq ptr %np, null
  %tobool1.not = icmp eq ptr %name, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_find_property(ptr noundef nonnull %np, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef nonnull %np, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end12, label %if.end16

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.4, ptr noundef nonnull %np) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @of_dma_request_slave_channel.last_index, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr nonnull @of_dma_request_slave_channel.last_index, i32 1, i32 3, i32 1) #7
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @of_dma_request_slave_channel.last_index, ptr nonnull @of_dma_request_slave_channel.last_index, i32 1, ptr nonnull elementtype(i32) @of_dma_request_slave_channel.last_index) #7, !srcloc !60
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %1, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1859.not = icmp eq i32 %call.i, 0
  br i1 %cmp1859.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16.for.body_crit_edge
  %ret_no_channel.061 = phi i32 [ %ret_no_channel.2, %for.inc.for.body_crit_edge ], [ -19, %if.end16.for.body_crit_edge ]
  %i.060 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %add = add i32 %i.060, %asmresult.i.i.i.i
  %rem = srem i32 %add, %call.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %s.i) #7
  %2 = ptrtoint ptr %s.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %s.i, align 4, !annotation !62
  %call.i.i51 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.6, ptr noundef nonnull %s.i, i32 noundef 1, i32 noundef %rem) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i51)
  %tobool.not.i = icmp sgt i32 %call.i.i51, -1
  br i1 %tobool.not.i, label %if.end.i, label %for.body.of_dma_match_channel.exit.thread_crit_edge

for.body.of_dma_match_channel.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_dma_match_channel.exit.thread

if.end.i:                                         ; preds = %for.body
  %3 = ptrtoint ptr %s.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s.i, align 4
  %call1.i = call i32 @strcmp(ptr noundef %name, ptr noundef %4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.of_dma_match_channel.exit.thread_crit_edge

if.end.i.of_dma_match_channel.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_dma_match_channel.exit.thread

if.end4.i:                                        ; preds = %if.end.i
  %call.i11.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.12, i32 noundef -1, i32 noundef %rem, ptr noundef nonnull %dma_spec) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool6.not.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool6.not.i, label %if.end22, label %if.end4.i.of_dma_match_channel.exit.thread_crit_edge

if.end4.i.of_dma_match_channel.exit.thread_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_dma_match_channel.exit.thread

of_dma_match_channel.exit.thread:                 ; preds = %if.end4.i.of_dma_match_channel.exit.thread_crit_edge, %if.end.i.of_dma_match_channel.exit.thread_crit_edge, %for.body.of_dma_match_channel.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i) #7
  br label %for.inc

if.end22:                                         ; preds = %if.end4.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %s.i) #7
  call void @mutex_lock_nested(ptr noundef nonnull @of_dma_lock, i32 noundef 0) #7
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end22
  %ofdma.0.in.i = phi ptr [ @of_dma_list, %if.end22 ], [ %ofdma.0.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %ofdma.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %ofdma.0.i = load ptr, ptr %ofdma.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ofdma.0.i, @of_dma_list
  br i1 %cmp.not.i, label %do.body.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %of_node.i = getelementptr inbounds %struct.of_dma, ptr %ofdma.0.i, i32 0, i32 1
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 4
  %8 = ptrtoint ptr %dma_spec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_spec, align 4
  %cmp1.i = icmp eq ptr %7, %9
  br i1 %cmp1.i, label %for.body.i.of_dma_find_controller.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

for.body.i.of_dma_find_controller.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_dma_find_controller.exit

do.body.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @of_dma_find_controller.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@of_dma_request_slave_channel, %of_dma_find_controller.exit)) #7
          to label %of_dma_find_controller.exit.thread [label %of_dma_find_controller.exit], !srcloc !58

of_dma_find_controller.exit.thread:               ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dma_spec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_spec, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @of_dma_find_controller.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14, ptr noundef %11) #7
  br label %if.end27

of_dma_find_controller.exit:                      ; preds = %do.body.i, %for.body.i.of_dma_find_controller.exit_crit_edge
  %retval.0.i52 = phi ptr [ null, %do.body.i ], [ %ofdma.0.i, %for.body.i.of_dma_find_controller.exit_crit_edge ]
  %tobool24.not = icmp eq ptr %retval.0.i52, null
  br i1 %tobool24.not, label %of_dma_find_controller.exit.if.end27_crit_edge, label %if.then25

of_dma_find_controller.exit.if.end27_crit_edge:   ; preds = %of_dma_find_controller.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then25:                                        ; preds = %of_dma_find_controller.exit
  call void @__sanitizer_cov_trace_pc() #9
  %of_dma_xlate = getelementptr inbounds %struct.of_dma, ptr %retval.0.i52, i32 0, i32 2
  %12 = ptrtoint ptr %of_dma_xlate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_dma_xlate, align 4
  %call26 = call ptr %13(ptr noundef nonnull %dma_spec, ptr noundef nonnull %retval.0.i52) #7
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %of_dma_find_controller.exit.if.end27_crit_edge, %of_dma_find_controller.exit.thread
  %chan.0 = phi ptr [ %call26, %if.then25 ], [ null, %of_dma_find_controller.exit.if.end27_crit_edge ], [ null, %of_dma_find_controller.exit.thread ]
  %ret_no_channel.1 = phi i32 [ %ret_no_channel.061, %if.then25 ], [ -517, %of_dma_find_controller.exit.if.end27_crit_edge ], [ -517, %of_dma_find_controller.exit.thread ]
  call void @mutex_unlock(ptr noundef nonnull @of_dma_lock) #7
  %14 = ptrtoint ptr %dma_spec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_spec, align 4
  call void @of_node_put(ptr noundef %15) #7
  %tobool29.not = icmp eq ptr %chan.0, null
  br i1 %tobool29.not, label %if.end27.for.inc_crit_edge, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27.for.inc_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end27.for.inc_crit_edge, %of_dma_match_channel.exit.thread
  %ret_no_channel.2 = phi i32 [ %ret_no_channel.1, %if.end27.for.inc_crit_edge ], [ %ret_no_channel.061, %of_dma_match_channel.exit.thread ]
  %inc = add nuw nsw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  %ret_no_channel.0.lcssa = phi i32 [ -19, %if.end16.for.end_crit_edge ], [ %ret_no_channel.2, %for.inc.for.end_crit_edge ]
  %16 = inttoptr i32 %ret_no_channel.0.lcssa to ptr
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end27.cleanup_crit_edge, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end12 ], [ %16, %for.end ], [ inttoptr (i32 -19 to ptr), %do.end ], [ inttoptr (i32 -19 to ptr), %if.end.cleanup_crit_edge ], [ %chan.0, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %dma_spec) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_dma_simple_xlate(ptr noundef %dma_spec, ptr nocapture noundef readonly %ofdma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  %filter_fn = getelementptr inbounds %struct.of_dma_filter_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %filter_fn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filter_fn, align 4
  %tobool1.not = icmp ne ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  %or.cond = select i1 %tobool1.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %6 = ptrtoint ptr %dma_spec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_spec, align 4
  %call = tail call ptr @__dma_request_channel(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef %args, ptr noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end3 ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @of_dma_xlate_by_chan_id(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %channels, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp2.not = icmp eq ptr %.pn, %channels
  br i1 %cmp2.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %chan_id = getelementptr i8, ptr %.pn, i32 -16
  %5 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chan_id, align 4
  %7 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %args, align 4
  %cmp3 = icmp eq i32 %6, %8
  br i1 %cmp3, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.end:                                          ; preds = %for.body
  %chan.0.le = getelementptr i8, ptr %.pn, i32 -32
  %tobool11.not = icmp eq ptr %chan.0.le, null
  br i1 %tobool11.not, label %for.end.cleanup_crit_edge, label %if.end13

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @dma_get_slave_channel(ptr noundef nonnull %chan.0.le) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %for.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end13 ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !16, !18, !20, !21, !22, !24, !26, !28, !29, !30, !32, !34, !36, !38, !39, !40, !42, !44, !46, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/dma/of-dma.c", i32 126, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @of_dma_controller_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @of_dma_controller_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_of_dma_controller_register, !7, !"__ksymtab_of_dma_controller_register", i1 false, i1 false}
!7 = !{!"../drivers/dma/of-dma.c", i32 145, i32 1}
!8 = !{ptr @__ksymtab_of_dma_controller_free, !9, !"__ksymtab_of_dma_controller_free", i1 false, i1 false}
!9 = !{!"../drivers/dma/of-dma.c", i32 168, i32 1}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/of-dma.c", i32 193, i32 3}
!12 = !{ptr @of_dma_router_register._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @of_dma_router_register._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_of_dma_router_register, !15, !"__ksymtab_of_dma_router_register", i1 false, i1 false}
!15 = !{!"../drivers/dma/of-dma.c", i32 213, i32 1}
!16 = !{ptr @of_dma_request_slave_channel.last_index, !17, !"last_index", i1 false, i1 false}
!17 = !{!"../drivers/dma/of-dma.c", i32 259, i32 19}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/of-dma.c", i32 262, i32 3}
!20 = !{ptr @of_dma_request_slave_channel._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @of_dma_request_slave_channel._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/of-dma.c", i32 267, i32 28}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/of-dma.c", i32 270, i32 40}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/of-dma.c", i32 272, i32 3}
!28 = !{ptr @of_dma_request_slave_channel._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @of_dma_request_slave_channel._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_of_dma_request_slave_channel, !31, !"__ksymtab_of_dma_request_slave_channel", i1 false, i1 false}
!31 = !{!"../drivers/dma/of-dma.c", i32 308, i32 1}
!32 = !{ptr @__ksymtab_of_dma_simple_xlate, !33, !"__ksymtab_of_dma_simple_xlate", i1 false, i1 false}
!33 = !{!"../drivers/dma/of-dma.c", i32 336, i32 1}
!34 = !{ptr @__ksymtab_of_dma_xlate_by_chan_id, !35, !"__ksymtab_of_dma_xlate_by_chan_id", i1 false, i1 false}
!35 = !{!"../drivers/dma/of-dma.c", i32 371, i32 1}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/of-dma.c", i32 21, i32 8}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @of_dma_lock, !37, !"of_dma_lock", i1 false, i1 false}
!40 = !{ptr @of_dma_list, !41, !"of_dma_list", i1 false, i1 false}
!41 = !{!"../drivers/dma/of-dma.c", i32 20, i32 8}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma/of-dma.c", i32 237, i32 45}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/of-dma.c", i32 40, i32 2}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @of_dma_find_controller.__UNIQUE_ID_ddebug230, !45, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2148286099, i64 2148286104, i64 2148286117, i64 2148286161, i64 2148286195, i64 2148286216}
!59 = !{i64 2148558117}
!60 = !{i64 2148473426, i64 2148473458, i64 2148473487, i64 2148473521, i64 2148473552, i64 2148473575}
!61 = !{i64 2148558346}
!62 = !{!"auto-init"}
