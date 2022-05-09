; ModuleID = '/llk/IR_all_yes/lib/crc-t10dif.c_pt.bc'
source_filename = "../lib/crc-t10dif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+crc_t10dif_update\22, \22a\22\09"
module asm "\09.weak\09__crc_crc_t10dif_update\09\09\09\09"
module asm "\09.long\09__crc_crc_t10dif_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc_t10dif_update:\09\09\09\09\09"
module asm "\09.asciz \09\22crc_t10dif_update\22\09\09\09\09\09"
module asm "__kstrtabns_crc_t10dif_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crc_t10dif\22, \22a\22\09"
module asm "\09.weak\09__crc_crc_t10dif\09\09\09\09"
module asm "\09.long\09__crc_crc_t10dif\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crc_t10dif:\09\09\09\09\09"
module asm "\09.asciz \09\22crc_t10dif\22\09\09\09\09\09"
module asm "__kstrtabns_crc_t10dif:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.43 }
%union.anon.43 = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon = type { %struct.shash_desc, i16, [6 x i8] }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.45, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.45 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }

@crct10dif_tfm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@crc_t10dif_update.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lib/crc-t10dif.c\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_crc_t10dif_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc_t10dif_update = external dso_local constant [0 x i8], align 1
@__ksymtab_crc_t10dif_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc_t10dif_update to i32), ptr @__kstrtab_crc_t10dif_update, ptr @__kstrtabns_crc_t10dif_update }, section "___ksymtab+crc_t10dif_update", align 4
@__kstrtab_crc_t10dif = external dso_local constant [0 x i8], align 1
@__kstrtabns_crc_t10dif = external dso_local constant [0 x i8], align 1
@__ksymtab_crc_t10dif = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crc_t10dif to i32), ptr @__kstrtab_crc_t10dif, ptr @__kstrtabns_crc_t10dif }, section "___ksymtab+crc_t10dif", align 4
@crc_t10dif_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @crc_t10dif_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@crct10dif_rehash_work = internal global { %struct.work_struct, [52 x i8] } zeroinitializer, align 32
@__initcall__kmod_crc_t10dif__178_107_crc_t10dif_mod_init6 = internal global ptr @crc_t10dif_mod_init, section ".initcall6.init", align 4
@__exitcall_crc_t10dif_mod_fini = internal global ptr @crc_t10dif_mod_fini, section ".exitcall.exit", align 4
@__param_str_transform = internal constant [21 x i8] c"crc_t10dif.transform\00", align 1
@__param_ops_transform = internal constant %struct.kernel_param_ops { i32 0, ptr null, ptr @crc_t10dif_transform_show, ptr null }, align 4
@__param_transform = internal constant %struct.kernel_param { ptr @__param_str_transform, ptr null, ptr @__param_ops_transform, i16 292, i8 -1, i8 0, %union.anon.43 zeroinitializer }, section "__param", align 4
@__UNIQUE_ID_description181 = internal constant [61 x i8] c"crc_t10dif.description=T10 DIF CRC calculation (library API)\00", section ".modinfo", align 1
@__UNIQUE_ID_file182 = internal constant [31 x i8] c"crc_t10dif.file=lib/crc-t10dif\00", section ".modinfo", align 1
@__UNIQUE_ID_license183 = internal constant [23 x i8] c"crc_t10dif.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_softdep184 = internal constant [34 x i8] c"crc_t10dif.softdep=pre: crct10dif\00", section ".modinfo", align 1
@crct10dif_fallback = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"crct10dif\00", [22 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@crc_t10dif_mod_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&crct10dif_rehash_work)\00", [54 x i8] zeroinitializer }, align 32
@crc_t10dif_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @crc_t10dif_mutex, i64 52), ptr getelementptr (i8, ptr @crc_t10dif_mutex, i64 52) }, ptr @crc_t10dif_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@crc_t10dif_rehash.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"crc_t10dif_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"crc_t10dif_mutex\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fallback\0A\00", [22 x i8] zeroinitializer }, align 32
@crc_t10dif_transform_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [14 x i8] c"crct10dif_tfm\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 19, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 75, i32 19 }
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"crc_t10dif_nb\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 59, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"crct10dif_rehash_work\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 22, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"crct10dif_fallback\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 20, i32 8 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 695, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 723, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 29, i32 28 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 94, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"crc_t10dif_mutex\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 41, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 21, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 116, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [20 x i8] c"../lib/crc-t10dif.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 120, i32 36 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_description181, ptr @__UNIQUE_ID_file182, ptr @__UNIQUE_ID_license183, ptr @__UNIQUE_ID_softdep184, ptr @__exitcall_crc_t10dif_mod_fini, ptr @__initcall__kmod_crc_t10dif__178_107_crc_t10dif_mod_init6, ptr @__ksymtab_crc_t10dif, ptr @__ksymtab_crc_t10dif_update, ptr @__param_transform, ptr @crc_t10dif_mod_fini, ptr @crct10dif_tfm, ptr @.str, ptr @.str.1, ptr @crc_t10dif_nb, ptr @crct10dif_rehash_work, ptr @crct10dif_fallback, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @crc_t10dif_mod_init.__key, ptr @.str.7, ptr @crc_t10dif_mutex, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crct10dif_tfm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc_t10dif_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crct10dif_rehash_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crct10dif_fallback to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc_t10dif_mod_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc_t10dif_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @crc_t10dif_update(i16 noundef zeroext %crc, ptr noundef %buffer, i32 noundef %len) #0 align 64 {
entry:
  %desc = alloca %struct.anon, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %desc) #10
  %0 = getelementptr inbounds %struct.anon, ptr %desc, i32 0, i32 1
  %1 = call ptr @memset(ptr %desc, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @crct10dif_fallback, ptr blockaddress(@crc_t10dif_update, %if.then)) #10
          to label %if.end [label %if.then], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call zeroext i16 @crc_t10dif_generic(i16 noundef zeroext %crc, ptr noundef %buffer, i32 noundef %len) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %6 = load volatile ptr, ptr @crct10dif_tfm, align 4
  %call6 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end15_crit_edge

rcu_read_lock.exit.do.end15_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b43 = load i1, ptr @crc_t10dif_update.__warned, align 1
  br i1 %.b43, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @crc_t10dif_update.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 75, ptr noundef nonnull @.str.1) #10
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %rcu_read_lock.exit.do.end15_crit_edge
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %desc, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %crc, ptr %0, align 8
  %call19 = call i32 @crypto_shash_update(ptr noundef nonnull %desc, ptr noundef %buffer, i32 noundef %len) #10
  %call.i44 = call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i44, label %do.end15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i47

do.end15.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i47:                                ; preds = %do.end15
  %call1.i45 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i47.rcu_read_unlock.exit_crit_edge, %do.end15.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %9 = call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i51 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i51 to ptr
  %preempt_count.i.i.i.i52 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i52, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i52, align 4
  call void @rcu_read_unlock_strict() #10
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %do.end37, label %do.body29, !prof !70

do.body29:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/crc-t10dif.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 80, 0\0A.popsection", ""() #10, !srcloc !71
  unreachable

do.end37:                                         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %0, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.then
  %retval.0 = phi i16 [ %call3, %if.then ], [ %14, %do.end37 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %desc) #10
  ret i16 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_t10dif_generic(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @crc_t10dif(ptr noundef %buffer, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call zeroext i16 @crc_t10dif_update(i16 noundef zeroext 0, ptr noundef %buffer, i32 noundef %len)
  ret i16 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crc_t10dif_mod_fini() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @crypto_unregister_notifier(ptr noundef nonnull @crc_t10dif_nb) #10
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef nonnull @crct10dif_rehash_work) #10
  %0 = load ptr, ptr @crct10dif_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %0, ptr noundef %base.i.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_unregister_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crc_t10dif_mod_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__init_work(ptr noundef nonnull @crct10dif_rehash_work, i32 noundef 0) #10
  store i32 -64, ptr @crct10dif_rehash_work, align 4
  tail call void @lockdep_init_map_type(ptr noundef getelementptr inbounds (%struct.work_struct, ptr @crct10dif_rehash_work, i32 0, i32 3), ptr noundef nonnull @.str.7, ptr noundef nonnull @crc_t10dif_mod_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  store volatile ptr getelementptr inbounds (%struct.work_struct, ptr @crct10dif_rehash_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @crct10dif_rehash_work, i32 0, i32 1), align 4
  store ptr getelementptr inbounds (%struct.work_struct, ptr @crct10dif_rehash_work, i32 0, i32 1), ptr getelementptr inbounds (%struct.work_struct, ptr @crct10dif_rehash_work, i32 0, i32 1, i32 1), align 4
  store ptr @crc_t10dif_rehash, ptr getelementptr inbounds (%struct.work_struct, ptr @crct10dif_rehash_work, i32 0, i32 2), align 4
  %call = tail call i32 @crypto_register_notifier(ptr noundef nonnull @crc_t10dif_nb) #10
  tail call void @crc_t10dif_rehash(ptr noundef nonnull @crct10dif_rehash_work)
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crc_t10dif_notify(ptr nocapture noundef readnone %self, i32 noundef %val, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %cmp.not = icmp eq i32 %val, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cra_name = getelementptr inbounds %struct.crypto_alg, ptr %data, i32 0, i32 8
  %call = tail call i32 @strcmp(ptr noundef %cra_name, ptr noundef nonnull dereferenceable(10) @.str.6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef nonnull @crct10dif_rehash_work) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crc_t10dif_rehash(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_lock_nested(ptr noundef nonnull @crc_t10dif_mutex, i32 noundef 0) #10
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @crc_t10dif_mutex, i32 0, i32 5), i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @crc_t10dif_rehash.__warned, align 1
  br i1 %.b52, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @crc_t10dif_rehash.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 42, ptr noundef nonnull @.str.8) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = load ptr, ptr @crct10dif_tfm, align 4
  %call5 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 0) #10
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %do.body9

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @crc_t10dif_mutex) #10
  br label %cleanup

do.body9:                                         ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  store volatile ptr %call5, ptr @crct10dif_tfm, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @crc_t10dif_mutex) #10
  %tobool45.not = icmp eq ptr %0, null
  br i1 %tobool45.not, label %if.else47, label %if.then46

if.then46:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @synchronize_rcu() #10
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %0, ptr noundef %base.i.i) #10
  br label %cleanup

if.else47:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @static_key_disable(ptr noundef nonnull @crct10dif_fallback) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else47, %if.then46, %if.then7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @static_key_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crc_t10dif_transform_show(ptr nocapture noundef writeonly %buffer, ptr nocapture noundef readnone %kp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @crct10dif_fallback, ptr blockaddress(@crc_t10dif_transform_show, %if.then)) #10
          to label %if.end [label %if.then], !srcloc !67

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = call ptr @memcpy(ptr %buffer, ptr @.str.11, i32 10)
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !68
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %5 = load volatile ptr, ptr @crct10dif_tfm, align 4
  %call6 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end15_crit_edge

rcu_read_lock.exit.do.end15_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b21 = load i1, ptr @crc_t10dif_transform_show.__warned, align 1
  br i1 %.b21, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @crc_t10dif_transform_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 119, ptr noundef nonnull @.str.1) #10
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %rcu_read_lock.exit.do.end15_crit_edge
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %cra_driver_name.i.i = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 9
  %call18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buffer, i32 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef %cra_driver_name.i.i)
  %call.i22 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i22, label %do.end15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i25

do.end15.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i25:                                ; preds = %do.end15
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool.not.i24 = icmp eq i32 %call1.i23, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i27

land.lhs.true.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i27:                               ; preds = %land.lhs.true.i25
  %.b4.i26 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i26, label %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, label %if.then.i28

land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i28:                                      ; preds = %land.lhs.true2.i27
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i28, %land.lhs.true2.i27.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i25.rcu_read_unlock.exit_crit_edge, %do.end15.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %8 = tail call i32 @llvm.read_register.i32(metadata !58) #10
  %and.i.i.i.i.i29 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i29 to ptr
  %preempt_count.i.i.i.i30 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i30, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i30, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %if.then
  %retval.0 = phi i32 [ 9, %if.then ], [ %call18, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !32, !33, !35, !36, !38, !40, !42, !43, !45, !46, !48, !49, !50, !51, !52, !54, !56}
!llvm.named.register.sp = !{!58}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../lib/crc-t10dif.c", i32 75, i32 19}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__ksymtab_crc_t10dif_update, !5, !"__ksymtab_crc_t10dif_update", i1 false, i1 false}
!5 = !{!"../lib/crc-t10dif.c", i32 84, i32 1}
!6 = !{ptr @__ksymtab_crc_t10dif, !7, !"__ksymtab_crc_t10dif", i1 false, i1 false}
!7 = !{!"../lib/crc-t10dif.c", i32 90, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../lib/crc-t10dif.c", i32 104, i32 20}
!10 = !{ptr @__initcall__kmod_crc_t10dif__178_107_crc_t10dif_mod_init6, !11, !"__initcall__kmod_crc_t10dif__178_107_crc_t10dif_mod_init6", i1 false, i1 false}
!11 = !{!"../lib/crc-t10dif.c", i32 107, i32 1}
!12 = !{ptr @__exitcall_crc_t10dif_mod_fini, !13, !"__exitcall_crc_t10dif_mod_fini", i1 false, i1 false}
!13 = !{!"../lib/crc-t10dif.c", i32 108, i32 1}
!14 = !{ptr @__param_transform, !15, !"__param_transform", i1 false, i1 false}
!15 = !{!"../lib/crc-t10dif.c", i32 127, i32 1}
!16 = !{ptr @__UNIQUE_ID_description181, !17, !"__UNIQUE_ID_description181", i1 false, i1 false}
!17 = !{!"../lib/crc-t10dif.c", i32 129, i32 1}
!18 = !{ptr @__UNIQUE_ID_file182, !19, !"__UNIQUE_ID_file182", i1 false, i1 false}
!19 = !{!"../lib/crc-t10dif.c", i32 130, i32 1}
!20 = !{ptr @__UNIQUE_ID_license183, !19, !"__UNIQUE_ID_license183", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_softdep184, !22, !"__UNIQUE_ID_softdep184", i1 false, i1 false}
!22 = !{!"../lib/crc-t10dif.c", i32 131, i32 1}
!23 = !{ptr @crct10dif_tfm, !24, !"crct10dif_tfm", i1 false, i1 false}
!24 = !{!"../lib/crc-t10dif.c", i32 19, i32 35}
!25 = !{ptr @crct10dif_rehash_work, !26, !"crct10dif_rehash_work", i1 false, i1 false}
!26 = !{!"../lib/crc-t10dif.c", i32 22, i32 27}
!27 = !{ptr @crct10dif_fallback, !28, !"crct10dif_fallback", i1 false, i1 false}
!28 = !{!"../lib/crc-t10dif.c", i32 20, i32 8}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!31 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @crc_t10dif_nb, !37, !"crc_t10dif_nb", i1 false, i1 false}
!37 = !{!"../lib/crc-t10dif.c", i32 59, i32 30}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../lib/crc-t10dif.c", i32 29, i32 28}
!40 = !{ptr @crc_t10dif_mod_init.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../lib/crc-t10dif.c", i32 94, i32 2}
!42 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../lib/crc-t10dif.c", i32 41, i32 8}
!45 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../lib/crc-t10dif.c", i32 21, i32 8}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @crc_t10dif_mutex, !47, !"crc_t10dif_mutex", i1 false, i1 false}
!50 = !{ptr @__param_str_transform, !15, !"__param_str_transform", i1 false, i1 false}
!51 = !{ptr @__param_ops_transform, !15, !"__param_ops_transform", i1 false, i1 false}
!52 = !{ptr @.str.11, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../lib/crc-t10dif.c", i32 116, i32 26}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../lib/crc-t10dif.c", i32 119, i32 8}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../lib/crc-t10dif.c", i32 120, i32 36}
!58 = !{!"sp"}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148955095, i64 2148955100, i64 2148955121, i64 2148955165, i64 2148955199, i64 2148955220}
!68 = !{i64 2149357474}
!69 = !{i64 2149357740}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2152517607, i64 2152518087, i64 2152517644, i64 2152517700, i64 2152517734, i64 2152517758, i64 2152517799, i64 2152517820, i64 2152517848, i64 2152517882}
!72 = !{i64 2152510193}
