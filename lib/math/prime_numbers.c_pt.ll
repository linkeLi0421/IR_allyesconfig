; ModuleID = '/llk/IR_all_yes/lib/math/prime_numbers.c_pt.bc'
source_filename = "../lib/math/prime_numbers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+next_prime_number\22, \22a\22\09"
module asm "\09.weak\09__crc_next_prime_number\09\09\09\09"
module asm "\09.long\09__crc_next_prime_number\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_next_prime_number:\09\09\09\09\09"
module asm "\09.asciz \09\22next_prime_number\22\09\09\09\09\09"
module asm "__kstrtabns_next_prime_number:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+is_prime_number\22, \22a\22\09"
module asm "\09.weak\09__crc_is_prime_number\09\09\09\09"
module asm "\09.long\09__crc_is_prime_number\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_prime_number:\09\09\09\09\09"
module asm "\09.asciz \09\22is_prime_number\22\09\09\09\09\09"
module asm "__kstrtabns_is_prime_number:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.primes = type { %struct.callback_head, i32, i32, [0 x i32] }

@primes = internal global { ptr, [28 x i8] } { ptr @small_primes, [28 x i8] zeroinitializer }, align 32
@next_prime_number.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lib/math/prime_numbers.c\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@next_prime_number.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_next_prime_number = external dso_local constant [0 x i8], align 1
@__kstrtabns_next_prime_number = external dso_local constant [0 x i8], align 1
@__ksymtab_next_prime_number = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @next_prime_number to i32), ptr @__kstrtab_next_prime_number, ptr @__kstrtabns_next_prime_number }, section "___ksymtab+next_prime_number", align 4
@is_prime_number.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@is_prime_number.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_is_prime_number = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_prime_number = external dso_local constant [0 x i8], align 1
@__ksymtab_is_prime_number = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_prime_number to i32), ptr @__kstrtab_is_prime_number, ptr @__kstrtabns_is_prime_number }, section "___ksymtab+is_prime_number", align 4
@__initcall__kmod_prime_numbers__191_310_primes_init6 = internal global ptr @primes_init, section ".initcall6.init", align 4
@__exitcall_primes_exit = internal global ptr @primes_exit, section ".exitcall.exit", align 4
@__param_str_selftest = internal constant [23 x i8] c"prime_numbers.selftest\00", align 1
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 4
@selftest_max = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_selftest = internal constant %struct.kernel_param { ptr @__param_str_selftest, ptr null, ptr @param_ops_ulong, i16 256, i8 -1, i8 0, %union.anon.41 { ptr @selftest_max } }, section "__param", align 4
@__UNIQUE_ID_selftesttype192 = internal constant [38 x i8] c"prime_numbers.parmtype=selftest:ulong\00", section ".modinfo", align 1
@__UNIQUE_ID_author193 = internal constant [39 x i8] c"prime_numbers.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file194 = internal constant [42 x i8] c"prime_numbers.file=lib/math/prime_numbers\00", section ".modinfo", align 1
@__UNIQUE_ID_license195 = internal constant [26 x i8] c"prime_numbers.license=GPL\00", section ".modinfo", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@small_primes = internal constant { { %struct.callback_head, i32, i32, [1 x i32] }, [44 x i8] } { { %struct.callback_head, i32, i32, [1 x i32] } { %struct.callback_head zeroinitializer, i32 31, i32 32, [1 x i32] [i32 -1601558356] }, [44 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @lock, i64 52), ptr getelementptr (i8, ptr @lock, i64 52) }, ptr @lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@expand_to_next_prime.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lock.wait_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@free_primes.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@selftest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013prime numbers: inconsistent result for is-prime(%lu): slow=%s, fast=%s!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"selftest\00", [23 x i8] zeroinitializer }, align 32
@selftest._entry_ptr = internal global ptr @selftest._entry, section ".printk_index", align 4
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@selftest._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013prime numbers: incorrect result for next-prime(%lu): expected %lu, got %lu\0A\00", [50 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.17 = internal global ptr @selftest._entry.15, section ".printk_index", align 4
@selftest._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016prime numbers: %s(%lu) passed, last prime was %lu\0A\00", [43 x i8] zeroinitializer }, align 32
@selftest._entry_ptr.20 = internal global ptr @selftest._entry.18, section ".printk_index", align 4
@dump_primes.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dump_primes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016prime numbers: primes.{last=%lu, .sz=%lu, .primes[]=...x%lx} = %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dump_primes\00", [20 x i8] zeroinitializer }, align 32
@dump_primes._entry_ptr = internal global ptr @dump_primes._entry, section ".printk_index", align 4
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"primes\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 65, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 193, i32 6 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"selftest_max\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 67, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 695, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"small_primes\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 43, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 723, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 134, i32 6 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 64, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 276, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 285, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 292, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [28 x i8] c"../lib/math/prime_numbers.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 256, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_file194, ptr @__UNIQUE_ID_license195, ptr @__UNIQUE_ID_selftesttype192, ptr @__exitcall_primes_exit, ptr @__initcall__kmod_prime_numbers__191_310_primes_init6, ptr @__ksymtab_is_prime_number, ptr @__ksymtab_next_prime_number, ptr @__param_selftest, ptr @dump_primes._entry, ptr @dump_primes._entry_ptr, ptr @primes_exit, ptr @selftest._entry, ptr @selftest._entry.15, ptr @selftest._entry.18, ptr @selftest._entry_ptr, ptr @selftest._entry_ptr.17, ptr @selftest._entry_ptr.20, ptr @primes, ptr @.str, ptr @.str.1, ptr @selftest_max, ptr @.str.4, ptr @.str.5, ptr @small_primes, ptr @.str.7, ptr @lock, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @primes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest_max to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @small_primes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @selftest._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_primes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @next_prime_number(i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load volatile ptr, ptr @primes, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @next_prime_number.__warned, align 1
  br i1 %.b40, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @next_prime_number.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 193, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %last76 = getelementptr inbounds %struct.primes, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %last76 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %x)
  %cmp.not77 = icmp ugt i32 %6, %x
  br i1 %cmp.not77, label %do.end7.while.end_crit_edge, label %do.end7.while.body_crit_edge

do.end7.while.body_crit_edge:                     ; preds = %do.end7
  br label %while.body

do.end7.while.end_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %do.end28.while.body_crit_edge, %do.end7.while.body_crit_edge
  %call.i52 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i52, label %while.body.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i55

while.body.rcu_read_unlock.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i55:                                ; preds = %while.body
  %call1.i53 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, %while.body.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !82
  %7 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i.i59 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i60, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %call9 = tail call fastcc zeroext i1 @expand_to_next_prime(i32 noundef %x)
  br i1 %call9, label %if.end12, label %rcu_read_unlock.exit.while.cond.i_crit_edge

rcu_read_unlock.exit.while.cond.i_crit_edge:      ; preds = %rcu_read_unlock.exit
  br label %while.cond.i

while.cond.i:                                     ; preds = %slow_is_prime_number.exit.i.while.cond.i_crit_edge, %rcu_read_unlock.exit.while.cond.i_crit_edge
  %x.addr.0.i = phi i32 [ %inc.i, %slow_is_prime_number.exit.i.while.cond.i_crit_edge ], [ %x, %rcu_read_unlock.exit.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %x.addr.0.i)
  %cmp.not.i = icmp eq i32 %x.addr.0.i, -1
  br i1 %cmp.not.i, label %while.cond.i.cleanup_crit_edge, label %land.rhs.i

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.rhs.i:                                       ; preds = %while.cond.i
  %inc.i = add nuw i32 %x.addr.0.i, 1
  %call.i.i = tail call i32 @int_sqrt(i32 noundef %inc.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp7.i.i = icmp ugt i32 %call.i.i, 1
  br i1 %cmp7.i.i, label %land.rhs.i.while.body.i.i_crit_edge, label %land.rhs.i.slow_is_prime_number.exit.i_crit_edge

land.rhs.i.slow_is_prime_number.exit.i_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %slow_is_prime_number.exit.i

land.rhs.i.while.body.i.i_crit_edge:              ; preds = %land.rhs.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %land.rhs.i.while.body.i.i_crit_edge
  %y.08.i.i = phi i32 [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %call.i.i, %land.rhs.i.while.body.i.i_crit_edge ]
  %rem.i.i = urem i32 %inc.i, %y.08.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp1.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.i.slow_is_prime_number.exit.i_crit_edge, label %if.end.i.i

while.body.i.i.slow_is_prime_number.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %slow_is_prime_number.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %dec.i.i = add i32 %y.08.i.i, -1
  %cmp.i.i = icmp ugt i32 %dec.i.i, 1
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

slow_is_prime_number.exit.i:                      ; preds = %while.body.i.i.slow_is_prime_number.exit.i_crit_edge, %land.rhs.i.slow_is_prime_number.exit.i_crit_edge
  %y.0.lcssa.i.i = phi i32 [ %call.i.i, %land.rhs.i.slow_is_prime_number.exit.i_crit_edge ], [ %y.08.i.i, %while.body.i.i.slow_is_prime_number.exit.i_crit_edge ]
  %cmp2.i.i = icmp eq i32 %y.0.lcssa.i.i, 1
  br i1 %cmp2.i.i, label %slow_is_prime_number.exit.i.cleanup_crit_edge, label %slow_is_prime_number.exit.i.while.cond.i_crit_edge

slow_is_prime_number.exit.i.while.cond.i_crit_edge: ; preds = %slow_is_prime_number.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

slow_is_prime_number.exit.i.cleanup_crit_edge:    ; preds = %slow_is_prime_number.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %rcu_read_unlock.exit
  %11 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i.i41 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i41 to ptr
  %preempt_count.i.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i42, align 4
  %add.i.i.i43 = add i32 %14, 1
  store volatile i32 %add.i.i.i43, ptr %preempt_count.i.i.i.i42, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i44 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i44, label %if.end12.rcu_read_lock.exit51_crit_edge, label %land.lhs.true.i47

if.end12.rcu_read_lock.exit51_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit51

land.lhs.true.i47:                                ; preds = %if.end12
  %call1.i45 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_lock.exit51_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_lock.exit51_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit51

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_lock.exit51_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_lock.exit51_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit51

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit51

rcu_read_lock.exit51:                             ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_lock.exit51_crit_edge, %land.lhs.true.i47.rcu_read_lock.exit51_crit_edge, %if.end12.rcu_read_lock.exit51_crit_edge
  %15 = load volatile ptr, ptr @primes, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %rcu_read_lock.exit51.do.end28_crit_edge

rcu_read_lock.exit51.do.end28_crit_edge:          ; preds = %rcu_read_lock.exit51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

land.lhs.true20:                                  ; preds = %rcu_read_lock.exit51
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b3839 = load i1, ptr @next_prime_number.__warned.2, align 1
  br i1 %.b3839, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @next_prime_number.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 201, ptr noundef nonnull @.str.1) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %rcu_read_lock.exit51.do.end28_crit_edge
  %last = getelementptr inbounds %struct.primes, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last, align 4
  %cmp.not = icmp ugt i32 %17, %x
  br i1 %cmp.not, label %do.end28.while.end_crit_edge, label %do.end28.while.body_crit_edge

do.end28.while.body_crit_edge:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.end28.while.end_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end28.while.end_crit_edge, %do.end7.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %4, %do.end7.while.end_crit_edge ], [ %15, %do.end28.while.end_crit_edge ]
  %.lcssa = phi i32 [ %6, %do.end7.while.end_crit_edge ], [ %17, %do.end28.while.end_crit_edge ]
  %primes = getelementptr inbounds %struct.primes, ptr %p.0.lcssa, i32 0, i32 3
  %add = add nuw i32 %x, 1
  %call31 = tail call i32 @_find_next_bit_be(ptr noundef %primes, i32 noundef %.lcssa, i32 noundef %add) #8
  %call.i61 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i61, label %while.end.rcu_read_unlock.exit71_crit_edge, label %land.lhs.true.i64

while.end.rcu_read_unlock.exit71_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit71

land.lhs.true.i64:                                ; preds = %while.end
  %call1.i62 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62)
  %tobool.not.i63 = icmp eq i32 %call1.i62, 0
  br i1 %tobool.not.i63, label %land.lhs.true.i64.rcu_read_unlock.exit71_crit_edge, label %land.lhs.true2.i66

land.lhs.true.i64.rcu_read_unlock.exit71_crit_edge: ; preds = %land.lhs.true.i64
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit71

land.lhs.true2.i66:                               ; preds = %land.lhs.true.i64
  %.b4.i65 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i65, label %land.lhs.true2.i66.rcu_read_unlock.exit71_crit_edge, label %if.then.i67

land.lhs.true2.i66.rcu_read_unlock.exit71_crit_edge: ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit71

if.then.i67:                                      ; preds = %land.lhs.true2.i66
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #8
  br label %rcu_read_unlock.exit71

rcu_read_unlock.exit71:                           ; preds = %if.then.i67, %land.lhs.true2.i66.rcu_read_unlock.exit71_crit_edge, %land.lhs.true.i64.rcu_read_unlock.exit71_crit_edge, %while.end.rcu_read_unlock.exit71_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !82
  %18 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i.i68 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i.i68 to ptr
  %preempt_count.i.i.i.i69 = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i.i.i69 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i.i.i69, align 4
  %sub.i.i.i70 = add i32 %21, -1
  store volatile i32 %sub.i.i.i70, ptr %preempt_count.i.i.i.i69, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit71, %slow_is_prime_number.exit.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %rcu_read_unlock.exit71 ], [ %inc.i, %if.end.i.i.cleanup_crit_edge ], [ %inc.i, %slow_is_prime_number.exit.i.cleanup_crit_edge ], [ -1, %while.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @expand_to_next_prime(i32 noundef %x) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %x, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %x)
  %cmp = icmp ult i32 %mul, %x
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %mul, -1
  %or = or i32 %sub, 31
  %add = add i32 %or, 1
  %sub2 = add i32 %or, 32
  %0 = lshr i32 %sub2, 3
  %mul3 = and i32 %0, 536870908
  %add4 = add nuw nsw i32 %mul3, 16
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add4, i32 noundef 11456) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @lock, i32 noundef 0) #8
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @lock, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end6.do.end_crit_edge

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %if.end6
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true11

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b129 = load i1, ptr @expand_to_next_prime.__warned, align 1
  br i1 %.b129, label %land.lhs.true11.do.end_crit_edge, label %if.then13

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @expand_to_next_prime.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 134, ptr noundef nonnull @.str.8) #8
  br label %do.end

do.end:                                           ; preds = %if.then13, %land.lhs.true11.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end6.do.end_crit_edge
  %1 = load ptr, ptr @primes, align 4
  %last = getelementptr inbounds %struct.primes, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %last to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %x)
  %cmp15 = icmp ugt i32 %3, %x
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call9.i) #8
  br label %unlock

if.end17:                                         ; preds = %do.end
  %primes = getelementptr inbounds %struct.primes, ptr %call9.i, i32 0, i32 3
  %4 = call ptr @memset(ptr %primes, i32 255, i32 %mul3)
  %primes20 = getelementptr inbounds %struct.primes, ptr %1, i32 0, i32 3
  %sz22 = getelementptr inbounds %struct.primes, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %sz22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sz22, align 4
  %sub.i130 = add i32 %6, 31
  %7 = lshr i32 %sub.i130, 3
  %mul.i131 = and i32 %7, 536870908
  %8 = call ptr @memcpy(ptr %primes, ptr %primes20, i32 %mul.i131)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp23137.not = icmp eq i32 %add, 0
  br i1 %cmp23137.not, label %if.end17.for.end_crit_edge, label %for.body.lr.ph

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end17
  %last28 = getelementptr inbounds %struct.primes, ptr %call9.i, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %clear_multiples.exit.for.body_crit_edge, %for.body.lr.ph
  %y.0138 = phi i32 [ 2, %for.body.lr.ph ], [ %call32, %clear_multiples.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %sz22 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sz22, align 4
  %mul.i132 = shl i32 %y.0138, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i132, i32 %10)
  %cmp.i133 = icmp ult i32 %mul.i132, %10
  br i1 %cmp.i133, label %if.then.i135, label %for.body.if.end.i136_crit_edge

for.body.if.end.i136_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i136

if.then.i135:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i134 = add i32 %y.0138, -1
  %add.i = add i32 %sub.i134, %10
  %11 = urem i32 %add.i, %y.0138
  %mul1.i = sub i32 %add.i, %11
  br label %if.end.i136

if.end.i136:                                      ; preds = %if.then.i135, %for.body.if.end.i136_crit_edge
  %m.0.i = phi i32 [ %mul1.i, %if.then.i135 ], [ %mul.i132, %for.body.if.end.i136_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %m.0.i, i32 %add)
  %cmp213.i = icmp ult i32 %m.0.i, %add
  br i1 %cmp213.i, label %if.end.i136.while.body.i_crit_edge, label %if.end.i136.clear_multiples.exit_crit_edge

if.end.i136.clear_multiples.exit_crit_edge:       ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #10
  br label %clear_multiples.exit

if.end.i136.while.body.i_crit_edge:               ; preds = %if.end.i136
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i136.while.body.i_crit_edge
  %m.114.i = phi i32 [ %add3.i, %while.body.i.while.body.i_crit_edge ], [ %m.0.i, %if.end.i136.while.body.i_crit_edge ]
  %rem.i.i = and i32 %m.114.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %m.114.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %primes, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %13, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %add3.i = add i32 %m.114.i, %y.0138
  %cmp2.i = icmp ult i32 %add3.i, %add
  br i1 %cmp2.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.clear_multiples.exit_crit_edge

while.body.i.clear_multiples.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %clear_multiples.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

clear_multiples.exit:                             ; preds = %while.body.i.clear_multiples.exit_crit_edge, %if.end.i136.clear_multiples.exit_crit_edge
  %14 = ptrtoint ptr %last28 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %y.0138, ptr %last28, align 8
  %add31 = add i32 %y.0138, 1
  %call32 = tail call i32 @_find_next_bit_be(ptr noundef %primes, i32 noundef %add, i32 noundef %add31) #8
  %cmp23 = icmp ult i32 %call32, %add
  br i1 %cmp23, label %clear_multiples.exit.for.body_crit_edge, label %clear_multiples.exit.for.end_crit_edge

clear_multiples.exit.for.end_crit_edge:           ; preds = %clear_multiples.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

clear_multiples.exit.for.body_crit_edge:          ; preds = %clear_multiples.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %clear_multiples.exit.for.end_crit_edge, %if.end17.for.end_crit_edge
  %sz33 = getelementptr inbounds %struct.primes, ptr %call9.i, i32 0, i32 2
  %15 = ptrtoint ptr %sz33 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %sz33, align 4
  %last35 = getelementptr inbounds %struct.primes, ptr %call9.i, i32 0, i32 1
  %16 = ptrtoint ptr %last35 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %last35, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %x)
  %cmp36.not = icmp ugt i32 %17, %x
  br i1 %cmp36.not, label %do.body49, label %do.body40, !prof !83

do.body40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/math/prime_numbers.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 150, 0\0A.popsection", ""() #8, !srcloc !84
  unreachable

do.body49:                                        ; preds = %for.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  store volatile ptr %call9.i, ptr @primes, align 4
  %cmp86.not = icmp eq ptr %1, @small_primes
  %tobool89.not = icmp eq ptr %1, null
  %or.cond = or i1 %cmp86.not, %tobool89.not
  br i1 %or.cond, label %do.body49.unlock_crit_edge, label %do.end93

do.body49.unlock_crit_edge:                       ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

do.end93:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #8
  br label %unlock

unlock:                                           ; preds = %do.end93, %do.body49.unlock_crit_edge, %if.then16
  tail call void @mutex_unlock(ptr noundef nonnull @lock) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %unlock ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_prime_number(i32 noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = load volatile ptr, ptr @primes, align 4
  %call = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b40 = load i1, ptr @is_prime_number.__warned, align 1
  br i1 %.b40, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @is_prime_number.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 227, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %sz74 = getelementptr inbounds %struct.primes, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %sz74 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sz74, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %x)
  %cmp.not75 = icmp ugt i32 %6, %x
  br i1 %cmp.not75, label %do.end7.while.end_crit_edge, label %do.end7.while.body_crit_edge

do.end7.while.body_crit_edge:                     ; preds = %do.end7
  br label %while.body

do.end7.while.end_crit_edge:                      ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %do.end28.while.body_crit_edge, %do.end7.while.body_crit_edge
  %call.i52 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i52, label %while.body.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i55

while.body.rcu_read_unlock.exit_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i55:                                ; preds = %while.body
  %call1.i53 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, %while.body.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !82
  %7 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i.i59 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i60, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %call9 = tail call fastcc zeroext i1 @expand_to_next_prime(i32 noundef %x)
  br i1 %call9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %rcu_read_unlock.exit
  %call.i61 = tail call i32 @int_sqrt(i32 noundef %x) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i61)
  %cmp7.i = icmp ugt i32 %call.i61, 1
  br i1 %cmp7.i, label %if.then10.while.body.i_crit_edge, label %if.then10.slow_is_prime_number.exit_crit_edge

if.then10.slow_is_prime_number.exit_crit_edge:    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %slow_is_prime_number.exit

if.then10.while.body.i_crit_edge:                 ; preds = %if.then10
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.then10.while.body.i_crit_edge
  %y.08.i = phi i32 [ %dec.i, %if.end.i.while.body.i_crit_edge ], [ %call.i61, %if.then10.while.body.i_crit_edge ]
  %rem.i = urem i32 %x, %y.08.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp1.i = icmp eq i32 %rem.i, 0
  br i1 %cmp1.i, label %while.body.i.slow_is_prime_number.exit_crit_edge, label %if.end.i

while.body.i.slow_is_prime_number.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %slow_is_prime_number.exit

if.end.i:                                         ; preds = %while.body.i
  %dec.i = add i32 %y.08.i, -1
  %cmp.i = icmp ugt i32 %dec.i, 1
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.slow_is_prime_number.exit_crit_edge

if.end.i.slow_is_prime_number.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %slow_is_prime_number.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

slow_is_prime_number.exit:                        ; preds = %if.end.i.slow_is_prime_number.exit_crit_edge, %while.body.i.slow_is_prime_number.exit_crit_edge, %if.then10.slow_is_prime_number.exit_crit_edge
  %y.0.lcssa.i = phi i32 [ %call.i61, %if.then10.slow_is_prime_number.exit_crit_edge ], [ 1, %if.end.i.slow_is_prime_number.exit_crit_edge ], [ %y.08.i, %while.body.i.slow_is_prime_number.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %y.0.lcssa.i)
  %cmp2.i = icmp eq i32 %y.0.lcssa.i, 1
  br label %cleanup

if.end12:                                         ; preds = %rcu_read_unlock.exit
  %11 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i.i41 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i41 to ptr
  %preempt_count.i.i.i.i42 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i42, align 4
  %add.i.i.i43 = add i32 %14, 1
  store volatile i32 %add.i.i.i43, ptr %preempt_count.i.i.i.i42, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i44 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i44, label %if.end12.rcu_read_lock.exit51_crit_edge, label %land.lhs.true.i47

if.end12.rcu_read_lock.exit51_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit51

land.lhs.true.i47:                                ; preds = %if.end12
  %call1.i45 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i45)
  %tobool.not.i46 = icmp eq i32 %call1.i45, 0
  br i1 %tobool.not.i46, label %land.lhs.true.i47.rcu_read_lock.exit51_crit_edge, label %land.lhs.true2.i49

land.lhs.true.i47.rcu_read_lock.exit51_crit_edge: ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit51

land.lhs.true2.i49:                               ; preds = %land.lhs.true.i47
  %.b4.i48 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i48, label %land.lhs.true2.i49.rcu_read_lock.exit51_crit_edge, label %if.then.i50

land.lhs.true2.i49.rcu_read_lock.exit51_crit_edge: ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit51

if.then.i50:                                      ; preds = %land.lhs.true2.i49
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit51

rcu_read_lock.exit51:                             ; preds = %if.then.i50, %land.lhs.true2.i49.rcu_read_lock.exit51_crit_edge, %land.lhs.true.i47.rcu_read_lock.exit51_crit_edge, %if.end12.rcu_read_lock.exit51_crit_edge
  %15 = load volatile ptr, ptr @primes, align 4
  %call18 = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true20, label %rcu_read_lock.exit51.do.end28_crit_edge

rcu_read_lock.exit51.do.end28_crit_edge:          ; preds = %rcu_read_lock.exit51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

land.lhs.true20:                                  ; preds = %rcu_read_lock.exit51
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true20.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true20.do.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true20
  %.b3839 = load i1, ptr @is_prime_number.__warned.3, align 1
  br i1 %.b3839, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @is_prime_number.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 235, ptr noundef nonnull @.str.1) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true20.do.end28_crit_edge, %rcu_read_lock.exit51.do.end28_crit_edge
  %sz = getelementptr inbounds %struct.primes, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sz, align 4
  %cmp.not = icmp ugt i32 %17, %x
  br i1 %cmp.not, label %do.end28.while.end_crit_edge, label %do.end28.while.body_crit_edge

do.end28.while.body_crit_edge:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

do.end28.while.end_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end28.while.end_crit_edge, %do.end7.while.end_crit_edge
  %p.0.lcssa = phi ptr [ %4, %do.end7.while.end_crit_edge ], [ %15, %do.end28.while.end_crit_edge ]
  %primes = getelementptr inbounds %struct.primes, ptr %p.0.lcssa, i32 0, i32 3
  %div3.i = lshr i32 %x, 5
  %arrayidx.i = getelementptr i32, ptr %primes, i32 %div3.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %x, 31
  %20 = shl nuw i32 1, %and.i
  %21 = and i32 %19, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool31 = icmp ne i32 %21, 0
  %call.i62 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i62, label %while.end.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true.i65

while.end.rcu_read_unlock.exit72_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit72

land.lhs.true.i65:                                ; preds = %while.end
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool.not.i64, label %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, label %land.lhs.true2.i67

land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit72

land.lhs.true2.i67:                               ; preds = %land.lhs.true.i65
  %.b4.i66 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66, label %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, label %if.then.i68

land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge: ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit72

if.then.i68:                                      ; preds = %land.lhs.true2.i67
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #8
  br label %rcu_read_unlock.exit72

rcu_read_unlock.exit72:                           ; preds = %if.then.i68, %land.lhs.true2.i67.rcu_read_unlock.exit72_crit_edge, %land.lhs.true.i65.rcu_read_unlock.exit72_crit_edge, %while.end.rcu_read_unlock.exit72_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !82
  %22 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i.i69 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i69 to ptr
  %preempt_count.i.i.i.i70 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i70, align 4
  %sub.i.i.i71 = add i32 %25, -1
  store volatile i32 %sub.i.i.i71, ptr %preempt_count.i.i.i.i70, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit72, %slow_is_prime_number.exit
  %retval.0 = phi i1 [ %cmp2.i, %slow_is_prime_number.exit ], [ %tobool31, %rcu_read_unlock.exit72 ]
  ret i1 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @primes_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @lock, i32 noundef 0) #8
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @lock, i32 0, i32 5), i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b55.i = load i1, ptr @free_primes.__warned, align 1
  br i1 %.b55.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @free_primes.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 166, ptr noundef nonnull @.str.8) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %0 = load ptr, ptr @primes, align 4
  %cmp.not.i = icmp eq ptr %0, @small_primes
  br i1 %cmp.not.i, label %do.end.i.free_primes.exit_crit_edge, label %do.body6.i

do.end.i.free_primes.exit_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_primes.exit

do.body6.i:                                       ; preds = %do.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  store volatile ptr @small_primes, ptr @primes, align 4
  %tobool44.not.i = icmp eq ptr %0, null
  br i1 %tobool44.not.i, label %do.body6.i.free_primes.exit_crit_edge, label %do.end48.i

do.body6.i.free_primes.exit_crit_edge:            ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_primes.exit

do.end48.i:                                       ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kvfree_call_rcu(ptr noundef nonnull %0, ptr noundef null) #8
  br label %free_primes.exit

free_primes.exit:                                 ; preds = %do.end48.i, %do.body6.i.free_primes.exit_crit_edge, %do.end.i.free_primes.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @lock) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @primes_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @selftest_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.selftest.exit_crit_edge, label %for.cond.preheader.i

entry.selftest.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %selftest.exit

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %cmp75.i = icmp ugt i32 %0, 2
  br i1 %cmp75.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.do.end33.i_crit_edge

for.cond.preheader.i.do.end33.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %x.077.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 2, %for.cond.preheader.i.for.body.i_crit_edge ]
  %last.076.i = phi i32 [ %last.1.ph.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call.i.i = tail call i32 @int_sqrt(i32 noundef %x.077.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp7.i.i = icmp ugt i32 %call.i.i, 1
  br i1 %cmp7.i.i, label %for.body.i.while.body.i.i_crit_edge, label %slow_is_prime_number.exit.i

for.body.i.while.body.i.i_crit_edge:              ; preds = %for.body.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %for.body.i.while.body.i.i_crit_edge
  %y.08.i.i = phi i32 [ %dec.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %call.i.i, %for.body.i.while.body.i.i_crit_edge ]
  %rem.i.i = urem i32 %x.077.i, %y.08.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %cmp1.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %cmp1.i.i, label %while.body.i.slow_is_prime_number.exit_crit_edge.i, label %if.end.i.i

while.body.i.slow_is_prime_number.exit_crit_edge.i: ; preds = %while.body.i.i
  %call154.i = tail call zeroext i1 @is_prime_number(i32 noundef %x.077.i) #8
  br i1 %call154.i, label %while.body.i.slow_is_prime_number.exit_crit_edge.i..thread.i_crit_edge, label %while.body.i.slow_is_prime_number.exit_crit_edge.i.for.inc.i_crit_edge

while.body.i.slow_is_prime_number.exit_crit_edge.i.for.inc.i_crit_edge: ; preds = %while.body.i.slow_is_prime_number.exit_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

while.body.i.slow_is_prime_number.exit_crit_edge.i..thread.i_crit_edge: ; preds = %while.body.i.slow_is_prime_number.exit_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %.thread.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %dec.i.i = add i32 %y.08.i.i, -1
  %cmp.i.i = icmp ugt i32 %dec.i.i, 1
  br i1 %cmp.i.i, label %if.end.i.i.while.body.i.i_crit_edge, label %if.end.i.slow_is_prime_number.exit_crit_edge.i

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end.i.slow_is_prime_number.exit_crit_edge.i:   ; preds = %if.end.i.i
  %call158.i = tail call zeroext i1 @is_prime_number(i32 noundef %x.077.i) #8
  br i1 %call158.i, label %if.end.i.slow_is_prime_number.exit_crit_edge.i.if.end18.i_crit_edge, label %if.end.i.slow_is_prime_number.exit_crit_edge.i.do.end.thread.thread.i_crit_edge

if.end.i.slow_is_prime_number.exit_crit_edge.i.do.end.thread.thread.i_crit_edge: ; preds = %if.end.i.slow_is_prime_number.exit_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.thread.thread.i

if.end.i.slow_is_prime_number.exit_crit_edge.i.if.end18.i_crit_edge: ; preds = %if.end.i.slow_is_prime_number.exit_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

slow_is_prime_number.exit.i:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp2.i.i = icmp eq i32 %call.i.i, 1
  %call1.i = tail call zeroext i1 @is_prime_number(i32 noundef %x.077.i) #8
  %1 = xor i1 %cmp2.i.i, %call1.i
  br i1 %1, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %slow_is_prime_number.exit.i
  %.str.13..str.14.i = select i1 %cmp2.i.i, ptr @.str.13, ptr @.str.14
  br i1 %call1.i, label %do.end.i..thread.i_crit_edge, label %do.end.i.do.end.thread.thread.i_crit_edge

do.end.i.do.end.thread.thread.i_crit_edge:        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.thread.thread.i

do.end.i..thread.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %.thread.i

.thread.i:                                        ; preds = %do.end.i..thread.i_crit_edge, %while.body.i.slow_is_prime_number.exit_crit_edge.i..thread.i_crit_edge
  %2 = phi ptr [ %.str.13..str.14.i, %do.end.i..thread.i_crit_edge ], [ @.str.14, %while.body.i.slow_is_prime_number.exit_crit_edge.i..thread.i_crit_edge ]
  br label %do.end.thread.thread.i

do.end.thread.thread.i:                           ; preds = %.thread.i, %do.end.i.do.end.thread.thread.i_crit_edge, %if.end.i.slow_is_prime_number.exit_crit_edge.i.do.end.thread.thread.i_crit_edge
  %3 = phi ptr [ %2, %.thread.i ], [ %.str.13..str.14.i, %do.end.i.do.end.thread.thread.i_crit_edge ], [ @.str.13, %if.end.i.slow_is_prime_number.exit_crit_edge.i.do.end.thread.thread.i_crit_edge ]
  %4 = phi ptr [ @.str.13, %.thread.i ], [ @.str.14, %do.end.i.do.end.thread.thread.i_crit_edge ], [ @.str.14, %if.end.i.slow_is_prime_number.exit_crit_edge.i.do.end.thread.thread.i_crit_edge ]
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %x.077.i, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  br label %err.i

if.end15.i:                                       ; preds = %slow_is_prime_number.exit.i
  br i1 %cmp2.i.i, label %if.end15.i.if.end18.i_crit_edge, label %if.end15.i.for.inc.i_crit_edge

if.end15.i.for.inc.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end15.i.if.end18.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end15.i.if.end18.i_crit_edge, %if.end.i.slow_is_prime_number.exit_crit_edge.i.if.end18.i_crit_edge
  %call19.i = tail call i32 @next_prime_number(i32 noundef %last.076.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call19.i, i32 %x.077.i)
  %cmp20.not.i = icmp eq i32 %call19.i, %x.077.i
  br i1 %cmp20.not.i, label %if.end18.i.for.inc.i_crit_edge, label %do.end25.i

if.end18.i.for.inc.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %call27.i = tail call i32 @next_prime_number(i32 noundef %last.076.i) #8
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %last.076.i, i32 noundef %x.077.i, i32 noundef %call27.i) #12
  br label %err.i

for.inc.i:                                        ; preds = %if.end18.i.for.inc.i_crit_edge, %if.end15.i.for.inc.i_crit_edge, %while.body.i.slow_is_prime_number.exit_crit_edge.i.for.inc.i_crit_edge
  %last.1.ph.i = phi i32 [ %x.077.i, %if.end18.i.for.inc.i_crit_edge ], [ %last.076.i, %if.end15.i.for.inc.i_crit_edge ], [ %last.076.i, %while.body.i.slow_is_prime_number.exit_crit_edge.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %x.077.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %0
  br i1 %exitcond.not.i, label %for.inc.i.do.end33.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end33.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33.i

do.end33.i:                                       ; preds = %for.inc.i.do.end33.i_crit_edge, %for.cond.preheader.i.do.end33.i_crit_edge
  %last.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.do.end33.i_crit_edge ], [ %last.1.ph.i, %for.inc.i.do.end33.i_crit_edge ]
  %x.0.lcssa.i = phi i32 [ 2, %for.cond.preheader.i.do.end33.i_crit_edge ], [ %0, %for.inc.i.do.end33.i_crit_edge ]
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.12, i32 noundef %x.0.lcssa.i, i32 noundef %last.0.lcssa.i) #12
  br label %selftest.exit

err.i:                                            ; preds = %do.end25.i, %do.end.thread.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 4096) #13
  %6 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !81
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i, label %err.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

err.i.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %err.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %err.i.rcu_read_lock.exit.i.i_crit_edge
  %10 = load volatile ptr, ptr @primes, align 4
  %call2.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b32.i.i = load i1, ptr @dump_primes.__warned, align 1
  br i1 %.b32.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @dump_primes.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 252, ptr noundef nonnull @.str.1) #8
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end8.i.i_crit_edge
  %tobool10.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not.i.i, label %do.end8.i.i.do.end16.i.i_crit_edge, label %if.then11.i.i

do.end8.i.i.do.end16.i.i_crit_edge:               ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16.i.i

if.then11.i.i:                                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %primes.i.i = getelementptr inbounds %struct.primes, ptr %10, i32 0, i32 3
  %sz.i.i = getelementptr inbounds %struct.primes, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %sz.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sz.i.i, align 4
  %call12.i.i = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef nonnull %call7.i.i.i, ptr noundef %primes.i.i, i32 noundef %12) #8
  br label %do.end16.i.i

do.end16.i.i:                                     ; preds = %if.then11.i.i, %do.end8.i.i.do.end16.i.i_crit_edge
  %last.i.i = getelementptr inbounds %struct.primes, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last.i.i, align 4
  %sz18.i.i = getelementptr inbounds %struct.primes, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %sz18.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sz18.i.i, align 4
  %sub.i.i = add i32 %16, 31
  %div31.i.i = lshr i32 %sub.i.i, 5
  %sub21.i.i = add nsw i32 %div31.i.i, -1
  %arrayidx.i.i = getelementptr %struct.primes, ptr %10, i32 0, i32 3, i32 %sub21.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %14, i32 noundef %16, i32 noundef %18, ptr noundef %call7.i.i.i) #12
  %call.i33.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i33.i.i, label %do.end16.i.i.dump_primes.exit.i_crit_edge, label %land.lhs.true.i36.i.i

do.end16.i.i.dump_primes.exit.i_crit_edge:        ; preds = %do.end16.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dump_primes.exit.i

land.lhs.true.i36.i.i:                            ; preds = %do.end16.i.i
  %call1.i34.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i34.i.i)
  %tobool.not.i35.i.i = icmp eq i32 %call1.i34.i.i, 0
  br i1 %tobool.not.i35.i.i, label %land.lhs.true.i36.i.i.dump_primes.exit.i_crit_edge, label %land.lhs.true2.i38.i.i

land.lhs.true.i36.i.i.dump_primes.exit.i_crit_edge: ; preds = %land.lhs.true.i36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dump_primes.exit.i

land.lhs.true2.i38.i.i:                           ; preds = %land.lhs.true.i36.i.i
  %.b4.i37.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i37.i.i, label %land.lhs.true2.i38.i.i.dump_primes.exit.i_crit_edge, label %if.then.i39.i.i

land.lhs.true2.i38.i.i.dump_primes.exit.i_crit_edge: ; preds = %land.lhs.true2.i38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dump_primes.exit.i

if.then.i39.i.i:                                  ; preds = %land.lhs.true2.i38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.7) #8
  br label %dump_primes.exit.i

dump_primes.exit.i:                               ; preds = %if.then.i39.i.i, %land.lhs.true2.i38.i.i.dump_primes.exit.i_crit_edge, %land.lhs.true.i36.i.i.dump_primes.exit.i_crit_edge, %do.end16.i.i.dump_primes.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !82
  %19 = tail call i32 @llvm.read_register.i32(metadata !71) #8
  %and.i.i.i.i.i40.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i40.i.i to ptr
  %preempt_count.i.i.i.i41.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i41.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i41.i.i, align 4
  %sub.i.i.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i41.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  tail call void @kfree(ptr noundef %call7.i.i.i) #8
  br label %selftest.exit

selftest.exit:                                    ; preds = %dump_primes.exit.i, %do.end33.i, %entry.selftest.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %dump_primes.exit.i ], [ 0, %do.end33.i ], [ 0, %entry.selftest.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @int_sqrt(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !32, !34, !36, !38, !39, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70}
!llvm.named.register.sp = !{!71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../lib/math/prime_numbers.c", i32 193, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!5 = !{!"../lib/math/prime_numbers.c", i32 201, i32 7}
!6 = !{ptr @__ksymtab_next_prime_number, !7, !"__ksymtab_next_prime_number", i1 false, i1 false}
!7 = !{!"../lib/math/prime_numbers.c", i32 208, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../lib/math/prime_numbers.c", i32 227, i32 6}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../lib/math/prime_numbers.c", i32 235, i32 7}
!12 = !{ptr @__ksymtab_is_prime_number, !13, !"__ksymtab_is_prime_number", i1 false, i1 false}
!13 = !{!"../lib/math/prime_numbers.c", i32 242, i32 1}
!14 = !{ptr @__initcall__kmod_prime_numbers__191_310_primes_init6, !15, !"__initcall__kmod_prime_numbers__191_310_primes_init6", i1 false, i1 false}
!15 = !{!"../lib/math/prime_numbers.c", i32 310, i32 1}
!16 = !{ptr @__exitcall_primes_exit, !17, !"__exitcall_primes_exit", i1 false, i1 false}
!17 = !{!"../lib/math/prime_numbers.c", i32 311, i32 1}
!18 = !{ptr @__param_selftest, !19, !"__param_selftest", i1 false, i1 false}
!19 = !{!"../lib/math/prime_numbers.c", i32 313, i32 1}
!20 = !{ptr @__UNIQUE_ID_selftesttype192, !19, !"__UNIQUE_ID_selftesttype192", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_author193, !22, !"__UNIQUE_ID_author193", i1 false, i1 false}
!22 = !{!"../lib/math/prime_numbers.c", i32 315, i32 1}
!23 = !{ptr @__UNIQUE_ID_file194, !24, !"__UNIQUE_ID_file194", i1 false, i1 false}
!24 = !{!"../lib/math/prime_numbers.c", i32 316, i32 1}
!25 = !{ptr @__UNIQUE_ID_license195, !24, !"__UNIQUE_ID_license195", i1 false, i1 false}
!26 = !{ptr @selftest_max, !27, !"selftest_max", i1 false, i1 false}
!27 = !{!"../lib/math/prime_numbers.c", i32 67, i32 22}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!30 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @primes, !33, !"primes", i1 false, i1 false}
!33 = !{!"../lib/math/prime_numbers.c", i32 65, i32 35}
!34 = !{ptr @small_primes, !35, !"small_primes", i1 false, i1 false}
!35 = !{!"../lib/math/prime_numbers.c", i32 43, i32 28}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!38 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../lib/math/prime_numbers.c", i32 134, i32 6}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/math/prime_numbers.c", i32 64, i32 8}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @lock, !43, !"lock", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../lib/math/prime_numbers.c", i32 166, i32 6}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/math/prime_numbers.c", i32 276, i32 4}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @selftest._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @selftest._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../lib/math/prime_numbers.c", i32 285, i32 4}
!57 = !{ptr @selftest._entry.15, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @selftest._entry_ptr.17, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../lib/math/prime_numbers.c", i32 292, i32 2}
!61 = !{ptr @selftest._entry.18, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @selftest._entry_ptr.20, !60, !"_entry_ptr", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../lib/math/prime_numbers.c", i32 252, i32 6}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../lib/math/prime_numbers.c", i32 256, i32 2}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @dump_primes._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @dump_primes._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @__param_str_selftest, !19, !"__param_str_selftest", i1 false, i1 false}
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
!81 = !{i64 2149360935}
!82 = !{i64 2149361201}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2152417808, i64 2152418297, i64 2152417845, i64 2152417901, i64 2152417935, i64 2152417959, i64 2152418000, i64 2152418021, i64 2152418049, i64 2152418083}
!85 = !{i64 2152423799}
!86 = !{i64 2152434225}
