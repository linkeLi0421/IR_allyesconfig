; ModuleID = '/llk/IR_all_yes/block/t10-pi.c_pt.bc'
source_filename = "../block/t10-pi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+t10_pi_type1_crc\22, \22a\22\09"
module asm "\09.weak\09__crc_t10_pi_type1_crc\09\09\09\09"
module asm "\09.long\09__crc_t10_pi_type1_crc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_t10_pi_type1_crc:\09\09\09\09\09"
module asm "\09.asciz \09\22t10_pi_type1_crc\22\09\09\09\09\09"
module asm "__kstrtabns_t10_pi_type1_crc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+t10_pi_type1_ip\22, \22a\22\09"
module asm "\09.weak\09__crc_t10_pi_type1_ip\09\09\09\09"
module asm "\09.long\09__crc_t10_pi_type1_ip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_t10_pi_type1_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22t10_pi_type1_ip\22\09\09\09\09\09"
module asm "__kstrtabns_t10_pi_type1_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+t10_pi_type3_crc\22, \22a\22\09"
module asm "\09.weak\09__crc_t10_pi_type3_crc\09\09\09\09"
module asm "\09.long\09__crc_t10_pi_type3_crc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_t10_pi_type3_crc:\09\09\09\09\09"
module asm "\09.asciz \09\22t10_pi_type3_crc\22\09\09\09\09\09"
module asm "__kstrtabns_t10_pi_type3_crc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+t10_pi_type3_ip\22, \22a\22\09"
module asm "\09.weak\09__crc_t10_pi_type3_ip\09\09\09\09"
module asm "\09.long\09__crc_t10_pi_type3_ip\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_t10_pi_type3_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22t10_pi_type3_ip\22\09\09\09\09\09"
module asm "__kstrtabns_t10_pi_type3_ip:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.blk_integrity_profile = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.blk_integrity_iter = type { ptr, ptr, i64, i32, i16, ptr }
%struct.t10_pi_tuple = type { i16, i16, i32 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.76, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.77, %union.anon.78, %union.anon.79, %union.anon.82, ptr, ptr }
%union.anon.76 = type { %struct.list_head }
%union.anon.77 = type { %struct.hlist_node }
%union.anon.78 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.79 = type { %struct.anon.81 }
%struct.anon.81 = type { i32, %struct.list_head, ptr }
%union.anon.82 = type { i64, [8 x i8] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.38, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.38 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bio_integrity_payload = type { ptr, %struct.bvec_iter, i16, i16, i16, %struct.bvec_iter, %struct.work_struct, ptr, [0 x %struct.bio_vec] }
%struct.page = type { i32, %union.anon.3, %union.anon.68, %struct.atomic_t, i32 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"T10-DIF-TYPE1-CRC\00", [46 x i8] zeroinitializer }, align 32
@t10_pi_type1_crc = dso_local constant { %struct.blk_integrity_profile, [44 x i8] } { %struct.blk_integrity_profile { ptr @t10_pi_type1_generate_crc, ptr @t10_pi_type1_verify_crc, ptr @t10_pi_type1_prepare, ptr @t10_pi_type1_complete, ptr @.str }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_t10_pi_type1_crc = external dso_local constant [0 x i8], align 1
@__kstrtabns_t10_pi_type1_crc = external dso_local constant [0 x i8], align 1
@__ksymtab_t10_pi_type1_crc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @t10_pi_type1_crc to i32), ptr @__kstrtab_t10_pi_type1_crc, ptr @__kstrtabns_t10_pi_type1_crc }, section "___ksymtab+t10_pi_type1_crc", align 4
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"T10-DIF-TYPE1-IP\00", [47 x i8] zeroinitializer }, align 32
@t10_pi_type1_ip = dso_local constant { %struct.blk_integrity_profile, [44 x i8] } { %struct.blk_integrity_profile { ptr @t10_pi_type1_generate_ip, ptr @t10_pi_type1_verify_ip, ptr @t10_pi_type1_prepare, ptr @t10_pi_type1_complete, ptr @.str.1 }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_t10_pi_type1_ip = external dso_local constant [0 x i8], align 1
@__kstrtabns_t10_pi_type1_ip = external dso_local constant [0 x i8], align 1
@__ksymtab_t10_pi_type1_ip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @t10_pi_type1_ip to i32), ptr @__kstrtab_t10_pi_type1_ip, ptr @__kstrtabns_t10_pi_type1_ip }, section "___ksymtab+t10_pi_type1_ip", align 4
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"T10-DIF-TYPE3-CRC\00", [46 x i8] zeroinitializer }, align 32
@t10_pi_type3_crc = dso_local constant { %struct.blk_integrity_profile, [44 x i8] } { %struct.blk_integrity_profile { ptr @t10_pi_type3_generate_crc, ptr @t10_pi_type3_verify_crc, ptr @t10_pi_type3_prepare, ptr @t10_pi_type3_complete, ptr @.str.2 }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_t10_pi_type3_crc = external dso_local constant [0 x i8], align 1
@__kstrtabns_t10_pi_type3_crc = external dso_local constant [0 x i8], align 1
@__ksymtab_t10_pi_type3_crc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @t10_pi_type3_crc to i32), ptr @__kstrtab_t10_pi_type3_crc, ptr @__kstrtabns_t10_pi_type3_crc }, section "___ksymtab+t10_pi_type3_crc", align 4
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"T10-DIF-TYPE3-IP\00", [47 x i8] zeroinitializer }, align 32
@t10_pi_type3_ip = dso_local constant { %struct.blk_integrity_profile, [44 x i8] } { %struct.blk_integrity_profile { ptr @t10_pi_type3_generate_ip, ptr @t10_pi_type3_verify_ip, ptr @t10_pi_type3_prepare, ptr @t10_pi_type3_complete, ptr @.str.3 }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_t10_pi_type3_ip = external dso_local constant [0 x i8], align 1
@__kstrtabns_t10_pi_type3_ip = external dso_local constant [0 x i8], align 1
@__ksymtab_t10_pi_type3_ip = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @t10_pi_type3_ip to i32), ptr @__kstrtab_t10_pi_type3_ip, ptr @__kstrtabns_t10_pi_type3_ip }, section "___ksymtab+t10_pi_type3_ip", align 4
@__UNIQUE_ID_file288 = internal constant [25 x i8] c"t10_pi.file=block/t10-pi\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [19 x i8] c"t10_pi.license=GPL\00", section ".modinfo", align 1
@t10_pi_verify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: ref tag error at location %llu (rcvd %u)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"t10_pi_verify\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"block/t10-pi.c\00", [17 x i8] zeroinitializer }, align 32
@t10_pi_verify._entry_ptr = internal global ptr @t10_pi_verify._entry, section ".printk_index", align 4
@t10_pi_verify._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013%s: guard tag error at sector %llu (rcvd %04x, want %04x)\0A\00", [35 x i8] zeroinitializer }, align 32
@t10_pi_verify._entry_ptr.9 = internal global ptr @t10_pi_verify._entry.7, section ".printk_index", align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 246, i32 12 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"t10_pi_type1_crc\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 245, i32 36 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 255, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"t10_pi_type1_ip\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 254, i32 36 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 264, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"t10_pi_type3_crc\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 263, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 273, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"t10_pi_type3_ip\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 272, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 72, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [18 x i8] c"../block/t10-pi.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 87, i32 4 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__ksymtab_t10_pi_type1_crc, ptr @__ksymtab_t10_pi_type1_ip, ptr @__ksymtab_t10_pi_type3_crc, ptr @__ksymtab_t10_pi_type3_ip, ptr @t10_pi_verify._entry, ptr @t10_pi_verify._entry.7, ptr @t10_pi_verify._entry_ptr, ptr @t10_pi_verify._entry_ptr.9, ptr @.str, ptr @t10_pi_type1_crc, ptr @.str.1, ptr @t10_pi_type1_ip, ptr @.str.2, ptr @t10_pi_type3_crc, ptr @.str.3, ptr @t10_pi_type3_ip, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t10_pi_type1_crc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t10_pi_type1_ip to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t10_pi_type3_crc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t10_pi_type3_ip to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t10_pi_verify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t10_pi_verify._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @t10_pi_type1_generate_crc(ptr nocapture noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data_size.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 3
  %0 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.not.i = icmp eq i32 %1, 0
  br i1 %cmp2.not.i, label %entry.t10_pi_generate.exit_crit_edge, label %for.body.lr.ph.i

entry.t10_pi_generate.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_generate.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %data_buf.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 1
  %interval.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 4
  %seed.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iter, align 8
  %4 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_buf.i, align 4
  %6 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %interval.i, align 4
  %conv.i = zext i16 %7 to i32
  %call.i1 = tail call zeroext i16 @crc_t10dif(ptr noundef %5, i32 noundef %conv.i) #5
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call.i1, ptr %3, align 4
  %app_tag.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %app_tag.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %app_tag.i, align 2
  %10 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %seed.i, align 8
  %conv3.i = trunc i64 %11 to i32
  %12 = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv3.i, ptr %12, align 4
  %14 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %interval.i, align 4
  %conv6.i = zext i16 %15 to i32
  %16 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data_buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %conv6.i
  store ptr %add.ptr.i, ptr %data_buf.i, align 4
  %18 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iter, align 8
  %add.ptr9.i = getelementptr i8, ptr %19, i32 8
  store ptr %add.ptr9.i, ptr %iter, align 8
  %20 = load i64, ptr %seed.i, align 8
  %inc.i = add i64 %20, 1
  store i64 %inc.i, ptr %seed.i, align 8
  %add.i = add i32 %i.03.i, %conv6.i
  %21 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_size.i, align 8
  %cmp.i = icmp ult i32 %add.i, %22
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.t10_pi_generate.exit_crit_edge

for.body.i.t10_pi_generate.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_generate.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

t10_pi_generate.exit:                             ; preds = %for.body.i.t10_pi_generate.exit_crit_edge, %entry.t10_pi_generate.exit_crit_edge
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @t10_pi_type1_verify_crc(ptr nocapture noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data_size.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 3
  %0 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp894.not.i = icmp eq i32 %1, 0
  br i1 %cmp894.not.i, label %entry.t10_pi_verify.exit_crit_edge, label %for.body.lr.ph.i

entry.t10_pi_verify.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_verify.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %seed.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 2
  %data_buf.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 1
  %interval.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %next.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.095.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %next.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iter, align 8
  %app_tag.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %app_tag.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %app_tag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp12.i = icmp eq i16 %5, -1
  br i1 %cmp12.i, label %for.body.i.next.i_crit_edge, label %if.end15.i

for.body.i.next.i_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %next.i

if.end15.i:                                       ; preds = %for.body.i
  %ref_tag.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ref_tag.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_tag.i, align 4
  %8 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %seed.i, align 8
  %conv16.i = trunc i64 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv16.i)
  %cmp17.not.i = icmp eq i32 %7, %conv16.i
  br i1 %cmp17.not.i, label %if.end39.i, label %do.end22.i

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %disk_name.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 5
  %10 = ptrtoint ptr %disk_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disk_name.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %11, i64 noundef %9, i32 noundef %7) #8
  br label %t10_pi_verify.exit

if.end39.i:                                       ; preds = %if.end15.i
  %12 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_buf.i, align 4
  %14 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %interval.i, align 4
  %conv40.i = zext i16 %15 to i32
  %call.i1 = tail call zeroext i16 @crc_t10dif(ptr noundef %13, i32 noundef %conv40.i) #5
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %call.i1)
  %cmp44.not.i = icmp eq i16 %17, %call.i1
  br i1 %cmp44.not.i, label %if.end39.i.next.i_crit_edge, label %do.end49.i

if.end39.i.next.i_crit_edge:                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %next.i

do.end49.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv43.i = zext i16 %call.i1 to i32
  %conv42.i = zext i16 %17 to i32
  %disk_name51.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 5
  %18 = ptrtoint ptr %disk_name51.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %disk_name51.i, align 8
  %20 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %seed.i, align 8
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %19, i64 noundef %21, i32 noundef %conv42.i, i32 noundef %conv43.i) #8
  br label %t10_pi_verify.exit

next.i:                                           ; preds = %if.end39.i.next.i_crit_edge, %for.body.i.next.i_crit_edge
  %22 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %interval.i, align 4
  %conv59.i = zext i16 %23 to i32
  %24 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data_buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 %conv59.i
  store ptr %add.ptr.i, ptr %data_buf.i, align 4
  %26 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iter, align 8
  %add.ptr62.i = getelementptr i8, ptr %27, i32 8
  store ptr %add.ptr62.i, ptr %iter, align 8
  %28 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %seed.i, align 8
  %inc.i = add i64 %29, 1
  store i64 %inc.i, ptr %seed.i, align 8
  %add.i = add i32 %i.095.i, %conv59.i
  %30 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_size.i, align 8
  %cmp8.i = icmp ult i32 %add.i, %31
  br i1 %cmp8.i, label %next.i.for.body.i_crit_edge, label %next.i.t10_pi_verify.exit_crit_edge

next.i.t10_pi_verify.exit_crit_edge:              ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_verify.exit

next.i.for.body.i_crit_edge:                      ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

t10_pi_verify.exit:                               ; preds = %next.i.t10_pi_verify.exit_crit_edge, %do.end49.i, %do.end22.i, %entry.t10_pi_verify.exit_crit_edge
  %retval.2.i = phi i8 [ 8, %do.end49.i ], [ 8, %do.end22.i ], [ 0, %entry.t10_pi_verify.exit_crit_edge ], [ 0, %next.i.t10_pi_verify.exit_crit_edge ]
  ret i8 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t10_pi_type1_prepare(ptr nocapture noundef readonly %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %tuple_size = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18, i32 2
  %2 = ptrtoint ptr %tuple_size to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tuple_size, align 1
  %conv = zext i8 %3 to i32
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.t10_pi_ref_tag.exit_crit_edge, label %land.lhs.true.i.i

entry.t10_pi_ref_tag.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_ref_tag.exit

land.lhs.true.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 9
  %4 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i.i = icmp eq i32 %5, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %5
  br label %t10_pi_ref_tag.exit

t10_pi_ref_tag.exit:                              ; preds = %land.lhs.true.i.i, %entry.t10_pi_ref_tag.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %entry.t10_pi_ref_tag.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %bio1 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  %6 = ptrtoint ptr %bio1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bio1, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %t10_pi_ref_tag.exit.if.end77_crit_edge, label %for.body.preheader

t10_pi_ref_tag.exit.if.end77_crit_edge:           ; preds = %t10_pi_ref_tag.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

for.body.preheader:                               ; preds = %t10_pi_ref_tag.exit
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 9
  %8 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %__sector.i.i, align 8
  %interval_exp.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18, i32 3
  %10 = ptrtoint ptr %interval_exp.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %interval_exp.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %retval1.0.i.i, i1 false) #5, !range !46
  %sub.i.i = sub nsw i32 31, %12
  %conv.i = zext i8 %11 to i32
  %spec.select.i = select i1 %tobool.not.i, i32 %sub.i.i, i32 %conv.i
  %sub.i = add nsw i32 %spec.select.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %9, %sh_prom.i
  %conv7.i = trunc i64 %shr.i to i32
  br label %for.body

for.body:                                         ; preds = %for.inc75.for.body_crit_edge, %for.body.preheader
  %ref_tag.0138 = phi i32 [ %ref_tag.1.lcssa, %for.inc75.for.body_crit_edge ], [ %conv7.i, %for.body.preheader ]
  %bio.0136 = phi ptr [ %49, %for.inc75.for.body_crit_edge ], [ %7, %for.body.preheader ]
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio.0136, i32 0, i32 2
  %13 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bi_opf.i, align 8
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i105 = icmp eq i32 %15, 0
  br i1 %tobool.not.i105, label %for.body.bio_integrity.exit_crit_edge, label %if.then.i

for.body.bio_integrity.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %bio_integrity.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %16 = getelementptr inbounds %struct.bio, ptr %bio.0136, i32 0, i32 16
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  br label %bio_integrity.exit

bio_integrity.exit:                               ; preds = %if.then.i, %for.body.bio_integrity.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.then.i ], [ null, %for.body.bio_integrity.exit_crit_edge ]
  %bip_flags = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 4
  %19 = ptrtoint ptr %bip_flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %bip_flags, align 4
  %21 = and i16 %20, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool9.not = icmp eq i16 %21, 0
  br i1 %tobool9.not, label %if.end, label %bio_integrity.exit.if.end77_crit_edge

bio_integrity.exit.if.end77_crit_edge:            ; preds = %bio_integrity.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.end:                                           ; preds = %bio_integrity.exit
  %iter.sroa.4.0.bip_iter.sroa_idx = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %iter.sroa.4.0.bip_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %iter.sroa.4.0.copyload = load i32, ptr %iter.sroa.4.0.bip_iter.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.4.0.copyload)
  %tobool12.not128 = icmp eq i32 %iter.sroa.4.0.copyload, 0
  br i1 %tobool12.not128, label %if.end.for.inc75_crit_edge, label %land.rhs.lr.ph

if.end.for.inc75_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc75

land.rhs.lr.ph:                                   ; preds = %if.end
  %iter.sroa.14.0.bip_iter.sroa_idx = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %iter.sroa.14.0.bip_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %iter.sroa.14.0.copyload = load i32, ptr %iter.sroa.14.0.bip_iter.sroa_idx, align 4
  %iter.sroa.8.0.bip_iter.sroa_idx = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %iter.sroa.8.0.bip_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %iter.sroa.8.0.copyload = load i32, ptr %iter.sroa.8.0.bip_iter.sroa_idx, align 4
  %bip_iter.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 1
  %25 = ptrtoint ptr %bip_iter.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %bip_iter.i, align 4
  %conv6 = trunc i64 %26 to i32
  %bip_vec = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 7
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %ref_tag.1133 = phi i32 [ %ref_tag.0138, %land.rhs.lr.ph ], [ %ref_tag.2.lcssa, %do.end.land.rhs_crit_edge ]
  %virt.0132 = phi i32 [ %conv6, %land.rhs.lr.ph ], [ %virt.1.lcssa, %do.end.land.rhs_crit_edge ]
  %iter.sroa.4.0131 = phi i32 [ %iter.sroa.4.0.copyload, %land.rhs.lr.ph ], [ %sub.i107, %do.end.land.rhs_crit_edge ]
  %iter.sroa.8.0130 = phi i32 [ %iter.sroa.8.0.copyload, %land.rhs.lr.ph ], [ %spec.select, %do.end.land.rhs_crit_edge ]
  %iter.sroa.14.0129 = phi i32 [ %iter.sroa.14.0.copyload, %land.rhs.lr.ph ], [ %spec.select120, %do.end.land.rhs_crit_edge ]
  %27 = ptrtoint ptr %bip_vec to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bip_vec, align 4
  %arrayidx = getelementptr %struct.bio_vec, ptr %28, i32 %iter.sroa.8.0130
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %28, i32 %iter.sroa.8.0130, i32 2
  %31 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bv_offset, align 4
  %add = add i32 %32, %iter.sroa.14.0129
  %div104 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %30, i32 %div104
  %bv_len21 = getelementptr %struct.bio_vec, ptr %28, i32 %iter.sroa.8.0130, i32 1
  %33 = ptrtoint ptr %bv_len21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bv_len21, align 4
  %sub = sub i32 %34, %iter.sroa.14.0129
  %35 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.4.0131, i32 %sub)
  %rem = and i32 %add, 4095
  %sub30 = sub nuw nsw i32 4096, %rem
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 %sub30)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %37 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %37, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i.i) #5
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp50121.not = icmp eq i32 %36, 0
  br i1 %cmp50121.not, label %land.rhs.do.end_crit_edge, label %land.rhs.for.body52_crit_edge

land.rhs.for.body52_crit_edge:                    ; preds = %land.rhs
  br label %for.body52

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body52:                                       ; preds = %if.end58.for.body52_crit_edge, %land.rhs.for.body52_crit_edge
  %p.0125 = phi ptr [ %add.ptr60, %if.end58.for.body52_crit_edge ], [ %add.ptr.i, %land.rhs.for.body52_crit_edge ]
  %j.0124 = phi i32 [ %add61, %if.end58.for.body52_crit_edge ], [ 0, %land.rhs.for.body52_crit_edge ]
  %ref_tag.2123 = phi i32 [ %inc59, %if.end58.for.body52_crit_edge ], [ %ref_tag.1133, %land.rhs.for.body52_crit_edge ]
  %virt.1122 = phi i32 [ %inc, %if.end58.for.body52_crit_edge ], [ %virt.0132, %land.rhs.for.body52_crit_edge ]
  %ref_tag53 = getelementptr inbounds %struct.t10_pi_tuple, ptr %p.0125, i32 0, i32 2
  %38 = ptrtoint ptr %ref_tag53 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ref_tag53, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %virt.1122)
  %cmp54 = icmp eq i32 %39, %virt.1122
  br i1 %cmp54, label %if.then56, label %for.body52.if.end58_crit_edge

for.body52.if.end58_crit_edge:                    ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

if.then56:                                        ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %ref_tag53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %ref_tag.2123, ptr %ref_tag53, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %for.body52.if.end58_crit_edge
  %inc = add i32 %virt.1122, 1
  %inc59 = add i32 %ref_tag.2123, 1
  %add.ptr60 = getelementptr i8, ptr %p.0125, i32 %conv
  %add61 = add i32 %j.0124, %conv
  %cmp50 = icmp ult i32 %add61, %36
  br i1 %cmp50, label %if.end58.for.body52_crit_edge, label %if.end58.do.end_crit_edge

if.end58.do.end_crit_edge:                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end58.for.body52_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body52

do.end:                                           ; preds = %if.end58.do.end_crit_edge, %land.rhs.do.end_crit_edge
  %virt.1.lcssa = phi i32 [ %virt.0132, %land.rhs.do.end_crit_edge ], [ %inc, %if.end58.do.end_crit_edge ]
  %ref_tag.2.lcssa = phi i32 [ %ref_tag.1133, %land.rhs.do.end_crit_edge ], [ %inc59, %if.end58.do.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %add.ptr.i, %land.rhs.do.end_crit_edge ], [ %add.ptr60, %if.end58.do.end_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %p.0.lcssa) #5
  %41 = ptrtoint ptr %bip_vec to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bip_vec, align 4
  %add.i = add i32 %36, %iter.sroa.14.0129
  %bv_len.i = getelementptr %struct.bio_vec, ptr %42, i32 %iter.sroa.8.0130, i32 1
  %43 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %44)
  %cmp.i = icmp eq i32 %add.i, %44
  %inc.i = zext i1 %cmp.i to i32
  %spec.select = add i32 %iter.sroa.8.0130, %inc.i
  %spec.select120 = select i1 %cmp.i, i32 0, i32 %add.i
  %sub.i107 = sub i32 %iter.sroa.4.0131, %36
  %tobool12.not = icmp eq i32 %sub.i107, 0
  br i1 %tobool12.not, label %do.end.for.inc75_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

do.end.for.inc75_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc75

for.inc75:                                        ; preds = %do.end.for.inc75_crit_edge, %if.end.for.inc75_crit_edge
  %ref_tag.1.lcssa = phi i32 [ %ref_tag.0138, %if.end.for.inc75_crit_edge ], [ %ref_tag.2.lcssa, %do.end.for.inc75_crit_edge ]
  %45 = ptrtoint ptr %bip_flags to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %bip_flags, align 4
  %47 = or i16 %46, 2
  store i16 %47, ptr %bip_flags, align 4
  %48 = ptrtoint ptr %bio.0136 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bio.0136, align 8
  %tobool3.not = icmp eq ptr %49, null
  br i1 %tobool3.not, label %for.inc75.if.end77_crit_edge, label %for.inc75.for.body_crit_edge

for.inc75.for.body_crit_edge:                     ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc75.if.end77_crit_edge:                     ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end77

if.end77:                                         ; preds = %for.inc75.if.end77_crit_edge, %bio_integrity.exit.if.end77_crit_edge, %t10_pi_ref_tag.exit.if.end77_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @t10_pi_type1_complete(ptr nocapture noundef readonly %rq, i32 noundef %nr_bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %interval_exp = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18, i32 3
  %2 = ptrtoint ptr %interval_exp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %interval_exp, align 2
  %tuple_size = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 18, i32 2
  %4 = ptrtoint ptr %tuple_size to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tuple_size, align 1
  %conv3 = zext i8 %5 to i32
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.t10_pi_ref_tag.exit_crit_edge, label %land.lhs.true.i.i

entry.t10_pi_ref_tag.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_ref_tag.exit

land.lhs.true.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %logical_block_size.i.i = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 37, i32 9
  %6 = ptrtoint ptr %logical_block_size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %logical_block_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i.i = icmp eq i32 %7, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i32 512, i32 %7
  br label %t10_pi_ref_tag.exit

t10_pi_ref_tag.exit:                              ; preds = %land.lhs.true.i.i, %entry.t10_pi_ref_tag.exit_crit_edge
  %retval1.0.i.i = phi i32 [ 512, %entry.t10_pi_ref_tag.exit_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %bio4 = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 10
  %8 = ptrtoint ptr %bio4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bio4, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %t10_pi_ref_tag.exit.if.end72_crit_edge, label %if.then

t10_pi_ref_tag.exit.if.end72_crit_edge:           ; preds = %t10_pi_ref_tag.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then:                                          ; preds = %t10_pi_ref_tag.exit
  %__sector.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 9
  %10 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %__sector.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %retval1.0.i.i, i1 false) #5, !range !46
  %sub.i.i = sub nsw i32 31, %12
  %conv.i = zext i8 %3 to i32
  %spec.select.i = select i1 %tobool.not.i, i32 %sub.i.i, i32 %conv.i
  %sub.i = add nsw i32 %spec.select.i, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %11, %sh_prom.i
  %conv7.i = trunc i64 %shr.i to i32
  %shr = lshr i32 %nr_bytes, %conv.i
  br label %for.body

for.body:                                         ; preds = %for.end69.for.body_crit_edge, %if.then
  %intervals.0136 = phi i32 [ %shr, %if.then ], [ %intervals.1.lcssa, %for.end69.for.body_crit_edge ]
  %ref_tag.0135 = phi i32 [ %conv7.i, %if.then ], [ %ref_tag.1.lcssa, %for.end69.for.body_crit_edge ]
  %bio.0133 = phi ptr [ %9, %if.then ], [ %43, %for.end69.for.body_crit_edge ]
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %bio.0133, i32 0, i32 2
  %13 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bi_opf.i, align 8
  %15 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i100 = icmp eq i32 %15, 0
  br i1 %tobool.not.i100, label %for.body.bio_integrity.exit_crit_edge, label %if.then.i

for.body.bio_integrity.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %bio_integrity.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %16 = getelementptr inbounds %struct.bio, ptr %bio.0133, i32 0, i32 16
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  br label %bio_integrity.exit

bio_integrity.exit:                               ; preds = %if.then.i, %for.body.bio_integrity.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.then.i ], [ null, %for.body.bio_integrity.exit_crit_edge ]
  %iter.sroa.4.0.bip_iter.sroa_idx = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %iter.sroa.4.0.bip_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %iter.sroa.4.0.copyload = load i32, ptr %iter.sroa.4.0.bip_iter.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.4.0.copyload)
  %tobool11.not123 = icmp eq i32 %iter.sroa.4.0.copyload, 0
  br i1 %tobool11.not123, label %bio_integrity.exit.for.end69_crit_edge, label %land.rhs.lr.ph

bio_integrity.exit.for.end69_crit_edge:           ; preds = %bio_integrity.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end69

land.rhs.lr.ph:                                   ; preds = %bio_integrity.exit
  %iter.sroa.14.0.bip_iter.sroa_idx = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %iter.sroa.14.0.bip_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %iter.sroa.14.0.copyload = load i32, ptr %iter.sroa.14.0.bip_iter.sroa_idx, align 4
  %iter.sroa.8.0.bip_iter.sroa_idx = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %iter.sroa.8.0.bip_iter.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %iter.sroa.8.0.copyload = load i32, ptr %iter.sroa.8.0.bip_iter.sroa_idx, align 4
  %bip_iter.i = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %bip_iter.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %bip_iter.i, align 4
  %conv9 = trunc i64 %23 to i32
  %bip_vec = getelementptr inbounds %struct.bio_integrity_payload, ptr %retval.0.i, i32 0, i32 7
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %intervals.1129 = phi i32 [ %intervals.0136, %land.rhs.lr.ph ], [ %intervals.2.lcssa, %do.end.land.rhs_crit_edge ]
  %ref_tag.1128 = phi i32 [ %ref_tag.0135, %land.rhs.lr.ph ], [ %ref_tag.2.lcssa, %do.end.land.rhs_crit_edge ]
  %virt.0127 = phi i32 [ %conv9, %land.rhs.lr.ph ], [ %virt.1.lcssa, %do.end.land.rhs_crit_edge ]
  %iter.sroa.4.0126 = phi i32 [ %iter.sroa.4.0.copyload, %land.rhs.lr.ph ], [ %sub.i102, %do.end.land.rhs_crit_edge ]
  %iter.sroa.8.0125 = phi i32 [ %iter.sroa.8.0.copyload, %land.rhs.lr.ph ], [ %spec.select, %do.end.land.rhs_crit_edge ]
  %iter.sroa.14.0124 = phi i32 [ %iter.sroa.14.0.copyload, %land.rhs.lr.ph ], [ %spec.select111, %do.end.land.rhs_crit_edge ]
  %24 = ptrtoint ptr %bip_vec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bip_vec, align 4
  %arrayidx = getelementptr %struct.bio_vec, ptr %25, i32 %iter.sroa.8.0125
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %bv_offset = getelementptr %struct.bio_vec, ptr %25, i32 %iter.sroa.8.0125, i32 2
  %28 = ptrtoint ptr %bv_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bv_offset, align 4
  %add = add i32 %29, %iter.sroa.14.0124
  %div99 = lshr i32 %add, 12
  %add.ptr = getelementptr %struct.page, ptr %27, i32 %div99
  %bv_len20 = getelementptr %struct.bio_vec, ptr %25, i32 %iter.sroa.8.0125, i32 1
  %30 = ptrtoint ptr %bv_len20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bv_len20, align 4
  %sub = sub i32 %31, %iter.sroa.14.0124
  %32 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.4.0126, i32 %sub)
  %rem = and i32 %add, 4095
  %sub29 = sub nuw nsw i32 4096, %rem
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 %sub29)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %34 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %34, 512
  %call.i.i = tail call ptr @__kmap_local_page_prot(ptr noundef %add.ptr, i32 noundef %or.i.i) #5
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp49112 = icmp eq i32 %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intervals.1129)
  %tobool52.not113 = icmp eq i32 %intervals.1129, 0
  %or.cond114 = select i1 %cmp49112, i1 true, i1 %tobool52.not113
  br i1 %or.cond114, label %land.rhs.do.end_crit_edge, label %land.rhs.for.body54_crit_edge

land.rhs.for.body54_crit_edge:                    ; preds = %land.rhs
  br label %for.body54

land.rhs.do.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

for.body54:                                       ; preds = %if.end.for.body54_crit_edge, %land.rhs.for.body54_crit_edge
  %p.0119 = phi ptr [ %add.ptr61, %if.end.for.body54_crit_edge ], [ %add.ptr.i, %land.rhs.for.body54_crit_edge ]
  %j.0118 = phi i32 [ %add62, %if.end.for.body54_crit_edge ], [ 0, %land.rhs.for.body54_crit_edge ]
  %intervals.2117 = phi i32 [ %dec, %if.end.for.body54_crit_edge ], [ %intervals.1129, %land.rhs.for.body54_crit_edge ]
  %ref_tag.2116 = phi i32 [ %inc60, %if.end.for.body54_crit_edge ], [ %ref_tag.1128, %land.rhs.for.body54_crit_edge ]
  %virt.1115 = phi i32 [ %inc, %if.end.for.body54_crit_edge ], [ %virt.0127, %land.rhs.for.body54_crit_edge ]
  %ref_tag55 = getelementptr inbounds %struct.t10_pi_tuple, ptr %p.0119, i32 0, i32 2
  %35 = ptrtoint ptr %ref_tag55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ref_tag55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %ref_tag.2116)
  %cmp56 = icmp eq i32 %36, %ref_tag.2116
  br i1 %cmp56, label %if.then58, label %for.body54.if.end_crit_edge

for.body54.if.end_crit_edge:                      ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then58:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %ref_tag55 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %virt.1115, ptr %ref_tag55, align 4
  br label %if.end

if.end:                                           ; preds = %if.then58, %for.body54.if.end_crit_edge
  %inc = add i32 %virt.1115, 1
  %inc60 = add i32 %ref_tag.2116, 1
  %dec = add i32 %intervals.2117, -1
  %add.ptr61 = getelementptr i8, ptr %p.0119, i32 %conv3
  %add62 = add i32 %j.0118, %conv3
  call void @__sanitizer_cov_trace_cmp4(i32 %add62, i32 %33)
  %cmp49 = icmp uge i32 %add62, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool52.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %cmp49, i1 true, i1 %tobool52.not
  br i1 %or.cond, label %if.end.do.end_crit_edge, label %if.end.for.body54_crit_edge

if.end.for.body54_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body54

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %land.rhs.do.end_crit_edge
  %virt.1.lcssa = phi i32 [ %virt.0127, %land.rhs.do.end_crit_edge ], [ %inc, %if.end.do.end_crit_edge ]
  %ref_tag.2.lcssa = phi i32 [ %ref_tag.1128, %land.rhs.do.end_crit_edge ], [ %inc60, %if.end.do.end_crit_edge ]
  %intervals.2.lcssa = phi i32 [ %intervals.1129, %land.rhs.do.end_crit_edge ], [ %dec, %if.end.do.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %add.ptr.i, %land.rhs.do.end_crit_edge ], [ %add.ptr61, %if.end.do.end_crit_edge ]
  tail call void @kunmap_local_indexed(ptr noundef %p.0.lcssa) #5
  %38 = ptrtoint ptr %bip_vec to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bip_vec, align 4
  %add.i = add i32 %33, %iter.sroa.14.0124
  %bv_len.i = getelementptr %struct.bio_vec, ptr %39, i32 %iter.sroa.8.0125, i32 1
  %40 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %41)
  %cmp.i = icmp eq i32 %add.i, %41
  %inc.i = zext i1 %cmp.i to i32
  %spec.select = add i32 %iter.sroa.8.0125, %inc.i
  %spec.select111 = select i1 %cmp.i, i32 0, i32 %add.i
  %sub.i102 = sub i32 %iter.sroa.4.0126, %33
  %tobool11.not = icmp eq i32 %sub.i102, 0
  br i1 %tobool11.not, label %do.end.for.end69_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

do.end.for.end69_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end69

for.end69:                                        ; preds = %do.end.for.end69_crit_edge, %bio_integrity.exit.for.end69_crit_edge
  %ref_tag.1.lcssa = phi i32 [ %ref_tag.0135, %bio_integrity.exit.for.end69_crit_edge ], [ %ref_tag.2.lcssa, %do.end.for.end69_crit_edge ]
  %intervals.1.lcssa = phi i32 [ %intervals.0136, %bio_integrity.exit.for.end69_crit_edge ], [ %intervals.2.lcssa, %do.end.for.end69_crit_edge ]
  %42 = ptrtoint ptr %bio.0133 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bio.0133, align 8
  %tobool6.not = icmp eq ptr %43, null
  br i1 %tobool6.not, label %for.end69.if.end72_crit_edge, label %for.end69.for.body_crit_edge

for.end69.for.body_crit_edge:                     ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end69.if.end72_crit_edge:                     ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.end72:                                         ; preds = %for.end69.if.end72_crit_edge, %t10_pi_ref_tag.exit.if.end72_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @t10_pi_type1_generate_ip(ptr nocapture noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data_size.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 3
  %0 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.not.i = icmp eq i32 %1, 0
  br i1 %cmp2.not.i, label %entry.t10_pi_generate.exit_crit_edge, label %for.body.lr.ph.i

entry.t10_pi_generate.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_generate.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %data_buf.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 1
  %interval.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 4
  %seed.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iter, align 8
  %4 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_buf.i, align 4
  %6 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %interval.i, align 4
  %conv.i = zext i16 %7 to i32
  %call.i.i = tail call i32 @csum_partial(ptr noundef %5, i32 noundef %conv.i, i32 noundef 0) #5
  %8 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #9, !srcloc !47
  %neg.i.i.i = xor i32 %8, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i.i.i, ptr %3, align 4
  %app_tag.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %app_tag.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %app_tag.i, align 2
  %11 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %seed.i, align 8
  %conv3.i = trunc i64 %12 to i32
  %13 = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv3.i, ptr %13, align 4
  %15 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %interval.i, align 4
  %conv6.i = zext i16 %16 to i32
  %17 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data_buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %conv6.i
  store ptr %add.ptr.i, ptr %data_buf.i, align 4
  %19 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iter, align 8
  %add.ptr9.i = getelementptr i8, ptr %20, i32 8
  store ptr %add.ptr9.i, ptr %iter, align 8
  %21 = load i64, ptr %seed.i, align 8
  %inc.i = add i64 %21, 1
  store i64 %inc.i, ptr %seed.i, align 8
  %add.i = add i32 %i.03.i, %conv6.i
  %22 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_size.i, align 8
  %cmp.i = icmp ult i32 %add.i, %23
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.t10_pi_generate.exit_crit_edge

for.body.i.t10_pi_generate.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_generate.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

t10_pi_generate.exit:                             ; preds = %for.body.i.t10_pi_generate.exit_crit_edge, %entry.t10_pi_generate.exit_crit_edge
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @t10_pi_type1_verify_ip(ptr nocapture noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data_size.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 3
  %0 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp894.not.i = icmp eq i32 %1, 0
  br i1 %cmp894.not.i, label %entry.t10_pi_verify.exit_crit_edge, label %for.body.lr.ph.i

entry.t10_pi_verify.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_verify.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %seed.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 2
  %data_buf.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 1
  %interval.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %next.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.095.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %next.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iter, align 8
  %app_tag.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %app_tag.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %app_tag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp12.i = icmp eq i16 %5, -1
  br i1 %cmp12.i, label %for.body.i.next.i_crit_edge, label %if.end15.i

for.body.i.next.i_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %next.i

if.end15.i:                                       ; preds = %for.body.i
  %ref_tag.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ref_tag.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_tag.i, align 4
  %8 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %seed.i, align 8
  %conv16.i = trunc i64 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv16.i)
  %cmp17.not.i = icmp eq i32 %7, %conv16.i
  br i1 %cmp17.not.i, label %if.end39.i, label %do.end22.i

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  %disk_name.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 5
  %10 = ptrtoint ptr %disk_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disk_name.i, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %11, i64 noundef %9, i32 noundef %7) #8
  br label %t10_pi_verify.exit

if.end39.i:                                       ; preds = %if.end15.i
  %12 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data_buf.i, align 4
  %14 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %interval.i, align 4
  %conv40.i = zext i16 %15 to i32
  %call.i.i = tail call i32 @csum_partial(ptr noundef %13, i32 noundef %conv40.i, i32 noundef 0) #5
  %16 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #9, !srcloc !47
  %neg.i.i.i = xor i32 %16, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %conv.i.i.i)
  %cmp44.not.i = icmp eq i16 %18, %conv.i.i.i
  br i1 %cmp44.not.i, label %if.end39.i.next.i_crit_edge, label %do.end49.i

if.end39.i.next.i_crit_edge:                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %next.i

do.end49.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv42.i = zext i16 %18 to i32
  %disk_name51.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 5
  %19 = ptrtoint ptr %disk_name51.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %disk_name51.i, align 8
  %21 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %seed.i, align 8
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %20, i64 noundef %22, i32 noundef %conv42.i, i32 noundef %shr.i.i.i) #8
  br label %t10_pi_verify.exit

next.i:                                           ; preds = %if.end39.i.next.i_crit_edge, %for.body.i.next.i_crit_edge
  %23 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %interval.i, align 4
  %conv59.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data_buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 %conv59.i
  store ptr %add.ptr.i, ptr %data_buf.i, align 4
  %27 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iter, align 8
  %add.ptr62.i = getelementptr i8, ptr %28, i32 8
  store ptr %add.ptr62.i, ptr %iter, align 8
  %29 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %seed.i, align 8
  %inc.i = add i64 %30, 1
  store i64 %inc.i, ptr %seed.i, align 8
  %add.i = add i32 %i.095.i, %conv59.i
  %31 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_size.i, align 8
  %cmp8.i = icmp ult i32 %add.i, %32
  br i1 %cmp8.i, label %next.i.for.body.i_crit_edge, label %next.i.t10_pi_verify.exit_crit_edge

next.i.t10_pi_verify.exit_crit_edge:              ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_verify.exit

next.i.for.body.i_crit_edge:                      ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

t10_pi_verify.exit:                               ; preds = %next.i.t10_pi_verify.exit_crit_edge, %do.end49.i, %do.end22.i, %entry.t10_pi_verify.exit_crit_edge
  %retval.2.i = phi i8 [ 8, %do.end49.i ], [ 8, %do.end22.i ], [ 0, %entry.t10_pi_verify.exit_crit_edge ], [ 0, %next.i.t10_pi_verify.exit_crit_edge ]
  ret i8 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @t10_pi_type3_generate_crc(ptr nocapture noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data_size.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 3
  %0 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.not.i = icmp eq i32 %1, 0
  br i1 %cmp2.not.i, label %entry.t10_pi_generate.exit_crit_edge, label %for.body.lr.ph.i

entry.t10_pi_generate.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_generate.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %data_buf.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 1
  %interval.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 4
  %seed.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iter, align 8
  %4 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_buf.i, align 4
  %6 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %interval.i, align 4
  %conv.i = zext i16 %7 to i32
  %call.i1 = tail call zeroext i16 @crc_t10dif(ptr noundef %5, i32 noundef %conv.i) #5
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %call.i1, ptr %3, align 4
  %app_tag.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %app_tag.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %app_tag.i, align 2
  %10 = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %10, align 4
  %12 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %interval.i, align 4
  %conv6.i = zext i16 %13 to i32
  %14 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data_buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %conv6.i
  store ptr %add.ptr.i, ptr %data_buf.i, align 4
  %16 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iter, align 8
  %add.ptr9.i = getelementptr i8, ptr %17, i32 8
  store ptr %add.ptr9.i, ptr %iter, align 8
  %18 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %seed.i, align 8
  %inc.i = add i64 %19, 1
  store i64 %inc.i, ptr %seed.i, align 8
  %add.i = add i32 %i.03.i, %conv6.i
  %20 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_size.i, align 8
  %cmp.i = icmp ult i32 %add.i, %21
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.t10_pi_generate.exit_crit_edge

for.body.i.t10_pi_generate.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_generate.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

t10_pi_generate.exit:                             ; preds = %for.body.i.t10_pi_generate.exit_crit_edge, %entry.t10_pi_generate.exit_crit_edge
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @t10_pi_type3_verify_crc(ptr nocapture noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data_size.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 3
  %0 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp894.not.i = icmp eq i32 %1, 0
  br i1 %cmp894.not.i, label %entry.t10_pi_verify.exit_crit_edge, label %for.body.lr.ph.i

entry.t10_pi_verify.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_verify.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %seed.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 2
  %data_buf.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 1
  %interval.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %next.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.095.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %next.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iter, align 8
  %app_tag.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %app_tag.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %app_tag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp12.i = icmp eq i16 %5, -1
  br i1 %cmp12.i, label %land.lhs.true.i, label %for.body.i.if.end39.i_crit_edge

for.body.i.if.end39.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ref_tag33.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ref_tag33.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_tag33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp34.i = icmp eq i32 %7, -1
  br i1 %cmp34.i, label %land.lhs.true.i.next.i_crit_edge, label %land.lhs.true.i.if.end39.i_crit_edge

land.lhs.true.i.if.end39.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

land.lhs.true.i.next.i_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %next.i

if.end39.i:                                       ; preds = %land.lhs.true.i.if.end39.i_crit_edge, %for.body.i.if.end39.i_crit_edge
  %8 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_buf.i, align 4
  %10 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %interval.i, align 4
  %conv40.i = zext i16 %11 to i32
  %call.i = tail call zeroext i16 @crc_t10dif(ptr noundef %9, i32 noundef %conv40.i) #5
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %call.i)
  %cmp44.not.i = icmp eq i16 %13, %call.i
  br i1 %cmp44.not.i, label %if.end39.i.next.i_crit_edge, label %do.end49.i

if.end39.i.next.i_crit_edge:                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %next.i

do.end49.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv43.i = zext i16 %call.i to i32
  %conv42.i = zext i16 %13 to i32
  %disk_name51.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 5
  %14 = ptrtoint ptr %disk_name51.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %disk_name51.i, align 8
  %16 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %seed.i, align 8
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %15, i64 noundef %17, i32 noundef %conv42.i, i32 noundef %conv43.i) #8
  br label %t10_pi_verify.exit

next.i:                                           ; preds = %if.end39.i.next.i_crit_edge, %land.lhs.true.i.next.i_crit_edge
  %18 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %interval.i, align 4
  %conv59.i = zext i16 %19 to i32
  %20 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data_buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %conv59.i
  store ptr %add.ptr.i, ptr %data_buf.i, align 4
  %22 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iter, align 8
  %add.ptr62.i = getelementptr i8, ptr %23, i32 8
  store ptr %add.ptr62.i, ptr %iter, align 8
  %24 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %seed.i, align 8
  %inc.i = add i64 %25, 1
  store i64 %inc.i, ptr %seed.i, align 8
  %add.i = add i32 %i.095.i, %conv59.i
  %26 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_size.i, align 8
  %cmp8.i = icmp ult i32 %add.i, %27
  br i1 %cmp8.i, label %next.i.for.body.i_crit_edge, label %next.i.t10_pi_verify.exit_crit_edge

next.i.t10_pi_verify.exit_crit_edge:              ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_verify.exit

next.i.for.body.i_crit_edge:                      ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

t10_pi_verify.exit:                               ; preds = %next.i.t10_pi_verify.exit_crit_edge, %do.end49.i, %entry.t10_pi_verify.exit_crit_edge
  %retval.2.i = phi i8 [ 8, %do.end49.i ], [ 0, %entry.t10_pi_verify.exit_crit_edge ], [ 0, %next.i.t10_pi_verify.exit_crit_edge ]
  ret i8 %retval.2.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @t10_pi_type3_prepare(ptr nocapture noundef %rq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @t10_pi_type3_complete(ptr nocapture noundef %rq, i32 noundef %nr_bytes) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @t10_pi_type3_generate_ip(ptr nocapture noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data_size.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 3
  %0 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2.not.i = icmp eq i32 %1, 0
  br i1 %cmp2.not.i, label %entry.t10_pi_generate.exit_crit_edge, label %for.body.lr.ph.i

entry.t10_pi_generate.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_generate.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %data_buf.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 1
  %interval.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 4
  %seed.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iter, align 8
  %4 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_buf.i, align 4
  %6 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %interval.i, align 4
  %conv.i = zext i16 %7 to i32
  %call.i.i = tail call i32 @csum_partial(ptr noundef %5, i32 noundef %conv.i, i32 noundef 0) #5
  %8 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #9, !srcloc !47
  %neg.i.i.i = xor i32 %8, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i.i.i, ptr %3, align 4
  %app_tag.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %app_tag.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %app_tag.i, align 2
  %11 = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %11, align 4
  %13 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %interval.i, align 4
  %conv6.i = zext i16 %14 to i32
  %15 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data_buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %conv6.i
  store ptr %add.ptr.i, ptr %data_buf.i, align 4
  %17 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iter, align 8
  %add.ptr9.i = getelementptr i8, ptr %18, i32 8
  store ptr %add.ptr9.i, ptr %iter, align 8
  %19 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %seed.i, align 8
  %inc.i = add i64 %20, 1
  store i64 %inc.i, ptr %seed.i, align 8
  %add.i = add i32 %i.03.i, %conv6.i
  %21 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_size.i, align 8
  %cmp.i = icmp ult i32 %add.i, %22
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.t10_pi_generate.exit_crit_edge

for.body.i.t10_pi_generate.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_generate.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

t10_pi_generate.exit:                             ; preds = %for.body.i.t10_pi_generate.exit_crit_edge, %entry.t10_pi_generate.exit_crit_edge
  ret i8 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @t10_pi_type3_verify_ip(ptr nocapture noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data_size.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 3
  %0 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp894.not.i = icmp eq i32 %1, 0
  br i1 %cmp894.not.i, label %entry.t10_pi_verify.exit_crit_edge, label %for.body.lr.ph.i

entry.t10_pi_verify.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_verify.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %seed.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 2
  %data_buf.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 1
  %interval.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %next.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.095.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %next.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iter, align 8
  %app_tag.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %app_tag.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %app_tag.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp12.i = icmp eq i16 %5, -1
  br i1 %cmp12.i, label %land.lhs.true.i, label %for.body.i.if.end39.i_crit_edge

for.body.i.if.end39.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ref_tag33.i = getelementptr inbounds %struct.t10_pi_tuple, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %ref_tag33.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_tag33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp34.i = icmp eq i32 %7, -1
  br i1 %cmp34.i, label %land.lhs.true.i.next.i_crit_edge, label %land.lhs.true.i.if.end39.i_crit_edge

land.lhs.true.i.if.end39.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39.i

land.lhs.true.i.next.i_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %next.i

if.end39.i:                                       ; preds = %land.lhs.true.i.if.end39.i_crit_edge, %for.body.i.if.end39.i_crit_edge
  %8 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data_buf.i, align 4
  %10 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %interval.i, align 4
  %conv40.i = zext i16 %11 to i32
  %call.i.i = tail call i32 @csum_partial(ptr noundef %9, i32 noundef %conv40.i, i32 noundef 0) #5
  %12 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i) #9, !srcloc !47
  %neg.i.i.i = xor i32 %12, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %conv.i.i.i)
  %cmp44.not.i = icmp eq i16 %14, %conv.i.i.i
  br i1 %cmp44.not.i, label %if.end39.i.next.i_crit_edge, label %do.end49.i

if.end39.i.next.i_crit_edge:                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %next.i

do.end49.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv42.i = zext i16 %14 to i32
  %disk_name51.i = getelementptr inbounds %struct.blk_integrity_iter, ptr %iter, i32 0, i32 5
  %15 = ptrtoint ptr %disk_name51.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %disk_name51.i, align 8
  %17 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %seed.i, align 8
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %16, i64 noundef %18, i32 noundef %conv42.i, i32 noundef %shr.i.i.i) #8
  br label %t10_pi_verify.exit

next.i:                                           ; preds = %if.end39.i.next.i_crit_edge, %land.lhs.true.i.next.i_crit_edge
  %19 = ptrtoint ptr %interval.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %interval.i, align 4
  %conv59.i = zext i16 %20 to i32
  %21 = ptrtoint ptr %data_buf.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data_buf.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %conv59.i
  store ptr %add.ptr.i, ptr %data_buf.i, align 4
  %23 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iter, align 8
  %add.ptr62.i = getelementptr i8, ptr %24, i32 8
  store ptr %add.ptr62.i, ptr %iter, align 8
  %25 = ptrtoint ptr %seed.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %seed.i, align 8
  %inc.i = add i64 %26, 1
  store i64 %inc.i, ptr %seed.i, align 8
  %add.i = add i32 %i.095.i, %conv59.i
  %27 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_size.i, align 8
  %cmp8.i = icmp ult i32 %add.i, %28
  br i1 %cmp8.i, label %next.i.for.body.i_crit_edge, label %next.i.t10_pi_verify.exit_crit_edge

next.i.t10_pi_verify.exit_crit_edge:              ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %t10_pi_verify.exit

next.i.for.body.i_crit_edge:                      ; preds = %next.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

t10_pi_verify.exit:                               ; preds = %next.i.t10_pi_verify.exit_crit_edge, %do.end49.i, %entry.t10_pi_verify.exit_crit_edge
  %retval.2.i = phi i8 [ 8, %do.end49.i ], [ 0, %entry.t10_pi_verify.exit_crit_edge ], [ 0, %next.i.t10_pi_verify.exit_crit_edge ]
  ret i8 %retval.2.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_t10dif(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_local_page_prot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_local_indexed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/t10-pi.c", i32 246, i32 12}
!2 = !{ptr @t10_pi_type1_crc, !3, !"t10_pi_type1_crc", i1 false, i1 false}
!3 = !{!"../block/t10-pi.c", i32 245, i32 36}
!4 = !{ptr @__ksymtab_t10_pi_type1_crc, !5, !"__ksymtab_t10_pi_type1_crc", i1 false, i1 false}
!5 = !{!"../block/t10-pi.c", i32 252, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../block/t10-pi.c", i32 255, i32 12}
!8 = !{ptr @t10_pi_type1_ip, !9, !"t10_pi_type1_ip", i1 false, i1 false}
!9 = !{!"../block/t10-pi.c", i32 254, i32 36}
!10 = !{ptr @__ksymtab_t10_pi_type1_ip, !11, !"__ksymtab_t10_pi_type1_ip", i1 false, i1 false}
!11 = !{!"../block/t10-pi.c", i32 261, i32 1}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../block/t10-pi.c", i32 264, i32 12}
!14 = !{ptr @t10_pi_type3_crc, !15, !"t10_pi_type3_crc", i1 false, i1 false}
!15 = !{!"../block/t10-pi.c", i32 263, i32 36}
!16 = !{ptr @__ksymtab_t10_pi_type3_crc, !17, !"__ksymtab_t10_pi_type3_crc", i1 false, i1 false}
!17 = !{!"../block/t10-pi.c", i32 270, i32 1}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../block/t10-pi.c", i32 273, i32 12}
!20 = !{ptr @t10_pi_type3_ip, !21, !"t10_pi_type3_ip", i1 false, i1 false}
!21 = !{!"../block/t10-pi.c", i32 272, i32 36}
!22 = !{ptr @__ksymtab_t10_pi_type3_ip, !23, !"__ksymtab_t10_pi_type3_ip", i1 false, i1 false}
!23 = !{!"../block/t10-pi.c", i32 279, i32 1}
!24 = !{ptr @__UNIQUE_ID_file288, !25, !"__UNIQUE_ID_file288", i1 false, i1 false}
!25 = !{!"../block/t10-pi.c", i32 281, i32 1}
!26 = !{ptr @__UNIQUE_ID_license289, !25, !"__UNIQUE_ID_license289", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../block/t10-pi.c", i32 72, i32 5}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @t10_pi_verify._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @t10_pi_verify._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../block/t10-pi.c", i32 87, i32 4}
!35 = !{ptr @t10_pi_verify._entry.7, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @t10_pi_verify._entry_ptr.9, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i32 0, i32 33}
!47 = !{i64 6908155}
