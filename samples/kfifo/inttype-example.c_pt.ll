; ModuleID = '/llk/IR_all_yes/samples/kfifo/inttype-example.c_pt.bc'
source_filename = "../samples/kfifo/inttype-example.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.71 = type { %union.anon.72, [32 x i32] }
%union.anon.72 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__UNIQUE_ID_license225 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [45 x i8] c"author=Stefani Seibold <stefani@seibold.net>\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"int-fifo\00", [23 x i8] zeroinitializer }, align 32
@fifo_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr @fifo_read, ptr null, ptr @fifo_write, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@testfunc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016int fifo test start\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"testfunc\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"samples/kfifo/inttype-example.c\00", [32 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr = internal global ptr @testfunc._entry, section ".printk_index", align 4
@test = internal global { %struct.anon.71, [44 x i8] } { %struct.anon.71 { %union.anon.72 { %struct.__kfifo { i32 0, i32 0, i32 31, i32 4, ptr getelementptr (i8, ptr @test, i64 20) } }, [32 x i32] zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@testfunc._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016fifo len: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.6 = internal global ptr @testfunc._entry.4, section ".printk_index", align 4
@testfunc._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\016ret: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.9 = internal global ptr @testfunc._entry.7, section ".printk_index", align 4
@testfunc._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.11 = internal global ptr @testfunc._entry.10, section ".printk_index", align 4
@testfunc._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016skip 1st element\0A\00", [44 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.14 = internal global ptr @testfunc._entry.12, section ".printk_index", align 4
@testfunc._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016queue len: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.17 = internal global ptr @testfunc._entry.15, section ".printk_index", align 4
@testfunc._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%d\0A\00", [26 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.20 = internal global ptr @testfunc._entry.18, section ".printk_index", align 4
@testfunc._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016item = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.23 = internal global ptr @testfunc._entry.21, section ".printk_index", align 4
@expected_result = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 0, i32 1, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42], [32 x i8] zeroinitializer }, align 32
@testfunc._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014value mismatch: test failed\0A\00", [33 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.26 = internal global ptr @testfunc._entry.24, section ".printk_index", align 4
@testfunc._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014size mismatch: test failed\0A\00", [34 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.29 = internal global ptr @testfunc._entry.27, section ".printk_index", align 4
@testfunc._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016test passed\0A\00", [17 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.32 = internal global ptr @testfunc._entry.30, section ".printk_index", align 4
@read_access = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @read_access, i64 52), ptr getelementptr (i8, ptr @read_access, i64 52) }, ptr @read_access, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read_access.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_access\00", [20 x i8] zeroinitializer }, align 32
@write_access = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @write_access, i64 52), ptr getelementptr (i8, ptr @write_access, i64 52) }, ptr @write_access, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"write_access.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_access\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 166, i32 18 }
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"fifo_proc_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 142, i32 30 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 58, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 42, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 65, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 69, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 72, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 75, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 82, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 86, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 91, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"expected_result\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 45, i32 18 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 93, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 98, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 101, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"read_access\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 25, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant [13 x i8] c"write_access\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [35 x i8] c"../samples/kfifo/inttype-example.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 28, i32 8 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_license225, ptr @testfunc._entry, ptr @testfunc._entry.10, ptr @testfunc._entry.12, ptr @testfunc._entry.15, ptr @testfunc._entry.18, ptr @testfunc._entry.21, ptr @testfunc._entry.24, ptr @testfunc._entry.27, ptr @testfunc._entry.30, ptr @testfunc._entry.4, ptr @testfunc._entry.7, ptr @testfunc._entry_ptr, ptr @testfunc._entry_ptr.11, ptr @testfunc._entry_ptr.14, ptr @testfunc._entry_ptr.17, ptr @testfunc._entry_ptr.20, ptr @testfunc._entry_ptr.23, ptr @testfunc._entry_ptr.26, ptr @testfunc._entry_ptr.29, ptr @testfunc._entry_ptr.32, ptr @testfunc._entry_ptr.6, ptr @testfunc._entry_ptr.9, ptr @.str, ptr @fifo_proc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @test, ptr @.str.5, ptr @.str.8, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @expected_result, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @read_access, ptr @.str.33, ptr @.str.34, ptr @write_access, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fifo_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_result to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_access to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_access to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @testfunc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call ptr @proc_create(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @fifo_proc_ops) #5
  %cmp2 = icmp eq ptr %call1, null
  %. = select i1 %cmp2, i32 -12, i32 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -5, %entry.return_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef null) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @testfunc() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %buf = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buf) #5
  %0 = call ptr @memset(ptr %buf, i32 255, i32 24)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %if.else

if.else:                                          ; preds = %if.end18.if.else_crit_edge, %entry
  %i.0276 = phi i32 [ 0, %entry ], [ %inc20, %if.end18.if.else_crit_edge ]
  %1 = load i32, ptr @test, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %sub = sub i32 %1, %2
  %3 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %3)
  %cmp4.not = icmp ugt i32 %sub, %3
  br i1 %cmp4.not, label %if.else.if.end18_crit_edge, label %if.then7

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %3, %1
  %arrayidx = getelementptr i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 1), i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %i.0276, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !74
  %5 = load i32, ptr @test, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr @test, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then7, %if.else.if.end18_crit_edge
  %inc20 = add nuw nsw i32 %i.0276, 1
  %cmp.not = icmp eq i32 %inc20, 10
  br i1 %cmp.not, label %do.end23, label %if.end18.if.else_crit_edge

if.end18.if.else_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

do.end23:                                         ; preds = %if.end18
  %6 = load i32, ptr @test, align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %sub29 = sub i32 %6, %7
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %sub29) #9
  %call36 = call i32 @__kfifo_out(ptr noundef nonnull @test, ptr noundef nonnull %buf, i32 noundef 2) #5
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call36) #9
  %call50 = call i32 @__kfifo_in(ptr noundef nonnull @test, ptr noundef nonnull %buf, i32 noundef %call36) #5
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call50) #9
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  %8 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %inc65 = add i32 %8, 1
  store i32 %inc65, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %9 = load i32, ptr @test, align 4
  %sub82277 = sub i32 %9, %inc65
  %10 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub82277, i32 %10)
  %cmp84.not278 = icmp ugt i32 %sub82277, %10
  br i1 %cmp84.not278, label %do.end23.do.end115_crit_edge, label %do.end23.if.then90_crit_edge

do.end23.if.then90_crit_edge:                     ; preds = %do.end23
  br label %if.then90

do.end23.do.end115_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end115

if.then90:                                        ; preds = %if.then90.if.then90_crit_edge, %do.end23.if.then90_crit_edge
  %11 = phi i32 [ %16, %if.then90.if.then90_crit_edge ], [ %10, %do.end23.if.then90_crit_edge ]
  %12 = phi i32 [ %inc104, %if.then90.if.then90_crit_edge ], [ %9, %do.end23.if.then90_crit_edge ]
  %i.1279 = phi i32 [ %inc111, %if.then90.if.then90_crit_edge ], [ 20, %do.end23.if.then90_crit_edge ]
  %and95 = and i32 %11, %12
  %arrayidx96 = getelementptr i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 1), i32 %and95
  %13 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %i.1279, ptr %arrayidx96, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !75
  %14 = load i32, ptr @test, align 4
  %inc104 = add i32 %14, 1
  store i32 %inc104, ptr @test, align 4
  %inc111 = add i32 %i.1279, 1
  %15 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %sub82 = sub i32 %inc104, %15
  %16 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 2), align 4
  %cmp84.not = icmp ugt i32 %sub82, %16
  br i1 %cmp84.not, label %if.then90.do.end115_crit_edge, label %if.then90.if.then90_crit_edge

if.then90.if.then90_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then90

if.then90.do.end115_crit_edge:                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end115

do.end115:                                        ; preds = %if.then90.do.end115_crit_edge, %do.end23.do.end115_crit_edge
  %sub82.lcssa = phi i32 [ %sub82277, %do.end23.do.end115_crit_edge ], [ %sub82, %if.then90.do.end115_crit_edge ]
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %sub82.lcssa) #9
  %17 = load i32, ptr @test, align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %18)
  %cmp132.not = icmp eq i32 %17, %18
  br i1 %cmp132.not, label %do.end115.while.cond.preheader_crit_edge, label %do.end158

do.end115.while.cond.preheader_crit_edge:         ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

do.end158:                                        ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #7
  %19 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 2), align 4
  %and143 = and i32 %19, %18
  %arrayidx144 = getelementptr i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 1), i32 %and143
  %20 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx144, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !76
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %21) #9
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end158, %do.end115.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %do.end198.while.cond_crit_edge, %while.cond.preheader
  %j.0 = phi i32 [ %inc201, %do.end198.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %22 = load i32, ptr @test, align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %23)
  %cmp171.not = icmp eq i32 %22, %23
  br i1 %cmp171.not, label %while.end, label %do.end198

do.end198:                                        ; preds = %while.cond
  %24 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 2), align 4
  %and182 = and i32 %24, %23
  %arrayidx183 = getelementptr i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 1), i32 %and182
  %25 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx183, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !77
  %27 = load i32, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %inc191 = add i32 %27, 1
  store i32 %inc191, ptr getelementptr inbounds (%struct.anon.71, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %call200 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %26) #9
  %inc201 = add i32 %j.0, 1
  %arrayidx202 = getelementptr [32 x i32], ptr @expected_result, i32 0, i32 %j.0
  %28 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx202, align 4
  %cmp203.not = icmp eq i32 %26, %29
  br i1 %cmp203.not, label %do.end198.while.cond_crit_edge, label %do.end198.cleanup_crit_edge

do.end198.cleanup_crit_edge:                      ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end198.while.cond_crit_edge:                   ; preds = %do.end198
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %j.0)
  %cmp212.not = icmp eq i32 %j.0, 32
  %.str.31..str.28 = select i1 %cmp212.not, ptr @.str.31, ptr @.str.28
  %. = select i1 %cmp212.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end198.cleanup_crit_edge
  %.str.31.sink = phi ptr [ %.str.31..str.28, %while.end ], [ @.str.25, %do.end198.cleanup_crit_edge ]
  %retval.0 = phi i32 [ %., %while.end ], [ -5, %do.end198.cleanup_crit_edge ]
  %call225 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.31.sink) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fifo_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  %copied = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #5
  %0 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %copied, align 4, !annotation !78
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @read_access, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @__kfifo_to_user(ptr noundef nonnull @test, ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %copied) #5
  call void @mutex_unlock(ptr noundef nonnull @read_access) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %copied, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.end5 ], [ -512, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fifo_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  %copied = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #5
  %0 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %copied, align 4, !annotation !78
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull @write_access, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @__kfifo_from_user(ptr noundef nonnull @test, ptr noundef %buf, i32 noundef %count, ptr noundef nonnull %copied) #5
  call void @mutex_unlock(ptr noundef nonnull @write_access) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool3.not = icmp eq i32 %call1, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %copied to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %copied, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.end5 ], [ -512, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %copied) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_from_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !60, !61, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__UNIQUE_ID_license225, !1, !"__UNIQUE_ID_license225", i1 false, i1 false}
!1 = !{!"../samples/kfifo/inttype-example.c", i32 185, i32 1}
!2 = !{ptr @__UNIQUE_ID_author226, !3, !"__UNIQUE_ID_author226", i1 false, i1 false}
!3 = !{!"../samples/kfifo/inttype-example.c", i32 186, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../samples/kfifo/inttype-example.c", i32 166, i32 18}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../samples/kfifo/inttype-example.c", i32 58, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @testfunc._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @testfunc._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../samples/kfifo/inttype-example.c", i32 65, i32 2}
!14 = !{ptr @testfunc._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @testfunc._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../samples/kfifo/inttype-example.c", i32 69, i32 2}
!18 = !{ptr @testfunc._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @testfunc._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @testfunc._entry.10, !21, !"_entry", i1 false, i1 false}
!21 = !{!"../samples/kfifo/inttype-example.c", i32 72, i32 2}
!22 = !{ptr @testfunc._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../samples/kfifo/inttype-example.c", i32 75, i32 2}
!25 = !{ptr @testfunc._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @testfunc._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../samples/kfifo/inttype-example.c", i32 82, i32 2}
!29 = !{ptr @testfunc._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @testfunc._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../samples/kfifo/inttype-example.c", i32 86, i32 3}
!33 = !{ptr @testfunc._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @testfunc._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../samples/kfifo/inttype-example.c", i32 91, i32 3}
!37 = !{ptr @testfunc._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @testfunc._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../samples/kfifo/inttype-example.c", i32 93, i32 4}
!41 = !{ptr @testfunc._entry.24, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @testfunc._entry_ptr.26, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.28, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../samples/kfifo/inttype-example.c", i32 98, i32 3}
!45 = !{ptr @testfunc._entry.27, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @testfunc._entry_ptr.29, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../samples/kfifo/inttype-example.c", i32 101, i32 2}
!49 = !{ptr @testfunc._entry.30, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @testfunc._entry_ptr.32, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @test, !52, !"test", i1 false, i1 false}
!52 = !{!"../samples/kfifo/inttype-example.c", i32 42, i32 8}
!53 = !{ptr @expected_result, !54, !"expected_result", i1 false, i1 false}
!54 = !{!"../samples/kfifo/inttype-example.c", i32 45, i32 18}
!55 = !{ptr @fifo_proc_ops, !56, !"fifo_proc_ops", i1 false, i1 false}
!56 = !{!"../samples/kfifo/inttype-example.c", i32 142, i32 30}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../samples/kfifo/inttype-example.c", i32 25, i32 8}
!59 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @read_access, !58, !"read_access", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../samples/kfifo/inttype-example.c", i32 28, i32 8}
!63 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @write_access, !62, !"write_access", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2153605390}
!75 = !{i64 2153613444}
!76 = !{i64 2153616424}
!77 = !{i64 2153619222}
!78 = !{!"auto-init"}
