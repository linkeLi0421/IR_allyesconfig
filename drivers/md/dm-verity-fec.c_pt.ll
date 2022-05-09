; ModuleID = '/llk/IR_all_yes/drivers/md/dm-verity-fec.c_pt.bc'
source_filename = "../drivers/md/dm-verity-fec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dm_verity = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i64, i64, i64, i64, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, ptr, [63 x i64], ptr, ptr, ptr }
%struct.dm_verity_io = type { ptr, ptr, i64, i32, %struct.bvec_iter, %struct.work_struct }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.dm_verity_fec_io = type { ptr, [253 x i32], [256 x ptr], i32, ptr, i32, i32 }
%struct.dm_dev = type { ptr, ptr, i32, [16 x i8] }
%struct.dm_verity_fec = type { ptr, ptr, ptr, i32, i64, i64, i64, i64, i8, i8, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, ptr }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dm_target = type { ptr, ptr, i64, i64, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i8 }

@verity_fec_decode._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.verity_fec_decode = private unnamed_addr constant [18 x i8] c"verity_fec_decode\00", align 1
@verity_fec_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.verity_fec_decode, ptr @.str.2, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014device-mapper: verity-fec: %s: FEC: recursion too deep\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/md/dm-verity-fec.c\00", [37 x i8] zeroinitializer }, align 32
@verity_fec_decode._entry_ptr = internal global ptr @verity_fec_decode._entry, section ".printk_index", align 4
@.str.3 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c" use_fec_from_device %s fec_blocks %llu fec_start %llu fec_roots %d\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"use_fec_from_device\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fec_blocks\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fec_start\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fec_roots\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"FEC feature arguments require a value\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"FEC device lookup failed\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%llu%c\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid fec_blocks\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid fec_start\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%hhu%c\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid fec_roots\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unrecognized verity FEC feature request\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot allocate FEC structure\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Block sizes must match to use FEC\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Missing fec_roots\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Missing fec_blocks\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Hash device is too small for fec_blocks\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot initialize FEC bufio client\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"FEC device is too small\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot initialize FEC data bufio client\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Data device is too small\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot allocate RS pool\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dm_verity_fec_buffers\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot create FEC buffer cache\00", [33 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot allocate FEC buffer prealloc pool\00", [55 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot allocate FEC buffer extra pool\00", [58 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot allocate FEC output pool\00", [32 x i8] zeroinitializer }, align 32
@fec_decode_rsb._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fec_decode_rsb = private unnamed_addr constant [15 x i8] c"fec_decode_rsb\00", align 1
@fec_decode_rsb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.fec_decode_rsb, ptr @.str.2, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013device-mapper: verity-fec: %s: FEC %llu: failed to correct (%d erasures)\0A\00", [52 x i8] zeroinitializer }, align 32
@fec_decode_rsb._entry_ptr = internal global ptr @fec_decode_rsb._entry, section ".printk_index", align 4
@fec_alloc_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013device-mapper: verity-fec: failed to allocate FEC buffer\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fec_alloc_bufs\00", [17 x i8] zeroinitializer }, align 32
@fec_alloc_bufs._entry_ptr = internal global ptr @fec_alloc_bufs._entry, section ".printk_index", align 4
@fec_read_bufs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fec_read_bufs = private unnamed_addr constant [14 x i8] c"fec_read_bufs\00", align 1
@fec_read_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @__func__.fec_read_bufs, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014device-mapper: verity-fec: %s: FEC %llu: read failed (%llu): %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@fec_read_bufs._entry_ptr = internal global ptr @fec_read_bufs._entry, section ".printk_index", align 4
@fec_decode_bufs._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.fec_decode_bufs = private unnamed_addr constant [16 x i8] c"fec_decode_bufs\00", align 1
@fec_decode_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @__func__.fec_decode_bufs, ptr @.str.2, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013device-mapper: verity-fec: %s: FEC %llu: failed to correct: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@fec_decode_bufs._entry_ptr = internal global ptr @fec_decode_bufs._entry, section ".printk_index", align 4
@fec_decode_bufs._rs.36 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@fec_decode_bufs._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.fec_decode_bufs, ptr @.str.2, i32 175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014device-mapper: verity-fec: %s: FEC %llu: corrected %d errors\0A\00", [32 x i8] zeroinitializer }, align 32
@fec_decode_bufs._entry_ptr.39 = internal global ptr @fec_decode_bufs._entry.37, section ".printk_index", align 4
@fec_read_parity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013device-mapper: verity-fec: %s: FEC %llu: parity read failed (block %llu): %ld\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fec_read_parity\00", [16 x i8] zeroinitializer }, align 32
@fec_read_parity._entry_ptr = internal global ptr @fec_read_parity._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 430, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 531, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 585, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 586, i32 25 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 587, i32 25 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 588, i32 25 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 602, i32 15 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 612, i32 16 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 617, i32 25 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 620, i32 16 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 629, i32 16 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 635, i32 25 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 638, i32 16 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 644, i32 15 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 660, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 706, i32 15 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 711, i32 15 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 717, i32 15 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 740, i32 15 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 754, i32 15 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 762, i32 15 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 770, i32 15 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 775, i32 15 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 783, i32 15 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 787, i32 31 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 791, i32 15 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 800, i32 15 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 806, i32 15 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 814, i32 15 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 395, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 318, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 252, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 171, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 174, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private constant [30 x i8] c"../drivers/md/dm-verity-fec.c\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 73, i32 3 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @fec_alloc_bufs._entry, ptr @fec_alloc_bufs._entry_ptr, ptr @fec_decode_bufs._entry, ptr @fec_decode_bufs._entry.37, ptr @fec_decode_bufs._entry_ptr, ptr @fec_decode_bufs._entry_ptr.39, ptr @fec_decode_rsb._entry, ptr @fec_decode_rsb._entry_ptr, ptr @fec_read_bufs._entry, ptr @fec_read_bufs._entry_ptr, ptr @fec_read_parity._entry, ptr @fec_read_parity._entry_ptr, ptr @verity_fec_decode._entry, ptr @verity_fec_decode._entry_ptr, ptr @verity_fec_decode._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @fec_decode_rsb._rs, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @fec_read_bufs._rs, ptr @.str.34, ptr @fec_decode_bufs._rs, ptr @.str.35, ptr @fec_decode_bufs._rs.36, ptr @.str.38, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_fec_decode._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @verity_fec_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_decode_rsb._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_decode_rsb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_alloc_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_read_bufs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_read_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_decode_bufs._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_decode_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_decode_bufs._rs.36 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_decode_bufs._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fec_read_parity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @verity_fec_is_enabled(ptr nocapture noundef readonly %v) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fec = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 26
  %0 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fec, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool2 = icmp ne ptr %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %4 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool2, %land.rhs ]
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @verity_fec_decode(ptr noundef %v, ptr noundef %io, i32 noundef %type, i64 noundef %block, ptr noundef writeonly %dest, ptr noundef %iter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %add.ptr.i.i.i = getelementptr %struct.dm_verity_io, ptr %io, i32 1
  %ahash_reqsize.i.i.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ahash_reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ahash_reqsize.i.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %3
  %digest_size.i.i.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %digest_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digest_size.i.i.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %5
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 %5
  %fec.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 26
  %6 = ptrtoint ptr %fec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fec.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %verity_fec_is_enabled.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

verity_fec_is_enabled.exit:                       ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %tobool2.i.not = icmp eq ptr %9, null
  br i1 %tobool2.i.not, label %verity_fec_is_enabled.exit.cleanup_crit_edge, label %if.end

verity_fec_is_enabled.exit.cleanup_crit_edge:     ; preds = %verity_fec_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %verity_fec_is_enabled.exit
  %level = getelementptr inbounds %struct.dm_verity_fec_io, ptr %add.ptr.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp = icmp ugt i32 %11, 3
  br i1 %cmp, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @___ratelimit(ptr noundef nonnull @verity_fec_decode._rs, ptr noundef nonnull @__func__.verity_fec_decode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then2.cleanup_crit_edge, label %do.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %v, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %13, i32 0, i32 3
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name) #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %11, 1
  %14 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc, ptr %level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp9 = icmp eq i32 %type, 1
  br i1 %cmp9, label %if.then10, label %if.end7.if.end11_crit_edge

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %hash_start = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 11
  %15 = ptrtoint ptr %hash_start to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %hash_start, align 8
  %sub = sub i64 %block, %16
  %data_blocks = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 12
  %17 = ptrtoint ptr %data_blocks to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %data_blocks, align 8
  %add = add i64 %sub, %18
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %block.addr.0 = phi i64 [ %add, %if.then10 ], [ %block, %if.end7.if.end11_crit_edge ]
  %data_dev_block_bits = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 14
  %19 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data_dev_block_bits, align 8
  %sh_prom = zext i8 %20 to i64
  %shl = shl i64 %block.addr.0, %sh_prom
  %21 = ptrtoint ptr %fec.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fec.i, align 8
  %rounds = getelementptr inbounds %struct.dm_verity_fec, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %rounds to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %rounds, align 8
  %shl15 = shl i64 %24, %sh_prom
  %call16 = tail call i64 @div64_u64(i64 noundef %shl, i64 noundef %shl15) #11
  %25 = ptrtoint ptr %fec.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fec.i, align 8
  %rounds18 = getelementptr inbounds %struct.dm_verity_fec, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %rounds18 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %rounds18, align 8
  %29 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data_dev_block_bits, align 8
  %sh_prom21 = zext i8 %30 to i64
  %shl22 = shl i64 %28, %sh_prom21
  %mul = mul i64 %shl22, %call16
  %sub23 = sub i64 %shl, %mul
  %call24 = tail call fastcc i32 @fec_decode_rsb(ptr noundef %v, ptr noundef %io, ptr noundef %add.ptr.i.i, i64 noundef %sub23, i64 noundef %shl, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.end11.if.end33_crit_edge

if.end11.if.end33_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then27:                                        ; preds = %if.end11
  %call28 = tail call fastcc i32 @fec_decode_rsb(ptr noundef %v, ptr noundef %io, ptr noundef %add.ptr.i.i, i64 noundef %sub23, i64 noundef %shl, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.then27.done_crit_edge, label %if.then27.if.end33_crit_edge

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then27.done_crit_edge:                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.end33:                                         ; preds = %if.then27.if.end33_crit_edge, %if.end11.if.end33_crit_edge
  %r.0 = phi i32 [ 0, %if.then27.if.end33_crit_edge ], [ %call24, %if.end11.if.end33_crit_edge ]
  %tobool34.not = icmp eq ptr %dest, null
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %output = getelementptr inbounds %struct.dm_verity_fec_io, ptr %add.ptr.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %output, align 4
  %33 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %data_dev_block_bits, align 8
  %conv37 = zext i8 %34 to i32
  %shl38 = shl nuw i32 1, %conv37
  %35 = call ptr @memcpy(ptr %dest, ptr %32, i32 %shl38)
  br label %done

if.else:                                          ; preds = %if.end33
  %tobool39.not = icmp eq ptr %iter, null
  br i1 %tobool39.not, label %if.else.done_crit_edge, label %if.then40

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %output_pos = getelementptr inbounds %struct.dm_verity_fec_io, ptr %add.ptr.i.i, i32 0, i32 5
  %36 = ptrtoint ptr %output_pos to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %output_pos, align 4
  %call41 = tail call i32 @verity_for_bv_block(ptr noundef %v, ptr noundef %io, ptr noundef nonnull %iter, ptr noundef nonnull @fec_bv_copy) #11
  br label %done

done:                                             ; preds = %if.then40, %if.else.done_crit_edge, %if.then35, %if.then27.done_crit_edge
  %r.1 = phi i32 [ %call28, %if.then27.done_crit_edge ], [ %r.0, %if.then35 ], [ %call41, %if.then40 ], [ %r.0, %if.else.done_crit_edge ]
  %37 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %level, align 4
  %dec = add i32 %38, -1
  store i32 %dec, ptr %level, align 4
  br label %cleanup

cleanup:                                          ; preds = %done, %do.end, %if.then2.cleanup_crit_edge, %verity_fec_is_enabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %done ], [ -95, %verity_fec_is_enabled.exit.cleanup_crit_edge ], [ -5, %do.end ], [ -5, %if.then2.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fec_decode_rsb(ptr noundef %v, ptr noundef %io, ptr noundef %fio, i64 noundef %rsb, i64 noundef %offset, i1 noundef zeroext %use_erasures) unnamed_addr #1 align 64 {
entry:
  %rem.i111.i = alloca i64, align 8
  %par.i.i = alloca [24 x i16], align 2
  %rem.i.i103 = alloca i64, align 8
  %buf.i104 = alloca ptr, align 4
  %is_zero.i = alloca i8, align 1
  %buf.i = alloca ptr, align 4
  %want_digest.i = alloca [64 x i8], align 1
  %neras = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %neras)
  %0 = ptrtoint ptr %neras to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %neras, align 4
  %1 = ptrtoint ptr %fio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fio, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fec.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 26
  %3 = ptrtoint ptr %fec.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fec.i, align 8
  %rs_pool.i = getelementptr inbounds %struct.dm_verity_fec, ptr %4, i32 0, i32 10
  %call.i = tail call noalias ptr @mempool_alloc(ptr noundef %rs_pool.i, i32 noundef 3072) #11
  %5 = ptrtoint ptr %fio to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %fio, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %bufs.i = getelementptr inbounds %struct.dm_verity_fec_io, ptr %fio, i32 0, i32 2
  %6 = ptrtoint ptr %bufs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bufs.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.end4.i:                                        ; preds = %if.end.i
  %fec5.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 26
  %8 = ptrtoint ptr %fec5.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fec5.i, align 8
  %prealloc_pool.i = getelementptr inbounds %struct.dm_verity_fec, ptr %9, i32 0, i32 11
  %call6.i = tail call noalias ptr @mempool_alloc(ptr noundef %prealloc_pool.i, i32 noundef 2048) #11
  %10 = ptrtoint ptr %bufs.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6.i, ptr %bufs.i, align 4
  %tobool11.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool11.not.i, label %fec_alloc_bufs.exit.thread, label %if.end4.i.for.end.i_crit_edge, !prof !106

if.end4.i.for.end.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

fec_alloc_bufs.exit.thread:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #14
  br label %cleanup

for.end.i:                                        ; preds = %if.end4.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %fec26.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 26
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.inc43.i.for.body20.i_crit_edge, %for.end.i
  %n.175.i = phi i32 [ 1, %for.end.i ], [ %inc44.i, %for.inc43.i.for.body20.i_crit_edge ]
  %arrayidx22.i = getelementptr %struct.dm_verity_fec_io, ptr %fio, i32 0, i32 2, i32 %n.175.i
  %11 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx22.i, align 4
  %tobool23.not.i = icmp eq ptr %12, null
  br i1 %tobool23.not.i, label %if.end25.i, label %for.body20.i.for.inc43.i_crit_edge

for.body20.i.for.inc43.i_crit_edge:               ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc43.i

if.end25.i:                                       ; preds = %for.body20.i
  %13 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fec26.i, align 8
  %extra_pool.i = getelementptr inbounds %struct.dm_verity_fec, ptr %14, i32 0, i32 12
  %call27.i = tail call noalias ptr @mempool_alloc(ptr noundef %extra_pool.i, i32 noundef 2048) #11
  %15 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call27.i, ptr %arrayidx22.i, align 4
  %tobool32.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool32.not.i, label %if.end25.i.for.end45.i_crit_edge, label %if.end25.i.for.inc43.i_crit_edge, !prof !106

if.end25.i.for.inc43.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc43.i

if.end25.i.for.end45.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end45.i

for.inc43.i:                                      ; preds = %if.end25.i.for.inc43.i_crit_edge, %for.body20.i.for.inc43.i_crit_edge
  %inc44.i = add nuw nsw i32 %n.175.i, 1
  %exitcond.not.i = icmp eq i32 %inc44.i, 256
  br i1 %exitcond.not.i, label %for.inc43.i.for.end45.i_crit_edge, label %for.inc43.i.for.body20.i_crit_edge

for.inc43.i.for.body20.i_crit_edge:               ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body20.i

for.inc43.i.for.end45.i_crit_edge:                ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end45.i

for.end45.i:                                      ; preds = %for.inc43.i.for.end45.i_crit_edge, %if.end25.i.for.end45.i_crit_edge
  %n.1.lcssa.i = phi i32 [ %n.175.i, %if.end25.i.for.end45.i_crit_edge ], [ 256, %for.inc43.i.for.end45.i_crit_edge ]
  %nbufs.i = getelementptr inbounds %struct.dm_verity_fec_io, ptr %fio, i32 0, i32 3
  %16 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %n.1.lcssa.i, ptr %nbufs.i, align 4
  %output.i = getelementptr inbounds %struct.dm_verity_fec_io, ptr %fio, i32 0, i32 4
  %17 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %output.i, align 4
  %tobool46.not.i = icmp eq ptr %18, null
  br i1 %tobool46.not.i, label %if.then47.i, label %for.end45.i.fec_alloc_bufs.exit_crit_edge

for.end45.i.fec_alloc_bufs.exit_crit_edge:        ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fec_alloc_bufs.exit

if.then47.i:                                      ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fec26.i, align 8
  %output_pool.i = getelementptr inbounds %struct.dm_verity_fec, ptr %20, i32 0, i32 13
  %call49.i = tail call noalias ptr @mempool_alloc(ptr noundef %output_pool.i, i32 noundef 3072) #11
  %21 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call49.i, ptr %output.i, align 4
  br label %fec_alloc_bufs.exit

fec_alloc_bufs.exit:                              ; preds = %if.then47.i, %for.end45.i.fec_alloc_bufs.exit_crit_edge
  %data_dev_block_bits = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 14
  %erasures.i = getelementptr inbounds %struct.dm_verity_fec_io, ptr %fio, i32 0, i32 1
  %neras. = select i1 %use_erasures, ptr %neras, ptr null
  %add.ptr.i.i.i.i = getelementptr %struct.dm_verity_io, ptr %io, i32 1
  %digest_size.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 19
  %data_blocks.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 12
  %hash_start.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 11
  %bufio54.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 3
  %ahash_reqsize.i.i.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %fec_alloc_bufs.exit
  %pos.0151 = phi i32 [ 0, %fec_alloc_bufs.exit ], [ %add, %if.end21.for.body_crit_edge ]
  %22 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp5.not.i = icmp eq i32 %23, 0
  br i1 %cmp5.not.i, label %for.body.fec_init_bufs.exit_crit_edge, label %for.body.for.body.i_crit_edge

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.fec_init_bufs.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %fec_init_bufs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %n.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.dm_verity_fec_io, ptr %fio, i32 0, i32 2, i32 %n.06.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %26 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fec26.i, align 8
  %rsn.i = getelementptr inbounds %struct.dm_verity_fec, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %rsn.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rsn.i, align 1
  %conv.i = zext i8 %29 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %30 = call ptr @memset(ptr %25, i32 0, i32 %shl.i)
  %inc.i = add nuw i32 %n.06.i, 1
  %31 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nbufs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.fec_init_bufs.exit_crit_edge

for.body.i.fec_init_bufs.exit_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fec_init_bufs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

fec_init_bufs.exit:                               ; preds = %for.body.i.fec_init_bufs.exit_crit_edge, %for.body.fec_init_bufs.exit_crit_edge
  %33 = call ptr @memset(ptr %erasures.i, i32 0, i32 1012)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_zero.i) #11
  %34 = ptrtoint ptr %is_zero.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %is_zero.i, align 1, !annotation !107
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #11
  %35 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf.i, align 4, !annotation !107
  %36 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io, align 8
  %ahash_reqsize.i.i.i.i = getelementptr inbounds %struct.dm_verity, ptr %37, i32 0, i32 20
  %38 = ptrtoint ptr %ahash_reqsize.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ahash_reqsize.i.i.i.i, align 4
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %39
  %digest_size.i.i.i.i = getelementptr inbounds %struct.dm_verity, ptr %37, i32 0, i32 19
  %40 = ptrtoint ptr %digest_size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %digest_size.i.i.i.i, align 8
  %add.ptr2.i.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i.i, i32 %41
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr2.i.i.i.i, i32 %41
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %want_digest.i) #11
  %42 = call ptr @memset(ptr %want_digest.i, i32 255, i32 64)
  br i1 %use_erasures, label %if.then.i89, label %fec_init_bufs.exit.if.end.i91_crit_edge

fec_init_bufs.exit.if.end.i91_crit_edge:          ; preds = %fec_init_bufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i91

if.then.i89:                                      ; preds = %fec_init_bufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %neras. to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %neras., align 4
  br label %if.end.i91

if.end.i91:                                       ; preds = %if.then.i89, %fec_init_bufs.exit.if.end.i91_crit_edge
  %44 = ptrtoint ptr %digest_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %digest_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %45)
  %cmp.i90 = icmp ugt i32 %45, 64
  br i1 %cmp.i90, label %do.end.i95, label %for.cond.preheader.i, !prof !106

for.cond.preheader.i:                             ; preds = %if.end.i91
  %46 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fec26.i, align 8
  %rsn222.i = getelementptr inbounds %struct.dm_verity_fec, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %rsn222.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rsn222.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp25224.not.i = icmp eq i8 %49, 0
  br i1 %cmp25224.not.i, label %for.cond.preheader.i.fec_read_bufs.exit.thread_crit_edge, label %for.body.lr.ph.i94

for.cond.preheader.i.fec_read_bufs.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fec_read_bufs.exit.thread

for.body.lr.ph.i94:                               ; preds = %for.cond.preheader.i
  %conv223.i = zext i8 %49 to i32
  %nbufs.i93 = getelementptr inbounds %struct.dm_verity_fec_io, ptr %add.ptr.i.i.i, i32 0, i32 3
  br label %for.body.i96

do.end.i95:                                       ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 216, i32 noundef 9, ptr noundef null) #11
  br label %fec_read_bufs.exit.thread

for.body.i96:                                     ; preds = %for.inc130.i.for.body.i96_crit_edge, %for.body.lr.ph.i94
  %conv227.i = phi i32 [ %conv223.i, %for.body.lr.ph.i94 ], [ %conv.i101, %for.inc130.i.for.body.i96_crit_edge ]
  %50 = phi i8 [ %49, %for.body.lr.ph.i94 ], [ %119, %for.inc130.i.for.body.i96_crit_edge ]
  %51 = phi ptr [ %47, %for.body.lr.ph.i94 ], [ %117, %for.inc130.i.for.body.i96_crit_edge ]
  %i.0226.i = phi i32 [ 0, %for.body.lr.ph.i94 ], [ %inc131.i, %for.inc130.i.for.body.i96_crit_edge ]
  %target_index.0225.i = phi i32 [ -1, %for.body.lr.ph.i94 ], [ %spec.select.i, %for.inc130.i.for.body.i96_crit_edge ]
  %conv29.i = zext i8 %50 to i64
  %mul.i = mul i64 %conv29.i, %rsb
  %conv30.i = zext i32 %i.0226.i to i64
  %add.i = add i64 %mul.i, %conv30.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i)
  %cmp166.i.i = icmp ult i64 %add.i, 4294967296
  br i1 %cmp166.i.i, label %if.then170.i.i, label %if.else176.i.i, !prof !108

if.then170.i.i:                                   ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #13
  %conv171.i.i = trunc i64 %add.i to i32
  %conv171.i.i.frozen = freeze i32 %conv171.i.i
  %conv227.i.frozen = freeze i32 %conv227.i
  %div174.i.i = udiv i32 %conv171.i.i.frozen, %conv227.i.frozen
  %52 = mul i32 %div174.i.i, %conv227.i.frozen
  %rem172.i.i.decomposed = sub i32 %conv171.i.i.frozen, %52
  %conv175.i.i = zext i32 %div174.i.i to i64
  br label %fec_interleave.exit.i

if.else176.i.i:                                   ; preds = %for.body.i96
  call void @__sanitizer_cov_trace_pc() #13
  %53 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv227.i, i64 %add.i) #15, !srcloc !109
  %asmresult.i272.i.i = extractvalue { i64, i64 } %53, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %53, 1
  %shr.i.i.i = lshr i64 %asmresult.i272.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %fec_interleave.exit.i

fec_interleave.exit.i:                            ; preds = %if.else176.i.i, %if.then170.i.i
  %offset.addr.0.i.i = phi i64 [ %conv175.i.i, %if.then170.i.i ], [ %asmresult1.i.i.i, %if.else176.i.i ]
  %__rem.0.i.i = phi i32 [ %rem172.i.i.decomposed, %if.then170.i.i ], [ %conv.i.i.i, %if.else176.i.i ]
  %conv182.i.i = zext i32 %__rem.0.i.i to i64
  %rounds.i.i = getelementptr inbounds %struct.dm_verity_fec, ptr %51, i32 0, i32 6
  %54 = ptrtoint ptr %rounds.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rounds.i.i, align 8
  %56 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %data_dev_block_bits, align 8
  %sh_prom185.i.i = zext i8 %57 to i64
  %shl186.i.i = shl i64 %55, %sh_prom185.i.i
  %mul187.i.i = mul i64 %shl186.i.i, %conv182.i.i
  %add188.i.i = add i64 %mul187.i.i, %offset.addr.0.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add188.i.i, i64 %offset)
  %cmp32.i = icmp eq i64 %add188.i.i, %offset
  %spec.select.i = select i1 %cmp32.i, i32 %i.0226.i, i32 %target_index.0225.i
  %shr.i = lshr i64 %add188.i.i, %sh_prom185.i.i
  %data_bufio.i = getelementptr inbounds %struct.dm_verity_fec, ptr %51, i32 0, i32 1
  %58 = ptrtoint ptr %data_blocks.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %data_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %shr.i, i64 %59)
  %cmp38.not.i = icmp ult i64 %shr.i, %59
  br i1 %cmp38.not.i, label %fec_interleave.exit.i.if.end55.i_crit_edge, label %if.then40.i

fec_interleave.exit.i.if.end55.i_crit_edge:       ; preds = %fec_interleave.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55.i

if.then40.i:                                      ; preds = %fec_interleave.exit.i
  %sub.i = sub i64 %shr.i, %59
  %hash_blocks.i = getelementptr inbounds %struct.dm_verity_fec, ptr %51, i32 0, i32 7
  %60 = ptrtoint ptr %hash_blocks.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %hash_blocks.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %61)
  %cmp43.not.i = icmp ult i64 %sub.i, %61
  br i1 %cmp43.not.i, label %if.end52.i, label %if.then40.i.for.inc130.i_crit_edge, !prof !108

if.then40.i.for.inc130.i_crit_edge:               ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc130.i

if.end52.i:                                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %hash_start.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %hash_start.i, align 8
  %add53.i = add i64 %63, %sub.i
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end52.i, %fec_interleave.exit.i.if.end55.i_crit_edge
  %bufio.0.in.i = phi ptr [ %bufio54.i, %if.end52.i ], [ %data_bufio.i, %fec_interleave.exit.i.if.end55.i_crit_edge ]
  %block.0.i = phi i64 [ %add53.i, %if.end52.i ], [ %shr.i, %fec_interleave.exit.i.if.end55.i_crit_edge ]
  %64 = ptrtoint ptr %bufio.0.in.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %bufio.0.i = load ptr, ptr %bufio.0.in.i, align 4
  %call56.i = call ptr @dm_bufio_read(ptr noundef %bufio.0.i, i64 noundef %block.0.i, ptr noundef nonnull %buf.i) #11
  %cmp.i203.i = icmp ugt ptr %call56.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203.i, label %if.then58.i, label %if.end76.i

if.then58.i:                                      ; preds = %if.end55.i
  %call59.i = call i32 @___ratelimit(ptr noundef nonnull @fec_read_bufs._rs, ptr noundef nonnull @__func__.fec_read_bufs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.then58.i.if.end68.i_crit_edge, label %do.end64.i

if.then58.i.if.end68.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68.i

do.end64.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %v, align 8
  %name.i = getelementptr inbounds %struct.dm_dev, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %call56.i to i32
  %call67.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name.i, i64 noundef %rsb, i64 noundef %block.0.i, i32 noundef %67) #14
  br label %if.end68.i

if.end68.i:                                       ; preds = %do.end64.i, %if.then58.i.if.end68.i_crit_edge
  br i1 %use_erasures, label %land.lhs.true.i, label %if.end68.i.for.inc130.i_crit_edge

if.end68.i.for.inc130.i_crit_edge:                ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc130.i

land.lhs.true.i:                                  ; preds = %if.end68.i
  %68 = ptrtoint ptr %neras. to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %neras., align 4
  %70 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fec26.i, align 8
  %roots.i = getelementptr inbounds %struct.dm_verity_fec, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %roots.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %roots.i, align 8
  %conv71.i = zext i8 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %conv71.i)
  %cmp72.not.i = icmp sgt i32 %69, %conv71.i
  br i1 %cmp72.not.i, label %land.lhs.true.i.for.inc130.i_crit_edge, label %if.then74.i

land.lhs.true.i.for.inc130.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc130.i

if.then74.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %inc.i97 = add i32 %69, 1
  %74 = ptrtoint ptr %neras. to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %inc.i97, ptr %neras., align 4
  %arrayidx.i98 = getelementptr %struct.dm_verity_fec_io, ptr %add.ptr.i.i.i, i32 0, i32 1, i32 %69
  %75 = ptrtoint ptr %arrayidx.i98 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %i.0226.i, ptr %arrayidx.i98, align 4
  br label %for.inc130.i

if.end76.i:                                       ; preds = %if.end55.i
  %76 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fec26.i, align 8
  %data_bufio78.i = getelementptr inbounds %struct.dm_verity_fec, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %data_bufio78.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data_bufio78.i, align 4
  %cmp79.i = icmp eq ptr %bufio.0.i, %79
  br i1 %cmp79.i, label %land.lhs.true81.i, label %if.end76.i.if.end106.i_crit_edge

if.end76.i.if.end106.i_crit_edge:                 ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i

land.lhs.true81.i:                                ; preds = %if.end76.i
  %call83.i = call i32 @verity_hash_for_block(ptr noundef %v, ptr noundef %io, i64 noundef %block.0.i, ptr noundef nonnull %want_digest.i, ptr noundef nonnull %is_zero.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %cmp84.i = icmp eq i32 %call83.i, 0
  br i1 %cmp84.i, label %if.then86.i, label %land.lhs.true81.i.if.end106.i_crit_edge

land.lhs.true81.i.if.end106.i_crit_edge:          ; preds = %land.lhs.true81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i

if.then86.i:                                      ; preds = %land.lhs.true81.i
  %80 = ptrtoint ptr %is_zero.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %is_zero.i, align 1, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool87.not.i = icmp eq i8 %81, 0
  br i1 %tobool87.not.i, label %if.end89.i, label %if.then86.i.done.i_crit_edge

if.then86.i.done.i_crit_edge:                     ; preds = %if.then86.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

if.end89.i:                                       ; preds = %if.then86.i
  br i1 %use_erasures, label %land.lhs.true91.i, label %if.end89.i.if.end106.i_crit_edge

if.end89.i.if.end106.i_crit_edge:                 ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i

land.lhs.true91.i:                                ; preds = %if.end89.i
  %82 = ptrtoint ptr %neras. to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %neras., align 4
  %84 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fec26.i, align 8
  %roots93.i = getelementptr inbounds %struct.dm_verity_fec, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %roots93.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %roots93.i, align 8
  %conv94.i = zext i8 %87 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %conv94.i)
  %cmp95.not.i = icmp sgt i32 %83, %conv94.i
  br i1 %cmp95.not.i, label %land.lhs.true91.i.if.end106.i_crit_edge, label %land.lhs.true97.i

land.lhs.true91.i.if.end106.i_crit_edge:          ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i

land.lhs.true97.i:                                ; preds = %land.lhs.true91.i
  %88 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %data_dev_block_bits, align 8
  %conv.i206.i = zext i8 %89 to i32
  %shl.i207.i = shl nuw i32 1, %conv.i206.i
  %90 = ptrtoint ptr %ahash_reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ahash_reqsize.i.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %91
  %call2.i.i = call i32 @verity_hash(ptr noundef %v, ptr noundef %add.ptr.i.i.i.i, ptr noundef %call56.i, i32 noundef %shl.i207.i, ptr noundef %add.ptr1.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i208.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i208.i, label %fec_is_erasure.exit.i, label %land.lhs.true97.i.if.end106.i_crit_edge, !prof !108

land.lhs.true97.i.if.end106.i_crit_edge:          ; preds = %land.lhs.true97.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i

fec_is_erasure.exit.i:                            ; preds = %land.lhs.true97.i
  %92 = ptrtoint ptr %ahash_reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ahash_reqsize.i.i.i, align 4
  %add.ptr1.i18.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %93
  %94 = ptrtoint ptr %digest_size.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %digest_size.i, align 8
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr1.i18.i.i, ptr nonnull %want_digest.i, i32 %95) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp.i209.not.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i209.not.i, label %fec_is_erasure.exit.i.if.end106.i_crit_edge, label %if.then101.i

fec_is_erasure.exit.i.if.end106.i_crit_edge:      ; preds = %fec_is_erasure.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106.i

if.then101.i:                                     ; preds = %fec_is_erasure.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %96 = ptrtoint ptr %neras. to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %neras., align 4
  %inc103.i = add i32 %97, 1
  store i32 %inc103.i, ptr %neras., align 4
  %arrayidx104.i = getelementptr %struct.dm_verity_fec_io, ptr %add.ptr.i.i.i, i32 0, i32 1, i32 %97
  %98 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %i.0226.i, ptr %arrayidx104.i, align 4
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then101.i, %fec_is_erasure.exit.i.if.end106.i_crit_edge, %land.lhs.true97.i.if.end106.i_crit_edge, %land.lhs.true91.i.if.end106.i_crit_edge, %if.end89.i.if.end106.i_crit_edge, %land.lhs.true81.i.if.end106.i_crit_edge, %if.end76.i.if.end106.i_crit_edge
  %99 = ptrtoint ptr %nbufs.i93 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %nbufs.i93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp108220.not.i = icmp eq i32 %100, 0
  br i1 %cmp108220.not.i, label %if.end106.i.done.i_crit_edge, label %if.end106.i.for.cond111.preheader.i_crit_edge

if.end106.i.for.cond111.preheader.i_crit_edge:    ; preds = %if.end106.i
  br label %for.cond111.preheader.i

if.end106.i.done.i_crit_edge:                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

for.cond111.preheader.i:                          ; preds = %for.inc127.i.for.cond111.preheader.i_crit_edge, %if.end106.i.for.cond111.preheader.i_crit_edge
  %n.0221.i = phi i32 [ %inc128.i, %for.inc127.i.for.cond111.preheader.i_crit_edge ], [ 0, %if.end106.i.for.cond111.preheader.i_crit_edge ]
  %shl.i210.i = shl i32 %n.0221.i, 4
  %add.i211.i = add i32 %shl.i210.i, %pos.0151
  %arrayidx.i.i = getelementptr %struct.dm_verity_fec_io, ptr %add.ptr.i.i.i, i32 0, i32 2, i32 %n.0221.i
  br label %for.body114.i

for.body114.i:                                    ; preds = %if.end122.i.for.body114.i_crit_edge, %for.cond111.preheader.i
  %j.0219.i = phi i32 [ 0, %for.cond111.preheader.i ], [ %inc126.i, %if.end122.i.for.body114.i_crit_edge ]
  %add116.i = add i32 %add.i211.i, %j.0219.i
  %101 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %data_dev_block_bits, align 8
  %conv118.i = zext i8 %102 to i32
  %add116.highbits.i = lshr i32 %add116.i, %conv118.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add116.highbits.i)
  %cmp119.not.i = icmp eq i32 %add116.highbits.i, 0
  br i1 %cmp119.not.i, label %if.end122.i, label %for.body114.i.done.i_crit_edge

for.body114.i.done.i_crit_edge:                   ; preds = %for.body114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

if.end122.i:                                      ; preds = %for.body114.i
  %103 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx.i.i, align 4
  %105 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %fec26.i, align 8
  %rsn.i213.i = getelementptr inbounds %struct.dm_verity_fec, ptr %106, i32 0, i32 9
  %107 = ptrtoint ptr %rsn.i213.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %rsn.i213.i, align 1
  %conv.i214.i = zext i8 %108 to i32
  %mul.i215.i = mul i32 %j.0219.i, %conv.i214.i
  %arrayidx1.i.i = getelementptr i8, ptr %104, i32 %i.0226.i
  %arrayidx124.i = getelementptr i8, ptr %call56.i, i32 %add116.i
  %109 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %arrayidx124.i, align 1
  %arrayidx125.i = getelementptr i8, ptr %arrayidx1.i.i, i32 %mul.i215.i
  %111 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx125.i, align 1
  %inc126.i = add nuw nsw i32 %j.0219.i, 1
  %exitcond.not.i99 = icmp eq i32 %inc126.i, 16
  br i1 %exitcond.not.i99, label %for.inc127.i, label %if.end122.i.for.body114.i_crit_edge

if.end122.i.for.body114.i_crit_edge:              ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body114.i

for.inc127.i:                                     ; preds = %if.end122.i
  %inc128.i = add nuw i32 %n.0221.i, 1
  %112 = ptrtoint ptr %nbufs.i93 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nbufs.i93, align 4
  %cmp108.i = icmp ult i32 %inc128.i, %113
  br i1 %cmp108.i, label %for.inc127.i.for.cond111.preheader.i_crit_edge, label %for.inc127.i.done.i_crit_edge

for.inc127.i.done.i_crit_edge:                    ; preds = %for.inc127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %done.i

for.inc127.i.for.cond111.preheader.i_crit_edge:   ; preds = %for.inc127.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond111.preheader.i

done.i:                                           ; preds = %for.inc127.i.done.i_crit_edge, %for.body114.i.done.i_crit_edge, %if.end106.i.done.i_crit_edge, %if.then86.i.done.i_crit_edge
  %114 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %buf.i, align 4
  call void @dm_bufio_release(ptr noundef %115) #11
  br label %for.inc130.i

for.inc130.i:                                     ; preds = %done.i, %if.then74.i, %land.lhs.true.i.for.inc130.i_crit_edge, %if.end68.i.for.inc130.i_crit_edge, %if.then40.i.for.inc130.i_crit_edge
  %inc131.i = add nuw nsw i32 %i.0226.i, 1
  %116 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %fec26.i, align 8
  %rsn.i100 = getelementptr inbounds %struct.dm_verity_fec, ptr %117, i32 0, i32 9
  %118 = ptrtoint ptr %rsn.i100 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %rsn.i100, align 1
  %conv.i101 = zext i8 %119 to i32
  %cmp25.i = icmp ult i32 %inc131.i, %conv.i101
  br i1 %cmp25.i, label %for.inc130.i.for.body.i96_crit_edge, label %fec_read_bufs.exit

for.inc130.i.for.body.i96_crit_edge:              ; preds = %for.inc130.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i96

fec_read_bufs.exit.thread:                        ; preds = %do.end.i95, %for.cond.preheader.i.fec_read_bufs.exit.thread_crit_edge
  %retval.0.i102.ph = phi i32 [ -22, %do.end.i95 ], [ -1, %for.cond.preheader.i.fec_read_bufs.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %want_digest.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_zero.i) #11
  br label %cleanup

fec_read_bufs.exit:                               ; preds = %for.inc130.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %want_digest.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_zero.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp7 = icmp slt i32 %spec.select.i, 0
  br i1 %cmp7, label %fec_read_bufs.exit.cleanup_crit_edge, label %if.end16, !prof !106

fec_read_bufs.exit.cleanup_crit_edge:             ; preds = %fec_read_bufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %fec_read_bufs.exit
  %120 = ptrtoint ptr %neras to i32
  call void @__asan_load4_noabort(i32 %120)
  %neras.0. = load i32, ptr %neras, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i104) #11
  %121 = ptrtoint ptr %buf.i104 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr inttoptr (i32 -1 to ptr), ptr %buf.i104, align 4, !annotation !107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i.i103) #11
  %122 = ptrtoint ptr %rem.i.i103 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 -1, ptr %rem.i.i103, align 8, !annotation !107
  %conv.i.i = sext i32 %pos.0151 to i64
  %add.i.i105 = add i64 %conv.i.i, %rsb
  %123 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %fec26.i, align 8
  %roots.i.i = getelementptr inbounds %struct.dm_verity_fec, ptr %124, i32 0, i32 8
  %125 = ptrtoint ptr %roots.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %roots.i.i, align 8
  %conv1.i.i = zext i8 %126 to i64
  %mul.i.i106 = mul i64 %add.i.i105, %conv1.i.i
  %io_size.i.i = getelementptr inbounds %struct.dm_verity_fec, ptr %124, i32 0, i32 3
  %127 = ptrtoint ptr %io_size.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %io_size.i.i, align 4
  %conv3.i.i107 = zext i32 %128 to i64
  %call.i.i = call i64 @div64_u64_rem(i64 noundef %mul.i.i106, i64 noundef %conv3.i.i107, ptr noundef nonnull %rem.i.i103) #11
  %129 = ptrtoint ptr %rem.i.i103 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %rem.i.i103, align 8
  %131 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %fec26.i, align 8
  %bufio.i.i = getelementptr inbounds %struct.dm_verity_fec, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %bufio.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %bufio.i.i, align 8
  %call6.i.i = call ptr @dm_bufio_read(ptr noundef %134, i64 noundef %call.i.i, ptr noundef nonnull %buf.i104) #11
  %cmp.i.i.i = icmp ugt ptr %call6.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i110, label %fec_read_parity.exit.i

fec_read_parity.exit.i:                           ; preds = %if.end16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i.i103) #11
  %135 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %nbufs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %cmp147.not.i = icmp eq i32 %136, 0
  br i1 %cmp147.not.i, label %fec_read_parity.exit.i.error.i_crit_edge, label %for.cond3.preheader.lr.ph.i

fec_read_parity.exit.i.error.i_crit_edge:         ; preds = %fec_read_parity.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

for.cond3.preheader.lr.ph.i:                      ; preds = %fec_read_parity.exit.i
  %conv4.i.i = trunc i64 %130 to i32
  br label %for.cond3.preheader.i

if.then.i110:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %137 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %v, align 8
  %name.i.i = getelementptr inbounds %struct.dm_dev, ptr %138, i32 0, i32 3
  %139 = ptrtoint ptr %call6.i.i to i32
  %call9.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i.i, i64 noundef %rsb, i64 noundef %call.i.i, i32 noundef %139) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i.i103) #11
  br label %fec_decode_bufs.exit

for.cond3.preheader.i:                            ; preds = %for.inc30.i.for.cond3.preheader.i_crit_edge, %for.cond3.preheader.lr.ph.i
  %block_offset.addr.0152.i = phi i32 [ %pos.0151, %for.cond3.preheader.lr.ph.i ], [ %inc.i115, %for.inc30.i.for.cond3.preheader.i_crit_edge ]
  %par.0151.i = phi ptr [ %call6.i.i, %for.cond3.preheader.lr.ph.i ], [ %par.2.i, %for.inc30.i.for.cond3.preheader.i_crit_edge ]
  %n.0150.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %inc31.i, %for.inc30.i.for.cond3.preheader.i_crit_edge ]
  %corrected.0149.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %add.i114, %for.inc30.i.for.cond3.preheader.i_crit_edge ]
  %offset.0148.i = phi i32 [ %conv4.i.i, %for.cond3.preheader.lr.ph.i ], [ %offset.2.i, %for.inc30.i.for.cond3.preheader.i_crit_edge ]
  %arrayidx.i.i111 = getelementptr %struct.dm_verity_fec_io, ptr %fio, i32 0, i32 2, i32 %n.0150.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %for.cond3.preheader.i
  %block_offset.addr.1146.i = phi i32 [ %block_offset.addr.0152.i, %for.cond3.preheader.i ], [ %inc.i115, %for.inc.i.for.body5.i_crit_edge ]
  %par.1145.i = phi ptr [ %par.0151.i, %for.cond3.preheader.i ], [ %par.2.i, %for.inc.i.for.body5.i_crit_edge ]
  %i.0144.i = phi i32 [ 0, %for.cond3.preheader.i ], [ %inc29.i, %for.inc.i.for.body5.i_crit_edge ]
  %corrected.1143.i = phi i32 [ %corrected.0149.i, %for.cond3.preheader.i ], [ %add.i114, %for.inc.i.for.body5.i_crit_edge ]
  %offset.1142.i = phi i32 [ %offset.0148.i, %for.cond3.preheader.i ], [ %offset.2.i, %for.inc.i.for.body5.i_crit_edge ]
  %140 = ptrtoint ptr %arrayidx.i.i111 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx.i.i111, align 4
  %142 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %fec26.i, align 8
  %rsn.i.i = getelementptr inbounds %struct.dm_verity_fec, ptr %143, i32 0, i32 9
  %144 = ptrtoint ptr %rsn.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %rsn.i.i, align 1
  %conv.i102.i = zext i8 %145 to i32
  %mul.i103.i = mul nuw nsw i32 %i.0144.i, %conv.i102.i
  %arrayidx1.i.i112 = getelementptr i8, ptr %141, i32 %mul.i103.i
  %arrayidx.i113 = getelementptr i8, ptr %par.1145.i, i32 %offset.1142.i
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %par.i.i) #11
  %146 = call ptr @memset(ptr %par.i.i, i32 255, i32 48)
  %roots.i104.i = getelementptr inbounds %struct.dm_verity_fec, ptr %143, i32 0, i32 8
  %147 = ptrtoint ptr %roots.i104.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %roots.i104.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp14.not.i.i = icmp eq i8 %148, 0
  br i1 %cmp14.not.i.i, label %for.body5.i.fec_decode_rs8.exit.i_crit_edge, label %for.body5.i.for.body.i.i_crit_edge

for.body5.i.for.body.i.i_crit_edge:               ; preds = %for.body5.i
  br label %for.body.i.i

for.body5.i.fec_decode_rs8.exit.i_crit_edge:      ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fec_decode_rs8.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body5.i.for.body.i.i_crit_edge
  %i.015.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body5.i.for.body.i.i_crit_edge ]
  %arrayidx.i105.i = getelementptr i8, ptr %arrayidx.i113, i32 %i.015.i.i
  %149 = ptrtoint ptr %arrayidx.i105.i to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx.i105.i, align 1
  %conv3.i106.i = zext i8 %150 to i16
  %arrayidx4.i.i = getelementptr [24 x i16], ptr %par.i.i, i32 0, i32 %i.015.i.i
  %151 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv3.i106.i, ptr %arrayidx4.i.i, align 2
  %inc.i.i = add nuw nsw i32 %i.015.i.i, 1
  %152 = ptrtoint ptr %roots.i104.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %roots.i104.i, align 8
  %conv.i107.i = zext i8 %153 to i32
  %cmp.i108.i = icmp ult i32 %inc.i.i, %conv.i107.i
  br i1 %cmp.i108.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.fec_decode_rs8.exit.i_crit_edge

for.body.i.i.fec_decode_rs8.exit.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fec_decode_rs8.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

fec_decode_rs8.exit.i:                            ; preds = %for.body.i.i.fec_decode_rs8.exit.i_crit_edge, %for.body5.i.fec_decode_rs8.exit.i_crit_edge
  %154 = ptrtoint ptr %fio to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %fio, align 4
  %156 = ptrtoint ptr %rsn.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %rsn.i.i, align 1
  %conv6.i.i = zext i8 %157 to i32
  %call.i110.i = call i32 @decode_rs8(ptr noundef %155, ptr noundef %arrayidx1.i.i112, ptr noundef nonnull %par.i.i, i32 noundef %conv6.i.i, ptr noundef null, i32 noundef %neras.0., ptr noundef %erasures.i, i16 noundef zeroext 0, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %par.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i)
  %cmp8.i = icmp slt i32 %call.i110.i, 0
  br i1 %cmp8.i, label %fec_decode_rs8.exit.i.error.i_crit_edge, label %if.end10.i

fec_decode_rs8.exit.i.error.i_crit_edge:          ; preds = %fec_decode_rs8.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

if.end10.i:                                       ; preds = %fec_decode_rs8.exit.i
  %add.i114 = add i32 %call.i110.i, %corrected.1143.i
  %arrayidx11.i = getelementptr i8, ptr %arrayidx1.i.i112, i32 %spec.select.i
  %158 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx11.i, align 1
  %160 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %output.i, align 4
  %arrayidx12.i = getelementptr i8, ptr %161, i32 %block_offset.addr.1146.i
  %162 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %159, ptr %arrayidx12.i, align 1
  %inc.i115 = add i32 %block_offset.addr.1146.i, 1
  %163 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %data_dev_block_bits, align 8
  %conv.i116 = zext i8 %164 to i32
  %inc.highbits.i = lshr i32 %inc.i115, %conv.i116
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.highbits.i)
  %cmp13.not.i = icmp eq i32 %inc.highbits.i, 0
  br i1 %cmp13.not.i, label %if.end16.i, label %if.end10.i.error.i_crit_edge

if.end10.i.error.i_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

if.end16.i:                                       ; preds = %if.end10.i
  %165 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %fec26.i, align 8
  %roots.i117 = getelementptr inbounds %struct.dm_verity_fec, ptr %166, i32 0, i32 8
  %167 = ptrtoint ptr %roots.i117 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %roots.i117, align 8
  %conv17.i = zext i8 %168 to i32
  %add18.i = add i32 %offset.1142.i, %conv17.i
  %io_size.i = getelementptr inbounds %struct.dm_verity_fec, ptr %166, i32 0, i32 3
  %169 = ptrtoint ptr %io_size.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %io_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %170)
  %cmp20.not.i = icmp ult i32 %add18.i, %170
  br i1 %cmp20.not.i, label %if.end16.i.for.inc.i_crit_edge, label %if.then22.i

if.end16.i.for.inc.i_crit_edge:                   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.then22.i:                                      ; preds = %if.end16.i
  %171 = ptrtoint ptr %buf.i104 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %buf.i104, align 4
  call void @dm_bufio_release(ptr noundef %172) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rem.i111.i) #11
  %173 = ptrtoint ptr %rem.i111.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 -1, ptr %rem.i111.i, align 8, !annotation !107
  %conv.i112.i = sext i32 %inc.i115 to i64
  %add.i113.i = add i64 %conv.i112.i, %rsb
  %174 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %fec26.i, align 8
  %roots.i115.i = getelementptr inbounds %struct.dm_verity_fec, ptr %175, i32 0, i32 8
  %176 = ptrtoint ptr %roots.i115.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %roots.i115.i, align 8
  %conv1.i116.i = zext i8 %177 to i64
  %mul.i117.i = mul i64 %add.i113.i, %conv1.i116.i
  %io_size.i118.i = getelementptr inbounds %struct.dm_verity_fec, ptr %175, i32 0, i32 3
  %178 = ptrtoint ptr %io_size.i118.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %io_size.i118.i, align 4
  %conv3.i119.i = zext i32 %179 to i64
  %call.i120.i = call i64 @div64_u64_rem(i64 noundef %mul.i117.i, i64 noundef %conv3.i119.i, ptr noundef nonnull %rem.i111.i) #11
  %180 = ptrtoint ptr %rem.i111.i to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %rem.i111.i, align 8
  %182 = ptrtoint ptr %fec26.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %fec26.i, align 8
  %bufio.i122.i = getelementptr inbounds %struct.dm_verity_fec, ptr %183, i32 0, i32 2
  %184 = ptrtoint ptr %bufio.i122.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %bufio.i122.i, align 8
  %call6.i123.i = call ptr @dm_bufio_read(ptr noundef %185, i64 noundef %call.i120.i, ptr noundef nonnull %buf.i104) #11
  %cmp.i.i124.i = icmp ugt ptr %call6.i123.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i124.i, label %if.then25.i, label %fec_read_parity.exit128.i

fec_read_parity.exit128.i:                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv4.i121.i = trunc i64 %181 to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i111.i) #11
  br label %for.inc.i

if.then25.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  %186 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %v, align 8
  %name.i125.i = getelementptr inbounds %struct.dm_dev, ptr %187, i32 0, i32 3
  %188 = ptrtoint ptr %call6.i123.i to i32
  %call9.i126.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i125.i, i64 noundef %rsb, i64 noundef %call.i120.i, i32 noundef %188) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rem.i111.i) #11
  br label %fec_decode_bufs.exit

for.inc.i:                                        ; preds = %fec_read_parity.exit128.i, %if.end16.i.for.inc.i_crit_edge
  %offset.2.i = phi i32 [ %add18.i, %if.end16.i.for.inc.i_crit_edge ], [ %conv4.i121.i, %fec_read_parity.exit128.i ]
  %par.2.i = phi ptr [ %par.1145.i, %if.end16.i.for.inc.i_crit_edge ], [ %call6.i123.i, %fec_read_parity.exit128.i ]
  %inc29.i = add nuw nsw i32 %i.0144.i, 1
  %exitcond.not.i118 = icmp eq i32 %inc29.i, 16
  br i1 %exitcond.not.i118, label %for.inc30.i, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5.i

for.inc30.i:                                      ; preds = %for.inc.i
  %inc31.i = add nuw i32 %n.0150.i, 1
  %189 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %nbufs.i, align 4
  %cmp.i119 = icmp ult i32 %inc31.i, %190
  br i1 %cmp.i119, label %for.inc30.i.for.cond3.preheader.i_crit_edge, label %for.inc30.i.error.i_crit_edge

for.inc30.i.error.i_crit_edge:                    ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %error.i

for.inc30.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond3.preheader.i

error.i:                                          ; preds = %for.inc30.i.error.i_crit_edge, %if.end10.i.error.i_crit_edge, %fec_decode_rs8.exit.i.error.i_crit_edge, %fec_read_parity.exit.i.error.i_crit_edge
  %r.0.i = phi i32 [ 0, %fec_read_parity.exit.i.error.i_crit_edge ], [ %call.i110.i, %fec_decode_rs8.exit.i.error.i_crit_edge ], [ %add.i114, %if.end10.i.error.i_crit_edge ], [ %add.i114, %for.inc30.i.error.i_crit_edge ]
  %191 = ptrtoint ptr %buf.i104 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %buf.i104, align 4
  call void @dm_bufio_release(ptr noundef %192) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %r.0.i)
  %cmp33.i = icmp sgt i32 %r.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neras.0.)
  %tobool.not.i120 = icmp eq i32 %neras.0., 0
  %or.cond.i = or i1 %tobool.not.i120, %cmp33.i
  br i1 %or.cond.i, label %if.else.i, label %if.then35.i

if.then35.i:                                      ; preds = %error.i
  %call36.i = call i32 @___ratelimit(ptr noundef nonnull @fec_decode_bufs._rs, ptr noundef nonnull @__func__.fec_decode_bufs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then35.i.fec_decode_bufs.exit.thread_crit_edge, label %do.end.i122

if.then35.i.fec_decode_bufs.exit.thread_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fec_decode_bufs.exit.thread

do.end.i122:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #13
  %193 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %v, align 8
  %name.i121 = getelementptr inbounds %struct.dm_dev, ptr %194, i32 0, i32 3
  %call39.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name.i121, i64 noundef %rsb, i32 noundef %r.0.i) #14
  br label %fec_decode_bufs.exit.thread

if.else.i:                                        ; preds = %error.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %r.0.i)
  %cmp41.i = icmp sgt i32 %r.0.i, 0
  br i1 %cmp41.i, label %if.then43.i, label %if.else.i.fec_decode_bufs.exit_crit_edge

if.else.i.fec_decode_bufs.exit_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fec_decode_bufs.exit

if.then43.i:                                      ; preds = %if.else.i
  %call44.i = call i32 @___ratelimit(ptr noundef nonnull @fec_decode_bufs._rs.36, ptr noundef nonnull @__func__.fec_decode_bufs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.then43.i.fec_decode_bufs.exit.thread139_crit_edge, label %do.end49.i

if.then43.i.fec_decode_bufs.exit.thread139_crit_edge: ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fec_decode_bufs.exit.thread139

do.end49.i:                                       ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #13
  %195 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %v, align 8
  %name52.i = getelementptr inbounds %struct.dm_dev, ptr %196, i32 0, i32 3
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name52.i, i64 noundef %rsb, i32 noundef %r.0.i) #14
  br label %fec_decode_bufs.exit.thread139

fec_decode_bufs.exit.thread:                      ; preds = %do.end.i122, %if.then35.i.fec_decode_bufs.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i104) #11
  br label %cleanup

fec_decode_bufs.exit.thread139:                   ; preds = %do.end49.i, %if.then43.i.fec_decode_bufs.exit.thread139_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i104) #11
  br label %if.end21

fec_decode_bufs.exit:                             ; preds = %if.else.i.fec_decode_bufs.exit_crit_edge, %if.then25.i, %if.then.i110
  %retval.0.i123 = phi i32 [ %139, %if.then.i110 ], [ %188, %if.then25.i ], [ %r.0.i, %if.else.i.fec_decode_bufs.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i104) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i123)
  %cmp18 = icmp slt i32 %retval.0.i123, 0
  br i1 %cmp18, label %fec_decode_bufs.exit.cleanup_crit_edge, label %fec_decode_bufs.exit.if.end21_crit_edge

fec_decode_bufs.exit.if.end21_crit_edge:          ; preds = %fec_decode_bufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

fec_decode_bufs.exit.cleanup_crit_edge:           ; preds = %fec_decode_bufs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %fec_decode_bufs.exit.if.end21_crit_edge, %fec_decode_bufs.exit.thread139
  %197 = ptrtoint ptr %nbufs.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %nbufs.i, align 4
  %shl22 = shl i32 %198, 4
  %add = add i32 %shl22, %pos.0151
  %199 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %data_dev_block_bits, align 8
  %conv = zext i8 %200 to i32
  %pos.0.highbits = lshr i32 %add, %conv
  %cmp2 = icmp eq i32 %pos.0.highbits, 0
  br i1 %cmp2, label %if.end21.for.body_crit_edge, label %for.end

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end21
  %conv.le = zext i8 %200 to i32
  %201 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %output.i, align 4
  %shl26 = shl nuw i32 1, %conv.le
  %203 = ptrtoint ptr %ahash_reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %ahash_reqsize.i.i.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %204
  %call28 = call i32 @verity_hash(ptr noundef %v, ptr noundef %add.ptr.i.i.i.i, ptr noundef %202, i32 noundef %shl26, ptr noundef %add.ptr1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %for.end.cleanup_crit_edge, label %if.end38, !prof !106

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end38:                                         ; preds = %for.end
  %205 = ptrtoint ptr %ahash_reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %ahash_reqsize.i.i.i, align 4
  %add.ptr1.i127 = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %206
  %207 = ptrtoint ptr %digest_size.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %digest_size.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i127, i32 %208
  %bcmp = call i32 @bcmp(ptr %add.ptr1.i127, ptr %add.ptr2.i, i32 %208) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool42.not = icmp eq i32 %bcmp, 0
  br i1 %tobool42.not, label %if.end38.cleanup_crit_edge, label %if.then43

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then43:                                        ; preds = %if.end38
  %call44 = call i32 @___ratelimit(ptr noundef nonnull @fec_decode_rsb._rs, ptr noundef nonnull @__func__.fec_decode_rsb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then43.cleanup_crit_edge, label %do.end

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  %209 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %v, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %210, i32 0, i32 3
  %211 = ptrtoint ptr %neras to i32
  call void @__asan_load4_noabort(i32 %211)
  %neras.0.159 = load i32, ptr %neras, align 4
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, i64 noundef %rsb, i32 noundef %neras.0.159) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then43.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %for.end.cleanup_crit_edge, %fec_decode_bufs.exit.cleanup_crit_edge, %fec_decode_bufs.exit.thread, %fec_read_bufs.exit.cleanup_crit_edge, %fec_read_bufs.exit.thread, %fec_alloc_bufs.exit.thread
  %retval.0 = phi i32 [ %call28, %for.end.cleanup_crit_edge ], [ -84, %do.end ], [ -84, %if.then43.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ -12, %fec_alloc_bufs.exit.thread ], [ %retval.0.i102.ph, %fec_read_bufs.exit.thread ], [ %r.0.i, %fec_decode_bufs.exit.thread ], [ %retval.0.i123, %fec_decode_bufs.exit.cleanup_crit_edge ], [ %spec.select.i, %fec_read_bufs.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %neras)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verity_for_bv_block(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fec_bv_copy(ptr nocapture noundef readnone %v, ptr nocapture noundef %io, ptr nocapture noundef writeonly %data, i32 noundef %len) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %add.ptr.i.i.i = getelementptr %struct.dm_verity_io, ptr %io, i32 1
  %ahash_reqsize.i.i.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ahash_reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ahash_reqsize.i.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %3
  %digest_size.i.i.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %digest_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digest_size.i.i.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %5
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 %5
  %output = getelementptr inbounds %struct.dm_verity_fec_io, ptr %add.ptr.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %output, align 4
  %output_pos = getelementptr inbounds %struct.dm_verity_fec_io, ptr %add.ptr.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %output_pos to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %output_pos, align 4
  %arrayidx = getelementptr i8, ptr %7, i32 %9
  %10 = call ptr @memcpy(ptr %data, ptr %arrayidx, i32 %len)
  %11 = load i32, ptr %output_pos, align 4
  %add = add i32 %11, %len
  store i32 %add, ptr %output_pos, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @verity_fec_finish_io(ptr nocapture noundef readonly %io) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %fec = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fec, align 8
  %add.ptr.i.i.i = getelementptr %struct.dm_verity_io, ptr %io, i32 1
  %ahash_reqsize.i.i.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %ahash_reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ahash_reqsize.i.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %5
  %digest_size.i.i.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %digest_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %digest_size.i.i.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %7
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 %7
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %verity_fec_is_enabled.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

verity_fec_is_enabled.exit:                       ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %tobool2.i.not = icmp eq ptr %9, null
  br i1 %tobool2.i.not, label %verity_fec_is_enabled.exit.cleanup_crit_edge, label %if.end

verity_fec_is_enabled.exit.cleanup_crit_edge:     ; preds = %verity_fec_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %verity_fec_is_enabled.exit
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i, align 4
  %rs_pool = getelementptr inbounds %struct.dm_verity_fec, ptr %3, i32 0, i32 10
  tail call void @mempool_free(ptr noundef %11, ptr noundef %rs_pool) #11
  %bufs = getelementptr inbounds %struct.dm_verity_fec_io, ptr %add.ptr.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %bufs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bufs, align 4
  %prealloc_pool = getelementptr inbounds %struct.dm_verity_fec, ptr %3, i32 0, i32 11
  tail call void @mempool_free(ptr noundef %13, ptr noundef %prealloc_pool) #11
  %extra_pool = getelementptr inbounds %struct.dm_verity_fec, ptr %3, i32 0, i32 12
  br label %for.body5

for.body5:                                        ; preds = %for.body5.for.body5_crit_edge, %if.end
  %n.126 = phi i32 [ 1, %if.end ], [ %inc9, %for.body5.for.body5_crit_edge ]
  %arrayidx7 = getelementptr %struct.dm_verity_fec_io, ptr %add.ptr.i.i, i32 0, i32 2, i32 %n.126
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx7, align 4
  tail call void @mempool_free(ptr noundef %15, ptr noundef %extra_pool) #11
  %inc9 = add nuw nsw i32 %n.126, 1
  %exitcond.not = icmp eq i32 %inc9, 256
  br i1 %exitcond.not, label %for.end10, label %for.body5.for.body5_crit_edge

for.body5.for.body5_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body5

for.end10:                                        ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #13
  %output = getelementptr inbounds %struct.dm_verity_fec_io, ptr %add.ptr.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %output, align 4
  %output_pool = getelementptr inbounds %struct.dm_verity_fec, ptr %3, i32 0, i32 13
  tail call void @mempool_free(ptr noundef %17, ptr noundef %output_pool) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end10, %verity_fec_is_enabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @verity_fec_init_io(ptr nocapture noundef %io) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 8
  %add.ptr.i.i.i = getelementptr %struct.dm_verity_io, ptr %io, i32 1
  %ahash_reqsize.i.i.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ahash_reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ahash_reqsize.i.i.i, align 4
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %3
  %digest_size.i.i.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %digest_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %digest_size.i.i.i, align 8
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %5
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 %5
  %fec.i = getelementptr inbounds %struct.dm_verity, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %fec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fec.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %verity_fec_is_enabled.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

verity_fec_is_enabled.exit:                       ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %tobool2.i.not = icmp eq ptr %9, null
  br i1 %tobool2.i.not, label %verity_fec_is_enabled.exit.cleanup_crit_edge, label %if.end

verity_fec_is_enabled.exit.cleanup_crit_edge:     ; preds = %verity_fec_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %verity_fec_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %add.ptr.i.i, align 4
  %bufs = getelementptr inbounds %struct.dm_verity_fec_io, ptr %add.ptr.i.i, i32 0, i32 2
  %level = getelementptr inbounds %struct.dm_verity_fec_io, ptr %add.ptr.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %level, align 4
  %12 = call ptr @memset(ptr %bufs, i32 0, i32 1032)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %verity_fec_is_enabled.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @verity_fec_status_table(ptr nocapture noundef readonly %v, i32 noundef %sz, ptr noundef %result, i32 noundef %maxlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fec.i = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 26
  %0 = ptrtoint ptr %fec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fec.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %verity_fec_is_enabled.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

verity_fec_is_enabled.exit:                       ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool2.i.not = icmp eq ptr %3, null
  br i1 %tobool2.i.not, label %verity_fec_is_enabled.exit.return_crit_edge, label %if.end

verity_fec_is_enabled.exit.return_crit_edge:      ; preds = %verity_fec_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %verity_fec_is_enabled.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %maxlen, i32 %sz)
  %cmp.not = icmp ugt i32 %maxlen, %sz
  br i1 %cmp.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %result, i32 %sz
  %sub = sub i32 %maxlen, %sz
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.dm_dev, ptr %5, i32 0, i32 3
  %blocks = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %blocks, align 8
  %start = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %start, align 8
  %roots = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %roots to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %roots, align 8
  %conv = zext i8 %11 to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.3, ptr noundef %name, i64 noundef %7, i64 noundef %9, i32 noundef %conv) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %call4, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %add = add i32 %cond, %sz
  br label %return

return:                                           ; preds = %cond.end, %verity_fec_is_enabled.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %add, %cond.end ], [ %sz, %verity_fec_is_enabled.exit.return_crit_edge ], [ %sz, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @verity_fec_dtr(ptr nocapture noundef %v) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fec = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 26
  %0 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fec, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %verity_fec_is_enabled.exit

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

verity_fec_is_enabled.exit:                       ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool2.i.not = icmp eq ptr %3, null
  br i1 %tobool2.i.not, label %verity_fec_is_enabled.exit.out_crit_edge, label %if.end

verity_fec_is_enabled.exit.out_crit_edge:         ; preds = %verity_fec_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %verity_fec_is_enabled.exit
  %rs_pool = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 10
  tail call void @mempool_exit(ptr noundef %rs_pool) #11
  %prealloc_pool = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 11
  tail call void @mempool_exit(ptr noundef %prealloc_pool) #11
  %extra_pool = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 12
  tail call void @mempool_exit(ptr noundef %extra_pool) #11
  %output_pool = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 13
  tail call void @mempool_exit(ptr noundef %output_pool) #11
  %cache = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #11
  %data_bufio = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %data_bufio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data_bufio, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dm_bufio_client_destroy(ptr noundef nonnull %7) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %bufio = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %bufio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bufio, align 8
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end3.if.end7_crit_edge, label %if.then5

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dm_bufio_client_destroy(ptr noundef nonnull %9) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %if.end7.out_crit_edge, label %if.then9

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %ti = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 2
  %12 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ti, align 8
  tail call void @dm_put_device(ptr noundef %13, ptr noundef nonnull %11) #11
  br label %out

out:                                              ; preds = %if.then9, %if.end7.out_crit_edge, %verity_fec_is_enabled.exit.out_crit_edge, %entry.out_crit_edge
  tail call void @kfree(ptr noundef %1) #11
  %14 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %fec, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_client_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_put_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @verity_is_fec_opt_arg(ptr nocapture noundef readonly %arg_name) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcasecmp(ptr noundef %arg_name, ptr noundef nonnull @.str.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.lor.end_crit_edge, label %lor.lhs.false

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @strcasecmp(ptr noundef %arg_name, ptr noundef nonnull @.str.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.lor.end_crit_edge, label %lor.lhs.false3

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %call4 = tail call i32 @strcasecmp(ptr noundef %arg_name, ptr noundef nonnull @.str.6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false3.lor.end_crit_edge, label %lor.rhs

lor.lhs.false3.lor.end_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 @strcasecmp(ptr noundef %arg_name, ptr noundef nonnull @.str.7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false3.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge, %entry.lor.end_crit_edge
  %0 = phi i1 [ true, %lor.lhs.false3.lor.end_crit_edge ], [ true, %lor.lhs.false.lor.end_crit_edge ], [ true, %entry.lor.end_crit_edge ], [ %tobool7.not, %lor.rhs ]
  ret i1 %0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @verity_fec_parse_opt_args(ptr noundef %as, ptr nocapture noundef readonly %v, ptr nocapture noundef %argc, ptr nocapture noundef readonly %arg_name) local_unnamed_addr #1 align 64 {
entry:
  %num_ll = alloca i64, align 8
  %num_c = alloca i8, align 1
  %dummy = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ti1 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 2
  %0 = ptrtoint ptr %ti1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ti1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %num_ll) #11
  %2 = ptrtoint ptr %num_ll to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %num_ll, align 8, !annotation !107
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num_c) #11
  %3 = ptrtoint ptr %num_c to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %num_c, align 1, !annotation !107
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dummy) #11
  %4 = ptrtoint ptr %dummy to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %dummy, align 1, !annotation !107
  %5 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %argc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %error = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.8, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @dm_shift_arg(ptr noundef %as) #11
  %8 = ptrtoint ptr %argc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %argc, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %argc, align 4
  %call2 = tail call i32 @strcasecmp(ptr noundef %arg_name, ptr noundef nonnull @.str.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %fec = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 26
  %10 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fec, align 8
  %call5 = tail call i32 @dm_get_device(ptr noundef %1, ptr noundef %call, i32 noundef 1, ptr noundef %11) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %if.then7

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %error8 = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %error8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.9, ptr %error8, align 8
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call10 = tail call i32 @strcasecmp(ptr noundef %arg_name, ptr noundef nonnull @.str.5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %if.else24

if.then12:                                        ; preds = %if.else
  %call13 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef nonnull %num_ll, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.then12.if.then20_crit_edge

if.then12.if.then20_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

lor.lhs.false:                                    ; preds = %if.then12
  %13 = ptrtoint ptr %num_ll to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %num_ll, align 8
  %data_dev_block_bits = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 14
  %15 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %data_dev_block_bits, align 8
  %conv = zext i8 %16 to i32
  %sub = add nsw i32 %conv, -9
  %sh_prom = zext i32 %sub to i64
  %17 = lshr i64 -1, %sh_prom
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %17)
  %.not = icmp ugt i64 %14, %17
  br i1 %.not, label %lor.lhs.false.if.then20_crit_edge, label %if.end22

lor.lhs.false.if.then20_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then20:                                        ; preds = %lor.lhs.false.if.then20_crit_edge, %if.then12.if.then20_crit_edge
  %error21 = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %error21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.11, ptr %error21, align 8
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %fec23 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 26
  %19 = ptrtoint ptr %fec23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fec23, align 8
  %blocks = getelementptr inbounds %struct.dm_verity_fec, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %blocks to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %14, ptr %blocks, align 8
  br label %cleanup

if.else24:                                        ; preds = %if.else
  %call25 = tail call i32 @strcasecmp(ptr noundef %arg_name, ptr noundef nonnull @.str.6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then27, label %if.else48

if.then27:                                        ; preds = %if.else24
  %call28 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef nonnull %num_ll, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 1
  br i1 %cmp29.not, label %lor.lhs.false31, label %if.then27.if.then44_crit_edge

if.then27.if.then44_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

lor.lhs.false31:                                  ; preds = %if.then27
  %22 = ptrtoint ptr %num_ll to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %num_ll, align 8
  %data_dev_block_bits32 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 14
  %24 = ptrtoint ptr %data_dev_block_bits32 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data_dev_block_bits32, align 8
  %conv33 = zext i8 %25 to i32
  %sub34 = add nsw i32 %conv33, -9
  %sh_prom35 = zext i32 %sub34 to i64
  %26 = lshr i64 -1, %sh_prom35
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %26)
  %.not104 = icmp ugt i64 %23, %26
  br i1 %.not104, label %lor.lhs.false31.if.then44_crit_edge, label %if.end46

lor.lhs.false31.if.then44_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then44

if.then44:                                        ; preds = %lor.lhs.false31.if.then44_crit_edge, %if.then27.if.then44_crit_edge
  %error45 = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 12
  %27 = ptrtoint ptr %error45 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.12, ptr %error45, align 8
  br label %cleanup

if.end46:                                         ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #13
  %fec47 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 26
  %28 = ptrtoint ptr %fec47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fec47, align 8
  %start = getelementptr inbounds %struct.dm_verity_fec, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %23, ptr %start, align 8
  br label %cleanup

if.else48:                                        ; preds = %if.else24
  %call49 = tail call i32 @strcasecmp(ptr noundef %arg_name, ptr noundef nonnull @.str.7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then51, label %if.else69

if.then51:                                        ; preds = %if.else48
  %call52 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %call, ptr noundef nonnull @.str.13, ptr noundef nonnull %num_c, ptr noundef nonnull %dummy)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call52)
  %cmp53.not = icmp eq i32 %call52, 1
  br i1 %cmp53.not, label %lor.lhs.false55, label %if.then51.if.then65_crit_edge

if.then51.if.then65_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65

lor.lhs.false55:                                  ; preds = %if.then51
  %31 = ptrtoint ptr %num_c to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_c, align 1
  %33 = add i8 %32, -25
  call void @__sanitizer_cov_trace_const_cmp1(i8 -23, i8 %33)
  %34 = icmp ult i8 %33, -23
  br i1 %34, label %lor.lhs.false55.if.then65_crit_edge, label %if.end67

lor.lhs.false55.if.then65_crit_edge:              ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then65

if.then65:                                        ; preds = %lor.lhs.false55.if.then65_crit_edge, %if.then51.if.then65_crit_edge
  %error66 = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 12
  %35 = ptrtoint ptr %error66 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.14, ptr %error66, align 8
  br label %cleanup

if.end67:                                         ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #13
  %fec68 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 26
  %36 = ptrtoint ptr %fec68 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fec68, align 8
  %roots = getelementptr inbounds %struct.dm_verity_fec, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %roots to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %32, ptr %roots, align 8
  br label %cleanup

if.else69:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #13
  %error70 = getelementptr inbounds %struct.dm_target, ptr %1, i32 0, i32 12
  %39 = ptrtoint ptr %error70 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.15, ptr %error70, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else69, %if.end67, %if.then65, %if.end46, %if.then44, %if.end22, %if.then20, %if.then7, %if.then4.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.else69 ], [ -22, %if.then65 ], [ -22, %if.then44 ], [ -22, %if.then20 ], [ %call5, %if.then7 ], [ -22, %if.then ], [ 0, %if.end22 ], [ 0, %if.end67 ], [ 0, %if.end46 ], [ 0, %if.then4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dummy) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num_c) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %num_ll) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_shift_arg(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dm_get_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @verity_fec_ctr_alloc(ptr nocapture noundef %v) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 536) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ti = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 2
  %1 = ptrtoint ptr %ti to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ti, align 8
  %error = getelementptr inbounds %struct.dm_target, ptr %2, i32 0, i32 12
  %3 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.16, ptr %error, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fec = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 26
  %4 = ptrtoint ptr %fec to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %fec, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @verity_fec_ctr(ptr noundef %v) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fec = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 26
  %0 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fec, align 8
  %ti1 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 2
  %2 = ptrtoint ptr %ti1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ti1, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %verity_fec_is_enabled.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

verity_fec_is_enabled.exit:                       ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %tobool2.i.not = icmp eq ptr %5, null
  br i1 %tobool2.i.not, label %verity_fec_is_enabled.exit.if.then_crit_edge, label %if.end

verity_fec_is_enabled.exit.if.then_crit_edge:     ; preds = %verity_fec_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %verity_fec_is_enabled.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @verity_fec_dtr(ptr noundef %v)
  br label %cleanup

if.end:                                           ; preds = %verity_fec_is_enabled.exit
  %hash_blocks2 = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 13
  %6 = ptrtoint ptr %hash_blocks2 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %hash_blocks2, align 8
  %hash_start = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 11
  %8 = ptrtoint ptr %hash_start to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %hash_start, align 8
  %sub = sub i64 %7, %9
  %data_dev_block_bits = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 14
  %10 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data_dev_block_bits, align 8
  %hash_dev_block_bits = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 15
  %12 = ptrtoint ptr %hash_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hash_dev_block_bits, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp.not = icmp eq i8 %11, %13
  br i1 %cmp.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %error = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.17, ptr %error, align 8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %roots = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %roots to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %roots, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %error8 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %17 = ptrtoint ptr %error8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.18, ptr %error8, align 8
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %18 = xor i8 %16, -1
  %rsn = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %rsn to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %rsn, align 1
  %blocks = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %blocks, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool14.not = icmp eq i64 %21, 0
  br i1 %tobool14.not, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %error16 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %22 = ptrtoint ptr %error16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.19, ptr %error16, align 8
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %rounds = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 6
  %conv20 = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %21)
  %cmp199 = icmp ult i64 %21, 4294967296
  br i1 %cmp199, label %if.then203, label %if.else212, !prof !108

if.then203:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %conv205 = trunc i64 %21 to i32
  %conv205.frozen = freeze i32 %conv205
  %conv20.frozen = freeze i32 %conv20
  %div209 = udiv i32 %conv205.frozen, %conv20.frozen
  %23 = mul i32 %div209, %conv20.frozen
  %rem206.decomposed = sub i32 %conv205.frozen, %23
  %conv210 = zext i32 %div209 to i64
  br label %if.end217

if.else212:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %24 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv20, i64 %21) #15, !srcloc !109
  %asmresult.i = extractvalue { i64, i64 } %24, 0
  %asmresult1.i = extractvalue { i64, i64 } %24, 1
  %shr.i = lshr i64 %asmresult.i, 32
  %conv.i = trunc i64 %shr.i to i32
  br label %if.end217

if.end217:                                        ; preds = %if.else212, %if.then203
  %storemerge = phi i64 [ %asmresult1.i, %if.else212 ], [ %conv210, %if.then203 ]
  %__rem.0 = phi i32 [ %conv.i, %if.else212 ], [ %rem206.decomposed, %if.then203 ]
  %25 = ptrtoint ptr %rounds to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %storemerge, ptr %rounds, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0)
  %tobool219.not = icmp eq i32 %__rem.0, 0
  br i1 %tobool219.not, label %if.end217.if.end222_crit_edge, label %if.then220

if.end217.if.end222_crit_edge:                    ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end222

if.then220:                                       ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %rounds to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %rounds, align 8
  %inc = add i64 %27, 1
  store i64 %inc, ptr %rounds, align 8
  br label %if.end222

if.end222:                                        ; preds = %if.then220, %if.end217.if.end222_crit_edge
  %28 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %blocks, align 8
  %data_blocks = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 12
  %30 = ptrtoint ptr %data_blocks to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %data_blocks, align 8
  %add224 = add i64 %sub, %31
  call void @__sanitizer_cov_trace_cmp8(i64 %29, i64 %add224)
  %cmp225 = icmp ult i64 %29, %add224
  br i1 %cmp225, label %if.end222.if.then229_crit_edge, label %lor.lhs.false

if.end222.if.then229_crit_edge:                   ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then229

lor.lhs.false:                                    ; preds = %if.end222
  %32 = ptrtoint ptr %rounds to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %rounds, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %33)
  %tobool228.not = icmp eq i64 %33, 0
  br i1 %tobool228.not, label %lor.lhs.false.if.then229_crit_edge, label %if.end231

lor.lhs.false.if.then229_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then229

if.then229:                                       ; preds = %lor.lhs.false.if.then229_crit_edge, %if.end222.if.then229_crit_edge
  %error230 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %34 = ptrtoint ptr %error230 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.11, ptr %error230, align 8
  br label %cleanup

if.end231:                                        ; preds = %lor.lhs.false
  %sub234 = sub i64 %29, %31
  %hash_blocks235 = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %hash_blocks235 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %sub234, ptr %hash_blocks235, align 8
  %bufio = getelementptr inbounds %struct.dm_verity, ptr %v, i32 0, i32 3
  %36 = ptrtoint ptr %bufio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bufio, align 4
  %call236 = tail call i64 @dm_bufio_get_device_size(ptr noundef %37) #11
  %38 = ptrtoint ptr %hash_blocks235 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %hash_blocks235, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call236, i64 %39)
  %cmp238 = icmp ult i64 %call236, %39
  br i1 %cmp238, label %if.then240, label %if.end242

if.then240:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #13
  %error241 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %40 = ptrtoint ptr %error241 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.20, ptr %error241, align 8
  br label %cleanup

if.end242:                                        ; preds = %if.end231
  %41 = ptrtoint ptr %roots to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %roots, align 8
  %conv244 = zext i8 %42 to i32
  %shl245 = shl nuw nsw i32 %conv244, 9
  %43 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data_dev_block_bits, align 8
  %conv247 = zext i8 %44 to i32
  %shl248 = shl nuw i32 1, %conv247
  %sub249 = add nuw i32 %shl248, 131071
  %and250 = and i32 %sub249, %shl245
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %if.else256, label %if.end242.if.end262_crit_edge

if.end242.if.end262_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end262

if.else256:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fec, align 8
  %roots258 = getelementptr inbounds %struct.dm_verity_fec, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %roots258 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %roots258, align 8
  %conv259 = zext i8 %48 to i32
  %shl260 = shl nuw nsw i32 %conv259, 9
  br label %if.end262

if.end262:                                        ; preds = %if.else256, %if.end242.if.end262_crit_edge
  %shl248.sink = phi i32 [ %shl260, %if.else256 ], [ %shl248, %if.end242.if.end262_crit_edge ]
  %49 = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shl248.sink, ptr %49, align 4
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call264 = tail call ptr @dm_bufio_client_create(ptr noundef %54, i32 noundef %shl248.sink, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %bufio265 = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %bufio265 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call264, ptr %bufio265, align 8
  %cmp.i = icmp ugt ptr %call264, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then268, label %if.end272

if.then268:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #13
  %error269 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %56 = ptrtoint ptr %error269 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.21, ptr %error269, align 8
  %57 = ptrtoint ptr %bufio265 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bufio265, align 8
  %59 = ptrtoint ptr %58 to i32
  br label %cleanup

if.end272:                                        ; preds = %if.end262
  %start = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %start, align 8
  %62 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %data_dev_block_bits, align 8
  %conv275 = zext i8 %63 to i32
  %sub276 = add nsw i32 %conv275, -9
  %sh_prom277 = zext i32 %sub276 to i64
  %shl278 = shl i64 %61, %sh_prom277
  tail call void @dm_bufio_set_sector_offset(ptr noundef %call264, i64 noundef %shl278) #11
  %64 = ptrtoint ptr %rounds to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %rounds, align 8
  %66 = ptrtoint ptr %roots to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %roots, align 8
  %conv281 = zext i8 %67 to i64
  %mul282 = mul i64 %65, %conv281
  %68 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fec, align 8
  %roots284 = getelementptr inbounds %struct.dm_verity_fec, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %roots284 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %roots284, align 8
  %conv285 = zext i8 %71 to i32
  %shl286 = shl nuw nsw i32 %conv285, 9
  %72 = zext i32 %shl286 to i64
  %call288 = tail call i64 @div64_u64(i64 noundef %mul282, i64 noundef %72) #11
  %73 = ptrtoint ptr %bufio265 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %bufio265, align 8
  %call290 = tail call i64 @dm_bufio_get_device_size(ptr noundef %74) #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call290, i64 %call288)
  %cmp291 = icmp ult i64 %call290, %call288
  br i1 %cmp291, label %if.then293, label %if.end295

if.then293:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #13
  %error294 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %75 = ptrtoint ptr %error294 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.22, ptr %error294, align 8
  br label %cleanup

if.end295:                                        ; preds = %if.end272
  %76 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %v, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %80 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %data_dev_block_bits, align 8
  %conv298 = zext i8 %81 to i32
  %shl299 = shl nuw i32 1, %conv298
  %call300 = tail call ptr @dm_bufio_client_create(ptr noundef %79, i32 noundef %shl299, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null) #11
  %data_bufio = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 1
  %82 = ptrtoint ptr %data_bufio to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call300, ptr %data_bufio, align 4
  %cmp.i533 = icmp ugt ptr %call300, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i533, label %if.then303, label %if.end307

if.then303:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #13
  %error304 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %83 = ptrtoint ptr %error304 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.23, ptr %error304, align 8
  %84 = ptrtoint ptr %data_bufio to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data_bufio, align 4
  %86 = ptrtoint ptr %85 to i32
  br label %cleanup

if.end307:                                        ; preds = %if.end295
  %call309 = tail call i64 @dm_bufio_get_device_size(ptr noundef %call300) #11
  %87 = ptrtoint ptr %data_blocks to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %data_blocks, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call309, i64 %88)
  %cmp311 = icmp ult i64 %call309, %88
  br i1 %cmp311, label %if.then313, label %if.end315

if.then313:                                       ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #13
  %error314 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %89 = ptrtoint ptr %error314 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @.str.24, ptr %error314, align 8
  br label %cleanup

if.end315:                                        ; preds = %if.end307
  %rs_pool = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %90 = load volatile i32, ptr @__num_online_cpus, align 4
  %call317 = tail call i32 @mempool_init(ptr noundef %rs_pool, i32 noundef %90, ptr noundef nonnull @fec_rs_alloc, ptr noundef nonnull @fec_rs_free, ptr noundef %v) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %if.end321, label %if.then319

if.then319:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #13
  %error320 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %91 = ptrtoint ptr %error320 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @.str.25, ptr %error320, align 8
  br label %cleanup

if.end321:                                        ; preds = %if.end315
  %92 = ptrtoint ptr %rsn to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %rsn, align 1
  %conv323 = zext i8 %93 to i32
  %shl324 = shl nuw nsw i32 %conv323, 4
  %call325 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.26, i32 noundef %shl324, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %cache = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 14
  %94 = ptrtoint ptr %cache to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call325, ptr %cache, align 4
  %tobool327.not = icmp eq ptr %call325, null
  br i1 %tobool327.not, label %if.then328, label %if.end330

if.then328:                                       ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #13
  %error329 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %95 = ptrtoint ptr %error329 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @.str.27, ptr %error329, align 8
  br label %cleanup

if.end330:                                        ; preds = %if.end321
  %prealloc_pool = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 11
  %call.i.i.i534 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %96 = load volatile i32, ptr @__num_online_cpus, align 4
  %97 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cache, align 4
  %call.i = tail call i32 @mempool_init(ptr noundef %prealloc_pool, i32 noundef %96, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %98) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool335.not = icmp eq i32 %call.i, 0
  br i1 %tobool335.not, label %if.end338, label %if.then336

if.then336:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #13
  %error337 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %99 = ptrtoint ptr %error337 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.28, ptr %error337, align 8
  br label %cleanup

if.end338:                                        ; preds = %if.end330
  %extra_pool = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 12
  %100 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cache, align 4
  %call.i535 = tail call i32 @mempool_init(ptr noundef %extra_pool, i32 noundef 0, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef %101) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i535)
  %tobool341.not = icmp eq i32 %call.i535, 0
  br i1 %tobool341.not, label %if.end344, label %if.then342

if.then342:                                       ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #13
  %error343 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %102 = ptrtoint ptr %error343 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @.str.29, ptr %error343, align 8
  br label %cleanup

if.end344:                                        ; preds = %if.end338
  %output_pool = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 13
  %call.i.i.i536 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %103 = load volatile i32, ptr @__num_online_cpus, align 4
  %104 = ptrtoint ptr %data_dev_block_bits to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %data_dev_block_bits, align 8
  %conv347 = zext i8 %105 to i32
  %shl348 = shl nuw i32 1, %conv347
  %106 = inttoptr i32 %shl348 to ptr
  %call.i537 = tail call i32 @mempool_init(ptr noundef %output_pool, i32 noundef %103, ptr noundef nonnull @mempool_kmalloc, ptr noundef nonnull @mempool_kfree, ptr noundef nonnull %106) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i537)
  %tobool350.not = icmp eq i32 %call.i537, 0
  br i1 %tobool350.not, label %if.end353, label %if.then351

if.then351:                                       ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #13
  %error352 = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 12
  %107 = ptrtoint ptr %error352 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.30, ptr %error352, align 8
  br label %cleanup

if.end353:                                        ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #13
  %per_io_data_size = getelementptr inbounds %struct.dm_target, ptr %3, i32 0, i32 10
  %108 = ptrtoint ptr %per_io_data_size to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %per_io_data_size, align 8
  %add354 = add i32 %109, 2056
  store i32 %add354, ptr %per_io_data_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end353, %if.then351, %if.then342, %if.then336, %if.then328, %if.then319, %if.then313, %if.then303, %if.then293, %if.then268, %if.then240, %if.then229, %if.then15, %if.then7, %if.then5, %if.then
  %retval.0 = phi i32 [ -22, %if.then5 ], [ -22, %if.then229 ], [ -7, %if.then240 ], [ %59, %if.then268 ], [ -7, %if.then293 ], [ %86, %if.then303 ], [ -7, %if.then313 ], [ %call317, %if.then319 ], [ %call.i, %if.then336 ], [ %call.i535, %if.then342 ], [ %call.i537, %if.then351 ], [ 0, %if.end353 ], [ -12, %if.then328 ], [ -22, %if.then15 ], [ -22, %if.then7 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dm_bufio_get_device_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_client_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_set_sector_offset(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mempool_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fec_rs_alloc(i32 noundef %gfp_mask, ptr nocapture noundef readonly %pool_data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fec = getelementptr inbounds %struct.dm_verity, ptr %pool_data, i32 0, i32 26
  %0 = ptrtoint ptr %fec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fec, align 8
  %roots = getelementptr inbounds %struct.dm_verity_fec, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %roots to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %roots, align 8
  %conv = zext i8 %3 to i32
  %call = tail call ptr @init_rs_gfp(i32 noundef 8, i32 noundef 285, i32 noundef 0, i32 noundef 1, i32 noundef %conv, i32 noundef %gfp_mask) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fec_rs_free(ptr noundef %element, ptr nocapture noundef readnone %pool_data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %element, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @free_rs(ptr noundef nonnull %element) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verity_hash(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dm_bufio_read(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verity_hash_for_block(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dm_bufio_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64_rem(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @decode_rs8(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_rs_gfp(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_rs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_kmalloc(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_kfree(ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind readnone }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !81, !83, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-verity-fec.c", i32 430, i32 3}
!2 = !{ptr @verity_fec_decode._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.verity_fec_decode, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @verity_fec_decode._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @verity_fec_decode._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/md/dm-verity-fec.c", i32 531, i32 2}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/md/dm-verity-fec.c", i32 585, i32 32}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/md/dm-verity-fec.c", i32 586, i32 25}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/md/dm-verity-fec.c", i32 587, i32 25}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/md/dm-verity-fec.c", i32 588, i32 25}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/md/dm-verity-fec.c", i32 602, i32 15}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/md/dm-verity-fec.c", i32 612, i32 16}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/md/dm-verity-fec.c", i32 617, i32 25}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-verity-fec.c", i32 620, i32 16}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/md/dm-verity-fec.c", i32 629, i32 16}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-verity-fec.c", i32 635, i32 25}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/md/dm-verity-fec.c", i32 638, i32 16}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-verity-fec.c", i32 644, i32 15}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/md/dm-verity-fec.c", i32 660, i32 18}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-verity-fec.c", i32 706, i32 15}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/md/dm-verity-fec.c", i32 711, i32 15}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/md/dm-verity-fec.c", i32 717, i32 15}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/md/dm-verity-fec.c", i32 740, i32 15}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/md/dm-verity-fec.c", i32 754, i32 15}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/md/dm-verity-fec.c", i32 762, i32 15}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-verity-fec.c", i32 770, i32 15}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/md/dm-verity-fec.c", i32 775, i32 15}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/md/dm-verity-fec.c", i32 783, i32 15}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/md/dm-verity-fec.c", i32 787, i32 31}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/md/dm-verity-fec.c", i32 791, i32 15}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/md/dm-verity-fec.c", i32 800, i32 15}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/md/dm-verity-fec.c", i32 806, i32 15}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/md/dm-verity-fec.c", i32 814, i32 15}
!64 = !{ptr @fec_decode_rsb._rs, !65, !"_rs", i1 false, i1 false}
!65 = !{!"../drivers/md/dm-verity-fec.c", i32 395, i32 3}
!66 = !{ptr @__func__.fec_decode_rsb, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @fec_decode_rsb._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @fec_decode_rsb._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/md/dm-verity-fec.c", i32 318, i32 4}
!72 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @fec_alloc_bufs._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @fec_alloc_bufs._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @fec_read_bufs._rs, !76, !"_rs", i1 false, i1 false}
!76 = !{!"../drivers/md/dm-verity-fec.c", i32 252, i32 4}
!77 = !{ptr @__func__.fec_read_bufs, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @fec_read_bufs._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @fec_read_bufs._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @fec_decode_bufs._rs, !82, !"_rs", i1 false, i1 false}
!82 = !{!"../drivers/md/dm-verity-fec.c", i32 171, i32 3}
!83 = !{ptr @__func__.fec_decode_bufs, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @fec_decode_bufs._entry, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @fec_decode_bufs._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @fec_decode_bufs._rs.36, !88, !"_rs", i1 false, i1 false}
!88 = !{!"../drivers/md/dm-verity-fec.c", i32 174, i32 3}
!89 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @fec_decode_bufs._entry.37, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @fec_decode_bufs._entry_ptr.39, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/md/dm-verity-fec.c", i32 73, i32 3}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @fec_read_parity._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @fec_read_parity._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{!"auto-init"}
!108 = !{!"branch_weights", i32 2000, i32 1}
!109 = !{i64 2148329843, i64 2148330123, i64 2148330457, i64 2148330791}
!110 = !{i8 0, i8 2}
