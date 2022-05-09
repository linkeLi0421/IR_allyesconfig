; ModuleID = '/llk/IR_all_yes/samples/kfifo/bytestream-example.c_pt.bc'
source_filename = "../samples/kfifo/bytestream-example.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { %union.anon, [32 x i8] }
%union.anon = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@__UNIQUE_ID_license225 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [45 x i8] c"author=Stefani Seibold <stefani@seibold.net>\00", section ".modinfo", align 1
@test = internal global { %struct.anon, [44 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bytestream-fifo\00", [16 x i8] zeroinitializer }, align 32
@fifo_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr null, ptr @fifo_read, ptr null, ptr @fifo_write, ptr @noop_llseek, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@testfunc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016byte stream fifo test start\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"testfunc\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"samples/kfifo/bytestream-example.c\00", [61 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr = internal global ptr @testfunc._entry, section ".printk_index", align 4
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hello\00", [26 x i8] zeroinitializer }, align 32
@testfunc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016fifo len: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.7 = internal global ptr @testfunc._entry.5, section ".printk_index", align 4
@testfunc._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016buf: %.*s\0A\00", [19 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.10 = internal global ptr @testfunc._entry.8, section ".printk_index", align 4
@testfunc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\016ret: %d\0A\00", [21 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.13 = internal global ptr @testfunc._entry.11, section ".printk_index", align 4
@testfunc._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.15 = internal global ptr @testfunc._entry.14, section ".printk_index", align 4
@testfunc._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016skip 1st element\0A\00", [44 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.18 = internal global ptr @testfunc._entry.16, section ".printk_index", align 4
@testfunc._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016queue len: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.21 = internal global ptr @testfunc._entry.19, section ".printk_index", align 4
@testfunc._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%d\0A\00", [26 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.24 = internal global ptr @testfunc._entry.22, section ".printk_index", align 4
@testfunc._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\016item = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.27 = internal global ptr @testfunc._entry.25, section ".printk_index", align 4
@expected_result = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\03\04\05\06\07\08\09\00\01\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*", [32 x i8] zeroinitializer }, align 32
@testfunc._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014value mismatch: test failed\0A\00", [33 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.30 = internal global ptr @testfunc._entry.28, section ".printk_index", align 4
@testfunc._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014size mismatch: test failed\0A\00", [34 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.33 = internal global ptr @testfunc._entry.31, section ".printk_index", align 4
@testfunc._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016test passed\0A\00", [17 x i8] zeroinitializer }, align 32
@testfunc._entry_ptr.36 = internal global ptr @testfunc._entry.34, section ".printk_index", align 4
@read_access = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @read_access, i64 52), ptr getelementptr (i8, ptr @read_access, i64 52) }, ptr @read_access, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.38, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read_access.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_access\00", [20 x i8] zeroinitializer }, align 32
@write_access = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.39, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @write_access, i64 52), ptr getelementptr (i8, ptr @write_access, i64 52) }, ptr @write_access, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.40, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"write_access.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_access\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 42, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 175, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"fifo_proc_ops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 149, i32 30 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 58, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 61, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 68, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 72, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 76, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 79, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 82, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 89, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 93, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 98, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"expected_result\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 45, i32 28 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 100, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 105, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 108, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"read_access\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 25, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant [13 x i8] c"write_access\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [38 x i8] c"../samples/kfifo/bytestream-example.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 28, i32 8 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_license225, ptr @testfunc._entry, ptr @testfunc._entry.11, ptr @testfunc._entry.14, ptr @testfunc._entry.16, ptr @testfunc._entry.19, ptr @testfunc._entry.22, ptr @testfunc._entry.25, ptr @testfunc._entry.28, ptr @testfunc._entry.31, ptr @testfunc._entry.34, ptr @testfunc._entry.5, ptr @testfunc._entry.8, ptr @testfunc._entry_ptr, ptr @testfunc._entry_ptr.10, ptr @testfunc._entry_ptr.13, ptr @testfunc._entry_ptr.15, ptr @testfunc._entry_ptr.18, ptr @testfunc._entry_ptr.21, ptr @testfunc._entry_ptr.24, ptr @testfunc._entry_ptr.27, ptr @testfunc._entry_ptr.30, ptr @testfunc._entry_ptr.33, ptr @testfunc._entry_ptr.36, ptr @testfunc._entry_ptr.7, ptr @test, ptr @.str, ptr @fifo_proc_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @expected_result, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @read_access, ptr @.str.37, ptr @.str.38, ptr @write_access, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fifo_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @expected_result to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @testfunc._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_access to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_access to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @test, align 4
  store i32 0, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  store i32 31, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 2), align 4
  store i32 1, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 3), align 4
  store ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 1), ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 4), align 4
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @testfunc() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #5
  %0 = call ptr @memset(ptr %buf, i32 255, i32 6)
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  %call2 = tail call i32 @__kfifo_in(ptr noundef nonnull @test, ptr noundef nonnull @.str.4, i32 noundef 5) #5
  br label %if.else

if.else:                                          ; preds = %if.end25.if.else_crit_edge, %entry
  %i.0308 = phi i8 [ 0, %entry ], [ %inc27, %if.end25.if.else_crit_edge ]
  %1 = load i32, ptr @test, align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %sub = sub i32 %1, %2
  %3 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %3)
  %cmp10.not = icmp ugt i32 %sub, %3
  br i1 %cmp10.not, label %if.else.if.end25_crit_edge, label %if.then14

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %3, %1
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 1), i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %i.0308, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !80
  %5 = load i32, ptr @test, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr @test, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then14, %if.else.if.end25_crit_edge
  %inc27 = add nuw nsw i8 %i.0308, 1
  %cmp.not = icmp eq i8 %inc27, 10
  br i1 %cmp.not, label %do.end30, label %if.end25.if.else_crit_edge

if.end25.if.else_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

do.end30:                                         ; preds = %if.end25
  %6 = load i32, ptr @test, align 4
  %7 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %sub36 = sub i32 %6, %7
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %sub36) #9
  %call45 = call i32 @__kfifo_out(ptr noundef nonnull @test, ptr noundef nonnull %buf, i32 noundef 5) #5
  %conv52 = and i32 %call45, 255
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv52, ptr noundef nonnull %buf) #9
  %call62 = call i32 @__kfifo_out(ptr noundef nonnull @test, ptr noundef nonnull %buf, i32 noundef 2) #5
  %call68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call62) #9
  %call76 = call i32 @__kfifo_in(ptr noundef nonnull @test, ptr noundef nonnull %buf, i32 noundef %call62) #5
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call76) #9
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  %8 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %inc91 = add i32 %8, 1
  store i32 %inc91, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %9 = load i32, ptr @test, align 4
  %sub108310 = sub i32 %9, %inc91
  %10 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub108310, i32 %10)
  %cmp110.not311 = icmp ugt i32 %sub108310, %10
  br i1 %cmp110.not311, label %do.end30.do.end141_crit_edge, label %do.end30.if.then116_crit_edge

do.end30.if.then116_crit_edge:                    ; preds = %do.end30
  br label %if.then116

do.end30.do.end141_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end141

if.then116:                                       ; preds = %if.then116.if.then116_crit_edge, %do.end30.if.then116_crit_edge
  %11 = phi i32 [ %16, %if.then116.if.then116_crit_edge ], [ %10, %do.end30.if.then116_crit_edge ]
  %12 = phi i32 [ %inc130, %if.then116.if.then116_crit_edge ], [ %9, %do.end30.if.then116_crit_edge ]
  %i.1312 = phi i8 [ %inc137, %if.then116.if.then116_crit_edge ], [ 20, %do.end30.if.then116_crit_edge ]
  %and121 = and i32 %11, %12
  %arrayidx122 = getelementptr i8, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 1), i32 %and121
  %13 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %i.1312, ptr %arrayidx122, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !81
  %14 = load i32, ptr @test, align 4
  %inc130 = add i32 %14, 1
  store i32 %inc130, ptr @test, align 4
  %inc137 = add i8 %i.1312, 1
  %15 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %sub108 = sub i32 %inc130, %15
  %16 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 2), align 4
  %cmp110.not = icmp ugt i32 %sub108, %16
  br i1 %cmp110.not, label %if.then116.do.end141_crit_edge, label %if.then116.if.then116_crit_edge

if.then116.if.then116_crit_edge:                  ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then116

if.then116.do.end141_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end141

do.end141:                                        ; preds = %if.then116.do.end141_crit_edge, %do.end30.do.end141_crit_edge
  %sub108.lcssa = phi i32 [ %sub108310, %do.end30.do.end141_crit_edge ], [ %sub108, %if.then116.do.end141_crit_edge ]
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %sub108.lcssa) #9
  %17 = load i32, ptr @test, align 4
  %18 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %18)
  %cmp158.not = icmp eq i32 %17, %18
  br i1 %cmp158.not, label %do.end141.while.cond.preheader_crit_edge, label %do.end184

do.end141.while.cond.preheader_crit_edge:         ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.preheader

do.end184:                                        ; preds = %do.end141
  call void @__sanitizer_cov_trace_pc() #7
  %19 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 2), align 4
  %and169 = and i32 %19, %18
  %arrayidx170 = getelementptr i8, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 1), i32 %and169
  %20 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx170, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !82
  %conv186 = zext i8 %21 to i32
  %call187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv186) #9
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end184, %do.end141.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %do.end225.while.cond_crit_edge, %while.cond.preheader
  %j.0 = phi i8 [ %inc230, %do.end225.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %22 = load i32, ptr @test, align 4
  %23 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %23)
  %cmp198.not = icmp eq i32 %22, %23
  br i1 %cmp198.not, label %while.end, label %do.end225

do.end225:                                        ; preds = %while.cond
  %24 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 2), align 4
  %and209 = and i32 %24, %23
  %arrayidx210 = getelementptr i8, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 1), i32 %and209
  %25 = ptrtoint ptr %arrayidx210 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx210, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !83
  %27 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %inc218 = add i32 %27, 1
  store i32 %inc218, ptr getelementptr inbounds (%struct.anon, ptr @test, i32 0, i32 0, i32 0, i32 1), align 4
  %conv227 = zext i8 %26 to i32
  %call228 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv227) #9
  %inc230 = add i8 %j.0, 1
  %idxprom = zext i8 %j.0 to i32
  %arrayidx231 = getelementptr [32 x i8], ptr @expected_result, i32 0, i32 %idxprom
  %28 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx231, align 1
  %cmp233.not = icmp eq i8 %26, %29
  br i1 %cmp233.not, label %do.end225.while.cond_crit_edge, label %do.end225.cleanup_crit_edge

do.end225.cleanup_crit_edge:                      ; preds = %do.end225
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end225.while.cond_crit_edge:                   ; preds = %do.end225
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %j.0)
  %cmp243.not = icmp eq i8 %j.0, 32
  %.str.35..str.32 = select i1 %cmp243.not, ptr @.str.35, ptr @.str.32
  %. = select i1 %cmp243.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end225.cleanup_crit_edge
  %.str.35.sink = phi ptr [ %.str.35..str.32, %while.end ], [ @.str.29, %do.end225.cleanup_crit_edge ]
  %retval.0 = phi i32 [ %., %while.end ], [ -5, %do.end225.cleanup_crit_edge ]
  %call256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.35.sink) #9
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_in(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fifo_read(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  %copied = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %copied) #5
  %0 = ptrtoint ptr %copied to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %copied, align 4, !annotation !84
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
  store i32 -1, ptr %copied, align 4, !annotation !84
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
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_to_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_from_user(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !65, !66, !67, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__UNIQUE_ID_license225, !1, !"__UNIQUE_ID_license225", i1 false, i1 false}
!1 = !{!"../samples/kfifo/bytestream-example.c", i32 194, i32 1}
!2 = !{ptr @__UNIQUE_ID_author226, !3, !"__UNIQUE_ID_author226", i1 false, i1 false}
!3 = !{!"../samples/kfifo/bytestream-example.c", i32 195, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../samples/kfifo/bytestream-example.c", i32 175, i32 18}
!6 = !{ptr @test, !7, !"test", i1 false, i1 false}
!7 = !{!"../samples/kfifo/bytestream-example.c", i32 42, i32 8}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../samples/kfifo/bytestream-example.c", i32 58, i32 2}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @testfunc._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @testfunc._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../samples/kfifo/bytestream-example.c", i32 61, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../samples/kfifo/bytestream-example.c", i32 68, i32 2}
!18 = !{ptr @testfunc._entry.5, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @testfunc._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../samples/kfifo/bytestream-example.c", i32 72, i32 2}
!22 = !{ptr @testfunc._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @testfunc._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../samples/kfifo/bytestream-example.c", i32 76, i32 2}
!26 = !{ptr @testfunc._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @testfunc._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @testfunc._entry.14, !29, !"_entry", i1 false, i1 false}
!29 = !{!"../samples/kfifo/bytestream-example.c", i32 79, i32 2}
!30 = !{ptr @testfunc._entry_ptr.15, !29, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../samples/kfifo/bytestream-example.c", i32 82, i32 2}
!33 = !{ptr @testfunc._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @testfunc._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../samples/kfifo/bytestream-example.c", i32 89, i32 2}
!37 = !{ptr @testfunc._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @testfunc._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../samples/kfifo/bytestream-example.c", i32 93, i32 3}
!41 = !{ptr @testfunc._entry.22, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @testfunc._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../samples/kfifo/bytestream-example.c", i32 98, i32 3}
!45 = !{ptr @testfunc._entry.25, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @testfunc._entry_ptr.27, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../samples/kfifo/bytestream-example.c", i32 100, i32 4}
!49 = !{ptr @testfunc._entry.28, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @testfunc._entry_ptr.30, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../samples/kfifo/bytestream-example.c", i32 105, i32 3}
!53 = !{ptr @testfunc._entry.31, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @testfunc._entry_ptr.33, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../samples/kfifo/bytestream-example.c", i32 108, i32 2}
!57 = !{ptr @testfunc._entry.34, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @testfunc._entry_ptr.36, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @expected_result, !60, !"expected_result", i1 false, i1 false}
!60 = !{!"../samples/kfifo/bytestream-example.c", i32 45, i32 28}
!61 = !{ptr @fifo_proc_ops, !62, !"fifo_proc_ops", i1 false, i1 false}
!62 = !{!"../samples/kfifo/bytestream-example.c", i32 149, i32 30}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../samples/kfifo/bytestream-example.c", i32 25, i32 8}
!65 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @read_access, !64, !"read_access", i1 false, i1 false}
!67 = !{ptr @.str.39, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../samples/kfifo/bytestream-example.c", i32 28, i32 8}
!69 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @write_access, !68, !"write_access", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{i64 2153604118}
!81 = !{i64 2153613908}
!82 = !{i64 2153616891}
!83 = !{i64 2153619692}
!84 = !{!"auto-init"}
