; ModuleID = '/llk/IR_all_yes/drivers/crypto/gemini/sl3516-ce-cipher.c_pt.bc'
source_filename = "../drivers/crypto/gemini/sl3516-ce-cipher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.sl3516_ce_dev = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, ptr, i32, ptr, i32, i32, %struct.hwrng, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.sginfo = type { i32, i32 }
%struct.sl3516_ce_cipher_req_ctx = type { [6 x %struct.sginfo], [6 x %struct.sginfo], i32, i32, i32, ptr, i32, i32, [8 x i8], %struct.skcipher_request }
%struct.pkt_control_ecb = type { %struct.pkt_control_header, %struct.pkt_control_cipher, [32 x i8] }
%struct.pkt_control_header = type { i32 }
%struct.pkt_control_cipher = type { i32 }

@sl3516_ce_cipher_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 325, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ERROR: Cannot allocate fallback for %s %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sl3516_ce_cipher_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/crypto/gemini/sl3516-ce-cipher.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sl3516_ce_cipher_init._entry_ptr = internal global ptr @sl3516_ce_cipher_init._entry, section ".printk_index", align 4
@sl3516_ce_cipher_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 334, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fallback for %s is %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sl3516_ce_cipher_init._entry_ptr.8 = internal global ptr @sl3516_ce_cipher_init._entry.5, section ".printk_index", align 4
@sl3516_ce_aes_setkey.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sl3516_ce\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sl3516_ce_aes_setkey\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERROR: Invalid keylen %u\0A\00", [38 x i8] zeroinitializer }, align 32
@sl3516_ce_cipher.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sl3516_ce_cipher\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %s %u %x IV(%p %u) key=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@sl3516_ce_cipher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 153, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid sg number %d\0A\00", [42 x i8] zeroinitializer }, align 32
@sl3516_ce_cipher._entry_ptr = internal global ptr @sl3516_ce_cipher._entry, section ".printk_index", align 4
@sl3516_ce_cipher._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 162, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sl3516_ce_cipher._entry_ptr.16 = internal global ptr @sl3516_ce_cipher._entry.15, section ".printk_index", align 4
@sl3516_ce_cipher._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sl3516_ce_cipher._entry_ptr.18 = internal global ptr @sl3516_ce_cipher._entry.17, section ".printk_index", align 4
@sl3516_ce_cipher.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.2, ptr @.str.19, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s total=%u SGS(%d %u off=%d) todo=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@sl3516_ce_cipher._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.12, ptr @.str.2, i32 192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"remaining len %d/%u nr_sgs=%d\0A\00", [33 x i8] zeroinitializer }, align 32
@sl3516_ce_cipher._entry_ptr.22 = internal global ptr @sl3516_ce_cipher._entry.20, section ".printk_index", align 4
@sl3516_ce_cipher.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.2, ptr @.str.23, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s total=%u SGD(%d %u off=%d) todo=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@sl3516_ce_cipher._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.12, ptr @.str.2, i32 215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"remaining len %d\0A\00", [46 x i8] zeroinitializer }, align 32
@sl3516_ce_cipher._entry_ptr.26 = internal global ptr @sl3516_ce_cipher._entry.24, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 324, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 332, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 374, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 141, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 153, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 162, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 169, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 184, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 192, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 206, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [44 x i8] c"../drivers/crypto/gemini/sl3516-ce-cipher.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 215, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @sl3516_ce_cipher._entry, ptr @sl3516_ce_cipher._entry.15, ptr @sl3516_ce_cipher._entry.17, ptr @sl3516_ce_cipher._entry.20, ptr @sl3516_ce_cipher._entry.24, ptr @sl3516_ce_cipher._entry_ptr, ptr @sl3516_ce_cipher._entry_ptr.16, ptr @sl3516_ce_cipher._entry_ptr.18, ptr @sl3516_ce_cipher._entry_ptr.22, ptr @sl3516_ce_cipher._entry_ptr.26, ptr @sl3516_ce_cipher_init._entry, ptr @sl3516_ce_cipher_init._entry.5, ptr @sl3516_ce_cipher_init._entry_ptr, ptr @sl3516_ce_cipher_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_cipher_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_cipher_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_cipher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_cipher._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_cipher._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_cipher._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl3516_ce_cipher._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sl3516_ce_skdecrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 256)
  %op_dir = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 5, i32 56
  %3 = ptrtoint ptr %op_dir to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %op_dir, align 32
  %call3 = tail call fastcc zeroext i1 @sl3516_ce_need_fallback(ptr noundef %areq)
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %5, i32 12
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %stat_fb.i = getelementptr i8, ptr %7, i32 516
  %8 = ptrtoint ptr %stat_fb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_fb.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %stat_fb.i, align 4
  %fallback_req.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2
  %fallback_tfm.i = getelementptr i8, ptr %5, i32 152
  %10 = ptrtoint ptr %fallback_tfm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fallback_tfm.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %11, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 3
  %12 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 1
  %19 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 2
  %20 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 4
  %21 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %14, ptr %flags4.i.i, align 4
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %22 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %24 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst.i, align 4
  %26 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %areq, align 128
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 1
  %28 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iv.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 2
  %30 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %23, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 3
  %31 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %25, ptr %dst2.i.i, align 4
  %32 = ptrtoint ptr %fallback_req.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %27, ptr %fallback_req.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 1
  %33 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %29, ptr %iv4.i.i, align 4
  %34 = ptrtoint ptr %op_dir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %op_dir, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp.i = icmp eq i32 %35, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req.i) #5
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ce = getelementptr i8, ptr %1, i32 148
  %36 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ce, align 4
  %engine5 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %engine5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %engine5, align 4
  %call6 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %39, ptr noundef %areq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call9.i, %if.then.i ], [ %call11.i, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sl3516_ce_need_fallback(ptr nocapture noundef readonly %areq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %ce2 = getelementptr i8, ptr %1, i32 148
  %2 = ptrtoint ptr %ce2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ce2, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %4 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %areq, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp ne i32 %5, 0
  %rem = and i32 %5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %fallback_mod16 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 23
  %6 = ptrtoint ptr %fallback_mod16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fallback_mod16, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %fallback_mod16, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src, align 8
  %call5 = tail call i32 @sg_nents(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, 3
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %fallback_sg_count_tx = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 20
  %10 = ptrtoint ptr %fallback_sg_count_tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fallback_sg_count_tx, align 4
  %inc8 = add i32 %11, 1
  store i32 %inc8, ptr %fallback_sg_count_tx, align 4
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst, align 4
  %call11 = tail call i32 @sg_nents(ptr noundef %13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call11)
  %cmp12 = icmp sgt i32 %call11, 6
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %fallback_sg_count_rx = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 21
  %14 = ptrtoint ptr %fallback_sg_count_rx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fallback_sg_count_rx, align 4
  %inc14 = add i32 %15, 1
  store i32 %inc14, ptr %fallback_sg_count_rx, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src, align 8
  %tobool17.not125 = icmp eq ptr %17, null
  br i1 %tobool17.not125, label %if.end15.while.end_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  br label %while.body

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %if.end33.while.body_crit_edge, %if.end15.while.body_crit_edge
  %sg.0126 = phi ptr [ %call34, %if.end33.while.body_crit_edge ], [ %17, %if.end15.while.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.0126, i32 0, i32 2
  %18 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length, align 4
  %rem18 = and i32 %19, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem18)
  %cmp19.not = icmp eq i32 %rem18, 0
  br i1 %cmp19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %fallback_mod1621 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 23
  %20 = ptrtoint ptr %fallback_mod1621 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fallback_mod1621, align 4
  %inc22 = add i32 %21, 1
  store i32 %inc22, ptr %fallback_mod1621, align 4
  br label %cleanup

if.end23:                                         ; preds = %while.body
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0126, i32 0, i32 4
  %22 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_length, align 4
  %rem24 = and i32 %23, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem24)
  %cmp25.not = icmp eq i32 %rem24, 0
  br i1 %cmp25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %fallback_mod1627 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 23
  %24 = ptrtoint ptr %fallback_mod1627 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fallback_mod1627, align 4
  %inc28 = add i32 %25, 1
  store i32 %inc28, ptr %fallback_mod1627, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.0126, i32 0, i32 1
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %and = and i32 %27, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp30 = icmp eq i32 %and, 0
  br i1 %cmp30, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %fallback_align16 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 24
  %28 = ptrtoint ptr %fallback_align16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %fallback_align16, align 4
  %inc32 = add i32 %29, 1
  store i32 %inc32, ptr %fallback_align16, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %call34 = tail call ptr @sg_next(ptr noundef nonnull %sg.0126) #5
  %tobool17.not = icmp eq ptr %call34, null
  br i1 %tobool17.not, label %if.end33.while.end_crit_edge, label %if.end33.while.body_crit_edge

if.end33.while.body_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end33.while.end_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end33.while.end_crit_edge, %if.end15.while.end_crit_edge
  %30 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst, align 4
  %tobool37.not127 = icmp eq ptr %31, null
  br i1 %tobool37.not127, label %while.end.while.end61_crit_edge, label %while.end.while.body38_crit_edge

while.end.while.body38_crit_edge:                 ; preds = %while.end
  br label %while.body38

while.end.while.end61_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end61

while.body38:                                     ; preds = %if.end59.while.body38_crit_edge, %while.end.while.body38_crit_edge
  %sg.1128 = phi ptr [ %call60, %if.end59.while.body38_crit_edge ], [ %31, %while.end.while.body38_crit_edge ]
  %length39 = getelementptr inbounds %struct.scatterlist, ptr %sg.1128, i32 0, i32 2
  %32 = ptrtoint ptr %length39 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length39, align 4
  %rem40 = and i32 %33, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem40)
  %cmp41.not = icmp eq i32 %rem40, 0
  br i1 %cmp41.not, label %if.end45, label %if.then42

if.then42:                                        ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #7
  %fallback_mod1643 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 23
  %34 = ptrtoint ptr %fallback_mod1643 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fallback_mod1643, align 4
  %inc44 = add i32 %35, 1
  store i32 %inc44, ptr %fallback_mod1643, align 4
  br label %cleanup

if.end45:                                         ; preds = %while.body38
  %dma_length46 = getelementptr inbounds %struct.scatterlist, ptr %sg.1128, i32 0, i32 4
  %36 = ptrtoint ptr %dma_length46 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_length46, align 4
  %rem47 = and i32 %37, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem47)
  %cmp48.not = icmp eq i32 %rem47, 0
  br i1 %cmp48.not, label %if.end52, label %if.then49

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %fallback_mod1650 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 23
  %38 = ptrtoint ptr %fallback_mod1650 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fallback_mod1650, align 4
  %inc51 = add i32 %39, 1
  store i32 %inc51, ptr %fallback_mod1650, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.end45
  %offset53 = getelementptr inbounds %struct.scatterlist, ptr %sg.1128, i32 0, i32 1
  %40 = ptrtoint ptr %offset53 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %offset53, align 4
  %and54 = and i32 %41, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %cmp55 = icmp eq i32 %and54, 0
  br i1 %cmp55, label %if.end59, label %if.then56

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %fallback_align1657 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 24
  %42 = ptrtoint ptr %fallback_align1657 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fallback_align1657, align 4
  %inc58 = add i32 %43, 1
  store i32 %inc58, ptr %fallback_align1657, align 4
  br label %cleanup

if.end59:                                         ; preds = %if.end52
  %call60 = tail call ptr @sg_next(ptr noundef nonnull %sg.1128) #5
  %tobool37.not = icmp eq ptr %call60, null
  br i1 %tobool37.not, label %if.end59.while.end61_crit_edge, label %if.end59.while.body38_crit_edge

if.end59.while.body38_crit_edge:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body38

if.end59.while.end61_crit_edge:                   ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end61

while.end61:                                      ; preds = %if.end59.while.end61_crit_edge, %while.end.while.end61_crit_edge
  %44 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %src, align 8
  %46 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dst, align 4
  %tobool65.not129 = icmp eq ptr %45, null
  %tobool66.not130 = icmp eq ptr %47, null
  %or.cond121131 = select i1 %tobool65.not129, i1 true, i1 %tobool66.not130
  br i1 %or.cond121131, label %while.end61.while.end76_crit_edge, label %while.end61.while.body67_crit_edge

while.end61.while.body67_crit_edge:               ; preds = %while.end61
  br label %while.body67

while.end61.while.end76_crit_edge:                ; preds = %while.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end76

while.body67:                                     ; preds = %if.end73.while.body67_crit_edge, %while.end61.while.body67_crit_edge
  %out_sg.0133 = phi ptr [ %call75, %if.end73.while.body67_crit_edge ], [ %47, %while.end61.while.body67_crit_edge ]
  %in_sg.0132 = phi ptr [ %call74, %if.end73.while.body67_crit_edge ], [ %45, %while.end61.while.body67_crit_edge ]
  %length68 = getelementptr inbounds %struct.scatterlist, ptr %in_sg.0132, i32 0, i32 2
  %48 = ptrtoint ptr %length68 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %length68, align 4
  %length69 = getelementptr inbounds %struct.scatterlist, ptr %out_sg.0133, i32 0, i32 2
  %50 = ptrtoint ptr %length69 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %length69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp70.not = icmp eq i32 %49, %51
  br i1 %cmp70.not, label %if.end73, label %if.then71

if.then71:                                        ; preds = %while.body67
  call void @__sanitizer_cov_trace_pc() #7
  %fallback_not_same_len = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 22
  %52 = ptrtoint ptr %fallback_not_same_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fallback_not_same_len, align 4
  %inc72 = add i32 %53, 1
  store i32 %inc72, ptr %fallback_not_same_len, align 4
  br label %cleanup

if.end73:                                         ; preds = %while.body67
  %call74 = tail call ptr @sg_next(ptr noundef nonnull %in_sg.0132) #5
  %call75 = tail call ptr @sg_next(ptr noundef nonnull %out_sg.0133) #5
  %tobool65.not = icmp eq ptr %call74, null
  %tobool66.not = icmp eq ptr %call75, null
  %or.cond121 = select i1 %tobool65.not, i1 true, i1 %tobool66.not
  br i1 %or.cond121, label %if.end73.while.end76_crit_edge, label %if.end73.while.body67_crit_edge

if.end73.while.body67_crit_edge:                  ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body67

if.end73.while.end76_crit_edge:                   ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end76

while.end76:                                      ; preds = %if.end73.while.end76_crit_edge, %while.end61.while.end76_crit_edge
  %tobool65.not.lcssa = phi i1 [ %tobool65.not129, %while.end61.while.end76_crit_edge ], [ %tobool65.not, %if.end73.while.end76_crit_edge ]
  %tobool66.not.lcssa = phi i1 [ %tobool66.not130, %while.end61.while.end76_crit_edge ], [ %tobool66.not, %if.end73.while.end76_crit_edge ]
  %or.cond122 = select i1 %tobool65.not.lcssa, i1 %tobool66.not.lcssa, i1 false
  %not.or.cond122 = xor i1 %or.cond122, true
  br label %cleanup

cleanup:                                          ; preds = %while.end76, %if.then71, %if.then56, %if.then49, %if.then42, %if.then31, %if.then26, %if.then20, %if.then13, %if.then7, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ true, %if.then7 ], [ true, %if.then13 ], [ true, %if.then20 ], [ true, %if.then26 ], [ true, %if.then31 ], [ true, %if.then42 ], [ true, %if.then49 ], [ true, %if.then56 ], [ true, %if.then71 ], [ %not.or.cond122, %while.end76 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sl3516_ce_skencrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 256)
  %op_dir = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 5, i32 56
  %3 = ptrtoint ptr %op_dir to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %op_dir, align 32
  %call3 = tail call fastcc zeroext i1 @sl3516_ce_need_fallback(ptr noundef %areq)
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %5, i32 12
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %stat_fb.i = getelementptr i8, ptr %7, i32 516
  %8 = ptrtoint ptr %stat_fb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_fb.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %stat_fb.i, align 4
  %fallback_req.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2
  %fallback_tfm.i = getelementptr i8, ptr %5, i32 152
  %10 = ptrtoint ptr %fallback_tfm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fallback_tfm.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %11, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 3
  %12 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 1
  %19 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 2
  %20 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 4
  %21 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %14, ptr %flags4.i.i, align 4
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %22 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %24 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst.i, align 4
  %26 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %areq, align 128
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 1
  %28 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iv.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 2
  %30 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %23, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 3
  %31 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %25, ptr %dst2.i.i, align 4
  %32 = ptrtoint ptr %fallback_req.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %27, ptr %fallback_req.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 1
  %33 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %29, ptr %iv4.i.i, align 4
  %34 = ptrtoint ptr %op_dir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %op_dir, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp.i = icmp eq i32 %35, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req.i) #5
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call11.i = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ce = getelementptr i8, ptr %1, i32 148
  %36 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ce, align 4
  %engine5 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %engine5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %engine5, align 4
  %call6 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %39, ptr noundef %areq) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ %call6, %if.end ], [ %call9.i, %if.then.i ], [ %call11.i, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sl3516_ce_cipher_init(ptr nocapture noundef %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %2 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 28)
  %ce = getelementptr i8, ptr %1, i32 -248
  %3 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ce, align 8
  %ce4 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %5 = ptrtoint ptr %ce4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ce4, align 4
  %call5 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #5
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %6 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %fallback_tfm, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %ce4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ce4, align 4
  %dev = getelementptr inbounds %struct.sl3516_ce_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %call5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %cra_name.i, i32 noundef %11) #8
  %12 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fallback_tfm, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %tfm, i32 -128
  %15 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call5, align 128
  %add = add i32 %16, 256
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %add.ptr.i, align 128
  %18 = ptrtoint ptr %ce4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ce4, align 4
  %dev19 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev19, align 4
  %22 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i, align 4
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %23, i32 0, i32 9
  %__crt_alg.i66 = getelementptr inbounds %struct.crypto_skcipher, ptr %call5, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %__crt_alg.i66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__crt_alg.i66, align 4
  %cra_driver_name.i67 = getelementptr inbounds %struct.crypto_alg, ptr %25, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.6, ptr noundef %cra_driver_name.i, ptr noundef %cra_driver_name.i67) #8
  %do_one_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %26 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sl3516_ce_handle_cipher_request, ptr %do_one_request, align 4
  %27 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %__crt_ctx.i, align 4
  %unprepare_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %28 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %unprepare_request, align 4
  %29 = ptrtoint ptr %ce4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ce4, align 4
  %dev30 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev30, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %32, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %error_pm, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

error_pm:                                         ; preds = %if.end
  %33 = ptrtoint ptr %ce4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ce4, align 4
  %dev35 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev35, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #5
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #5, !srcloc !56
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %error_pm.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

error_pm.pm_runtime_put_noidle.exit_crit_edge:    ; preds = %error_pm
  call void @__sanitizer_cov_trace_pc() #7
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %error_pm
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !57
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %error_pm.pm_runtime_put_noidle.exit_crit_edge
  %38 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %39, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %39, ptr noundef %base.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %14, %do.end ], [ %call.i, %pm_runtime_put_noidle.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl3516_ce_handle_cipher_request(ptr noundef %engine, ptr noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %areq, i32 -16
  %call = tail call fastcc i32 @sl3516_ce_cipher(ptr noundef %add.ptr)
  tail call void @crypto_finalize_skcipher_request(ptr noundef %engine, ptr noundef %add.ptr, i32 noundef %call) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sl3516_ce_cipher_exit(ptr nocapture noundef readonly %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #5
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i) #5
  %ce = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %4 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce, align 4
  %dev = getelementptr inbounds %struct.sl3516_ce_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sl3516_ce_aes_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ce1 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  %0 = ptrtoint ptr %ce1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce1, align 4
  %2 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %keylen, label %do.body [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 24, label %entry.sw.epilog_crit_edge32
    i32 32, label %entry.sw.epilog_crit_edge33
  ]

entry.sw.epilog_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl3516_ce_aes_setkey.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl3516_ce_aes_setkey, %if.then)) #5
          to label %cleanup [label %if.then], !srcloc !58

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.sl3516_ce_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl3516_ce_aes_setkey.__UNIQUE_ID_ddebug251, ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %keylen) #5
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge32, %entry.sw.epilog_crit_edge33
  %key5 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %5 = ptrtoint ptr %key5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %key5, align 4
  tail call void @kfree_sensitive(ptr noundef %6) #5
  %keylen6 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %7 = ptrtoint ptr %keylen6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %keylen, ptr %keylen6, align 4
  %call7 = tail call ptr @kmemdup(ptr noundef %key, i32 noundef %keylen, i32 noundef 3265) #5
  %8 = ptrtoint ptr %key5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %key5, align 4
  %tobool10.not = icmp eq ptr %call7, null
  br i1 %tobool10.not, label %sw.epilog.cleanup_crit_edge, label %if.end12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %fallback_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 20
  %9 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %12, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %13 = load ptr, ptr %fallback_tfm, align 4
  %base = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base, align 128
  %and = and i32 %15, 1048320
  %base.i.i30 = getelementptr inbounds %struct.crypto_skcipher, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i.i30, align 128
  %or.i.i = or i32 %17, %and
  store i32 %or.i.i, ptr %base.i.i30, align 128
  %18 = load ptr, ptr %fallback_tfm, align 4
  %call15 = tail call i32 @crypto_skcipher_setkey(ptr noundef %18, ptr noundef %key, i32 noundef %keylen) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %sw.epilog.cleanup_crit_edge, %if.then, %do.body
  %retval.0 = phi i32 [ %call15, %if.end12 ], [ -22, %if.then ], [ -12, %sw.epilog.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sl3516_ce_cipher(ptr noundef %areq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %ce2 = getelementptr i8, ptr %1, i32 148
  %2 = ptrtoint ptr %ce2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ce2, align 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %__crt_alg.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl3516_ce_cipher.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl3516_ce_cipher, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !58

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i364 = getelementptr inbounds %struct.crypto_tfm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %__crt_alg.i364 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i364, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %areq, align 128
  %op_dir = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 5, i32 56
  %14 = ptrtoint ptr %op_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %op_dir, align 32
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 1
  %16 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iv, align 4
  %18 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i, align 4
  %ivsize.i = getelementptr i8, ptr %19, i32 -100
  %20 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ivsize.i, align 4
  %keylen = getelementptr i8, ptr %1, i32 144
  %22 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %keylen, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl3516_ce_cipher.__UNIQUE_ID_ddebug244, ptr noundef %7, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %cra_name.i, i32 noundef %13, i32 noundef %15, ptr noundef %17, i32 noundef %21, i32 noundef %23) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stat_req = getelementptr i8, ptr %5, i32 512
  %24 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stat_req, align 128
  %inc = add i32 %25, 1
  store i32 %inc, ptr %stat_req, align 128
  %src = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %26 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %28 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dst, align 4
  %cmp = icmp eq ptr %27, %29
  %dev13 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev13, align 4
  %call16 = tail call i32 @sg_nents(ptr noundef %27) #5
  br i1 %cmp, label %if.then12, label %if.else

if.then12:                                        ; preds = %do.end
  %call17 = tail call i32 @dma_map_sg_attrs(ptr noundef %31, ptr noundef %27, i32 noundef %call16, i32 noundef 0, i32 noundef 0) #5
  %32 = add i32 %call17, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %32)
  %33 = icmp ult i32 %32, -3
  br i1 %33, label %do.end23, label %if.then12.if.end54_crit_edge

if.then12.if.end54_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end23:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.14, i32 noundef %call17) #8
  br label %theend

if.else:                                          ; preds = %do.end
  %call30 = tail call i32 @dma_map_sg_attrs(ptr noundef %31, ptr noundef %27, i32 noundef %call16, i32 noundef 1, i32 noundef 0) #5
  %36 = add i32 %call30, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %36)
  %37 = icmp ult i32 %36, -3
  %38 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev13, align 4
  br i1 %37, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.14, i32 noundef %call30) #8
  br label %theend

if.end39:                                         ; preds = %if.else
  %40 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst, align 4
  %call43 = tail call i32 @sg_nents(ptr noundef %41) #5
  %call44 = tail call i32 @dma_map_sg_attrs(ptr noundef %39, ptr noundef %41, i32 noundef %call43, i32 noundef 2, i32 noundef 0) #5
  %42 = add i32 %call44, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %42)
  %43 = icmp ult i32 %42, -6
  br i1 %43, label %do.end51, label %if.end39.if.end54_crit_edge

if.end39.if.end54_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

do.end51:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.14, i32 noundef %call44) #8
  br label %theend_sgs

if.end54:                                         ; preds = %if.end39.if.end54_crit_edge, %if.then12.if.end54_crit_edge
  %nr_sgd.0 = phi i32 [ %call17, %if.then12.if.end54_crit_edge ], [ %call44, %if.end39.if.end54_crit_edge ]
  %nr_sgs.0 = phi i32 [ %call17, %if.then12.if.end54_crit_edge ], [ %call30, %if.end39.if.end54_crit_edge ]
  %46 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %areq, align 128
  %48 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %src, align 8
  %tobool58.not371 = icmp eq ptr %49, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool59.not373 = icmp eq i32 %47, 0
  %or.cond355374 = select i1 %tobool58.not371, i1 true, i1 %tobool59.not373
  br i1 %or.cond355374, label %if.end54.while.end_crit_edge, label %while.body.lr.ph

if.end54.while.end_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end54
  %dev82 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %sgs_next.while.body_crit_edge, %while.body.lr.ph
  %sg.0378 = phi ptr [ %49, %while.body.lr.ph ], [ %call91, %sgs_next.while.body_crit_edge ]
  %len.0377 = phi i32 [ %47, %while.body.lr.ph ], [ %len.1, %sgs_next.while.body_crit_edge ]
  %i.0375 = phi i32 [ 0, %while.body.lr.ph ], [ %i.1, %sgs_next.while.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0378, i32 0, i32 4
  %50 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp60 = icmp eq i32 %51, 0
  br i1 %cmp60, label %while.body.sgs_next_crit_edge, label %if.end62

while.body.sgs_next_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sgs_next

if.end62:                                         ; preds = %while.body
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0378, i32 0, i32 3
  %52 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_address, align 4
  %arrayidx = getelementptr [6 x %struct.sginfo], ptr %__ctx.i, i32 0, i32 %i.0375
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx, align 8
  %55 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_length, align 4
  %57 = tail call i32 @llvm.umin.i32(i32 %len.0377, i32 %56)
  %len68 = getelementptr [6 x %struct.sginfo], ptr %__ctx.i, i32 0, i32 %i.0375, i32 1
  %58 = ptrtoint ptr %len68 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %len68, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl3516_ce_cipher.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl3516_ce_cipher, %if.then81)) #5
          to label %do.end89 [label %if.then81], !srcloc !58

if.then81:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev82, align 4
  %61 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %areq, align 128
  %63 = ptrtoint ptr %len68 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len68, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.0378, i32 0, i32 1
  %65 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl3516_ce_cipher.__UNIQUE_ID_ddebug247, ptr noundef %60, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.12, i32 noundef %62, i32 noundef %i.0375, i32 noundef %64, i32 noundef %66, i32 noundef %57) #5
  br label %do.end89

do.end89:                                         ; preds = %if.then81, %if.end62
  %sub = sub i32 %len.0377, %57
  %inc90 = add nsw i32 %i.0375, 1
  br label %sgs_next

sgs_next:                                         ; preds = %do.end89, %while.body.sgs_next_crit_edge
  %i.1 = phi i32 [ %i.0375, %while.body.sgs_next_crit_edge ], [ %inc90, %do.end89 ]
  %len.1 = phi i32 [ %len.0377, %while.body.sgs_next_crit_edge ], [ %sub, %do.end89 ]
  %call91 = tail call ptr @sg_next(ptr noundef nonnull %sg.0378) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %nr_sgs.0)
  %cmp57 = icmp sge i32 %i.1, %nr_sgs.0
  %tobool58.not = icmp eq ptr %call91, null
  %or.cond354 = select i1 %cmp57, i1 true, i1 %tobool58.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %tobool59.not = icmp eq i32 %len.1, 0
  %or.cond355 = select i1 %or.cond354, i1 true, i1 %tobool59.not
  br i1 %or.cond355, label %sgs_next.while.end_crit_edge, label %sgs_next.while.body_crit_edge

sgs_next.while.body_crit_edge:                    ; preds = %sgs_next
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

sgs_next.while.end_crit_edge:                     ; preds = %sgs_next
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %sgs_next.while.end_crit_edge, %if.end54.while.end_crit_edge
  %len.0.lcssa = phi i32 [ %47, %if.end54.while.end_crit_edge ], [ %len.1, %sgs_next.while.end_crit_edge ]
  %tobool59.not.lcssa = phi i1 [ %tobool59.not373, %if.end54.while.end_crit_edge ], [ %tobool59.not, %sgs_next.while.end_crit_edge ]
  br i1 %tobool59.not.lcssa, label %if.end99, label %do.end96

do.end96:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev97 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 3
  %67 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev97, align 4
  %69 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %areq, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.21, i32 noundef %len.0.lcssa, i32 noundef %70, i32 noundef %nr_sgs.0) #8
  br label %theend_sgs

if.end99:                                         ; preds = %while.end
  %71 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %areq, align 128
  %73 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_sgd.0)
  %cmp103380 = icmp slt i32 %nr_sgd.0, 1
  %tobool105.not381 = icmp eq ptr %74, null
  %or.cond356382 = select i1 %cmp103380, i1 true, i1 %tobool105.not381
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool107.not383 = icmp eq i32 %72, 0
  %or.cond357384 = select i1 %or.cond356382, i1 true, i1 %tobool107.not383
  br i1 %or.cond357384, label %if.end99.while.end152_crit_edge, label %while.body109.lr.ph

if.end99.while.end152_crit_edge:                  ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end152

while.body109.lr.ph:                              ; preds = %if.end99
  %dev140 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 3
  br label %while.body109

while.body109:                                    ; preds = %sgd_next.while.body109_crit_edge, %while.body109.lr.ph
  %sg.1388 = phi ptr [ %74, %while.body109.lr.ph ], [ %call151, %sgd_next.while.body109_crit_edge ]
  %len.2387 = phi i32 [ %72, %while.body109.lr.ph ], [ %len.3, %sgd_next.while.body109_crit_edge ]
  %i.2385 = phi i32 [ 0, %while.body109.lr.ph ], [ %i.3, %sgd_next.while.body109_crit_edge ]
  %dma_length110 = getelementptr inbounds %struct.scatterlist, ptr %sg.1388, i32 0, i32 4
  %75 = ptrtoint ptr %dma_length110 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dma_length110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp111 = icmp eq i32 %76, 0
  br i1 %cmp111, label %while.body109.sgd_next_crit_edge, label %if.end113

while.body109.sgd_next_crit_edge:                 ; preds = %while.body109
  call void @__sanitizer_cov_trace_pc() #7
  br label %sgd_next

if.end113:                                        ; preds = %while.body109
  %dma_address114 = getelementptr inbounds %struct.scatterlist, ptr %sg.1388, i32 0, i32 3
  %77 = ptrtoint ptr %dma_address114 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %dma_address114, align 4
  %arrayidx115 = getelementptr %struct.sl3516_ce_cipher_req_ctx, ptr %__ctx.i, i32 0, i32 1, i32 %i.2385
  %79 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx115, align 8
  %80 = ptrtoint ptr %dma_length110 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_length110, align 4
  %82 = tail call i32 @llvm.umin.i32(i32 %len.2387, i32 %81)
  %len126 = getelementptr %struct.sl3516_ce_cipher_req_ctx, ptr %__ctx.i, i32 0, i32 1, i32 %i.2385, i32 1
  %83 = ptrtoint ptr %len126 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %len126, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl3516_ce_cipher.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl3516_ce_cipher, %if.then139)) #5
          to label %do.end148 [label %if.then139], !srcloc !58

if.then139:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #7
  %84 = ptrtoint ptr %dev140 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev140, align 4
  %86 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %areq, align 128
  %88 = ptrtoint ptr %len126 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len126, align 4
  %offset145 = getelementptr inbounds %struct.scatterlist, ptr %sg.1388, i32 0, i32 1
  %90 = ptrtoint ptr %offset145 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %offset145, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl3516_ce_cipher.__UNIQUE_ID_ddebug250, ptr noundef %85, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.12, i32 noundef %87, i32 noundef %i.2385, i32 noundef %89, i32 noundef %91, i32 noundef %82) #5
  br label %do.end148

do.end148:                                        ; preds = %if.then139, %if.end113
  %sub149 = sub i32 %len.2387, %82
  %inc150 = add nsw i32 %i.2385, 1
  br label %sgd_next

sgd_next:                                         ; preds = %do.end148, %while.body109.sgd_next_crit_edge
  %i.3 = phi i32 [ %i.2385, %while.body109.sgd_next_crit_edge ], [ %inc150, %do.end148 ]
  %len.3 = phi i32 [ %len.2387, %while.body109.sgd_next_crit_edge ], [ %sub149, %do.end148 ]
  %call151 = tail call ptr @sg_next(ptr noundef nonnull %sg.1388) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3, i32 %nr_sgd.0)
  %cmp103 = icmp sge i32 %i.3, %nr_sgd.0
  %tobool105.not = icmp eq ptr %call151, null
  %or.cond356 = select i1 %cmp103, i1 true, i1 %tobool105.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.3)
  %tobool107.not = icmp eq i32 %len.3, 0
  %or.cond357 = select i1 %or.cond356, i1 true, i1 %tobool107.not
  br i1 %or.cond357, label %sgd_next.while.end152_crit_edge, label %sgd_next.while.body109_crit_edge

sgd_next.while.body109_crit_edge:                 ; preds = %sgd_next
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body109

sgd_next.while.end152_crit_edge:                  ; preds = %sgd_next
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end152

while.end152:                                     ; preds = %sgd_next.while.end152_crit_edge, %if.end99.while.end152_crit_edge
  %len.2.lcssa = phi i32 [ %72, %if.end99.while.end152_crit_edge ], [ %len.3, %sgd_next.while.end152_crit_edge ]
  %tobool107.not.lcssa = phi i1 [ %tobool107.not383, %if.end99.while.end152_crit_edge ], [ %tobool107.not, %sgd_next.while.end152_crit_edge ]
  br i1 %tobool107.not.lcssa, label %if.end159, label %do.end157

do.end157:                                        ; preds = %while.end152
  call void @__sanitizer_cov_trace_pc() #7
  %dev158 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 3
  %92 = ptrtoint ptr %dev158 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev158, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.25, i32 noundef %len.2.lcssa) #8
  br label %theend_sgs

if.end159:                                        ; preds = %while.end152
  %mode = getelementptr i8, ptr %5, i32 -252
  %94 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cond216 = icmp eq i32 %95, 2
  br i1 %cond216, label %sw.bb, label %if.end159.sw.epilog_crit_edge

if.end159.sw.epilog_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end159
  %pctrllen = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 5, i32 60
  %96 = ptrtoint ptr %pctrllen to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 40, ptr %pctrllen, align 4
  %pctrl = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 27
  %97 = ptrtoint ptr %pctrl to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %pctrl, align 4
  %tqflag = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 5, i32 64
  %99 = ptrtoint ptr %tqflag to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 3, ptr %tqflag, align 8
  %op_dir161 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 5, i32 56
  %100 = ptrtoint ptr %op_dir161 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %op_dir161, align 32
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %102)
  %bf.load = load i32, ptr %98, align 4
  %bf.value = and i32 %101, 15
  %bf.clear = and i32 %bf.load, -240
  %bf.set = or i32 %bf.value, %bf.clear
  %bf.set165 = or i32 %bf.set, 64
  store i32 %bf.set165, ptr %98, align 4
  %cipher = getelementptr inbounds %struct.pkt_control_ecb, ptr %98, i32 0, i32 1
  %103 = ptrtoint ptr %cipher to i32
  call void @__asan_load4_noabort(i32 %103)
  %bf.load166 = load i32, ptr %cipher, align 4
  %bf.clear167 = and i32 %bf.load166, -65536
  store i32 %bf.clear167, ptr %cipher, align 4
  %104 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %areq, align 128
  %bf.shl = shl i32 %105, 16
  store i32 %bf.shl, ptr %cipher, align 4
  %key = getelementptr %struct.pkt_control_ecb, ptr %98, i32 0, i32 2
  %key175 = getelementptr i8, ptr %1, i32 140
  %106 = ptrtoint ptr %key175 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %key175, align 4
  %keylen176 = getelementptr i8, ptr %1, i32 144
  %108 = ptrtoint ptr %keylen176 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %keylen176, align 4
  %div350 = lshr i32 %109, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %109)
  %cmp5.not.i = icmp ult i32 %109, 4
  br i1 %cmp5.not.i, label %sw.bb.cpu_to_be32_array.exit_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.cpu_to_be32_array.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_to_be32_array.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %107, i32 %i.06.i
  %110 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr i32, ptr %key, i32 %i.06.i
  %112 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %arrayidx1.i, align 4
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div350
  br i1 %exitcond.not.i, label %for.body.i.cpu_to_be32_array.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.cpu_to_be32_array.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cpu_to_be32_array.exit

cpu_to_be32_array.exit:                           ; preds = %for.body.i.cpu_to_be32_array.exit_crit_edge, %sw.bb.cpu_to_be32_array.exit_crit_edge
  %h = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 5, i32 68
  %113 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %cipher, ptr %h, align 4
  %114 = ptrtoint ptr %tqflag to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tqflag, align 8
  %or183 = or i32 %115, 112
  store i32 %or183, ptr %tqflag, align 8
  %116 = ptrtoint ptr %keylen176 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %keylen176, align 4
  %118 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %118)
  %bf.load187 = load i32, ptr %98, align 4
  %119 = shl i32 %117, 6
  %bf.shl189 = and i32 %119, 3840
  %bf.clear190 = and i32 %bf.load187, -3841
  %bf.set191 = or i32 %bf.clear190, %bf.shl189
  store i32 %bf.set191, ptr %98, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cpu_to_be32_array.exit, %if.end159.sw.epilog_crit_edge
  %nr_sgs192 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 5, i32 72
  %120 = ptrtoint ptr %nr_sgs192 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %nr_sgs.0, ptr %nr_sgs192, align 16
  %nr_sgd193 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 5, i32 76
  %121 = ptrtoint ptr %nr_sgd193 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %nr_sgd.0, ptr %nr_sgd193, align 4
  %122 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i365 = getelementptr inbounds %struct.crypto_tfm, ptr %123, i32 0, i32 3
  %124 = ptrtoint ptr %__crt_alg.i365 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %__crt_alg.i365, align 4
  %cra_name.i366 = getelementptr inbounds %struct.crypto_alg, ptr %125, i32 0, i32 8
  %call197 = tail call i32 @sl3516_ce_run_task(ptr noundef %3, ptr noundef %__ctx.i, ptr noundef %cra_name.i366) #5
  br label %theend_sgs

theend_sgs:                                       ; preds = %sw.epilog, %do.end157, %do.end96, %do.end51
  %err.0 = phi i32 [ -22, %do.end96 ], [ -22, %do.end157 ], [ %call197, %sw.epilog ], [ -22, %do.end51 ]
  %126 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %src, align 8
  %128 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dst, align 4
  %cmp200 = icmp eq ptr %127, %129
  %dev202 = getelementptr inbounds %struct.sl3516_ce_dev, ptr %3, i32 0, i32 3
  %130 = ptrtoint ptr %dev202 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev202, align 4
  %call205 = tail call i32 @sg_nents(ptr noundef %127) #5
  br i1 %cmp200, label %if.then201, label %if.else206

if.then201:                                       ; preds = %theend_sgs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dma_unmap_sg_attrs(ptr noundef %131, ptr noundef %127, i32 noundef %call205, i32 noundef 0, i32 noundef 0) #5
  br label %theend

if.else206:                                       ; preds = %theend_sgs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dma_unmap_sg_attrs(ptr noundef %131, ptr noundef %127, i32 noundef %call205, i32 noundef 1, i32 noundef 0) #5
  %132 = ptrtoint ptr %dev202 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev202, align 4
  %134 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dst, align 4
  %call214 = tail call i32 @sg_nents(ptr noundef %135) #5
  tail call void @dma_unmap_sg_attrs(ptr noundef %133, ptr noundef %135, i32 noundef %call214, i32 noundef 2, i32 noundef 0) #5
  br label %theend

theend:                                           ; preds = %if.else206, %if.then201, %do.end37, %do.end23
  %err.1 = phi i32 [ -22, %do.end23 ], [ %err.0, %if.then201 ], [ %err.0, %if.else206 ], [ -22, %do.end37 ]
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_skcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sl3516_ce_run_task(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/gemini/sl3516-ce-cipher.c", i32 324, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sl3516_ce_cipher_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sl3516_ce_cipher_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/gemini/sl3516-ce-cipher.c", i32 332, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sl3516_ce_cipher_init._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @sl3516_ce_cipher_init._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/crypto/gemini/sl3516-ce-cipher.c", i32 374, i32 3}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sl3516_ce_aes_setkey.__UNIQUE_ID_ddebug251, !14, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/gemini/sl3516-ce-cipher.c", i32 141, i32 2}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sl3516_ce_cipher.__UNIQUE_ID_ddebug244, !19, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/gemini/sl3516-ce-cipher.c", i32 153, i32 4}
!24 = !{ptr @sl3516_ce_cipher._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sl3516_ce_cipher._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @sl3516_ce_cipher._entry.15, !27, !"_entry", i1 false, i1 false}
!27 = !{!"../drivers/crypto/gemini/sl3516-ce-cipher.c", i32 162, i32 4}
!28 = !{ptr @sl3516_ce_cipher._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @sl3516_ce_cipher._entry.17, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/crypto/gemini/sl3516-ce-cipher.c", i32 169, i32 4}
!31 = !{ptr @sl3516_ce_cipher._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/crypto/gemini/sl3516-ce-cipher.c", i32 184, i32 3}
!34 = !{ptr @sl3516_ce_cipher.__UNIQUE_ID_ddebug247, !33, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/crypto/gemini/sl3516-ce-cipher.c", i32 192, i32 3}
!37 = !{ptr @sl3516_ce_cipher._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sl3516_ce_cipher._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/crypto/gemini/sl3516-ce-cipher.c", i32 206, i32 3}
!41 = !{ptr @sl3516_ce_cipher.__UNIQUE_ID_ddebug250, !40, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/gemini/sl3516-ce-cipher.c", i32 215, i32 3}
!44 = !{ptr @sl3516_ce_cipher._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sl3516_ce_cipher._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2148154204}
!56 = !{i64 530125, i64 530150, i64 530172, i64 530188, i64 530200, i64 530220, i64 530244, i64 530260, i64 530272}
!57 = !{i64 2148154392}
!58 = !{i64 2148727924, i64 2148727929, i64 2148727942, i64 2148727986, i64 2148728020, i64 2148728041}
