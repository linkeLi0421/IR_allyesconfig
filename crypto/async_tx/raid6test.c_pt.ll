; ModuleID = '/llk/IR_all_yes/crypto/async_tx/raid6test.c_pt.bc'
source_filename = "../crypto/async_tx/raid6test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.52 }
%struct.atomic_t = type { i32 }
%union.anon.52 = type { i32 }
%union.addr_conv_t = type { i32 }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.page = type { i32, %union.anon, %union.anon.69, %struct.atomic_t, i32 }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.69 = type { %struct.atomic_t }
%struct.async_submit_ctl = type { i32, ptr, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__initcall__kmod_raid6test__234_246_raid6_test7 = internal global ptr @raid6_test, section ".initcall7.init", align 4
@__exitcall_raid6_test_exit = internal global ptr @raid6_test_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [57 x i8] c"raid6test.author=Dan Williams <dan.j.williams@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [62 x i8] c"raid6test.description=asynchronous RAID-6 recovery self tests\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [41 x i8] c"raid6test.file=crypto/async_tx/raid6test\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [22 x i8] c"raid6test.license=GPL\00", section ".modinfo", align 1
@dataoffs = dso_local global { [64 x i32], [64 x i8] } zeroinitializer, align 32
@data = internal global { [67 x ptr], [84 x i8] } zeroinitializer, align 32
@raid6_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016raid6test: \0A\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"raid6_test\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"crypto/async_tx/raid6test.c\00", [36 x i8] zeroinitializer }, align 32
@raid6_test._entry_ptr = internal global ptr @raid6_test._entry, section ".printk_index", align 4
@raid6_test._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016raid6test: complete (%d tests, %d failure%s)\0A\00", [48 x i8] zeroinitializer }, align 32
@raid6_test._entry_ptr.5 = internal global ptr @raid6_test._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"s\00", [30 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@recovi = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@recovj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@spare = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@addr_conv = internal global { [64 x %union.addr_conv_t], [64 x i8] } zeroinitializer, align 32
@dataptrs = internal global { [64 x ptr], [64 x i8] } zeroinitializer, align 32
@test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016raid6test: error: initial gen_syndrome(%d) timed out\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"test\00", [27 x i8] zeroinitializer }, align 32
@test._entry_ptr = internal global ptr @test._entry, section ".printk_index", align 4
@test._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016raid6test: testing the %d-disk case...\0A\00", [54 x i8] zeroinitializer }, align 32
@test._entry_ptr.14 = internal global ptr @test._entry.12, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@test_disks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016raid6test: %s(%d, %d): faila=%3d(%c)  failb=%3d(%c)  %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"test_disks\00", [21 x i8] zeroinitializer }, align 32
@test_disks._entry_ptr = internal global ptr @test_disks._entry, section ".printk_index", align 4
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ERRB\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ERRA\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ERRAB\00", [26 x i8] zeroinitializer }, align 32
@raid6_dual_recov._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016raid6test: %s: timeout! (faila: %d failb: %d disks: %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"raid6_dual_recov\00", [47 x i8] zeroinitializer }, align 32
@raid6_dual_recov._entry_ptr = internal global ptr @raid6_dual_recov._entry, section ".printk_index", align 4
@raid6_dual_recov._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016raid6test: %s: validation failure! faila: %d failb: %d sum_check_flags: %x\0A\00", [50 x i8] zeroinitializer }, align 32
@raid6_dual_recov._entry_ptr.26 = internal global ptr @raid6_dual_recov._entry.24, section ".printk_index", align 4
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"dataoffs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 21, i32 14 }
@___asan_gen_.30 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 23, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 229, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 230, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 717, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"recovi\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 25, i32 21 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"recovj\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 26, i32 21 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"spare\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 24, i32 21 }
@___asan_gen_.69 = private unnamed_addr constant [10 x i8] c"addr_conv\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 22, i32 20 }
@___asan_gen_.72 = private unnamed_addr constant [9 x i8] c"dataptrs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 20, i32 21 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 177, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 181, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 87, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 142, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 119, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [31 x i8] c"../crypto/async_tx/raid6test.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 123, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_raid6_test_exit, ptr @__initcall__kmod_raid6test__234_246_raid6_test7, ptr @raid6_dual_recov._entry, ptr @raid6_dual_recov._entry.24, ptr @raid6_dual_recov._entry_ptr, ptr @raid6_dual_recov._entry_ptr.26, ptr @raid6_test._entry, ptr @raid6_test._entry.3, ptr @raid6_test._entry_ptr, ptr @raid6_test._entry_ptr.5, ptr @test._entry, ptr @test._entry.12, ptr @test._entry_ptr, ptr @test._entry_ptr.14, ptr @test_disks._entry, ptr @test_disks._entry_ptr, ptr @dataoffs, ptr @data, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @recovi, ptr @recovj, ptr @spare, ptr @addr_conv, ptr @dataptrs, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @init_completion.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataoffs to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data to i32), i32 268, i32 352, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid6_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid6_test._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recovi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recovj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spare to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr_conv to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dataptrs to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_disks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid6_dual_recov._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @raid6_dual_recov._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @raid6_test() #0 align 64 {
entry:
  %tests = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tests) #8
  %0 = ptrtoint ptr %tests to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %tests, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.069 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %arrayidx = getelementptr [67 x ptr], ptr @data, i32 0, i32 %i.069
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call38.i.i.i, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.069)
  %tobool2.not71 = icmp eq i32 %i.069, 0
  br i1 %tobool2.not71, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %i.172 = phi i32 [ %dec, %put_page.exit.while.body_crit_edge ], [ %i.069, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %i.172, -1
  %arrayidx3 = getelementptr [67 x ptr], ptr @data, i32 0, i32 %dec
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3, align 4
  %4 = getelementptr inbounds %struct.page, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !81

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %3 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !82

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %11, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !83
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !85
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@raid6_test, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !87

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %8) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %put_page.exit.cleanup_crit_edge, label %put_page.exit.while.body_crit_edge

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

put_page.exit.cleanup_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, 67
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call4 = call fastcc i32 @test(i32 noundef 4, ptr noundef nonnull %tests)
  %call5 = call fastcc i32 @test(i32 noundef 5, ptr noundef nonnull %tests)
  %add6 = add i32 %call5, %call4
  %call7 = call fastcc i32 @test(i32 noundef 11, ptr noundef nonnull %tests)
  %add8 = add i32 %add6, %call7
  %call9 = call fastcc i32 @test(i32 noundef 12, ptr noundef nonnull %tests)
  %add10 = add i32 %add8, %call9
  %call11 = call fastcc i32 @test(i32 noundef 24, ptr noundef nonnull %tests)
  %add12 = add i32 %add10, %call11
  %call13 = call fastcc i32 @test(i32 noundef 64, ptr noundef nonnull %tests)
  %add14 = add i32 %add12, %call13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  %13 = ptrtoint ptr %tests to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add14)
  %cmp20 = icmp eq i32 %add14, 1
  %cond = select i1 %cmp20, ptr @.str.6, ptr @.str.7
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %14, i32 noundef %add14, ptr noundef nonnull %cond) #11
  br label %for.body24

for.body24:                                       ; preds = %put_page.exit65.for.body24_crit_edge, %for.end
  %i.270 = phi i32 [ 0, %for.end ], [ %inc27, %put_page.exit65.for.body24_crit_edge ]
  %arrayidx25 = getelementptr [67 x ptr], ptr @data, i32 0, i32 %i.270
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx25, align 4
  %17 = getelementptr inbounds %struct.page, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %17, align 4
  %and.i.i46 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i46)
  %tobool.not.i.i47 = icmp eq i32 %and.i.i46, 0
  br i1 %tobool.not.i.i47, label %if.end.i.i50, label %if.then.i.i49, !prof !81

if.then.i.i49:                                    ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i48 = add i32 %19, -1
  br label %_compound_head.exit.i55

if.end.i.i50:                                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %16 to i32
  br label %_compound_head.exit.i55

_compound_head.exit.i55:                          ; preds = %if.end.i.i50, %if.then.i.i49
  %retval.0.i.i51 = phi i32 [ %sub.i.i48, %if.then.i.i49 ], [ %20, %if.end.i.i50 ]
  %21 = inttoptr i32 %retval.0.i.i51 to ptr
  %_refcount.i.i.i.i.i52 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 3
  %call.i.i.i.i.i.i.i53 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i52, i32 noundef 4) #8
  %22 = ptrtoint ptr %_refcount.i.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %_refcount.i.i.i.i.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i.i.i54 = icmp eq i32 %23, 0
  br i1 %cmp.i.i.i.i54, label %if.then.i.i.i.i56, label %do.end5.i.i.i.i60, !prof !82

if.then.i.i.i.i56:                                ; preds = %_compound_head.exit.i55
  call void @__sanitizer_cov_trace_pc() #10
  %24 = inttoptr i32 %retval.0.i.i51 to ptr
  tail call void @dump_page(ptr noundef %24, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !83
  unreachable

do.end5.i.i.i.i60:                                ; preds = %_compound_head.exit.i55
  %call.i.i.i10.i.i.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i52, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i52, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i52, ptr %_refcount.i.i.i.i.i52, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i52) #8, !srcloc !85
  %asmresult.i.i.i.i.i.i.i.i.i.i58 = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i58)
  %cmp.i.i.i.i.i.i.i59 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i58, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@raid6_test, %if.then.i.i.i.i.i62)) #8
          to label %folio_put_testzero.exit.i.i63 [label %if.then.i.i.i.i.i62], !srcloc !87

if.then.i.i.i.i.i62:                              ; preds = %do.end5.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i61 = zext i1 %cmp.i.i.i.i.i.i.i59 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %21, i32 noundef -1, i32 noundef %conv.i.i.i.i.i61) #8
  br label %folio_put_testzero.exit.i.i63

folio_put_testzero.exit.i.i63:                    ; preds = %if.then.i.i.i.i.i62, %do.end5.i.i.i.i60
  br i1 %cmp.i.i.i.i.i.i.i59, label %if.then.i4.i64, label %folio_put_testzero.exit.i.i63.put_page.exit65_crit_edge

folio_put_testzero.exit.i.i63.put_page.exit65_crit_edge: ; preds = %folio_put_testzero.exit.i.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit65

if.then.i4.i64:                                   ; preds = %folio_put_testzero.exit.i.i63
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %21) #8
  br label %put_page.exit65

put_page.exit65:                                  ; preds = %if.then.i4.i64, %folio_put_testzero.exit.i.i63.put_page.exit65_crit_edge
  %inc27 = add nuw nsw i32 %i.270, 1
  %exitcond77.not = icmp eq i32 %inc27, 67
  br i1 %exitcond77.not, label %put_page.exit65.cleanup_crit_edge, label %put_page.exit65.for.body24_crit_edge

put_page.exit65.for.body24_crit_edge:             ; preds = %put_page.exit65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body24

put_page.exit65.cleanup_crit_edge:                ; preds = %put_page.exit65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %put_page.exit65.cleanup_crit_edge, %put_page.exit.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %while.cond.preheader.cleanup_crit_edge ], [ -12, %put_page.exit.cleanup_crit_edge ], [ 0, %put_page.exit65.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tests) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @raid6_test_exit() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @test(i32 noundef %disks, ptr nocapture noundef %tests) unnamed_addr #0 align 64 {
entry:
  %submit.i.i = alloca %struct.async_submit_ctl, align 4
  %cmp.i.i = alloca %struct.completion, align 4
  %result.i.i = alloca i32, align 4
  %blocks.i.i = alloca [64 x ptr], align 4
  %submit = alloca %struct.async_submit_ctl, align 4
  %cmp = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %submit) #8
  %0 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  %1 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %2 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %3 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmp) #8
  %4 = getelementptr inbounds i8, ptr %cmp, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 52)
  %arrayidx = getelementptr [67 x ptr], ptr @data, i32 0, i32 %disks
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  store ptr %7, ptr @recovi, align 4
  %add = add i32 %disks, 1
  %arrayidx1 = getelementptr [67 x ptr], ptr @data, i32 0, i32 %add
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1, align 4
  store ptr %9, ptr @recovj, align 4
  %add2 = add i32 %disks, 2
  %arrayidx3 = getelementptr [67 x ptr], ptr @data, i32 0, i32 %add2
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  store ptr %11, ptr @spare, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %disks)
  %cmp9.i = icmp sgt i32 %disks, 0
  br i1 %cmp9.i, label %entry.for.body.i_crit_edge, label %entry.makedata.exit_crit_edge

entry.makedata.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %makedata.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [67 x ptr], ptr @data, i32 0, i32 %i.010.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call ptr @page_address(ptr noundef %13) #8
  tail call void @prandom_bytes(ptr noundef %call.i, i32 noundef 4096) #8
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr [64 x ptr], ptr @dataptrs, i32 0, i32 %i.010.i
  %16 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr [64 x i32], ptr @dataoffs, i32 0, i32 %i.010.i
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %arrayidx3.i, align 4
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %disks
  br i1 %exitcond.not.i, label %for.body.i.makedata.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.makedata.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %makedata.exit

makedata.exit:                                    ; preds = %for.body.i.makedata.exit_crit_edge, %entry.makedata.exit_crit_edge
  %sub = add i32 %disks, -2
  %arrayidx4 = getelementptr [67 x ptr], ptr @data, i32 0, i32 %sub
  %18 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx4, align 4
  %call = tail call ptr @page_address(ptr noundef %19) #8
  %20 = call ptr @memset(ptr %call, i32 238, i32 4096)
  %sub5 = add i32 %disks, -1
  %arrayidx6 = getelementptr [67 x ptr], ptr @data, i32 0, i32 %sub5
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx6, align 4
  %call7 = tail call ptr @page_address(ptr noundef %22) #8
  %23 = call ptr @memset(ptr %call7, i32 238, i32 4096)
  %24 = ptrtoint ptr %cmp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %cmp, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %cmp, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #8
  %25 = ptrtoint ptr %submit to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %submit, align 4
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %0, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @callback, ptr %1, align 4
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %cmp, ptr %2, align 4
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @addr_conv, ptr %3, align 4
  %call8 = call ptr @async_gen_syndrome(ptr noundef nonnull @dataptrs, ptr noundef nonnull @dataoffs, i32 noundef %disks, i32 noundef 4096, ptr noundef nonnull %submit) #8
  %tobool.not.i = icmp eq ptr %call8, null
  br i1 %tobool.not.i, label %makedata.exit.async_tx_issue_pending.exit_crit_edge, label %if.then.i, !prof !82

makedata.exit.async_tx_issue_pending.exit_crit_edge: ; preds = %makedata.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_tx_issue_pending.exit

if.then.i:                                        ; preds = %makedata.exit
  call void @__sanitizer_cov_trace_pc() #10
  %chan3.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call8, i32 0, i32 3
  %30 = ptrtoint ptr %chan3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan3.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 50
  %34 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device_issue_pending.i, align 4
  call void %35(ptr noundef %31) #8
  br label %async_tx_issue_pending.exit

async_tx_issue_pending.exit:                      ; preds = %if.then.i, %makedata.exit.async_tx_issue_pending.exit_crit_edge
  %call10 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %cmp, i32 noundef 300) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %do.end, label %do.end15

do.end:                                           ; preds = %async_tx_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %disks) #11
  br label %cleanup

do.end15:                                         ; preds = %async_tx_issue_pending.exit
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %disks) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5)
  %cmp1960 = icmp sgt i32 %sub5, 0
  br i1 %cmp1960, label %for.body.lr.ph, label %do.end15.cleanup_crit_edge

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end15
  %36 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit.i.i, i32 0, i32 1
  %37 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit.i.i, i32 0, i32 2
  %38 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit.i.i, i32 0, i32 3
  %39 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit.i.i, i32 0, i32 4
  %40 = getelementptr inbounds i8, ptr %cmp.i.i, i32 4
  br label %for.body

for.cond.loopexit:                                ; preds = %test_disks.exit.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %err.1.lcssa = phi i32 [ %err.062, %for.body.for.cond.loopexit_crit_edge ], [ %add25, %test_disks.exit.for.cond.loopexit_crit_edge ]
  %exitcond64.not = icmp eq i32 %add20, %sub5
  br i1 %exitcond64.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %err.062 = phi i32 [ 0, %for.body.lr.ph ], [ %err.1.lcssa, %for.cond.loopexit.for.body_crit_edge ]
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %add20, %for.cond.loopexit.for.body_crit_edge ]
  %add20 = add nuw nsw i32 %i.061, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %disks)
  %cmp2257 = icmp slt i32 %add20, %disks
  br i1 %cmp2257, label %for.body23.lr.ph, label %for.body.for.cond.loopexit_crit_edge

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

for.body23.lr.ph:                                 ; preds = %for.body
  %arrayidx.i53 = getelementptr [64 x ptr], ptr @dataptrs, i32 0, i32 %i.061
  %arrayidx3.i55 = getelementptr [67 x ptr], ptr @data, i32 0, i32 %i.061
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %i.061)
  %cmp.i51.i = icmp eq i32 %sub, %i.061
  %conv.i = select i1 %cmp.i51.i, i32 80, i32 68
  br label %for.body23

for.body23:                                       ; preds = %test_disks.exit.for.body23_crit_edge, %for.body23.lr.ph
  %err.159 = phi i32 [ %err.062, %for.body23.lr.ph ], [ %add25, %test_disks.exit.for.body23_crit_edge ]
  %j.058 = phi i32 [ %add20, %for.body23.lr.ph ], [ %inc26, %test_disks.exit.for.body23_crit_edge ]
  %41 = ptrtoint ptr %tests to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tests, align 4
  %inc = add i32 %42, 1
  store i32 %inc, ptr %tests, align 4
  %43 = load ptr, ptr @recovi, align 4
  %call.i52 = call ptr @page_address(ptr noundef %43) #8
  %44 = call ptr @memset(ptr %call.i52, i32 240, i32 4096)
  %45 = load ptr, ptr @recovj, align 4
  %call1.i = call ptr @page_address(ptr noundef %45) #8
  %46 = call ptr @memset(ptr %call1.i, i32 186, i32 4096)
  %47 = load ptr, ptr @recovi, align 4
  %48 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %arrayidx.i53, align 4
  %49 = load ptr, ptr @recovj, align 4
  %arrayidx2.i54 = getelementptr [64 x ptr], ptr @dataptrs, i32 0, i32 %j.058
  %50 = ptrtoint ptr %arrayidx2.i54 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %arrayidx2.i54, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %submit.i.i) #8
  %51 = call ptr @memset(ptr %submit.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cmp.i.i) #8
  %52 = call ptr @memset(ptr %40, i32 255, i32 52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i.i) #8
  %53 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %result.i.i, align 4
  %54 = call i32 @llvm.smax.i32(i32 %i.061, i32 %j.058) #8
  %55 = call i32 @llvm.smin.i32(i32 %i.061, i32 %j.058) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %sub5)
  %cmp2.i.i = icmp eq i32 %54, %sub5
  br i1 %cmp2.i.i, label %if.then3.i.i, label %if.else30.i.i

if.then3.i.i:                                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %sub)
  %cmp5.i.i = icmp eq i32 %55, %sub
  br i1 %cmp5.i.i, label %if.then6.i.i, label %if.else.i.i

if.then6.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = call ptr @memset(ptr %submit.i.i, i32 0, i32 16)
  %57 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @addr_conv, ptr %39, align 4
  %call.i.i = call ptr @async_gen_syndrome(ptr noundef nonnull @dataptrs, ptr noundef nonnull @dataoffs, i32 noundef %disks, i32 noundef 4096, ptr noundef nonnull %submit.i.i) #8
  br label %if.end38.i.i

if.else.i.i:                                      ; preds = %if.then3.i.i
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %blocks.i.i) #8
  %58 = call ptr @memset(ptr %blocks.i.i, i32 255, i32 256)
  br label %for.cond.outer.i.i

for.cond.outer.i.i:                               ; preds = %if.end24.i.i, %if.else.i.i
  %count.0.ph.i.i = phi i32 [ %inc.i.i, %if.end24.i.i ], [ 0, %if.else.i.i ]
  %i.0.ph.i.i = phi i32 [ %dec.i.i, %if.end24.i.i ], [ %disks, %if.else.i.i ]
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.cond.outer.i.i
  %i.0.i.i = phi i32 [ %dec.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ %i.0.ph.i.i, %for.cond.outer.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i.i)
  %tobool20.not.i.i = icmp eq i32 %i.0.i.i, 0
  br i1 %tobool20.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dec.i.i = add i32 %i.0.i.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i.i, i32 %55)
  %cmp21.i.i = icmp eq i32 %dec.i.i, %55
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i, i32 %disks)
  %cmp22.i.i = icmp eq i32 %i.0.i.i, %disks
  %or.cond.i.i = or i1 %cmp21.i.i, %cmp22.i.i
  br i1 %or.cond.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %if.end24.i.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

if.end24.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr ptr, ptr @dataptrs, i32 %dec.i.i
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %count.0.ph.i.i, 1
  %arrayidx25.i.i = getelementptr [64 x ptr], ptr %blocks.i.i, i32 0, i32 %count.0.ph.i.i
  %61 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %arrayidx25.i.i, align 4
  br label %for.cond.outer.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx26.i.i = getelementptr ptr, ptr @dataptrs, i32 %55
  %62 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx26.i.i, align 4
  %64 = ptrtoint ptr %submit.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %submit.i.i, align 4
  %65 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %36, align 4
  %66 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %37, align 4
  %67 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %38, align 4
  %68 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @addr_conv, ptr %39, align 4
  %call27.i.i = call ptr @async_xor(ptr noundef %63, ptr noundef nonnull %blocks.i.i, i32 noundef 0, i32 noundef %count.0.ph.i.i, i32 noundef 4096, ptr noundef nonnull %submit.i.i) #8
  %69 = ptrtoint ptr %submit.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %submit.i.i, align 4
  %70 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call27.i.i, ptr %36, align 4
  %71 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %37, align 4
  %72 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %38, align 4
  %73 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @addr_conv, ptr %39, align 4
  %call28.i.i = call ptr @async_gen_syndrome(ptr noundef nonnull @dataptrs, ptr noundef nonnull @dataoffs, i32 noundef %disks, i32 noundef 4096, ptr noundef nonnull %submit.i.i) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %blocks.i.i) #8
  br label %if.end38.i.i

if.else30.i.i:                                    ; preds = %for.body23
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %sub)
  %cmp32.i.i = icmp eq i32 %54, %sub
  %74 = call ptr @memset(ptr %submit.i.i, i32 0, i32 16)
  %75 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @addr_conv, ptr %39, align 4
  br i1 %cmp32.i.i, label %if.then33.i.i, label %if.else35.i.i

if.then33.i.i:                                    ; preds = %if.else30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call34.i.i = call ptr @async_raid6_datap_recov(i32 noundef %disks, i32 noundef 4096, i32 noundef %55, ptr noundef nonnull @dataptrs, ptr noundef nonnull @dataoffs, ptr noundef nonnull %submit.i.i) #8
  br label %if.end38.i.i

if.else35.i.i:                                    ; preds = %if.else30.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call36.i.i = call ptr @async_raid6_2data_recov(i32 noundef %disks, i32 noundef 4096, i32 noundef %55, i32 noundef %54, ptr noundef nonnull @dataptrs, ptr noundef nonnull @dataoffs, ptr noundef nonnull %submit.i.i) #8
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else35.i.i, %if.then33.i.i, %for.end.i.i, %if.then6.i.i
  %tx.0.i.i = phi ptr [ %call.i.i, %if.then6.i.i ], [ %call28.i.i, %for.end.i.i ], [ %call34.i.i, %if.then33.i.i ], [ %call36.i.i, %if.else35.i.i ]
  %76 = ptrtoint ptr %cmp.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %cmp.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %40, ptr noundef nonnull @.str.15, ptr noundef nonnull @init_completion.__key) #8
  %77 = ptrtoint ptr %submit.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %submit.i.i, align 4
  %78 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %tx.0.i.i, ptr %36, align 4
  %79 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @callback, ptr %37, align 4
  %80 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %cmp.i.i, ptr %38, align 4
  %81 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @addr_conv, ptr %39, align 4
  %82 = load ptr, ptr @spare, align 4
  %call39.i.i = call ptr @async_syndrome_val(ptr noundef nonnull @dataptrs, ptr noundef nonnull @dataoffs, i32 noundef %disks, i32 noundef 4096, ptr noundef nonnull %result.i.i, ptr noundef %82, i32 noundef 0, ptr noundef nonnull %submit.i.i) #8
  %tobool.not.i.i.i = icmp eq ptr %call39.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end38.i.i.async_tx_issue_pending.exit.i.i_crit_edge, label %if.then.i.i.i, !prof !82

if.end38.i.i.async_tx_issue_pending.exit.i.i_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %async_tx_issue_pending.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %chan3.i.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call39.i.i, i32 0, i32 3
  %83 = ptrtoint ptr %chan3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chan3.i.i.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %device_issue_pending.i.i.i = getelementptr inbounds %struct.dma_device, ptr %86, i32 0, i32 50
  %87 = ptrtoint ptr %device_issue_pending.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %device_issue_pending.i.i.i, align 4
  call void %88(ptr noundef %84) #8
  br label %async_tx_issue_pending.exit.i.i

async_tx_issue_pending.exit.i.i:                  ; preds = %if.then.i.i.i, %if.end38.i.i.async_tx_issue_pending.exit.i.i_crit_edge
  %call41.i.i = call i32 @wait_for_completion_timeout(ptr noundef nonnull %cmp.i.i, i32 noundef 300) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %cmp42.i.i = icmp eq i32 %call41.i.i, 0
  br i1 %cmp42.i.i, label %do.end46.i.i, label %async_tx_issue_pending.exit.i.i.if.end48.i.i_crit_edge

async_tx_issue_pending.exit.i.i.if.end48.i.i_crit_edge: ; preds = %async_tx_issue_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i.i

do.end46.i.i:                                     ; preds = %async_tx_issue_pending.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call47.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %55, i32 noundef %54, i32 noundef %disks) #11
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %do.end46.i.i, %async_tx_issue_pending.exit.i.i.if.end48.i.i_crit_edge
  %89 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %result.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp49.not.i.i = icmp eq i32 %90, 0
  br i1 %cmp49.not.i.i, label %if.end48.i.i.test_disks.exit_crit_edge, label %do.end53.i.i

if.end48.i.i.test_disks.exit_crit_edge:           ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %test_disks.exit

do.end53.i.i:                                     ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call55.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.23, i32 noundef %55, i32 noundef %54, i32 noundef %90) #11
  br label %test_disks.exit

test_disks.exit:                                  ; preds = %do.end53.i.i, %if.end48.i.i.test_disks.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmp.i.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %submit.i.i) #8
  %91 = ptrtoint ptr %arrayidx3.i55 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx3.i55, align 4
  %call4.i = call ptr @page_address(ptr noundef %92) #8
  %93 = load ptr, ptr @recovi, align 4
  %call5.i = call ptr @page_address(ptr noundef %93) #8
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(4096) %call4.i, ptr noundef dereferenceable(4096) %call5.i, i32 4096) #12
  %arrayidx7.i = getelementptr [67 x ptr], ptr @data, i32 0, i32 %j.058
  %94 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx7.i, align 4
  %call8.i = call ptr @page_address(ptr noundef %95) #8
  %96 = load ptr, ptr @recovj, align 4
  %call9.i = call ptr @page_address(ptr noundef %96) #8
  %bcmp49.i = call i32 @bcmp(ptr noundef dereferenceable(4096) %call8.i, ptr noundef dereferenceable(4096) %call9.i, i32 4096) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %j.058)
  %cmp.i54.i = icmp eq i32 %sub, %j.058
  call void @__sanitizer_cov_trace_cmp4(i32 %sub5, i32 %j.058)
  %cmp2.i56.i = icmp eq i32 %sub5, %j.058
  %97 = select i1 %cmp2.i56.i, i32 81, i32 68
  %conv13.i = select i1 %cmp.i54.i, i32 80, i32 %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i56 = icmp eq i32 %bcmp.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp49.i)
  %tobool14.not.i = icmp eq i32 %bcmp49.i, 0
  %or.cond.i = select i1 %tobool.not.i56, i1 %tobool14.not.i, i1 false
  %.str.18.mux.i = select i1 %or.cond.i, ptr @.str.18, ptr @.str.19
  %cond.i = select i1 %tobool14.not.i, ptr @.str.20, ptr @.str.21
  %cond21.i = select i1 %tobool.not.i56, ptr %.str.18.mux.i, ptr %cond.i
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %i.061, i32 noundef %j.058, i32 noundef %i.061, i32 noundef %conv.i, i32 noundef %j.058, i32 noundef %conv13.i, ptr noundef nonnull %cond21.i) #11
  %98 = ptrtoint ptr %arrayidx3.i55 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx3.i55, align 4
  %100 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %99, ptr %arrayidx.i53, align 4
  %101 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx7.i, align 4
  %103 = ptrtoint ptr %arrayidx2.i54 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %arrayidx2.i54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp49.i)
  %tobool28.i = icmp ne i32 %bcmp49.i, 0
  %not.tobool.not.i = xor i1 %tobool.not.i56, true
  %narrow.i = select i1 %not.tobool.not.i, i1 true, i1 %tobool28.i
  %104 = zext i1 %narrow.i to i32
  %add25 = add i32 %err.159, %104
  %inc26 = add i32 %j.058, 1
  %exitcond.not = icmp eq i32 %inc26, %disks
  br i1 %exitcond.not, label %test_disks.exit.for.cond.loopexit_crit_edge, label %test_disks.exit.for.body23_crit_edge

test_disks.exit.for.body23_crit_edge:             ; preds = %test_disks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

test_disks.exit.for.cond.loopexit_crit_edge:      ; preds = %test_disks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.loopexit

cleanup:                                          ; preds = %for.cond.loopexit.cleanup_crit_edge, %do.end15.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %do.end15.cleanup_crit_edge ], [ %err.1.lcssa, %for.cond.loopexit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cmp) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %submit) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @callback(ptr noundef %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @complete(ptr noundef %param) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @async_gen_syndrome(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @async_xor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @async_raid6_datap_recov(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @async_raid6_2data_recov(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @async_syndrome_val(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !27, !29, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !49, !51, !53, !55, !56, !57, !58, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_raid6test__234_246_raid6_test7, !1, !"__initcall__kmod_raid6test__234_246_raid6_test7", i1 false, i1 false}
!1 = !{!"../crypto/async_tx/raid6test.c", i32 246, i32 1}
!2 = !{ptr @__exitcall_raid6_test_exit, !3, !"__exitcall_raid6_test_exit", i1 false, i1 false}
!3 = !{!"../crypto/async_tx/raid6test.c", i32 247, i32 1}
!4 = !{ptr @__UNIQUE_ID_author235, !5, !"__UNIQUE_ID_author235", i1 false, i1 false}
!5 = !{!"../crypto/async_tx/raid6test.c", i32 248, i32 1}
!6 = !{ptr @__UNIQUE_ID_description236, !7, !"__UNIQUE_ID_description236", i1 false, i1 false}
!7 = !{!"../crypto/async_tx/raid6test.c", i32 249, i32 1}
!8 = !{ptr @__UNIQUE_ID_file237, !9, !"__UNIQUE_ID_file237", i1 false, i1 false}
!9 = !{!"../crypto/async_tx/raid6test.c", i32 250, i32 1}
!10 = !{ptr @__UNIQUE_ID_license238, !9, !"__UNIQUE_ID_license238", i1 false, i1 false}
!11 = !{ptr @dataoffs, !12, !"dataoffs", i1 false, i1 false}
!12 = !{!"../crypto/async_tx/raid6test.c", i32 21, i32 14}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../crypto/async_tx/raid6test.c", i32 229, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @raid6_test._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @raid6_test._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../crypto/async_tx/raid6test.c", i32 230, i32 2}
!21 = !{ptr @raid6_test._entry.3, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @raid6_test._entry_ptr.5, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!27 = !{ptr @data, !28, !"data", i1 false, i1 false}
!28 = !{!"../crypto/async_tx/raid6test.c", i32 23, i32 21}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/mm.h", i32 717, i32 2}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../crypto/async_tx/raid6test.c", i32 177, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @test._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @test._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../crypto/async_tx/raid6test.c", i32 181, i32 2}
!38 = !{ptr @test._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @test._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @recovi, !41, !"recovi", i1 false, i1 false}
!41 = !{!"../crypto/async_tx/raid6test.c", i32 25, i32 21}
!42 = !{ptr @recovj, !43, !"recovj", i1 false, i1 false}
!43 = !{!"../crypto/async_tx/raid6test.c", i32 26, i32 21}
!44 = !{ptr @spare, !45, !"spare", i1 false, i1 false}
!45 = !{!"../crypto/async_tx/raid6test.c", i32 24, i32 21}
!46 = !{ptr @init_completion.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../include/linux/completion.h", i32 87, i32 2}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @addr_conv, !50, !"addr_conv", i1 false, i1 false}
!50 = !{!"../crypto/async_tx/raid6test.c", i32 22, i32 20}
!51 = !{ptr @dataptrs, !52, !"dataptrs", i1 false, i1 false}
!52 = !{!"../crypto/async_tx/raid6test.c", i32 20, i32 21}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../crypto/async_tx/raid6test.c", i32 142, i32 2}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @test_disks._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @test_disks._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../crypto/async_tx/raid6test.c", i32 119, i32 3}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @raid6_dual_recov._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @raid6_dual_recov._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../crypto/async_tx/raid6test.c", i32 123, i32 3}
!69 = !{ptr @raid6_dual_recov._entry.24, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @raid6_dual_recov._entry_ptr.26, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{!"sp"}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 2153623491, i64 2153623974, i64 2153623528, i64 2153623584, i64 2153623618, i64 2153623642, i64 2153623683, i64 2153623704, i64 2153623732, i64 2153623766}
!84 = !{i64 2148618915}
!85 = !{i64 2148533648, i64 2148533680, i64 2148533709, i64 2148533743, i64 2148533774, i64 2148533797}
!86 = !{i64 2148619144}
!87 = !{i64 2148343856, i64 2148343861, i64 2148343874, i64 2148343918, i64 2148343952, i64 2148343973}
