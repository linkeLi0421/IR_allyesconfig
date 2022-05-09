; ModuleID = '/llk/IR_all_yes/drivers/crypto/bcm/util.c_pt.bc'
source_filename = "../drivers/crypto/bcm/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bcm_device_private = type { ptr, %struct.spu_hw, %struct.atomic_t, %struct.atomic_t, i8, %struct.atomic_t, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, [4 x %struct.atomic_t], [5 x [8 x %struct.atomic_t]], [12 x %struct.atomic_t], [12 x %struct.atomic_t], [3 x %struct.atomic_t], [4 x %struct.atomic_t], %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.mbox_client, ptr }
%struct.spu_hw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [16 x ptr], i32, i32, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@do_shash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Crypto %s allocation error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"do_shash\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/crypto/bcm/util.c\00", [38 x i8] zeroinitializer }, align 32
@do_shash._entry_ptr = internal global ptr @do_shash._entry, section ".printk_index", align 4
@do_shash._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: Could not setkey %s shash\0A\00", [63 x i8] zeroinitializer }, align 32
@do_shash._entry_ptr.7 = internal global ptr @do_shash._entry.5, section ".printk_index", align 4
@do_shash._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: Could not init %s shash\0A\00", [33 x i8] zeroinitializer }, align 32
@do_shash._entry_ptr.10 = internal global ptr @do_shash._entry.8, section ".printk_index", align 4
@do_shash._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: Could not update1\0A\00", [39 x i8] zeroinitializer }, align 32
@do_shash._entry_ptr.13 = internal global ptr @do_shash._entry.11, section ".printk_index", align 4
@do_shash._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: Could not update2\0A\00", [39 x i8] zeroinitializer }, align 32
@do_shash._entry_ptr.16 = internal global ptr @do_shash._entry.14, section ".printk_index", align 4
@do_shash._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Could not generate %s hash\0A\00", [62 x i8] zeroinitializer }, align 32
@do_shash._entry_ptr.19 = internal global ptr @do_shash._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rc4\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cbc(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecb(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ofb(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cfb(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctr(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xts(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gcm(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aes\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cbc(des)\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecb(des)\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ctr(des)\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"des\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cbc(des3_ede)\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ecb(des3_ede)\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctr(des3_ede)\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3des\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"other\00", [26 x i8] zeroinitializer }, align 32
@iproc_priv = external dso_local global %struct.bcm_device_private, align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bcm_crypto_spu\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@spu_debugfs_stats = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr @spu_debugfs_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Number of SPUs.........%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Current sessions.......%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Session count..........%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cipher setkey..........%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cipher Ops.............%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  %-13s%11u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hash Ops...............%u\0A\00", [37 x i8] zeroinitializer }, align 32
@hash_alg_name = external dso_local local_unnamed_addr global [12 x ptr], align 4
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HMAC setkey............%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HMAC Ops...............%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AEAD setkey............%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"AEAD Ops...............%u\0A\00", [37 x i8] zeroinitializer }, align 32
@aead_alg_name = external dso_local local_unnamed_addr global [3 x ptr], align 4
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bytes of req data......%llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Bytes of resp data.....%llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Mailbox full...........%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Mailbox send failures..%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Check ICV errors.......%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SPU %d output FIFO high water.....%u\0A\00", [58 x i8] zeroinitializer }, align 32
@switch.table.spu_alg_name = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.22, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.27, ptr @.str.26], [32 x i8] zeroinitializer }, align 32
@switch.table.spu_alg_name.57 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.30, ptr @.str.29, ptr @.str.32, ptr @.str.32, ptr @.str.31], [44 x i8] zeroinitializer }, align 32
@switch.table.spu_alg_name.58 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.34, ptr @.str.33, ptr @.str.36, ptr @.str.36, ptr @.str.35], [44 x i8] zeroinitializer }, align 32
@switch.table.spu_debugfs_read = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.22, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.27, ptr @.str.26], [32 x i8] zeroinitializer }, align 32
@switch.table.spu_debugfs_read.59 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.30, ptr @.str.29, ptr @.str.32, ptr @.str.32, ptr @.str.31], [44 x i8] zeroinitializer }, align 32
@switch.table.spu_debugfs_read.60 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.34, ptr @.str.33, ptr @.str.36, ptr @.str.36, ptr @.str.35], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 223, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 238, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 245, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 250, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 256, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 262, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 300, i32 10 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 304, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 306, i32 11 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 308, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 310, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 312, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 314, i32 11 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 316, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 318, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 324, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 326, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 328, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 330, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 336, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 338, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 340, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 342, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 346, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 491, i32 47 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 496, i32 23 }
@___asan_gen_.164 = private unnamed_addr constant [18 x i8] c"spu_debugfs_stats\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 474, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 372, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 375, i32 11 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 378, i32 11 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 381, i32 11 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 384, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 392, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 398, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 410, i32 11 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 413, i32 11 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 425, i32 11 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 429, i32 11 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 441, i32 11 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 444, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 447, i32 11 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 450, i32 11 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 453, i32 11 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [29 x i8] c"../drivers/crypto/bcm/util.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 462, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant [26 x i8] c"switch.table.spu_alg_name\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [29 x i8] c"switch.table.spu_alg_name.57\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [29 x i8] c"switch.table.spu_alg_name.58\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [30 x i8] c"switch.table.spu_debugfs_read\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [33 x i8] c"switch.table.spu_debugfs_read.59\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [33 x i8] c"switch.table.spu_debugfs_read.60\00", align 1
@llvm.compiler.used = appending global [64 x ptr] [ptr @do_shash._entry, ptr @do_shash._entry.11, ptr @do_shash._entry.14, ptr @do_shash._entry.17, ptr @do_shash._entry.5, ptr @do_shash._entry.8, ptr @do_shash._entry_ptr, ptr @do_shash._entry_ptr.10, ptr @do_shash._entry_ptr.13, ptr @do_shash._entry_ptr.16, ptr @do_shash._entry_ptr.19, ptr @do_shash._entry_ptr.7, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @spu_debugfs_stats, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @switch.table.spu_alg_name, ptr @switch.table.spu_alg_name.57, ptr @switch.table.spu_alg_name.58, ptr @switch.table.spu_debugfs_read, ptr @switch.table.spu_debugfs_read.59, ptr @switch.table.spu_debugfs_read.60], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_shash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_shash._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_shash._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_shash._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_shash._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_shash._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spu_debugfs_stats to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spu_alg_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spu_alg_name.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spu_alg_name.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spu_debugfs_read to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spu_debugfs_read.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.spu_debugfs_read.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spu_sg_at_offset(ptr noundef %sg, i32 noundef %skip, ptr nocapture noundef writeonly %sge, ptr nocapture noundef writeonly %sge_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 2
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %skip)
  %cmp.not12 = icmp ugt i32 %1, %skip
  br i1 %cmp.not12, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %next_index.014 = phi i32 [ %add, %if.end.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %sg.addr.013 = phi ptr [ %call, %if.end.while.body_crit_edge ], [ %sg, %entry.while.body_crit_edge ]
  %call = tail call ptr @sg_next(ptr noundef %sg.addr.013) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.cleanup_crit_edge, label %if.end

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %while.body
  %length1 = getelementptr inbounds %struct.scatterlist, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %length1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length1, align 4
  %add = add i32 %3, %next_index.014
  %cmp.not = icmp ugt i32 %add, %skip
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %sg.addr.0.lcssa = phi ptr [ %sg, %entry.while.end_crit_edge ], [ %call, %if.end.while.end_crit_edge ]
  %index.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %next_index.014, %if.end.while.end_crit_edge ]
  %sub = sub i32 %skip, %index.0.lcssa
  %4 = ptrtoint ptr %sge_offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %sge_offset, align 4
  %5 = ptrtoint ptr %sge to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sg.addr.0.lcssa, ptr %sge, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %while.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end ], [ -22, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sg_copy_part_to_buf(ptr noundef %src, ptr noundef %dest, i32 noundef %len, i32 noundef %skip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sg_nents(ptr noundef %src) #9
  %call1 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %src, i32 noundef %call, ptr noundef %dest, i32 noundef %len, i32 noundef %skip) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sg_copy_part_from_buf(ptr noundef %dest, ptr noundef %src, i32 noundef %len, i32 noundef %skip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sg_nents(ptr noundef %dest) #9
  %call1 = tail call i32 @sg_pcopy_from_buffer(ptr noundef %dest, i32 noundef %call, ptr noundef %src, i32 noundef %len, i32 noundef %skip) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spu_sg_count(ptr noundef %sg_list, i32 noundef %skip, i32 noundef %nbytes) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sg_list, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg_list, i32 0, i32 2
  %0 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %skip)
  %cmp.not12.i = icmp ugt i32 %1, %skip
  br i1 %cmp.not12.i, label %if.end.spu_sg_at_offset.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.spu_sg_at_offset.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_sg_at_offset.exit

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %next_index.014.i = phi i32 [ %add.i, %if.end.i.while.body.i_crit_edge ], [ %1, %if.end.while.body.i_crit_edge ]
  %sg.addr.013.i = phi ptr [ %call.i, %if.end.i.while.body.i_crit_edge ], [ %sg_list, %if.end.while.body.i_crit_edge ]
  %call.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.013.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %if.end.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %while.body.i
  %length1.i = getelementptr inbounds %struct.scatterlist, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %length1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length1.i, align 4
  %add.i = add i32 %3, %next_index.014.i
  %cmp.not.i = icmp ugt i32 %add.i, %skip
  br i1 %cmp.not.i, label %if.end.i.spu_sg_at_offset.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.spu_sg_at_offset.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_sg_at_offset.exit

spu_sg_at_offset.exit:                            ; preds = %if.end.i.spu_sg_at_offset.exit_crit_edge, %if.end.spu_sg_at_offset.exit_crit_edge
  %sg.addr.0.lcssa.i = phi ptr [ %sg_list, %if.end.spu_sg_at_offset.exit_crit_edge ], [ %call.i, %if.end.i.spu_sg_at_offset.exit_crit_edge ]
  %index.0.lcssa.i = phi i32 [ 0, %if.end.spu_sg_at_offset.exit_crit_edge ], [ %next_index.014.i, %if.end.i.spu_sg_at_offset.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nbytes)
  %cmp420 = icmp sgt i32 %nbytes, 0
  br i1 %cmp420, label %while.body.preheader, label %spu_sg_at_offset.exit.cleanup_crit_edge

spu_sg_at_offset.exit.cleanup_crit_edge:          ; preds = %spu_sg_at_offset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.preheader:                             ; preds = %spu_sg_at_offset.exit
  %length.peel = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0.lcssa.i, i32 0, i32 2
  %4 = ptrtoint ptr %length.peel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length.peel, align 4
  %6 = add i32 %skip, %nbytes
  %7 = add i32 %index.0.lcssa.i, %5
  %sub5.peel = sub i32 %6, %7
  %call6.peel = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.0.lcssa.i) #9
  %tobool3.not.peel = icmp ne ptr %call6.peel, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.peel)
  %cmp4.peel = icmp sgt i32 %sub5.peel, 0
  %or.cond.peel = select i1 %tobool3.not.peel, i1 %cmp4.peel, i1 false
  br i1 %or.cond.peel, label %while.body.preheader.while.body_crit_edge, label %while.body.preheader.cleanup_crit_edge

while.body.preheader.cleanup_crit_edge:           ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.preheader.while.body_crit_edge:        ; preds = %while.body.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader.while.body_crit_edge
  %sg_nents.024 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 1, %while.body.preheader.while.body_crit_edge ]
  %nbytes.addr.023 = phi i32 [ %sub5, %while.body.while.body_crit_edge ], [ %sub5.peel, %while.body.preheader.while.body_crit_edge ]
  %sg.121 = phi ptr [ %call6, %while.body.while.body_crit_edge ], [ %call6.peel, %while.body.preheader.while.body_crit_edge ]
  %inc = add i32 %sg_nents.024, 1
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.121, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %sub5 = sub i32 %nbytes.addr.023, %9
  %call6 = tail call ptr @sg_next(ptr noundef nonnull %sg.121) #9
  %tobool3.not = icmp ne ptr %call6, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5)
  %cmp4 = icmp sgt i32 %sub5, 0
  %or.cond = select i1 %tobool3.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge, !llvm.loop !119

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.body.preheader.cleanup_crit_edge, %spu_sg_at_offset.exit.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %spu_sg_at_offset.exit.cleanup_crit_edge ], [ 1, %while.body.preheader.cleanup_crit_edge ], [ %inc, %while.body.cleanup_crit_edge ], [ 0, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spu_msg_sg_add(ptr nocapture noundef %to_sg, ptr nocapture noundef %from_sg, ptr nocapture noundef %from_skip, i8 noundef zeroext %from_nents, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp = icmp eq i32 %length, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %from_skip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %from_skip, align 4
  %2 = ptrtoint ptr %from_sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %from_sg, align 4
  %4 = ptrtoint ptr %to_sg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %to_sg, align 4
  %conv = zext i8 %from_nents to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %from_nents)
  %cmp162.not = icmp eq i8 %from_nents, 0
  br i1 %cmp162.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %copied.067 = phi i32 [ %add10, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.066 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %skip.065 = phi i32 [ %spec.select, %for.inc.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %to.064 = phi ptr [ %to.1, %for.inc.for.body_crit_edge ], [ %5, %if.end.for.body_crit_edge ]
  %sg.063 = phi ptr [ %call19, %for.inc.for.body_crit_edge ], [ %3, %if.end.for.body_crit_edge ]
  %length3 = getelementptr inbounds %struct.scatterlist, ptr %sg.063, i32 0, i32 2
  %6 = ptrtoint ptr %length3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length3, align 4
  %sub = sub i32 %7, %skip.065
  %sub4 = sub i32 %length, %copied.067
  %8 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %sub4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.body.if.end9_crit_edge, label %if.then8

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %for.body
  %offset7 = getelementptr inbounds %struct.scatterlist, ptr %sg.063, i32 0, i32 1
  %9 = ptrtoint ptr %offset7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset7, align 4
  %add = add i32 %10, %skip.065
  %incdec.ptr = getelementptr %struct.scatterlist, ptr %to.064, i32 1
  %11 = ptrtoint ptr %sg.063 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sg.063, align 4
  %and.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_page.exit, label %do.body2.i, !prof !121

do.body2.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #9, !srcloc !122
  unreachable

sg_page.exit:                                     ; preds = %if.then8
  %13 = ptrtoint ptr %to.064 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %to.064, align 4
  %and.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !121

do.body19.i.i:                                    ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !123
  unreachable

sg_set_page.exit:                                 ; preds = %sg_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = and i32 %12, -4
  %and.i.i59 = and i32 %14, 3
  %or.i.i = or i32 %and.i.i59, %and.i
  %15 = ptrtoint ptr %to.064 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i.i, ptr %to.064, align 4
  %offset1.i = getelementptr inbounds %struct.scatterlist, ptr %to.064, i32 0, i32 1
  %16 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %offset1.i, align 4
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %to.064, i32 0, i32 2
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %8, ptr %length.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %sg_set_page.exit, %for.body.if.end9_crit_edge
  %to.1 = phi ptr [ %incdec.ptr, %sg_set_page.exit ], [ %to.064, %for.body.if.end9_crit_edge ]
  %add10 = add i32 %8, %copied.067
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %sub)
  %cmp11 = icmp eq i32 %add10, %sub
  %spec.select = select i1 %cmp11, i32 0, i32 %skip.065
  call void @__sanitizer_cov_trace_cmp4(i32 %add10, i32 %length)
  %cmp15 = icmp eq i32 %add10, %length
  br i1 %cmp15, label %if.end9.for.end_crit_edge, label %for.inc

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %if.end9
  %inc = add nuw nsw i32 %i.066, 1
  %call19 = tail call ptr @sg_next(ptr noundef %sg.063) #9
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge, %if.end.for.end_crit_edge
  %sg.0.lcssa = phi ptr [ %3, %if.end.for.end_crit_edge ], [ %call19, %for.inc.for.end_crit_edge ], [ %sg.063, %if.end9.for.end_crit_edge ]
  %to.2 = phi ptr [ %5, %if.end.for.end_crit_edge ], [ %to.1, %if.end9.for.end_crit_edge ], [ %to.1, %for.inc.for.end_crit_edge ]
  %skip.2 = phi i32 [ %1, %if.end.for.end_crit_edge ], [ %spec.select, %if.end9.for.end_crit_edge ], [ %spec.select, %for.inc.for.end_crit_edge ]
  %entry_len.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %sub, %if.end9.for.end_crit_edge ], [ %sub, %for.inc.for.end_crit_edge ]
  %frag_len.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %8, %if.end9.for.end_crit_edge ], [ %8, %for.inc.for.end_crit_edge ]
  %copied.1 = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add10, %for.inc.for.end_crit_edge ], [ %length, %if.end9.for.end_crit_edge ]
  %18 = ptrtoint ptr %to_sg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %to.2, ptr %to_sg, align 4
  %19 = ptrtoint ptr %from_sg to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sg.0.lcssa, ptr %from_sg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %frag_len.1, i32 %entry_len.1)
  %cmp20 = icmp ult i32 %frag_len.1, %entry_len.1
  %add23 = add i32 %frag_len.1, %skip.2
  %storemerge = select i1 %cmp20, i32 %add23, i32 0
  %20 = ptrtoint ptr %from_skip to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %from_skip, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %copied.1, %for.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @add_to_ctr(ptr nocapture noundef %ctr_pos, i32 noundef %increment) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i64, ptr %ctr_pos, i32 1
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %add.ptr, align 8
  %conv = zext i32 %increment to i64
  %add = add i64 %1, %conv
  store i64 %add, ptr %add.ptr, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %1)
  %cmp = icmp ult i64 %add, %1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %ctr_pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ctr_pos, align 8
  %add2 = add i64 %3, 1
  store i64 %add2, ptr %ctr_pos, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @do_shash(ptr noundef %name, ptr noundef %result, ptr noundef %data1, i32 noundef %data1_len, ptr noundef %data2, i32 noundef %data2_len, ptr noundef %key, i32 noundef %key_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_shash(ptr noundef %name, i32 noundef 0, i32 noundef 0) #9
  %cmp.i91 = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i91, label %if.then, label %if.end8.i

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %name, i32 noundef %0) #12
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 128
  %add = add i32 %2, 8
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %if.end8.i.do_shash_err_crit_edge, label %if.end7

if.end8.i.do_shash_err_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_shash_err

if.end7:                                          ; preds = %if.end8.i
  %3 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %key_len)
  %cmp.not = icmp eq i32 %key_len, 0
  br i1 %cmp.not, label %if.end7.if.end18_crit_edge, label %if.then8

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then8:                                         ; preds = %if.end7
  %call9 = tail call i32 @crypto_shash_setkey(ptr noundef %call, ptr noundef %key, i32 noundef %key_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end18_crit_edge, label %do.end14

if.then8.if.end18_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3, ptr noundef %name) #12
  br label %do_shash_err

if.end18:                                         ; preds = %if.then8.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  %4 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call9.i, align 128
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %crypto_shash_init.exit, label %if.end18.do.end25_crit_edge

if.end18.do.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

crypto_shash_init.exit:                           ; preds = %if.end18
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %5, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 -256
  %10 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %11(ptr noundef nonnull %call9.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool21.not = icmp eq i32 %call3.i, 0
  br i1 %tobool21.not, label %if.end28, label %crypto_shash_init.exit.do.end25_crit_edge

crypto_shash_init.exit.do.end25_crit_edge:        ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

do.end25:                                         ; preds = %crypto_shash_init.exit.do.end25_crit_edge, %if.end18.do.end25_crit_edge
  %retval.0.i99 = phi i32 [ %call3.i, %crypto_shash_init.exit.do.end25_crit_edge ], [ -126, %if.end18.do.end25_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, ptr noundef %name) #12
  br label %do_shash_err

if.end28:                                         ; preds = %crypto_shash_init.exit
  %call30 = tail call i32 @crypto_shash_update(ptr noundef nonnull %call9.i, ptr noundef %data1, i32 noundef %data1_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end38, label %do.end35

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3) #12
  br label %do_shash_err

if.end38:                                         ; preds = %if.end28
  %tobool39.not = icmp eq ptr %data2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data2_len)
  %tobool40.not = icmp eq i32 %data2_len, 0
  %or.cond = or i1 %tobool39.not, %tobool40.not
  br i1 %or.cond, label %if.end38.if.end52_crit_edge, label %if.then41

if.end38.if.end52_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then41:                                        ; preds = %if.end38
  %call43 = tail call i32 @crypto_shash_update(ptr noundef nonnull %call9.i, ptr noundef nonnull %data2, i32 noundef %data2_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then41.if.end52_crit_edge, label %do.end48

if.then41.if.end52_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

do.end48:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3) #12
  br label %do_shash_err

if.end52:                                         ; preds = %if.then41.if.end52_crit_edge, %if.end38.if.end52_crit_edge
  %call54 = tail call i32 @crypto_shash_final(ptr noundef nonnull %call9.i, ptr noundef %result) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end52.do_shash_err_crit_edge, label %do.end59

if.end52.do_shash_err_crit_edge:                  ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do_shash_err

do.end59:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef %name) #12
  br label %do_shash_err

do_shash_err:                                     ; preds = %do.end59, %if.end52.do_shash_err_crit_edge, %do.end48, %do.end35, %do.end25, %do.end14, %if.end8.i.do_shash_err_crit_edge
  %retval.1.i96 = phi ptr [ %call9.i, %do.end14 ], [ %call9.i, %do.end25 ], [ %call9.i, %do.end35 ], [ %call9.i, %do.end48 ], [ %call9.i, %do.end59 ], [ %call9.i, %if.end52.do_shash_err_crit_edge ], [ null, %if.end8.i.do_shash_err_crit_edge ]
  %rc.0 = phi i32 [ %call9, %do.end14 ], [ %retval.0.i99, %do.end25 ], [ %call30, %do.end35 ], [ %call43, %do.end48 ], [ %call54, %do.end59 ], [ 0, %if.end52.do_shash_err_crit_edge ], [ -12, %if.end8.i.do_shash_err_crit_edge ]
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #9
  tail call void @kfree(ptr noundef %retval.1.i96) #9
  br label %cleanup

cleanup:                                          ; preds = %do_shash_err, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %rc.0, %do_shash_err ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @spu_alg_name(i32 noundef %alg, i32 noundef %mode) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %alg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %alg, label %sw.default19 [
    i32 1, label %entry.return_crit_edge
    i32 4, label %sw.bb1
    i32 2, label %sw.bb9
    i32 3, label %sw.bb14
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mode)
  %1 = icmp ult i32 %mode, 8
  br i1 %1, label %switch.lookup, label %sw.bb1.return_crit_edge

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mode)
  %2 = icmp ult i32 %mode, 5
  br i1 %2, label %switch.lookup22, label %sw.bb9.return_crit_edge

sw.bb9.return_crit_edge:                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mode)
  %3 = icmp ult i32 %mode, 5
  br i1 %3, label %switch.lookup25, label %sw.bb14.return_crit_edge

sw.bb14.return_crit_edge:                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.default19:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

switch.lookup:                                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.spu_alg_name, i32 0, i32 %mode
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

switch.lookup22:                                  ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep23 = getelementptr inbounds [5 x ptr], ptr @switch.table.spu_alg_name.57, i32 0, i32 %mode
  %5 = ptrtoint ptr %switch.gep23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load24 = load ptr, ptr %switch.gep23, align 4
  br label %return

switch.lookup25:                                  ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep26 = getelementptr inbounds [5 x ptr], ptr @switch.table.spu_alg_name.58, i32 0, i32 %mode
  %6 = ptrtoint ptr %switch.gep26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load27 = load ptr, ptr %switch.gep26, align 4
  br label %return

return:                                           ; preds = %switch.lookup25, %switch.lookup22, %switch.lookup, %sw.default19, %sw.bb14.return_crit_edge, %sw.bb9.return_crit_edge, %sw.bb1.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.37, %sw.default19 ], [ @.str.20, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ], [ @.str.28, %sw.bb1.return_crit_edge ], [ %switch.load24, %switch.lookup22 ], [ @.str.32, %sw.bb9.return_crit_edge ], [ %switch.load27, %switch.lookup25 ], [ @.str.36, %sw.bb14.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spu_setup_debugfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @debugfs_initialized() #9
  br i1 %call, label %if.end, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.38, ptr noundef null) #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6) to i32))
  store ptr %call2, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6), align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 7), align 8
  %tobool4.not = icmp eq ptr %1, null
  br i1 %tobool4.not, label %if.then5, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6), align 4
  %call6 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.39, i16 noundef zeroext 256, ptr noundef %2, ptr noundef nonnull @iproc_priv, ptr noundef nonnull @spu_debugfs_stats) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end3.if.end7_crit_edge, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spu_free_debugfs() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6), align 4
  tail call void @debugfs_remove(ptr noundef %0) #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.bcm_device_private, ptr @iproc_priv, i32 0, i32 6), align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @format_value_ccm(i32 noundef %val, ptr nocapture noundef writeonly %buf, i8 noundef zeroext %len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %len to i32
  %0 = call ptr @memset(ptr %buf, i32 0, i32 %conv)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %len)
  %cmp15.not = icmp eq i8 %len, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %conv3 = trunc i32 %val to i8
  %sub5 = add nsw i32 %conv, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub5
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv3, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %len)
  %exitcond17.not = icmp eq i8 %len, 1
  br i1 %exitcond17.not, label %for.body.preheader.for.end_crit_edge, label %for.body.1

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %for.body.preheader
  %shr.1 = lshr i32 %val, 8
  %conv3.1 = trunc i32 %shr.1 to i8
  %sub5.1 = add nsw i32 %conv, -2
  %arrayidx.1 = getelementptr i8, ptr %buf, i32 %sub5.1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv3.1, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %len)
  %exitcond17.1.not = icmp eq i8 %len, 2
  br i1 %exitcond17.1.not, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %shr.2 = lshr i32 %val, 16
  %conv3.2 = trunc i32 %shr.2 to i8
  %sub5.2 = add nsw i32 %conv, -3
  %arrayidx.2 = getelementptr i8, ptr %buf, i32 %sub5.2
  %3 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv3.2, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %len)
  %exitcond17.2.not = icmp eq i8 %len, 3
  br i1 %exitcond17.2.not, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  %shr.3 = lshr i32 %val, 24
  %conv3.3 = trunc i32 %shr.3 to i8
  %sub5.3 = add nsw i32 %conv, -4
  %arrayidx.3 = getelementptr i8, ptr %buf, i32 %sub5.3
  %4 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3.3, ptr %arrayidx.3, align 1
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spu_debugfs_read(ptr nocapture noundef readonly %filp, ptr noundef %ubuf, i32 noundef %count, ptr noundef %offp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 2048) #14
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %1 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data, align 4
  %num_spu = getelementptr inbounds %struct.bcm_device_private, ptr %2, i32 0, i32 1, i32 23
  %3 = ptrtoint ptr %num_spu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_spu, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %call7.i, i32 noundef 2048, ptr noundef nonnull @.str.40, i32 noundef %4) #9
  %add.ptr2 = getelementptr i8, ptr %call7.i, i32 %call1
  %sub3 = sub i32 2048, %call1
  %session_count = getelementptr inbounds %struct.bcm_device_private, ptr %2, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %session_count, i32 noundef 4) #9
  %5 = ptrtoint ptr %session_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %session_count, align 4
  %call5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr2, i32 noundef %sub3, ptr noundef nonnull @.str.41, i32 noundef %6) #9
  %add6 = add i32 %call5, %call1
  %add.ptr7 = getelementptr i8, ptr %call7.i, i32 %add6
  %sub8 = sub i32 2048, %add6
  %stream_count = getelementptr inbounds %struct.bcm_device_private, ptr %2, i32 0, i32 3
  %call.i.i336 = tail call zeroext i1 @__kasan_check_read(ptr noundef %stream_count, i32 noundef 4) #9
  %7 = ptrtoint ptr %stream_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %stream_count, align 4
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr7, i32 noundef %sub8, ptr noundef nonnull @.str.42, i32 noundef %8) #9
  %add11 = add i32 %call10, %add6
  %add.ptr12 = getelementptr i8, ptr %call7.i, i32 %add11
  %sub13 = sub i32 2048, %add11
  %setkey_cnt = getelementptr inbounds %struct.bcm_device_private, ptr %2, i32 0, i32 15
  %call.i.i337 = tail call zeroext i1 @__kasan_check_read(ptr noundef %setkey_cnt, i32 noundef 4) #9
  %9 = ptrtoint ptr %setkey_cnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %setkey_cnt, align 4
  %call15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr12, i32 noundef %sub13, ptr noundef nonnull @.str.43, i32 noundef %10) #9
  %add16 = add i32 %call15, %add11
  %add.ptr17 = getelementptr i8, ptr %call7.i, i32 %add16
  %sub18 = sub i32 2048, %add16
  %op_counts = getelementptr inbounds %struct.bcm_device_private, ptr %2, i32 0, i32 10
  %call.i.i338 = tail call zeroext i1 @__kasan_check_read(ptr noundef %op_counts, i32 noundef 4) #9
  %11 = ptrtoint ptr %op_counts to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %op_counts, align 4
  %call21 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr17, i32 noundef %sub18, ptr noundef nonnull @.str.44, i32 noundef %12) #9
  %add22 = add i32 %call21, %add16
  br label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.inc37.for.cond23.preheader_crit_edge, %if.end
  %alg.0359 = phi i32 [ 0, %if.end ], [ %inc38, %for.inc37.for.cond23.preheader_crit_edge ]
  %out_offset.0358 = phi i32 [ %add22, %if.end ], [ %out_offset.2, %for.inc37.for.cond23.preheader_crit_edge ]
  br label %for.body25

for.body25:                                       ; preds = %for.inc.for.body25_crit_edge, %for.cond23.preheader
  %mode.0355 = phi i32 [ 0, %for.cond23.preheader ], [ %inc, %for.inc.for.body25_crit_edge ]
  %out_offset.1354 = phi i32 [ %out_offset.0358, %for.cond23.preheader ], [ %out_offset.2, %for.inc.for.body25_crit_edge ]
  %arrayidx27 = getelementptr %struct.bcm_device_private, ptr %2, i32 0, i32 11, i32 %alg.0359, i32 %mode.0355
  %call.i.i339 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx27, i32 noundef 4) #9
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool29.not = icmp eq i32 %14, 0
  br i1 %tobool29.not, label %for.body25.for.inc_crit_edge, label %if.then30

for.body25.for.inc_crit_edge:                     ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then30:                                        ; preds = %for.body25
  %add.ptr31 = getelementptr i8, ptr %call7.i, i32 %out_offset.1354
  %sub32 = sub i32 2048, %out_offset.1354
  %15 = zext i32 %alg.0359 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %alg.0359, label %sw.default19.i [
    i32 1, label %if.then30.spu_alg_name.exit_crit_edge
    i32 4, label %sw.bb1.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb14.i
  ]

if.then30.spu_alg_name.exit_crit_edge:            ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_alg_name.exit

sw.bb1.i:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mode.0355)
  %16 = icmp ult i32 %mode.0355, 8
  br i1 %16, label %switch.lookup, label %sw.bb1.i.spu_alg_name.exit_crit_edge

sw.bb1.i.spu_alg_name.exit_crit_edge:             ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_alg_name.exit

sw.bb9.i:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mode.0355)
  %17 = icmp ult i32 %mode.0355, 5
  br i1 %17, label %switch.lookup376, label %sw.bb9.i.spu_alg_name.exit_crit_edge

sw.bb9.i.spu_alg_name.exit_crit_edge:             ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_alg_name.exit

sw.bb14.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %mode.0355)
  %18 = icmp ult i32 %mode.0355, 5
  br i1 %18, label %switch.lookup379, label %sw.bb14.i.spu_alg_name.exit_crit_edge

sw.bb14.i.spu_alg_name.exit_crit_edge:            ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_alg_name.exit

sw.default19.i:                                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %spu_alg_name.exit

switch.lookup:                                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.spu_debugfs_read, i32 0, i32 %mode.0355
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %spu_alg_name.exit

switch.lookup376:                                 ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep377 = getelementptr inbounds [5 x ptr], ptr @switch.table.spu_debugfs_read.59, i32 0, i32 %mode.0355
  %20 = ptrtoint ptr %switch.gep377 to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load378 = load ptr, ptr %switch.gep377, align 4
  br label %spu_alg_name.exit

switch.lookup379:                                 ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep380 = getelementptr inbounds [5 x ptr], ptr @switch.table.spu_debugfs_read.60, i32 0, i32 %mode.0355
  %21 = ptrtoint ptr %switch.gep380 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load381 = load ptr, ptr %switch.gep380, align 4
  br label %spu_alg_name.exit

spu_alg_name.exit:                                ; preds = %switch.lookup379, %switch.lookup376, %switch.lookup, %sw.default19.i, %sw.bb14.i.spu_alg_name.exit_crit_edge, %sw.bb9.i.spu_alg_name.exit_crit_edge, %sw.bb1.i.spu_alg_name.exit_crit_edge, %if.then30.spu_alg_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.37, %sw.default19.i ], [ @.str.20, %if.then30.spu_alg_name.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ @.str.28, %sw.bb1.i.spu_alg_name.exit_crit_edge ], [ %switch.load378, %switch.lookup376 ], [ @.str.32, %sw.bb9.i.spu_alg_name.exit_crit_edge ], [ %switch.load381, %switch.lookup379 ], [ @.str.36, %sw.bb14.i.spu_alg_name.exit_crit_edge ]
  %call34 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr31, i32 noundef %sub32, ptr noundef nonnull @.str.45, ptr noundef nonnull %retval.0.i, i32 noundef %14) #9
  %add35 = add i32 %call34, %out_offset.1354
  br label %for.inc

for.inc:                                          ; preds = %spu_alg_name.exit, %for.body25.for.inc_crit_edge
  %out_offset.2 = phi i32 [ %add35, %spu_alg_name.exit ], [ %out_offset.1354, %for.body25.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %mode.0355, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc37, label %for.inc.for.body25_crit_edge

for.inc.for.body25_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body25

for.inc37:                                        ; preds = %for.inc
  %inc38 = add nuw nsw i32 %alg.0359, 1
  %exitcond372.not = icmp eq i32 %inc38, 5
  br i1 %exitcond372.not, label %for.end39, label %for.inc37.for.cond23.preheader_crit_edge

for.inc37.for.cond23.preheader_crit_edge:         ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond23.preheader

for.end39:                                        ; preds = %for.inc37
  %add.ptr40 = getelementptr i8, ptr %call7.i, i32 %out_offset.2
  %sub41 = sub i32 2048, %out_offset.2
  %arrayidx43 = getelementptr %struct.bcm_device_private, ptr %2, i32 0, i32 10, i32 1
  %call.i.i340 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx43, i32 noundef 4) #9
  %22 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx43, align 4
  %call45 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr40, i32 noundef %sub41, ptr noundef nonnull @.str.46, i32 noundef %23) #9
  %add46 = add i32 %call45, %out_offset.2
  br label %for.body49

for.body49:                                       ; preds = %for.inc60.for.body49_crit_edge, %for.end39
  %alg.1361 = phi i32 [ 0, %for.end39 ], [ %inc61, %for.inc60.for.body49_crit_edge ]
  %out_offset.3360 = phi i32 [ %add46, %for.end39 ], [ %out_offset.4, %for.inc60.for.body49_crit_edge ]
  %arrayidx50 = getelementptr %struct.bcm_device_private, ptr %2, i32 0, i32 12, i32 %alg.1361
  %call.i.i341 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx50, i32 noundef 4) #9
  %24 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool52.not = icmp eq i32 %25, 0
  br i1 %tobool52.not, label %for.body49.for.inc60_crit_edge, label %if.then53

for.body49.for.inc60_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc60

if.then53:                                        ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr54 = getelementptr i8, ptr %call7.i, i32 %out_offset.3360
  %sub55 = sub i32 2048, %out_offset.3360
  %arrayidx56 = getelementptr [12 x ptr], ptr @hash_alg_name, i32 0, i32 %alg.1361
  %26 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx56, align 4
  %call57 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr54, i32 noundef %sub55, ptr noundef nonnull @.str.45, ptr noundef %27, i32 noundef %25) #9
  %add58 = add i32 %call57, %out_offset.3360
  br label %for.inc60

for.inc60:                                        ; preds = %if.then53, %for.body49.for.inc60_crit_edge
  %out_offset.4 = phi i32 [ %add58, %if.then53 ], [ %out_offset.3360, %for.body49.for.inc60_crit_edge ]
  %inc61 = add nuw nsw i32 %alg.1361, 1
  %exitcond373.not = icmp eq i32 %inc61, 12
  br i1 %exitcond373.not, label %for.end62, label %for.inc60.for.body49_crit_edge

for.inc60.for.body49_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body49

for.end62:                                        ; preds = %for.inc60
  %add.ptr63 = getelementptr i8, ptr %call7.i, i32 %out_offset.4
  %sub64 = sub i32 2048, %out_offset.4
  %arrayidx66 = getelementptr %struct.bcm_device_private, ptr %2, i32 0, i32 15, i32 2
  %call.i.i342 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx66, i32 noundef 4) #9
  %28 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %arrayidx66, align 4
  %call68 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr63, i32 noundef %sub64, ptr noundef nonnull @.str.47, i32 noundef %29) #9
  %add69 = add i32 %call68, %out_offset.4
  %add.ptr70 = getelementptr i8, ptr %call7.i, i32 %add69
  %sub71 = sub i32 2048, %add69
  %arrayidx73 = getelementptr %struct.bcm_device_private, ptr %2, i32 0, i32 10, i32 2
  %call.i.i343 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx73, i32 noundef 4) #9
  %30 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %arrayidx73, align 4
  %call75 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr70, i32 noundef %sub71, ptr noundef nonnull @.str.48, i32 noundef %31) #9
  %add76 = add i32 %call75, %add69
  br label %for.body79

for.body79:                                       ; preds = %for.inc90.for.body79_crit_edge, %for.end62
  %alg.2364 = phi i32 [ 0, %for.end62 ], [ %inc91, %for.inc90.for.body79_crit_edge ]
  %out_offset.5363 = phi i32 [ %add76, %for.end62 ], [ %out_offset.6, %for.inc90.for.body79_crit_edge ]
  %arrayidx80 = getelementptr %struct.bcm_device_private, ptr %2, i32 0, i32 13, i32 %alg.2364
  %call.i.i344 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx80, i32 noundef 4) #9
  %32 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %arrayidx80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool82.not = icmp eq i32 %33, 0
  br i1 %tobool82.not, label %for.body79.for.inc90_crit_edge, label %if.then83

for.body79.for.inc90_crit_edge:                   ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc90

if.then83:                                        ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr84 = getelementptr i8, ptr %call7.i, i32 %out_offset.5363
  %sub85 = sub i32 2048, %out_offset.5363
  %arrayidx86 = getelementptr [12 x ptr], ptr @hash_alg_name, i32 0, i32 %alg.2364
  %34 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx86, align 4
  %call87 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr84, i32 noundef %sub85, ptr noundef nonnull @.str.45, ptr noundef %35, i32 noundef %33) #9
  %add88 = add i32 %call87, %out_offset.5363
  br label %for.inc90

for.inc90:                                        ; preds = %if.then83, %for.body79.for.inc90_crit_edge
  %out_offset.6 = phi i32 [ %add88, %if.then83 ], [ %out_offset.5363, %for.body79.for.inc90_crit_edge ]
  %inc91 = add nuw nsw i32 %alg.2364, 1
  %exitcond374.not = icmp eq i32 %inc91, 12
  br i1 %exitcond374.not, label %for.end92, label %for.inc90.for.body79_crit_edge

for.inc90.for.body79_crit_edge:                   ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body79

for.end92:                                        ; preds = %for.inc90
  %add.ptr93 = getelementptr i8, ptr %call7.i, i32 %out_offset.6
  %sub94 = sub i32 2048, %out_offset.6
  %arrayidx96 = getelementptr %struct.bcm_device_private, ptr %2, i32 0, i32 15, i32 3
  %call.i.i345 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx96, i32 noundef 4) #9
  %36 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx96, align 4
  %call98 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr93, i32 noundef %sub94, ptr noundef nonnull @.str.49, i32 noundef %37) #9
  %add99 = add i32 %call98, %out_offset.6
  %add.ptr100 = getelementptr i8, ptr %call7.i, i32 %add99
  %sub101 = sub i32 2048, %add99
  %arrayidx103 = getelementptr %struct.bcm_device_private, ptr %2, i32 0, i32 10, i32 3
  %call.i.i346 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx103, i32 noundef 4) #9
  %38 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %arrayidx103, align 4
  %call105 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr100, i32 noundef %sub101, ptr noundef nonnull @.str.50, i32 noundef %39) #9
  %add106 = add i32 %call105, %add99
  %arrayidx110 = getelementptr %struct.bcm_device_private, ptr %2, i32 0, i32 14, i32 0
  %call.i.i347 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx110, i32 noundef 4) #9
  %40 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %arrayidx110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool112.not = icmp eq i32 %41, 0
  br i1 %tobool112.not, label %for.end92.for.inc120_crit_edge, label %if.then113

for.end92.for.inc120_crit_edge:                   ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc120

if.then113:                                       ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr114 = getelementptr i8, ptr %call7.i, i32 %add106
  %sub115 = sub i32 2048, %add106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @aead_alg_name to i32))
  %42 = load ptr, ptr @aead_alg_name, align 4
  %call117 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr114, i32 noundef %sub115, ptr noundef nonnull @.str.45, ptr noundef %42, i32 noundef %41) #9
  %add118 = add i32 %call117, %add106
  br label %for.inc120

for.inc120:                                       ; preds = %if.then113, %for.end92.for.inc120_crit_edge
  %out_offset.8 = phi i32 [ %add118, %if.then113 ], [ %add106, %for.end92.for.inc120_crit_edge ]
  %arrayidx110.1 = getelementptr %struct.bcm_device_private, ptr %2, i32 0, i32 14, i32 1
  %call.i.i347.1 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx110.1, i32 noundef 4) #9
  %43 = ptrtoint ptr %arrayidx110.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %arrayidx110.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool112.not.1 = icmp eq i32 %44, 0
  br i1 %tobool112.not.1, label %for.inc120.for.inc120.1_crit_edge, label %if.then113.1

for.inc120.for.inc120.1_crit_edge:                ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc120.1

if.then113.1:                                     ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr114.1 = getelementptr i8, ptr %call7.i, i32 %out_offset.8
  %sub115.1 = sub i32 2048, %out_offset.8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x ptr], ptr @aead_alg_name, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @aead_alg_name, i32 0, i32 1), align 4
  %call117.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr114.1, i32 noundef %sub115.1, ptr noundef nonnull @.str.45, ptr noundef %45, i32 noundef %44) #9
  %add118.1 = add i32 %call117.1, %out_offset.8
  br label %for.inc120.1

for.inc120.1:                                     ; preds = %if.then113.1, %for.inc120.for.inc120.1_crit_edge
  %out_offset.8.1 = phi i32 [ %add118.1, %if.then113.1 ], [ %out_offset.8, %for.inc120.for.inc120.1_crit_edge ]
  %arrayidx110.2 = getelementptr %struct.bcm_device_private, ptr %2, i32 0, i32 14, i32 2
  %call.i.i347.2 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx110.2, i32 noundef 4) #9
  %46 = ptrtoint ptr %arrayidx110.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %arrayidx110.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool112.not.2 = icmp eq i32 %47, 0
  br i1 %tobool112.not.2, label %for.inc120.1.for.inc120.2_crit_edge, label %if.then113.2

for.inc120.1.for.inc120.2_crit_edge:              ; preds = %for.inc120.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc120.2

if.then113.2:                                     ; preds = %for.inc120.1
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr114.2 = getelementptr i8, ptr %call7.i, i32 %out_offset.8.1
  %sub115.2 = sub i32 2048, %out_offset.8.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([3 x ptr], ptr @aead_alg_name, i32 0, i32 2) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @aead_alg_name, i32 0, i32 2), align 4
  %call117.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr114.2, i32 noundef %sub115.2, ptr noundef nonnull @.str.45, ptr noundef %48, i32 noundef %47) #9
  %add118.2 = add i32 %call117.2, %out_offset.8.1
  br label %for.inc120.2

for.inc120.2:                                     ; preds = %if.then113.2, %for.inc120.1.for.inc120.2_crit_edge
  %out_offset.8.2 = phi i32 [ %add118.2, %if.then113.2 ], [ %out_offset.8.1, %for.inc120.1.for.inc120.2_crit_edge ]
  %add.ptr123 = getelementptr i8, ptr %call7.i, i32 %out_offset.8.2
  %sub124 = sub i32 2048, %out_offset.8.2
  %bytes_out = getelementptr inbounds %struct.bcm_device_private, ptr %2, i32 0, i32 9
  %call.i.i348 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_out, i32 noundef 8) #9
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %bytes_out) #9
  %call126 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr123, i32 noundef %sub124, ptr noundef nonnull @.str.51, i64 noundef %call.i) #9
  %add127 = add i32 %call126, %out_offset.8.2
  %add.ptr128 = getelementptr i8, ptr %call7.i, i32 %add127
  %sub129 = sub i32 2048, %add127
  %bytes_in = getelementptr inbounds %struct.bcm_device_private, ptr %2, i32 0, i32 8
  %call.i.i349 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes_in, i32 noundef 8) #9
  %call.i350 = tail call i64 @generic_atomic64_read(ptr noundef %bytes_in) #9
  %call131 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr128, i32 noundef %sub129, ptr noundef nonnull @.str.52, i64 noundef %call.i350) #9
  %add132 = add i32 %call131, %add127
  %add.ptr133 = getelementptr i8, ptr %call7.i, i32 %add132
  %sub134 = sub i32 2048, %add132
  %mb_no_spc = getelementptr inbounds %struct.bcm_device_private, ptr %2, i32 0, i32 16
  %call.i.i351 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mb_no_spc, i32 noundef 4) #9
  %49 = ptrtoint ptr %mb_no_spc to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %mb_no_spc, align 4
  %call136 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr133, i32 noundef %sub134, ptr noundef nonnull @.str.53, i32 noundef %50) #9
  %add137 = add i32 %call136, %add132
  %add.ptr138 = getelementptr i8, ptr %call7.i, i32 %add137
  %sub139 = sub i32 2048, %add137
  %mb_send_fail = getelementptr inbounds %struct.bcm_device_private, ptr %2, i32 0, i32 17
  %call.i.i352 = tail call zeroext i1 @__kasan_check_read(ptr noundef %mb_send_fail, i32 noundef 4) #9
  %51 = ptrtoint ptr %mb_send_fail to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %mb_send_fail, align 4
  %call141 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr138, i32 noundef %sub139, ptr noundef nonnull @.str.54, i32 noundef %52) #9
  %add142 = add i32 %call141, %add137
  %add.ptr143 = getelementptr i8, ptr %call7.i, i32 %add142
  %sub144 = sub i32 2048, %add142
  %bad_icv = getelementptr inbounds %struct.bcm_device_private, ptr %2, i32 0, i32 18
  %call.i.i353 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bad_icv, i32 noundef 4) #9
  %53 = ptrtoint ptr %bad_icv to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %bad_icv, align 4
  %call146 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr143, i32 noundef %sub144, ptr noundef nonnull @.str.55, i32 noundef %54) #9
  %add147 = add i32 %call146, %add142
  %spu_type = getelementptr inbounds %struct.bcm_device_private, ptr %2, i32 0, i32 1, i32 21
  %55 = ptrtoint ptr %spu_type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %spu_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp149 = icmp eq i32 %56, 0
  br i1 %cmp149, label %for.cond151.preheader, label %for.inc120.2.if.end167_crit_edge

for.inc120.2.if.end167_crit_edge:                 ; preds = %for.inc120.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

for.cond151.preheader:                            ; preds = %for.inc120.2
  %57 = ptrtoint ptr %num_spu to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_spu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp154369.not = icmp eq i32 %58, 0
  br i1 %cmp154369.not, label %for.cond151.preheader.if.end167_crit_edge, label %for.cond151.preheader.for.body155_crit_edge

for.cond151.preheader.for.body155_crit_edge:      ; preds = %for.cond151.preheader
  br label %for.body155

for.cond151.preheader.if.end167_crit_edge:        ; preds = %for.cond151.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

for.body155:                                      ; preds = %for.body155.for.body155_crit_edge, %for.cond151.preheader.for.body155_crit_edge
  %i.0371 = phi i32 [ %inc165, %for.body155.for.body155_crit_edge ], [ 0, %for.cond151.preheader.for.body155_crit_edge ]
  %out_offset.9370 = phi i32 [ %add163, %for.body155.for.body155_crit_edge ], [ %add147, %for.cond151.preheader.for.body155_crit_edge ]
  %arrayidx157 = getelementptr %struct.bcm_device_private, ptr %2, i32 0, i32 1, i32 20, i32 %i.0371
  %59 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx157, align 4
  %add.ptr158 = getelementptr i8, ptr %60, i32 64
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr158) #9, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  %62 = and i32 %61, -16711680
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %add.ptr160 = getelementptr i8, ptr %call7.i, i32 %out_offset.9370
  %sub161 = sub i32 2048, %out_offset.9370
  %call162 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr160, i32 noundef %sub161, ptr noundef nonnull @.str.56, i32 noundef %i.0371, i32 noundef %63) #9
  %add163 = add i32 %call162, %out_offset.9370
  %inc165 = add nuw i32 %i.0371, 1
  %64 = ptrtoint ptr %num_spu to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_spu, align 4
  %cmp154 = icmp ult i32 %inc165, %65
  br i1 %cmp154, label %for.body155.for.body155_crit_edge, label %for.body155.if.end167_crit_edge

for.body155.if.end167_crit_edge:                  ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

for.body155.for.body155_crit_edge:                ; preds = %for.body155
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body155

if.end167:                                        ; preds = %for.body155.if.end167_crit_edge, %for.cond151.preheader.if.end167_crit_edge, %for.inc120.2.if.end167_crit_edge
  %out_offset.10 = phi i32 [ %add147, %for.inc120.2.if.end167_crit_edge ], [ %add147, %for.cond151.preheader.if.end167_crit_edge ], [ %add163, %for.body155.if.end167_crit_edge ]
  %66 = tail call i32 @llvm.smin.i32(i32 %out_offset.10, i32 2048)
  %call171 = tail call i32 @simple_read_from_buffer(ptr noundef %ubuf, i32 noundef %count, ptr noundef %offp, ptr noundef nonnull %call7.i, i32 noundef %66) #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end167, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call171, %if.end167 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108}
!llvm.module.flags = !{!110, !111, !112, !113, !114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/bcm/util.c", i32 58, i32 12}
!2 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/crypto/bcm/util.c", i32 59, i32 5}
!4 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/crypto/bcm/util.c", i32 60, i32 12}
!6 = distinct !{null, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/bcm/util.c", i32 78, i32 5}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/bcm/util.c", i32 223, i32 3}
!10 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @do_shash._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @do_shash._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/crypto/bcm/util.c", i32 238, i32 4}
!16 = !{ptr @do_shash._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @do_shash._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/bcm/util.c", i32 245, i32 3}
!20 = !{ptr @do_shash._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @do_shash._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/bcm/util.c", i32 250, i32 3}
!24 = !{ptr @do_shash._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @do_shash._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/bcm/util.c", i32 256, i32 4}
!28 = !{ptr @do_shash._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @do_shash._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/bcm/util.c", i32 262, i32 3}
!32 = !{ptr @do_shash._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @do_shash._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/bcm/util.c", i32 300, i32 10}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/bcm/util.c", i32 304, i32 11}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/bcm/util.c", i32 306, i32 11}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/bcm/util.c", i32 308, i32 11}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/bcm/util.c", i32 310, i32 11}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/bcm/util.c", i32 312, i32 11}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/bcm/util.c", i32 314, i32 11}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/bcm/util.c", i32 316, i32 11}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/bcm/util.c", i32 318, i32 11}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/bcm/util.c", i32 324, i32 11}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/crypto/bcm/util.c", i32 326, i32 11}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/bcm/util.c", i32 328, i32 11}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/crypto/bcm/util.c", i32 330, i32 11}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/crypto/bcm/util.c", i32 336, i32 11}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/bcm/util.c", i32 338, i32 11}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/crypto/bcm/util.c", i32 340, i32 11}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/crypto/bcm/util.c", i32 342, i32 11}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/crypto/bcm/util.c", i32 346, i32 10}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/bcm/util.c", i32 491, i32 47}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/bcm/util.c", i32 496, i32 23}
!74 = !{ptr @spu_debugfs_stats, !75, !"spu_debugfs_stats", i1 false, i1 false}
!75 = !{!"../drivers/crypto/bcm/util.c", i32 474, i32 37}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/crypto/bcm/util.c", i32 372, i32 11}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/crypto/bcm/util.c", i32 375, i32 11}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/crypto/bcm/util.c", i32 378, i32 11}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/crypto/bcm/util.c", i32 381, i32 11}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/crypto/bcm/util.c", i32 384, i32 11}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/crypto/bcm/util.c", i32 392, i32 11}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/crypto/bcm/util.c", i32 398, i32 11}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/bcm/util.c", i32 410, i32 11}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/bcm/util.c", i32 413, i32 11}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/crypto/bcm/util.c", i32 425, i32 11}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/bcm/util.c", i32 429, i32 11}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/crypto/bcm/util.c", i32 441, i32 11}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/crypto/bcm/util.c", i32 444, i32 11}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/crypto/bcm/util.c", i32 447, i32 11}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/crypto/bcm/util.c", i32 450, i32 11}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/bcm/util.c", i32 453, i32 11}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/crypto/bcm/util.c", i32 462, i32 12}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 1, !"min_enum_size", i32 4}
!112 = !{i32 8, !"branch-target-enforcement", i32 0}
!113 = !{i32 8, !"sign-return-address", i32 0}
!114 = !{i32 8, !"sign-return-address-all", i32 0}
!115 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!116 = !{i32 7, !"uwtable", i32 1}
!117 = !{i32 7, !"frame-pointer", i32 2}
!118 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.peeled.count", i32 1}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2153412180, i64 2153412672, i64 2153412217, i64 2153412273, i64 2153412307, i64 2153412331, i64 2153412372, i64 2153412393, i64 2153412421, i64 2153412455}
!123 = !{i64 2153410232, i64 2153410724, i64 2153410269, i64 2153410325, i64 2153410359, i64 2153410383, i64 2153410424, i64 2153410445, i64 2153410473, i64 2153410507}
!124 = !{i64 5850914}
!125 = !{i64 2153391263}
