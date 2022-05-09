; ModuleID = '/llk/IR_all_yes/security/keys/trusted-keys/trusted_tpm1.c_pt.bc'
source_filename = "../security/keys/trusted-keys/trusted_tpm1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+TSS_authhmac\22, \22a\22\09"
module asm "\09.weak\09__crc_TSS_authhmac\09\09\09\09"
module asm "\09.long\09__crc_TSS_authhmac\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_TSS_authhmac:\09\09\09\09\09"
module asm "\09.asciz \09\22TSS_authhmac\22\09\09\09\09\09"
module asm "__kstrtabns_TSS_authhmac:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+TSS_checkhmac1\22, \22a\22\09"
module asm "\09.weak\09__crc_TSS_checkhmac1\09\09\09\09"
module asm "\09.long\09__crc_TSS_checkhmac1\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_TSS_checkhmac1:\09\09\09\09\09"
module asm "\09.asciz \09\22TSS_checkhmac1\22\09\09\09\09\09"
module asm "__kstrtabns_TSS_checkhmac1:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+trusted_tpm_send\22, \22a\22\09"
module asm "\09.weak\09__crc_trusted_tpm_send\09\09\09\09"
module asm "\09.long\09__crc_trusted_tpm_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_trusted_tpm_send:\09\09\09\09\09"
module asm "\09.asciz \09\22trusted_tpm_send\22\09\09\09\09\09"
module asm "__kstrtabns_trusted_tpm_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+oiap\22, \22a\22\09"
module asm "\09.weak\09__crc_oiap\09\09\09\09"
module asm "\09.long\09__crc_oiap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_oiap:\09\09\09\09\09"
module asm "\09.asciz \09\22oiap\22\09\09\09\09\09"
module asm "__kstrtabns_oiap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trusted_key_ops = type { i8, ptr, ptr, ptr, ptr, ptr }
%struct.key_type = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.match_token = type { i32, ptr }
%struct.__va_list = type { ptr }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.tpm_buf = type { i32, ptr }
%struct.tpm_header = type <{ i16, i32, %union.anon.73 }>
%union.anon.73 = type { i32 }
%struct.osapsess = type { i32, [20 x i8], [20 x i8] }
%struct.trusted_key_options = type { i16, i32, [20 x i8], i32, [20 x i8], i32, [64 x i8], i32, i32, i32, [64 x i8], i32 }
%struct.trusted_key_payload = type { %struct.callback_head, i32, i32, i8, i8, [129 x i8], [512 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.tpm_digests = type { [20 x i8], [20 x i8], [40 x i8], [20 x i8], [20 x i8] }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.tpm_bank_info = type { i16, i16, i16 }
%struct.tpm_digest = type { i16, [64 x i8] }
%struct.substring_t = type { ptr, ptr }

@chip = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hashalg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@TSS_authhmac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016trusted_key: can't alloc %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TSS_authhmac\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"security/keys/trusted-keys/trusted_tpm1.c\00", [54 x i8] zeroinitializer }, align 32
@TSS_authhmac._entry_ptr = internal global ptr @TSS_authhmac._entry, section ".printk_index", align 4
@hash_alg = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_TSS_authhmac = external dso_local constant [0 x i8], align 1
@__kstrtabns_TSS_authhmac = external dso_local constant [0 x i8], align 1
@__ksymtab_TSS_authhmac = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @TSS_authhmac to i32), ptr @__kstrtab_TSS_authhmac, ptr @__kstrtabns_TSS_authhmac }, section "___ksymtab_gpl+TSS_authhmac", align 4
@TSS_checkhmac1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TSS_checkhmac1\00", [17 x i8] zeroinitializer }, align 32
@TSS_checkhmac1._entry_ptr = internal global ptr @TSS_checkhmac1._entry, section ".printk_index", align 4
@__kstrtab_TSS_checkhmac1 = external dso_local constant [0 x i8], align 1
@__kstrtabns_TSS_checkhmac1 = external dso_local constant [0 x i8], align 1
@__ksymtab_TSS_checkhmac1 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @TSS_checkhmac1 to i32), ptr @__kstrtab_TSS_checkhmac1, ptr @__kstrtabns_TSS_checkhmac1 }, section "___ksymtab_gpl+TSS_checkhmac1", align 4
@__kstrtab_trusted_tpm_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_trusted_tpm_send = external dso_local constant [0 x i8], align 1
@__ksymtab_trusted_tpm_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @trusted_tpm_send to i32), ptr @__kstrtab_trusted_tpm_send, ptr @__kstrtabns_trusted_tpm_send }, section "___ksymtab_gpl+trusted_tpm_send", align 4
@__kstrtab_oiap = external dso_local constant [0 x i8], align 1
@__kstrtabns_oiap = external dso_local constant [0 x i8], align 1
@__ksymtab_oiap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @oiap to i32), ptr @__kstrtab_oiap, ptr @__kstrtabns_oiap }, section "___ksymtab_gpl+oiap", align 4
@trusted_key_tpm_ops = dso_local global { %struct.trusted_key_ops, [40 x i8] } { %struct.trusted_key_ops { i8 1, ptr @trusted_tpm_init, ptr @trusted_tpm_seal, ptr @trusted_tpm_unseal, ptr @trusted_tpm_get_random, ptr @trusted_tpm_exit }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@hmacalg = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@TSS_rawhmac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TSS_rawhmac\00", [20 x i8] zeroinitializer }, align 32
@TSS_rawhmac._entry_ptr = internal global ptr @TSS_rawhmac._entry, section ".printk_index", align 4
@hmac_alg = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hmac(sha1)\00", [21 x i8] zeroinitializer }, align 32
@key_type_trusted = external dso_local global %struct.key_type, align 4
@digests = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@trusted_shash_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016trusted_key: could not allocate crypto %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"trusted_shash_alloc\00", [44 x i8] zeroinitializer }, align 32
@trusted_shash_alloc._entry_ptr = internal global ptr @trusted_shash_alloc._entry, section ".printk_index", align 4
@trusted_shash_alloc._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@trusted_shash_alloc._entry_ptr.8 = internal global ptr @trusted_shash_alloc._entry.7, section ".printk_index", align 4
@trusted_tpm_seal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016trusted_key: key_seal failed (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"trusted_tpm_seal\00", [47 x i8] zeroinitializer }, align 32
@trusted_tpm_seal._entry_ptr = internal global ptr @trusted_tpm_seal._entry, section ".printk_index", align 4
@trusted_tpm_seal._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016trusted_key: pcrlock failed (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@trusted_tpm_seal._entry_ptr.13 = internal global ptr @trusted_tpm_seal._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" \09\00", [29 x i8] zeroinitializer }, align 32
@key_tokens = internal constant { [10 x %struct.match_token], [48 x i8] } { [10 x %struct.match_token] [%struct.match_token { i32 1, ptr @.str.17 }, %struct.match_token { i32 2, ptr @.str.18 }, %struct.match_token { i32 3, ptr @.str.19 }, %struct.match_token { i32 4, ptr @.str.20 }, %struct.match_token { i32 5, ptr @.str.21 }, %struct.match_token { i32 6, ptr @.str.22 }, %struct.match_token { i32 7, ptr @.str.23 }, %struct.match_token { i32 8, ptr @.str.24 }, %struct.match_token { i32 9, ptr @.str.25 }, %struct.match_token zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hash_algo_name = external dso_local local_unnamed_addr constant [20 x ptr], align 4
@getoptions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 839, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016trusted_key: TPM 1.x only supports SHA-1.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"getoptions\00", [21 x i8] zeroinitializer }, align 32
@getoptions._entry_ptr = internal global ptr @getoptions._entry, section ".printk_index", align 4
@hash_digest_size = external dso_local local_unnamed_addr constant [20 x i32], align 4
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"keyhandle=%s\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"keyauth=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"blobauth=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcrinfo=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcrlock=%s\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"migratable=%s\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hash=%s\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"policydigest=%s\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"policyhandle=%s\00", [16 x i8] zeroinitializer }, align 32
@key_seal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016trusted_key: srkseal failed (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"key_seal\00", [23 x i8] zeroinitializer }, align 32
@key_seal._entry_ptr = internal global ptr @key_seal._entry, section ".printk_index", align 4
@TSS_sha1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.28, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TSS_sha1\00", [23 x i8] zeroinitializer }, align 32
@TSS_sha1._entry_ptr = internal global ptr @TSS_sha1._entry, section ".printk_index", align 4
@.str.29 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/tpm.h\00", [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tpm_buf: overflow\0A\00", [45 x i8] zeroinitializer }, align 32
@trusted_tpm_unseal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 962, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016trusted_key: key_unseal failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trusted_tpm_unseal\00", [45 x i8] zeroinitializer }, align 32
@trusted_tpm_unseal._entry_ptr = internal global ptr @trusted_tpm_unseal._entry, section ".printk_index", align 4
@trusted_tpm_unseal._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.32, ptr @.str.2, i32 967, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@trusted_tpm_unseal._entry_ptr.34 = internal global ptr @trusted_tpm_unseal._entry.33, section ".printk_index", align 4
@key_unseal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016trusted_key: srkunseal failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"key_unseal\00", [21 x i8] zeroinitializer }, align 32
@key_unseal._entry_ptr = internal global ptr @key_unseal._entry, section ".printk_index", align 4
@tpm_unseal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016trusted_key: oiap failed (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tpm_unseal\00", [21 x i8] zeroinitializer }, align 32
@tpm_unseal._entry_ptr = internal global ptr @tpm_unseal._entry, section ".printk_index", align 4
@tpm_unseal._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tpm_unseal._entry_ptr.40 = internal global ptr @tpm_unseal._entry.39, section ".printk_index", align 4
@tpm_unseal._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.38, ptr @.str.2, i32 610, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016trusted_key: tpm_get_random failed (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@tpm_unseal._entry_ptr.43 = internal global ptr @tpm_unseal._entry.41, section ".printk_index", align 4
@tpm_unseal._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.38, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016trusted_key: authhmac failed (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@tpm_unseal._entry_ptr.46 = internal global ptr @tpm_unseal._entry.44, section ".printk_index", align 4
@tpm_unseal._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.38, ptr @.str.2, i32 651, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016trusted_key: TSS_checkhmac2 failed (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@tpm_unseal._entry_ptr.49 = internal global ptr @tpm_unseal._entry.47, section ".printk_index", align 4
@TSS_checkhmac2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.50, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TSS_checkhmac2\00", [17 x i8] zeroinitializer }, align 32
@TSS_checkhmac2._entry_ptr = internal global ptr @TSS_checkhmac2._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 196, i64 197]
@__sancov_gen_cov_switch_values.51 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 9, i64 32]
@__sancov_gen_cov_switch_values.52 = internal global [11 x i64] [i64 9, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 48, i64 49]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 16, i64 196, i64 198]
@___asan_gen_.55 = private unnamed_addr constant [5 x i8] c"chip\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 27, i32 25 }
@___asan_gen_.58 = private unnamed_addr constant [8 x i8] c"hashalg\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 35, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 132, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [9 x i8] c"hash_alg\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 26, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 208, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"trusted_key_tpm_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1067, i32 24 }
@___asan_gen_.85 = private unnamed_addr constant [8 x i8] c"hmacalg\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 36, i32 29 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 79, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [9 x i8] c"hmac_alg\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 25, i32 19 }
@___asan_gen_.97 = private unnamed_addr constant [8 x i8] c"digests\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 28, i32 27 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 995, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1002, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 917, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 924, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 755, i32 25 }
@___asan_gen_.130 = private unnamed_addr constant [11 x i8] c"key_tokens\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 718, i32 28 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 839, i32 5 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 719, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 720, i32 16 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 721, i32 17 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 722, i32 16 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 723, i32 16 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 724, i32 19 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 725, i32 13 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 726, i32 21 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 727, i32 21 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 678, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 59, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant [23 x i8] c"../include/linux/tpm.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 376, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 962, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 967, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 700, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 595, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 600, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 610, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 639, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 651, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [45 x i8] c"../security/keys/trusted-keys/trusted_tpm1.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 301, i32 3 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @TSS_authhmac._entry, ptr @TSS_authhmac._entry_ptr, ptr @TSS_checkhmac1._entry, ptr @TSS_checkhmac1._entry_ptr, ptr @TSS_checkhmac2._entry, ptr @TSS_checkhmac2._entry_ptr, ptr @TSS_rawhmac._entry, ptr @TSS_rawhmac._entry_ptr, ptr @TSS_sha1._entry, ptr @TSS_sha1._entry_ptr, ptr @__ksymtab_TSS_authhmac, ptr @__ksymtab_TSS_checkhmac1, ptr @__ksymtab_oiap, ptr @__ksymtab_trusted_tpm_send, ptr @getoptions._entry, ptr @getoptions._entry_ptr, ptr @key_seal._entry, ptr @key_seal._entry_ptr, ptr @key_unseal._entry, ptr @key_unseal._entry_ptr, ptr @tpm_unseal._entry, ptr @tpm_unseal._entry.39, ptr @tpm_unseal._entry.41, ptr @tpm_unseal._entry.44, ptr @tpm_unseal._entry.47, ptr @tpm_unseal._entry_ptr, ptr @tpm_unseal._entry_ptr.40, ptr @tpm_unseal._entry_ptr.43, ptr @tpm_unseal._entry_ptr.46, ptr @tpm_unseal._entry_ptr.49, ptr @trusted_shash_alloc._entry, ptr @trusted_shash_alloc._entry.7, ptr @trusted_shash_alloc._entry_ptr, ptr @trusted_shash_alloc._entry_ptr.8, ptr @trusted_tpm_seal._entry, ptr @trusted_tpm_seal._entry.11, ptr @trusted_tpm_seal._entry_ptr, ptr @trusted_tpm_seal._entry_ptr.13, ptr @trusted_tpm_unseal._entry, ptr @trusted_tpm_unseal._entry.33, ptr @trusted_tpm_unseal._entry_ptr, ptr @trusted_tpm_unseal._entry_ptr.34, ptr @chip, ptr @hashalg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hash_alg, ptr @.str.3, ptr @trusted_key_tpm_ops, ptr @hmacalg, ptr @.str.4, ptr @hmac_alg, ptr @digests, ptr @.str.5, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @key_tokens, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hashalg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSS_authhmac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_alg to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSS_checkhmac1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_key_tpm_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmacalg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSS_rawhmac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hmac_alg to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digests to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_shash_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_shash_alloc._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_tpm_seal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_tpm_seal._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_tokens to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @getoptions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_seal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSS_sha1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_tpm_unseal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trusted_tpm_unseal._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @key_unseal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_unseal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_unseal._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_unseal._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_unseal._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_unseal._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TSS_checkhmac2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @TSS_authhmac(ptr noundef %digest, ptr noundef %key, i32 noundef %keylen, ptr noundef %h1, ptr noundef %h2, i32 noundef %h3, ...) #0 align 64 {
entry:
  %paramdigest = alloca [20 x i8], align 1
  %c = alloca i8, align 1
  %argp = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %paramdigest) #11
  %0 = call ptr @memset(ptr %paramdigest, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argp) #11
  %1 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %argp, align 4, !annotation !138
  %2 = load ptr, ptr @chip, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @hashalg, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 128
  %add.i = add i32 %5, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #14
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %init_sdesc.exit

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

init_sdesc.exit:                                  ; preds = %if.end
  %6 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %call9.i.i, align 128
  %cmp.i = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %init_sdesc.exit.do.end_crit_edge, label %if.end5

init_sdesc.exit.do.end_crit_edge:                 ; preds = %init_sdesc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %init_sdesc.exit.do.end_crit_edge, %if.end.do.end_crit_edge
  %retval.0.i63 = phi ptr [ %call9.i.i, %init_sdesc.exit.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.do.end_crit_edge ]
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hash_alg) #15
  %7 = ptrtoint ptr %retval.0.i63 to i32
  br label %cleanup

if.end5:                                          ; preds = %init_sdesc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h3)
  %tobool6 = icmp ne i32 %h3, 0
  %conv = zext i1 %tobool6 to i8
  %8 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %c, align 1
  %9 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call9.i.i, align 128
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i55 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i55, label %crypto_shash_init.exit, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

crypto_shash_init.exit:                           ; preds = %if.end5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %10, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -256
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %16(ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp = icmp slt i32 %call3.i, 0
  br i1 %cmp, label %crypto_shash_init.exit.out_crit_edge, label %if.end11

crypto_shash_init.exit.out_crit_edge:             ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %crypto_shash_init.exit
  call void @llvm.va_start(ptr nonnull %argp)
  %17 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %17)
  %argp.cur79 = load ptr, ptr %argp, align 4
  %argp.next80 = getelementptr inbounds i8, ptr %argp.cur79, i32 4
  store ptr %argp.next80, ptr %argp, align 4
  %18 = ptrtoint ptr %argp.cur79 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %argp.cur79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1281 = icmp eq i32 %19, 0
  br i1 %cmp1281, label %if.end11.for.end_crit_edge, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  br label %if.end15

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond:                                         ; preds = %if.end20
  %20 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %20)
  %argp.cur = load ptr, ptr %argp, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %argp, align 4
  %21 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %argp.cur, align 4
  %cmp12 = icmp eq i32 %22, 0
  br i1 %cmp12, label %for.cond.for.end_crit_edge, label %for.cond.if.end15_crit_edge

for.cond.if.end15_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end15:                                         ; preds = %for.cond.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %23 = phi i32 [ %22, %for.cond.if.end15_crit_edge ], [ %19, %if.end11.if.end15_crit_edge ]
  %argp.next83 = phi ptr [ %argp.next, %for.cond.if.end15_crit_edge ], [ %argp.next80, %if.end11.if.end15_crit_edge ]
  %argp.cur82 = phi ptr [ %argp.cur, %for.cond.if.end15_crit_edge ], [ %argp.cur79, %if.end11.if.end15_crit_edge ]
  %argp.next17 = getelementptr inbounds i8, ptr %argp.cur82, i32 8
  %24 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %argp.next17, ptr %argp, align 4
  %25 = ptrtoint ptr %argp.next83 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %argp.next83, align 4
  %tobool18.not = icmp eq ptr %26, null
  br i1 %tobool18.not, label %if.end15.for.end.thread_crit_edge, label %if.end20

if.end15.for.end.thread_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

if.end20:                                         ; preds = %if.end15
  %call22 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %26, i32 noundef %23) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.for.end.thread_crit_edge, label %for.cond

if.end20.for.end.thread_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.end20.for.end.thread_crit_edge, %if.end15.for.end.thread_crit_edge
  %ret.1.ph = phi i32 [ -22, %if.end15.for.end.thread_crit_edge ], [ %call22, %if.end20.for.end.thread_crit_edge ]
  call void @llvm.va_end(ptr nonnull %argp)
  br label %out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end11.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ %call3.i, %if.end11.for.end_crit_edge ], [ %call22, %for.cond.for.end_crit_edge ]
  call void @llvm.va_end(ptr nonnull %argp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %tobool27.not = icmp eq i32 %ret.0.lcssa, 0
  br i1 %tobool27.not, label %if.end31, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end31:                                         ; preds = %for.end
  %call30 = call i32 @crypto_shash_final(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %paramdigest) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool32.not = icmp eq i32 %call30, 0
  br i1 %tobool32.not, label %if.then33, label %if.end31.out_crit_edge

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = call i32 (ptr, ptr, i32, ...) @TSS_rawhmac(ptr noundef %digest, ptr noundef %key, i32 noundef %keylen, i32 noundef 20, ptr noundef nonnull %paramdigest, i32 noundef 20, ptr noundef %h1, i32 noundef 20, ptr noundef %h2, i32 noundef 1, ptr noundef nonnull %c, i32 noundef 0, i32 noundef 0)
  br label %out

out:                                              ; preds = %if.then33, %if.end31.out_crit_edge, %for.end.out_crit_edge, %for.end.thread, %crypto_shash_init.exit.out_crit_edge, %if.end5.out_crit_edge
  %ret.3 = phi i32 [ %call3.i, %crypto_shash_init.exit.out_crit_edge ], [ %call30, %if.end31.out_crit_edge ], [ %call35, %if.then33 ], [ -126, %if.end5.out_crit_edge ], [ %ret.1.ph, %for.end.thread ], [ %ret.0.lcssa, %for.end.out_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ %ret.3, %out ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argp) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %paramdigest) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @TSS_rawhmac(ptr noundef %digest, ptr noundef %key, i32 noundef %keylen, ...) unnamed_addr #0 align 64 {
entry:
  %argp = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argp) #11
  %0 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %argp, align 4, !annotation !138
  %1 = load ptr, ptr @hmacalg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 128
  %add.i = add i32 %3, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #14
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %init_sdesc.exit

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

init_sdesc.exit:                                  ; preds = %entry
  %4 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %call9.i.i, align 128
  %cmp.i = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %init_sdesc.exit.do.end_crit_edge, label %if.end

init_sdesc.exit.do.end_crit_edge:                 ; preds = %init_sdesc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %init_sdesc.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i51 = phi ptr [ %call9.i.i, %init_sdesc.exit.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.do.end_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hmac_alg) #15
  %5 = ptrtoint ptr %retval.0.i51 to i32
  br label %cleanup

if.end:                                           ; preds = %init_sdesc.exit
  %6 = load ptr, ptr @hmacalg, align 4
  %call4 = tail call i32 @crypto_shash_setkey(ptr noundef %6, ptr noundef %key, i32 noundef %keylen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end6

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call9.i.i, align 128
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i44 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i44, label %crypto_shash_init.exit, label %if.end6.out_crit_edge

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

crypto_shash_init.exit:                           ; preds = %if.end6
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %8, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 -256
  %13 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %14(ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp8 = icmp slt i32 %call3.i, 0
  br i1 %cmp8, label %crypto_shash_init.exit.out_crit_edge, label %if.end10

crypto_shash_init.exit.out_crit_edge:             ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end10:                                         ; preds = %crypto_shash_init.exit
  call void @llvm.va_start(ptr nonnull %argp)
  %15 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %15)
  %argp.cur64 = load ptr, ptr %argp, align 4
  %argp.next65 = getelementptr inbounds i8, ptr %argp.cur64, i32 4
  store ptr %argp.next65, ptr %argp, align 4
  %16 = ptrtoint ptr %argp.cur64 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %argp.cur64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1166 = icmp eq i32 %17, 0
  br i1 %cmp1166, label %if.end10.for.end_crit_edge, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  br label %if.end13

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond:                                         ; preds = %if.end18
  %18 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %18)
  %argp.cur = load ptr, ptr %argp, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %argp, align 4
  %19 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %argp.cur, align 4
  %cmp11 = icmp eq i32 %20, 0
  br i1 %cmp11, label %for.cond.for.end_crit_edge, label %for.cond.if.end13_crit_edge

for.cond.if.end13_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end13:                                         ; preds = %for.cond.if.end13_crit_edge, %if.end10.if.end13_crit_edge
  %21 = phi i32 [ %20, %for.cond.if.end13_crit_edge ], [ %17, %if.end10.if.end13_crit_edge ]
  %argp.next68 = phi ptr [ %argp.next, %for.cond.if.end13_crit_edge ], [ %argp.next65, %if.end10.if.end13_crit_edge ]
  %argp.cur67 = phi ptr [ %argp.cur, %for.cond.if.end13_crit_edge ], [ %argp.cur64, %if.end10.if.end13_crit_edge ]
  %argp.next15 = getelementptr inbounds i8, ptr %argp.cur67, i32 8
  %22 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %argp.next15, ptr %argp, align 4
  %23 = ptrtoint ptr %argp.next68 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %argp.next68, align 4
  %cmp16 = icmp eq ptr %24, null
  br i1 %cmp16, label %if.end13.for.end.thread_crit_edge, label %if.end18

if.end13.for.end.thread_crit_edge:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

if.end18:                                         ; preds = %if.end13
  %call20 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %24, i32 noundef %21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end18.for.end.thread_crit_edge, label %for.cond

if.end18.for.end.thread_crit_edge:                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.end18.for.end.thread_crit_edge, %if.end13.for.end.thread_crit_edge
  %ret.1.ph = phi i32 [ -22, %if.end13.for.end.thread_crit_edge ], [ %call20, %if.end18.for.end.thread_crit_edge ]
  call void @llvm.va_end(ptr nonnull %argp)
  br label %out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end10.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ %call3.i, %if.end10.for.end_crit_edge ], [ %call20, %for.cond.for.end_crit_edge ]
  call void @llvm.va_end(ptr nonnull %argp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %tobool.not = icmp eq i32 %ret.0.lcssa, 0
  br i1 %tobool.not, label %if.then24, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = call i32 @crypto_shash_final(ptr noundef nonnull %call9.i.i, ptr noundef %digest) #11
  br label %out

out:                                              ; preds = %if.then24, %for.end.out_crit_edge, %for.end.thread, %crypto_shash_init.exit.out_crit_edge, %if.end6.out_crit_edge, %if.end.out_crit_edge
  %ret.2 = phi i32 [ %call4, %if.end.out_crit_edge ], [ %call3.i, %crypto_shash_init.exit.out_crit_edge ], [ %ret.0.lcssa, %for.end.out_crit_edge ], [ %call26, %if.then24 ], [ %ret.1.ph, %for.end.thread ], [ -126, %if.end6.out_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ %ret.2, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argp) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @TSS_checkhmac1(ptr noundef %buffer, i32 noundef %command, ptr noundef %ononce, ptr noundef %key, i32 noundef %keylen, ...) #0 align 64 {
entry:
  %ordinal = alloca i32, align 4
  %result = alloca i32, align 4
  %testhmac = alloca [20 x i8], align 1
  %paramdigest = alloca [20 x i8], align 1
  %argp = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ordinal) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %testhmac) #11
  %0 = call ptr @memset(ptr %testhmac, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %paramdigest) #11
  %1 = call ptr @memset(ptr %paramdigest, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argp) #11
  %2 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %argp, align 4, !annotation !138
  %3 = load ptr, ptr @chip, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %buffer, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buffer, align 2
  %8 = ptrtoint ptr %ordinal to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %command, ptr %ordinal, align 4
  %arrayidx2 = getelementptr i8, ptr %buffer, i32 6
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  %11 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %result, align 4
  %12 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %if.then9 [
    i16 196, label %if.end.cleanup_crit_edge
    i16 197, label %if.end10
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %buffer, i32 %5
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 -20
  %add.ptr12 = getelementptr i8, ptr %add.ptr11, i32 -1
  %add.ptr13 = getelementptr i8, ptr %add.ptr12, i32 -20
  %13 = load ptr, ptr @hashalg, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 128
  %add.i = add i32 %15, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #14
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end10.do.end_crit_edge, label %init_sdesc.exit

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

init_sdesc.exit:                                  ; preds = %if.end10
  %16 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %call9.i.i, align 128
  %cmp.i = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %init_sdesc.exit.do.end_crit_edge, label %if.end18

init_sdesc.exit.do.end_crit_edge:                 ; preds = %init_sdesc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %init_sdesc.exit.do.end_crit_edge, %if.end10.do.end_crit_edge
  %retval.0.i113 = phi ptr [ %call9.i.i, %init_sdesc.exit.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end10.do.end_crit_edge ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hash_alg) #15
  %17 = ptrtoint ptr %retval.0.i113 to i32
  br label %cleanup

if.end18:                                         ; preds = %init_sdesc.exit
  %18 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call9.i.i, align 128
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i105 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i105, label %crypto_shash_init.exit, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

crypto_shash_init.exit:                           ; preds = %if.end18
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %19, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 -256
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %25(ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp20 = icmp slt i32 %call3.i, 0
  br i1 %cmp20, label %crypto_shash_init.exit.out_crit_edge, label %if.end23

crypto_shash_init.exit.out_crit_edge:             ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end23:                                         ; preds = %crypto_shash_init.exit
  %call25 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %result, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end23.out_crit_edge, label %if.end29

if.end23.out_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end29:                                         ; preds = %if.end23
  %call31 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %ordinal, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end29.out_crit_edge, label %if.end35

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end35:                                         ; preds = %if.end29
  call void @llvm.va_start(ptr nonnull %argp)
  %26 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %26)
  %argp.cur134 = load ptr, ptr %argp, align 4
  %argp.next135 = getelementptr inbounds i8, ptr %argp.cur134, i32 4
  store ptr %argp.next135, ptr %argp, align 4
  %27 = ptrtoint ptr %argp.cur134 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %argp.cur134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp36136 = icmp eq i32 %28, 0
  br i1 %cmp36136, label %if.end35.for.end_crit_edge, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  br label %if.end39

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond:                                         ; preds = %if.end39
  %29 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %29)
  %argp.cur = load ptr, ptr %argp, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %argp, align 4
  %30 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %argp.cur, align 4
  %cmp36 = icmp eq i32 %31, 0
  br i1 %cmp36, label %for.cond.for.end_crit_edge, label %for.cond.if.end39_crit_edge

for.cond.if.end39_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end39:                                         ; preds = %for.cond.if.end39_crit_edge, %if.end35.if.end39_crit_edge
  %32 = phi i32 [ %31, %for.cond.if.end39_crit_edge ], [ %28, %if.end35.if.end39_crit_edge ]
  %argp.next138 = phi ptr [ %argp.next, %for.cond.if.end39_crit_edge ], [ %argp.next135, %if.end35.if.end39_crit_edge ]
  %argp.cur137 = phi ptr [ %argp.cur, %for.cond.if.end39_crit_edge ], [ %argp.cur134, %if.end35.if.end39_crit_edge ]
  %argp.next41 = getelementptr inbounds i8, ptr %argp.cur137, i32 8
  %33 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %argp.next41, ptr %argp, align 4
  %34 = ptrtoint ptr %argp.next138 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %argp.next138, align 4
  %add.ptr43 = getelementptr i8, ptr %buffer, i32 %35
  %call44 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr43, i32 noundef %32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end53.thread, label %for.cond

if.end53.thread:                                  ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.va_end(ptr nonnull %argp)
  br label %out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end35.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ %call31, %if.end35.for.end_crit_edge ], [ %call44, %for.cond.for.end_crit_edge ]
  call void @llvm.va_end(ptr nonnull %argp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %tobool49.not = icmp eq i32 %ret.0.lcssa, 0
  br i1 %tobool49.not, label %if.end53, label %for.end.if.end57_crit_edge

for.end.if.end57_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.end53:                                         ; preds = %for.end
  %call52 = call i32 @crypto_shash_final(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %paramdigest) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp54 = icmp slt i32 %call52, 0
  br i1 %cmp54, label %if.end53.out_crit_edge, label %if.end53.if.end57_crit_edge

if.end53.if.end57_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end57:                                         ; preds = %if.end53.if.end57_crit_edge, %for.end.if.end57_crit_edge
  %call60 = call i32 (ptr, ptr, i32, ...) @TSS_rawhmac(ptr noundef nonnull %testhmac, ptr noundef %key, i32 noundef %keylen, i32 noundef 20, ptr noundef nonnull %paramdigest, i32 noundef 20, ptr noundef %add.ptr13, i32 noundef 20, ptr noundef %ononce, i32 noundef 1, ptr noundef %add.ptr12, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end57.out_crit_edge, label %if.end64

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) %testhmac, ptr noundef dereferenceable(20) %add.ptr11, i32 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool67.not = icmp eq i32 %bcmp, 0
  %spec.select = select i1 %tobool67.not, i32 %call60, i32 -22
  br label %out

out:                                              ; preds = %if.end64, %if.end57.out_crit_edge, %if.end53.out_crit_edge, %if.end53.thread, %if.end29.out_crit_edge, %if.end23.out_crit_edge, %crypto_shash_init.exit.out_crit_edge, %if.end18.out_crit_edge
  %ret.3 = phi i32 [ %call3.i, %crypto_shash_init.exit.out_crit_edge ], [ %call25, %if.end23.out_crit_edge ], [ %call31, %if.end29.out_crit_edge ], [ %call52, %if.end53.out_crit_edge ], [ %call60, %if.end57.out_crit_edge ], [ %spec.select, %if.end64 ], [ %call44, %if.end53.thread ], [ -126, %if.end18.out_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then9 ], [ %17, %do.end ], [ %ret.3, %out ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argp) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %paramdigest) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %testhmac) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ordinal) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @trusted_tpm_send(ptr noundef %cmd, i32 noundef %buflen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @chip, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @tpm_send(ptr noundef nonnull %0, ptr noundef %cmd, i32 noundef %buflen) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  %spec.store.select = select i1 %cmp, i32 -1, i32 %call
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.store.select, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_send(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @oiap(ptr nocapture noundef readonly %tb, ptr nocapture noundef writeonly %handle, ptr nocapture noundef writeonly %nonce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @chip, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %trusted_tpm_send.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

trusted_tpm_send.exit:                            ; preds = %entry
  %data.i = getelementptr inbounds %struct.tpm_buf, ptr %tb, i32 0, i32 1
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 193, ptr %2, align 1
  %length.i = getelementptr inbounds %struct.tpm_header, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 10, ptr %length.i, align 1
  %5 = getelementptr inbounds %struct.tpm_header, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 10, ptr %5, align 1
  %7 = load ptr, ptr %data.i, align 4
  %call.i = tail call i32 @tpm_send(ptr noundef nonnull %0, ptr noundef %7, i32 noundef 1024) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 0
  %spec.store.select.i = select i1 %cmp.i, i32 -1, i32 %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i)
  %cmp = icmp slt i32 %spec.store.select.i, 0
  br i1 %cmp, label %trusted_tpm_send.exit.cleanup_crit_edge, label %if.end2

trusted_tpm_send.exit.cleanup_crit_edge:          ; preds = %trusted_tpm_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end2:                                          ; preds = %trusted_tpm_send.exit
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 10
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %handle, align 4
  %13 = load ptr, ptr %data.i, align 4
  %arrayidx5 = getelementptr i8, ptr %13, i32 14
  %14 = call ptr @memcpy(ptr %nonce, ptr %arrayidx5, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %trusted_tpm_send.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -19, %entry.cleanup_crit_edge ], [ %spec.store.select.i, %trusted_tpm_send.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @trusted_tpm_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tpm_default_chip() #11
  store ptr %call, ptr @chip, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @init_digests() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.err_put_crit_edge, label %if.end3

if.end.err_put_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @trusted_shash_alloc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.err_free_crit_edge, label %if.end7

if.end3.err_free_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.end7:                                          ; preds = %if.end3
  %call8 = tail call i32 @register_key_type(ptr noundef nonnull @key_type_trusted) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %err_release, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_release:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @trusted_shash_release()
  br label %err_free

err_free:                                         ; preds = %err_release, %if.end3.err_free_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end3.err_free_crit_edge ], [ %call8, %err_release ]
  %0 = load ptr, ptr @digests, align 4
  tail call void @kfree(ptr noundef %0) #11
  br label %err_put

err_put:                                          ; preds = %err_free, %if.end.err_put_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.err_put_crit_edge ], [ %ret.0, %err_free ]
  %1 = load ptr, ptr @chip, align 4
  tail call void @put_device(ptr noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %err_put, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_put ], [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trusted_tpm_seal(ptr noundef %p, ptr noundef %datablob) #0 align 64 {
entry:
  %enonce.i.i.i = alloca [20 x i8], align 1
  %ononce.i.i.i = alloca [20 x i8], align 1
  %sess.i.i = alloca %struct.osapsess, align 4
  %ordinal.i.i = alloca i32, align 4
  %pcrsize.i.i = alloca i32, align 4
  %datsize.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @chip, align 4
  %call = tail call i32 @tpm_is_tpm2(ptr noundef %0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @chip, align 4
  %call.i = tail call i32 @tpm_is_tpm2(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 200) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 4, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then2.i.if.end3_crit_edge

if.then2.i.if.end3_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %keyhandle.i = getelementptr inbounds %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %keyhandle.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1073741824, ptr %keyhandle.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then4.i, %if.then2.i.if.end3_crit_edge
  %call4 = tail call fastcc i32 @getoptions(ptr noundef %datablob, ptr noundef %p, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.out_crit_edge, label %if.end7

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %if.end3
  %keyhandle = getelementptr inbounds %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %keyhandle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %keyhandle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool8.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.end7.out_crit_edge, label %if.end11

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %if.end7
  br i1 %tobool9.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load ptr, ptr @chip, align 4
  %call14 = tail call i32 @tpm2_seal_trusted(ptr noundef %7, ptr noundef %p, ptr noundef nonnull %call7.i.i.i) #11
  br label %if.end16

if.else:                                          ; preds = %if.end11
  %call.i.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %8 = inttoptr i32 %call.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.do.end_crit_edge, label %if.end.i56

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i56:                                       ; preds = %if.else
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 0, ptr %8, align 1
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 10, ptr %length.i.i.i, align 1
  %11 = getelementptr inbounds %struct.tpm_header, ptr %8, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %11, align 1
  %migratable.i = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 3
  %13 = ptrtoint ptr %migratable.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %migratable.i, align 4
  %key.i = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 5
  %key_len.i = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 1
  %15 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key_len.i, align 4
  %arrayidx.i = getelementptr %struct.trusted_key_payload, ptr %p, i32 0, i32 5, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %arrayidx.i, align 1
  %18 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %call7.i.i.i, align 8
  %20 = ptrtoint ptr %keyhandle to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %keyhandle, align 4
  %keyauth.i = getelementptr inbounds %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 2
  %22 = load i32, ptr %key_len.i, align 4
  %add.i = add i32 %22, 1
  %blob.i = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 6
  %blob_len.i = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 2
  %blobauth.i = getelementptr inbounds %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4
  %pcrinfo.i = getelementptr inbounds %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 6
  %pcrinfo_len.i = getelementptr inbounds %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %pcrinfo_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pcrinfo_len.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %sess.i.i) #11
  %25 = call ptr @memset(ptr %sess.i.i, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ordinal.i.i) #11
  %26 = ptrtoint ptr %ordinal.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %ordinal.i.i, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcrsize.i.i) #11
  %27 = ptrtoint ptr %pcrsize.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %pcrsize.i.i, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datsize.i.i) #11
  %28 = ptrtoint ptr %datsize.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %datsize.i.i, align 4, !annotation !138
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i55 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3264, i32 noundef 120) #18
  %tobool.not.i27.i = icmp eq ptr %call7.i.i.i55, null
  br i1 %tobool.not.i27.i, label %tpm_seal.exit.thread.i, label %if.end.i28.i

tpm_seal.exit.thread.i:                           ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datsize.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcrsize.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ordinal.i.i) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %sess.i.i) #11
  br label %do.end.i

if.end.i28.i:                                     ; preds = %if.end.i56
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %enonce.i.i.i) #11
  %30 = call ptr @memset(ptr %enonce.i.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ononce.i.i.i) #11
  %31 = call ptr @memset(ptr %ononce.i.i.i, i32 255, i32 20)
  %32 = load ptr, ptr @chip, align 4
  %call.i.i.i = call i32 @tpm_get_random(ptr noundef %32, ptr noundef nonnull %ononce.i.i.i, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i28.i.osap.exit.thread.i.i_crit_edge, label %if.end.i.i.i

if.end.i28.i.osap.exit.thread.i.i_crit_edge:      ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %osap.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.end.i28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call.i.i.i)
  %cmp1.not.i.i.i = icmp eq i32 %call.i.i.i, 20
  br i1 %cmp1.not.i.i.i, label %if.end.i.i43.i.i.i, label %if.end.i.i.i.osap.exit.thread.i.i_crit_edge

if.end.i.i.i.osap.exit.thread.i.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %osap.exit.thread.i.i

if.end.i.i43.i.i.i:                               ; preds = %if.end.i.i.i
  %33 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 193, ptr %8, align 1
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 11, ptr %11, align 1
  %arrayidx.i.i.i.i.i = getelementptr i8, ptr %8, i32 10
  %35 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %19, ptr %arrayidx.i.i.i.i.i, align 1
  %arrayidx.i.i46.i.i.i = getelementptr i8, ptr %8, i32 12
  %36 = ptrtoint ptr %arrayidx.i.i46.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 %21, ptr %arrayidx.i.i46.i.i.i, align 1
  %arrayidx.i.i.i.i = getelementptr i8, ptr %8, i32 16
  %37 = call ptr @memcpy(ptr %arrayidx.i.i.i.i, ptr %ononce.i.i.i, i32 20)
  %38 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 36, ptr %length.i.i.i, align 1
  %39 = load ptr, ptr @chip, align 4
  %tobool.not.i49.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i49.i.i.i, label %if.end.i.i43.i.i.i.osap.exit.thread.i.i_crit_edge, label %if.end.i51.i.i.i

if.end.i.i43.i.i.i.osap.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i43.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %osap.exit.thread.i.i

if.end.i51.i.i.i:                                 ; preds = %if.end.i.i43.i.i.i
  %call.i.i.i.i = call i32 @tpm_send(ptr noundef nonnull %39, ptr noundef nonnull %8, i32 noundef 1024) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i50.i.i.i = icmp sgt i32 %call.i.i.i.i, 0
  br i1 %cmp.i50.i.i.i, label %if.end.i51.i.i.i.osap.exit.thread.i.i_crit_edge, label %trusted_tpm_send.exit.i.i.i

if.end.i51.i.i.i.osap.exit.thread.i.i_crit_edge:  ; preds = %if.end.i51.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %osap.exit.thread.i.i

trusted_tpm_send.exit.i.i.i:                      ; preds = %if.end.i51.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp6.i.i.i, label %trusted_tpm_send.exit.i.i.i.osap.exit.thread.i.i_crit_edge, label %osap.exit.i.i

trusted_tpm_send.exit.i.i.i.osap.exit.thread.i.i_crit_edge: ; preds = %trusted_tpm_send.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %osap.exit.thread.i.i

osap.exit.thread.i.i:                             ; preds = %trusted_tpm_send.exit.i.i.i.osap.exit.thread.i.i_crit_edge, %if.end.i51.i.i.i.osap.exit.thread.i.i_crit_edge, %if.end.i.i43.i.i.i.osap.exit.thread.i.i_crit_edge, %if.end.i.i.i.osap.exit.thread.i.i_crit_edge, %if.end.i28.i.osap.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ -1, %if.end.i51.i.i.i.osap.exit.thread.i.i_crit_edge ], [ -19, %if.end.i.i43.i.i.i.osap.exit.thread.i.i_crit_edge ], [ %call.i.i.i.i, %trusted_tpm_send.exit.i.i.i.osap.exit.thread.i.i_crit_edge ], [ -5, %if.end.i.i.i.osap.exit.thread.i.i_crit_edge ], [ %call.i.i.i, %if.end.i28.i.osap.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ononce.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %enonce.i.i.i) #11
  br label %tpm_seal.exit.thread115.i

osap.exit.i.i:                                    ; preds = %trusted_tpm_send.exit.i.i.i
  %40 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %sess.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %sess.i.i, align 4
  %enonce11.i.i.i = getelementptr inbounds %struct.osapsess, ptr %sess.i.i, i32 0, i32 2
  %arrayidx14.i.i.i = getelementptr i8, ptr %8, i32 14
  %43 = call ptr @memcpy(ptr %enonce11.i.i.i, ptr %arrayidx14.i.i.i, i32 20)
  %arrayidx17.i.i.i = getelementptr i8, ptr %8, i32 34
  %44 = call ptr @memcpy(ptr %enonce.i.i.i, ptr %arrayidx17.i.i.i, i32 20)
  %secret.i.i.i = getelementptr inbounds %struct.osapsess, ptr %sess.i.i, i32 0, i32 1
  %call21.i.i.i = call i32 (ptr, ptr, i32, ...) @TSS_rawhmac(ptr noundef %secret.i.i.i, ptr noundef %keyauth.i, i32 noundef 20, i32 noundef 20, ptr noundef nonnull %enonce.i.i.i, i32 noundef 20, ptr noundef nonnull %ononce.i.i.i, i32 noundef 0, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ononce.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %enonce.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i.i)
  %cmp.i.i = icmp slt i32 %call21.i.i.i, 0
  br i1 %cmp.i.i, label %osap.exit.i.i.tpm_seal.exit.thread115.i_crit_edge, label %if.end3.i.i

osap.exit.i.i.tpm_seal.exit.thread115.i_crit_edge: ; preds = %osap.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tpm_seal.exit.thread115.i

if.end3.i.i:                                      ; preds = %osap.exit.i.i
  %xorwork.i.i = getelementptr inbounds %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 2
  %45 = call ptr @memcpy(ptr %xorwork.i.i, ptr %secret.i.i.i, i32 20)
  %add.ptr.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 2, i32 20
  %46 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %enonce11.i.i.i, i32 20)
  %xorhash.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3
  %47 = load ptr, ptr @hashalg, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 128
  %add.i.i163.i.i = add i32 %49, 8
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i163.i.i, i32 noundef 3264) #14
  %tobool.not.i.i166.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool.not.i.i166.i.i, label %if.end3.i.i.do.end.i.i.i_crit_edge, label %init_sdesc.exit.i.i.i

if.end3.i.i.do.end.i.i.i_crit_edge:               ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

init_sdesc.exit.i.i.i:                            ; preds = %if.end3.i.i
  %50 = ptrtoint ptr %call9.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %call9.i.i.i.i.i, align 128
  %cmp.i.i167.i.i = icmp ugt ptr %call9.i.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i167.i.i, label %init_sdesc.exit.i.i.i.do.end.i.i.i_crit_edge, label %if.end.i168.i.i

init_sdesc.exit.i.i.i.do.end.i.i.i_crit_edge:     ; preds = %init_sdesc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %init_sdesc.exit.i.i.i.do.end.i.i.i_crit_edge, %if.end3.i.i.do.end.i.i.i_crit_edge
  %retval.0.i3.i.i.i = phi ptr [ %call9.i.i.i.i.i, %init_sdesc.exit.i.i.i.do.end.i.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end3.i.i.do.end.i.i.i_crit_edge ]
  %call2.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hash_alg) #15
  %51 = ptrtoint ptr %retval.0.i3.i.i.i to i32
  br label %TSS_sha1.exit.i.i

if.end.i168.i.i:                                  ; preds = %init_sdesc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i.i = call i32 @crypto_shash_digest(ptr noundef nonnull %call9.i.i.i.i.i, ptr noundef %xorwork.i.i, i32 noundef 40, ptr noundef %xorhash.i.i) #11
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i.i.i) #11
  br label %TSS_sha1.exit.i.i

TSS_sha1.exit.i.i:                                ; preds = %if.end.i168.i.i, %do.end.i.i.i
  %retval.0.i169.i.i = phi i32 [ %51, %do.end.i.i.i ], [ %call4.i.i.i, %if.end.i168.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i169.i.i)
  %cmp12.i.i = icmp slt i32 %retval.0.i169.i.i, 0
  br i1 %cmp12.i.i, label %TSS_sha1.exit.i.i.tpm_seal.exit.thread115.i_crit_edge, label %if.end14.i.i

TSS_sha1.exit.i.i.tpm_seal.exit.thread115.i_crit_edge: ; preds = %TSS_sha1.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tpm_seal.exit.thread115.i

if.end14.i.i:                                     ; preds = %TSS_sha1.exit.i.i
  %52 = load ptr, ptr @chip, align 4
  %nonceodd.i.i = getelementptr inbounds %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 4
  %call16.i.i = call i32 @tpm_get_random(ptr noundef %52, ptr noundef %nonceodd.i.i, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp17.i.i = icmp slt i32 %call16.i.i, 0
  br i1 %cmp17.i.i, label %if.end14.i.i.tpm_seal.exit.thread115.i_crit_edge, label %if.end19.i.i

if.end14.i.i.tpm_seal.exit.thread115.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tpm_seal.exit.thread115.i

if.end19.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call16.i.i)
  %cmp20.not.i.i = icmp eq i32 %call16.i.i, 20
  br i1 %cmp20.not.i.i, label %if.end22.i.i, label %if.end19.i.i.tpm_seal.exit.thread115.i_crit_edge

if.end19.i.i.tpm_seal.exit.thread115.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tpm_seal.exit.thread115.i

if.end22.i.i:                                     ; preds = %if.end19.i.i
  %53 = ptrtoint ptr %ordinal.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 23, ptr %ordinal.i.i, align 4
  %54 = ptrtoint ptr %datsize.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add.i, ptr %datsize.i.i, align 4
  %55 = ptrtoint ptr %pcrsize.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %24, ptr %pcrsize.i.i, align 4
  %56 = ptrtoint ptr %xorhash.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %xorhash.i.i, align 8
  %58 = ptrtoint ptr %blobauth.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %blobauth.i, align 8
  %xor162.i.i = xor i8 %59, %57
  %60 = ptrtoint ptr %call7.i.i.i55 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %xor162.i.i, ptr %call7.i.i.i55, align 8
  %arrayidx.1.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 1
  %61 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.1.i.i, align 1
  %arrayidx25.1.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %arrayidx25.1.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx25.1.i.i, align 1
  %xor162.1.i.i = xor i8 %64, %62
  %arrayidx28.1.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx28.1.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %xor162.1.i.i, ptr %arrayidx28.1.i.i, align 1
  %arrayidx.2.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 2
  %66 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.2.i.i, align 2
  %arrayidx25.2.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 2
  %68 = ptrtoint ptr %arrayidx25.2.i.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx25.2.i.i, align 2
  %xor162.2.i.i = xor i8 %69, %67
  %arrayidx28.2.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 2
  %70 = ptrtoint ptr %arrayidx28.2.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %xor162.2.i.i, ptr %arrayidx28.2.i.i, align 2
  %arrayidx.3.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 3
  %71 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.3.i.i, align 1
  %arrayidx25.3.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 3
  %73 = ptrtoint ptr %arrayidx25.3.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx25.3.i.i, align 1
  %xor162.3.i.i = xor i8 %74, %72
  %arrayidx28.3.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 3
  %75 = ptrtoint ptr %arrayidx28.3.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %xor162.3.i.i, ptr %arrayidx28.3.i.i, align 1
  %arrayidx.4.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 4
  %76 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.4.i.i, align 4
  %arrayidx25.4.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 4
  %78 = ptrtoint ptr %arrayidx25.4.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx25.4.i.i, align 4
  %xor162.4.i.i = xor i8 %79, %77
  %arrayidx28.4.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 4
  %80 = ptrtoint ptr %arrayidx28.4.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %xor162.4.i.i, ptr %arrayidx28.4.i.i, align 4
  %arrayidx.5.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 5
  %81 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx.5.i.i, align 1
  %arrayidx25.5.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 5
  %83 = ptrtoint ptr %arrayidx25.5.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx25.5.i.i, align 1
  %xor162.5.i.i = xor i8 %84, %82
  %arrayidx28.5.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 5
  %85 = ptrtoint ptr %arrayidx28.5.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %xor162.5.i.i, ptr %arrayidx28.5.i.i, align 1
  %arrayidx.6.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 6
  %86 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx.6.i.i, align 2
  %arrayidx25.6.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 6
  %88 = ptrtoint ptr %arrayidx25.6.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx25.6.i.i, align 2
  %xor162.6.i.i = xor i8 %89, %87
  %arrayidx28.6.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 6
  %90 = ptrtoint ptr %arrayidx28.6.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %xor162.6.i.i, ptr %arrayidx28.6.i.i, align 2
  %arrayidx.7.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 7
  %91 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.7.i.i, align 1
  %arrayidx25.7.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 7
  %93 = ptrtoint ptr %arrayidx25.7.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx25.7.i.i, align 1
  %xor162.7.i.i = xor i8 %94, %92
  %arrayidx28.7.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 7
  %95 = ptrtoint ptr %arrayidx28.7.i.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %xor162.7.i.i, ptr %arrayidx28.7.i.i, align 1
  %arrayidx.8.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 8
  %96 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx.8.i.i, align 8
  %arrayidx25.8.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 8
  %98 = ptrtoint ptr %arrayidx25.8.i.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx25.8.i.i, align 8
  %xor162.8.i.i = xor i8 %99, %97
  %arrayidx28.8.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 8
  %100 = ptrtoint ptr %arrayidx28.8.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %xor162.8.i.i, ptr %arrayidx28.8.i.i, align 8
  %arrayidx.9.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 9
  %101 = ptrtoint ptr %arrayidx.9.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.9.i.i, align 1
  %arrayidx25.9.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 9
  %103 = ptrtoint ptr %arrayidx25.9.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx25.9.i.i, align 1
  %xor162.9.i.i = xor i8 %104, %102
  %arrayidx28.9.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 9
  %105 = ptrtoint ptr %arrayidx28.9.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %xor162.9.i.i, ptr %arrayidx28.9.i.i, align 1
  %arrayidx.10.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 10
  %106 = ptrtoint ptr %arrayidx.10.i.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %arrayidx.10.i.i, align 2
  %arrayidx25.10.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 10
  %108 = ptrtoint ptr %arrayidx25.10.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx25.10.i.i, align 2
  %xor162.10.i.i = xor i8 %109, %107
  %arrayidx28.10.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 10
  %110 = ptrtoint ptr %arrayidx28.10.i.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %xor162.10.i.i, ptr %arrayidx28.10.i.i, align 2
  %arrayidx.11.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 11
  %111 = ptrtoint ptr %arrayidx.11.i.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.11.i.i, align 1
  %arrayidx25.11.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 11
  %113 = ptrtoint ptr %arrayidx25.11.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx25.11.i.i, align 1
  %xor162.11.i.i = xor i8 %114, %112
  %arrayidx28.11.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 11
  %115 = ptrtoint ptr %arrayidx28.11.i.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %xor162.11.i.i, ptr %arrayidx28.11.i.i, align 1
  %arrayidx.12.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 12
  %116 = ptrtoint ptr %arrayidx.12.i.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %arrayidx.12.i.i, align 4
  %arrayidx25.12.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 12
  %118 = ptrtoint ptr %arrayidx25.12.i.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx25.12.i.i, align 4
  %xor162.12.i.i = xor i8 %119, %117
  %arrayidx28.12.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 12
  %120 = ptrtoint ptr %arrayidx28.12.i.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %xor162.12.i.i, ptr %arrayidx28.12.i.i, align 4
  %arrayidx.13.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 13
  %121 = ptrtoint ptr %arrayidx.13.i.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.13.i.i, align 1
  %arrayidx25.13.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 13
  %123 = ptrtoint ptr %arrayidx25.13.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx25.13.i.i, align 1
  %xor162.13.i.i = xor i8 %124, %122
  %arrayidx28.13.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 13
  %125 = ptrtoint ptr %arrayidx28.13.i.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %xor162.13.i.i, ptr %arrayidx28.13.i.i, align 1
  %arrayidx.14.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 14
  %126 = ptrtoint ptr %arrayidx.14.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx.14.i.i, align 2
  %arrayidx25.14.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 14
  %128 = ptrtoint ptr %arrayidx25.14.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx25.14.i.i, align 2
  %xor162.14.i.i = xor i8 %129, %127
  %arrayidx28.14.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 14
  %130 = ptrtoint ptr %arrayidx28.14.i.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %xor162.14.i.i, ptr %arrayidx28.14.i.i, align 2
  %arrayidx.15.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 15
  %131 = ptrtoint ptr %arrayidx.15.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx.15.i.i, align 1
  %arrayidx25.15.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 15
  %133 = ptrtoint ptr %arrayidx25.15.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx25.15.i.i, align 1
  %xor162.15.i.i = xor i8 %134, %132
  %arrayidx28.15.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 15
  %135 = ptrtoint ptr %arrayidx28.15.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %xor162.15.i.i, ptr %arrayidx28.15.i.i, align 1
  %arrayidx.16.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 16
  %136 = ptrtoint ptr %arrayidx.16.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx.16.i.i, align 8
  %arrayidx25.16.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 16
  %138 = ptrtoint ptr %arrayidx25.16.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx25.16.i.i, align 8
  %xor162.16.i.i = xor i8 %139, %137
  %arrayidx28.16.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 16
  %140 = ptrtoint ptr %arrayidx28.16.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %xor162.16.i.i, ptr %arrayidx28.16.i.i, align 8
  %arrayidx.17.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 17
  %141 = ptrtoint ptr %arrayidx.17.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx.17.i.i, align 1
  %arrayidx25.17.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 17
  %143 = ptrtoint ptr %arrayidx25.17.i.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx25.17.i.i, align 1
  %xor162.17.i.i = xor i8 %144, %142
  %arrayidx28.17.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 17
  %145 = ptrtoint ptr %arrayidx28.17.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %xor162.17.i.i, ptr %arrayidx28.17.i.i, align 1
  %arrayidx.18.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 18
  %146 = ptrtoint ptr %arrayidx.18.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.18.i.i, align 2
  %arrayidx25.18.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 18
  %148 = ptrtoint ptr %arrayidx25.18.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx25.18.i.i, align 2
  %xor162.18.i.i = xor i8 %149, %147
  %arrayidx28.18.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 18
  %150 = ptrtoint ptr %arrayidx28.18.i.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %xor162.18.i.i, ptr %arrayidx28.18.i.i, align 2
  %arrayidx.19.i.i = getelementptr %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 3, i32 19
  %151 = ptrtoint ptr %arrayidx.19.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx.19.i.i, align 1
  %arrayidx25.19.i.i = getelementptr %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4, i32 19
  %153 = ptrtoint ptr %arrayidx25.19.i.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %arrayidx25.19.i.i, align 1
  %xor162.19.i.i = xor i8 %154, %152
  %arrayidx28.19.i.i = getelementptr [20 x i8], ptr %call7.i.i.i55, i32 0, i32 19
  %155 = ptrtoint ptr %arrayidx28.19.i.i to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %xor162.19.i.i, ptr %arrayidx28.19.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp29.i.i = icmp eq i32 %24, 0
  %pubauth.i.i = getelementptr inbounds %struct.tpm_digests, ptr %call7.i.i.i55, i32 0, i32 1
  br i1 %cmp29.i.i, label %if.then31.i.i, label %if.else.i.i

if.then31.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call42.i.i = call i32 (ptr, ptr, i32, ptr, ptr, i32, ...) @TSS_authhmac(ptr noundef %pubauth.i.i, ptr noundef %secret.i.i.i, i32 noundef 20, ptr noundef %enonce11.i.i.i, ptr noundef %nonceodd.i.i, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %ordinal.i.i, i32 noundef 20, ptr noundef nonnull %call7.i.i.i55, i32 noundef 4, ptr noundef nonnull %pcrsize.i.i, i32 noundef 4, ptr noundef nonnull %datsize.i.i, i32 noundef %add.i, ptr noundef %key.i, i32 noundef 0, i32 noundef 0) #11
  br label %if.end55.i.i

if.else.i.i:                                      ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call54.i.i = call i32 (ptr, ptr, i32, ptr, ptr, i32, ...) @TSS_authhmac(ptr noundef %pubauth.i.i, ptr noundef %secret.i.i.i, i32 noundef 20, ptr noundef %enonce11.i.i.i, ptr noundef %nonceodd.i.i, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %ordinal.i.i, i32 noundef 20, ptr noundef nonnull %call7.i.i.i55, i32 noundef 4, ptr noundef nonnull %pcrsize.i.i, i32 noundef %24, ptr noundef %pcrinfo.i, i32 noundef 4, ptr noundef nonnull %datsize.i.i, i32 noundef %add.i, ptr noundef %key.i, i32 noundef 0, i32 noundef 0) #11
  br label %if.end55.i.i

if.end55.i.i:                                     ; preds = %if.else.i.i, %if.then31.i.i
  %ret.0.i.i = phi i32 [ %call42.i.i, %if.then31.i.i ], [ %call54.i.i, %if.else.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp56.i.i = icmp slt i32 %ret.0.i.i, 0
  br i1 %cmp56.i.i, label %if.end55.i.i.tpm_seal.exit.thread115.i_crit_edge, label %if.end.i207.i.i

if.end55.i.i.tpm_seal.exit.thread115.i_crit_edge: ; preds = %if.end55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tpm_seal.exit.thread115.i

if.end.i207.i.i:                                  ; preds = %if.end55.i.i
  %156 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %156, i32 2)
  store i16 194, ptr %8, align 1
  %157 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %157, i32 4)
  store i32 23, ptr %11, align 1
  %158 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %158, i32 4)
  store i32 %21, ptr %arrayidx.i.i.i.i.i, align 1
  %159 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 4)
  store i32 14, ptr %length.i.i.i, align 1
  %160 = call ptr @memcpy(ptr %arrayidx14.i.i.i, ptr %call7.i.i.i55, i32 20)
  %161 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 %24, ptr %arrayidx17.i.i.i, align 1
  store i32 38, ptr %length.i.i.i, align 1
  %add.i205.i.i = add i32 %24, 38
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i205.i.i)
  %cmp.i206.i.i = icmp ugt i32 %add.i205.i.i, 4096
  br i1 %cmp.i206.i.i, label %tpm_buf_append.exit212.i.i, label %if.end.i.i219.i.i

tpm_buf_append.exit212.i.i:                       ; preds = %if.end.i207.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit286.i.i

if.end.i.i219.i.i:                                ; preds = %if.end.i207.i.i
  %arrayidx.i210.i.i = getelementptr i8, ptr %8, i32 38
  %162 = call ptr @memcpy(ptr %arrayidx.i210.i.i, ptr %pcrinfo.i, i32 %24)
  %163 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %163, i32 4)
  store i32 %add.i205.i.i, ptr %length.i.i.i, align 1
  %add.i.i217.i.i = add nsw i32 %24, 42
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i217.i.i)
  %cmp.i.i218.i.i = icmp ugt i32 %add.i.i217.i.i, 4096
  br i1 %cmp.i.i218.i.i, label %do.end.i.i221.i.i, label %if.end.i232.i.i

do.end.i.i221.i.i:                                ; preds = %if.end.i.i219.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit286.i.i

if.end.i232.i.i:                                  ; preds = %if.end.i.i219.i.i
  %arrayidx.i.i222.i.i = getelementptr i8, ptr %8, i32 %add.i205.i.i
  %164 = ptrtoint ptr %arrayidx.i.i222.i.i to i32
  call void @__asan_storeN_noabort(i32 %164, i32 4)
  store i32 %add.i, ptr %arrayidx.i.i222.i.i, align 1
  %165 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %165, i32 4)
  store i32 %add.i.i217.i.i, ptr %length.i.i.i, align 1
  %add.i230.i.i = add i32 %add.i.i217.i.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i230.i.i)
  %cmp.i231.i.i = icmp ugt i32 %add.i230.i.i, 4096
  br i1 %cmp.i231.i.i, label %do.end.i234.i.i, label %if.end.i.i244.i.i

do.end.i234.i.i:                                  ; preds = %if.end.i232.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit286.i.i

if.end.i.i244.i.i:                                ; preds = %if.end.i232.i.i
  %arrayidx.i235.i.i = getelementptr i8, ptr %8, i32 %add.i.i217.i.i
  %166 = call ptr @memcpy(ptr %arrayidx.i235.i.i, ptr %key.i, i32 %add.i)
  %167 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %167, i32 4)
  store i32 %add.i230.i.i, ptr %length.i.i.i, align 1
  %add.i.i242.i.i = add nuw nsw i32 %add.i230.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4092, i32 %add.i230.i.i)
  %cmp.i.i243.i.i = icmp ugt i32 %add.i230.i.i, 4092
  br i1 %cmp.i.i243.i.i, label %do.end.i.i246.i.i, label %if.end.i257.i.i

do.end.i.i246.i.i:                                ; preds = %if.end.i.i244.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit286.i.i

if.end.i257.i.i:                                  ; preds = %if.end.i.i244.i.i
  %168 = ptrtoint ptr %sess.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %sess.i.i, align 4
  %arrayidx.i.i247.i.i = getelementptr i8, ptr %8, i32 %add.i230.i.i
  %170 = ptrtoint ptr %arrayidx.i.i247.i.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 %169, ptr %arrayidx.i.i247.i.i, align 1
  %171 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %171, i32 4)
  store i32 %add.i.i242.i.i, ptr %length.i.i.i, align 1
  %add.i255.i.i = add nuw nsw i32 %add.i230.i.i, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 4072, i32 %add.i230.i.i)
  %cmp.i256.i.i = icmp ugt i32 %add.i230.i.i, 4072
  br i1 %cmp.i256.i.i, label %do.end.i259.i.i, label %if.end.i.i269.i.i

do.end.i259.i.i:                                  ; preds = %if.end.i257.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit286.i.i

if.end.i.i269.i.i:                                ; preds = %if.end.i257.i.i
  %arrayidx.i260.i.i = getelementptr i8, ptr %8, i32 %add.i.i242.i.i
  %172 = call ptr @memcpy(ptr %arrayidx.i260.i.i, ptr %nonceodd.i.i, i32 20)
  %173 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %173, i32 4)
  store i32 %add.i255.i.i, ptr %length.i.i.i, align 1
  %add.i.i267.i.i = add nuw nsw i32 %add.i230.i.i, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 4072, i32 %add.i230.i.i)
  %cmp.i.i268.i.i = icmp eq i32 %add.i230.i.i, 4072
  br i1 %cmp.i.i268.i.i, label %do.end.i.i271.i.i, label %if.end.i281.i.i

do.end.i.i271.i.i:                                ; preds = %if.end.i.i269.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit286.i.i

if.end.i281.i.i:                                  ; preds = %if.end.i.i269.i.i
  %arrayidx.i.i272.i.i = getelementptr i8, ptr %8, i32 %add.i255.i.i
  %174 = ptrtoint ptr %arrayidx.i.i272.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %arrayidx.i.i272.i.i, align 1
  %175 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %175, i32 4)
  store i32 %add.i.i267.i.i, ptr %length.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4051, i32 %add.i230.i.i)
  %cmp.i280.i.i = icmp ugt i32 %add.i230.i.i, 4051
  br i1 %cmp.i280.i.i, label %do.end.i283.i.i, label %if.end20.i285.i.i

do.end.i283.i.i:                                  ; preds = %if.end.i281.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit286.i.i

if.end20.i285.i.i:                                ; preds = %if.end.i281.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i279.i.i = add nuw nsw i32 %add.i230.i.i, 45
  %arrayidx.i284.i.i = getelementptr i8, ptr %8, i32 %add.i.i267.i.i
  %176 = call ptr @memcpy(ptr %arrayidx.i284.i.i, ptr %pubauth.i.i, i32 20)
  %177 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %177, i32 4)
  store i32 %add.i279.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append.exit286.i.i

tpm_buf_append.exit286.i.i:                       ; preds = %if.end20.i285.i.i, %do.end.i283.i.i, %do.end.i.i271.i.i, %do.end.i259.i.i, %do.end.i.i246.i.i, %do.end.i234.i.i, %do.end.i.i221.i.i, %tpm_buf_append.exit212.i.i
  %178 = load ptr, ptr @chip, align 4
  %tobool.not.i287.i.i = icmp eq ptr %178, null
  br i1 %tobool.not.i287.i.i, label %tpm_buf_append.exit286.i.i.tpm_seal.exit.thread115.i_crit_edge, label %if.end.i290.i.i

tpm_buf_append.exit286.i.i.tpm_seal.exit.thread115.i_crit_edge: ; preds = %tpm_buf_append.exit286.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tpm_seal.exit.thread115.i

if.end.i290.i.i:                                  ; preds = %tpm_buf_append.exit286.i.i
  %call.i288.i.i = call i32 @tpm_send(ptr noundef nonnull %178, ptr noundef nonnull %8, i32 noundef 1024) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288.i.i)
  %cmp.i289.i.i = icmp sgt i32 %call.i288.i.i, 0
  br i1 %cmp.i289.i.i, label %if.end.i290.i.i.tpm_seal.exit.thread115.i_crit_edge, label %trusted_tpm_send.exit.i.i

if.end.i290.i.i.tpm_seal.exit.thread115.i_crit_edge: ; preds = %if.end.i290.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tpm_seal.exit.thread115.i

trusted_tpm_send.exit.i.i:                        ; preds = %if.end.i290.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288.i.i)
  %cmp68.i.i = icmp slt i32 %call.i288.i.i, 0
  br i1 %cmp68.i.i, label %trusted_tpm_send.exit.i.i.tpm_seal.exit.thread115.i_crit_edge, label %if.end71.i.i

trusted_tpm_send.exit.i.i.tpm_seal.exit.thread115.i_crit_edge: ; preds = %trusted_tpm_send.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tpm_seal.exit.thread115.i

if.end71.i.i:                                     ; preds = %trusted_tpm_send.exit.i.i
  %179 = ptrtoint ptr %arrayidx14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx14.i.i.i, align 4
  %add.i.i = add i32 %180, 18
  %arrayidx75.i.i = getelementptr i8, ptr %8, i32 %add.i.i
  %181 = ptrtoint ptr %arrayidx75.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx75.i.i, align 4
  %add77.i.i = add i32 %180, 12
  %add78.i.i = add i32 %add77.i.i, %182
  %183 = ptrtoint ptr %ordinal.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %ordinal.i.i, align 4
  %call84.i.i = call i32 (ptr, i32, ptr, ptr, i32, ...) @TSS_checkhmac1(ptr noundef nonnull %8, i32 noundef %184, ptr noundef %nonceodd.i.i, ptr noundef %secret.i.i.i, i32 noundef 20, i32 noundef %add78.i.i, i32 noundef 10, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i.i)
  %tobool85.not.i.i = icmp eq i32 %call84.i.i, 0
  br i1 %tobool85.not.i.i, label %tpm_seal.exit.thread118.i, label %tpm_seal.exit.i

tpm_seal.exit.thread118.i:                        ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %185 = call ptr @memcpy(ptr %blob.i, ptr %arrayidx.i.i.i.i.i, i32 %add78.i.i)
  %186 = ptrtoint ptr %blob_len.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %add78.i.i, ptr %blob_len.i, align 4
  call void @kfree_sensitive(ptr noundef nonnull %call7.i.i.i55) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datsize.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcrsize.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ordinal.i.i) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %sess.i.i) #11
  br label %if.end10.i

tpm_seal.exit.thread115.i:                        ; preds = %trusted_tpm_send.exit.i.i.tpm_seal.exit.thread115.i_crit_edge, %if.end.i290.i.i.tpm_seal.exit.thread115.i_crit_edge, %tpm_buf_append.exit286.i.i.tpm_seal.exit.thread115.i_crit_edge, %if.end55.i.i.tpm_seal.exit.thread115.i_crit_edge, %if.end19.i.i.tpm_seal.exit.thread115.i_crit_edge, %if.end14.i.i.tpm_seal.exit.thread115.i_crit_edge, %TSS_sha1.exit.i.i.tpm_seal.exit.thread115.i_crit_edge, %osap.exit.i.i.tpm_seal.exit.thread115.i_crit_edge, %osap.exit.thread.i.i
  %ret.1.i.ph.i = phi i32 [ -1, %if.end.i290.i.i.tpm_seal.exit.thread115.i_crit_edge ], [ -19, %tpm_buf_append.exit286.i.i.tpm_seal.exit.thread115.i_crit_edge ], [ %retval.0.i.ph.i.i, %osap.exit.thread.i.i ], [ -5, %if.end19.i.i.tpm_seal.exit.thread115.i_crit_edge ], [ %call.i288.i.i, %trusted_tpm_send.exit.i.i.tpm_seal.exit.thread115.i_crit_edge ], [ %ret.0.i.i, %if.end55.i.i.tpm_seal.exit.thread115.i_crit_edge ], [ %call16.i.i, %if.end14.i.i.tpm_seal.exit.thread115.i_crit_edge ], [ %retval.0.i169.i.i, %TSS_sha1.exit.i.i.tpm_seal.exit.thread115.i_crit_edge ], [ %call21.i.i.i, %osap.exit.i.i.tpm_seal.exit.thread115.i_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call7.i.i.i55) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datsize.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcrsize.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ordinal.i.i) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %sess.i.i) #11
  br label %do.end.i

tpm_seal.exit.i:                                  ; preds = %if.end71.i.i
  call void @kfree_sensitive(ptr noundef nonnull %call7.i.i.i55) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datsize.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcrsize.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ordinal.i.i) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %sess.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i.i)
  %cmp.i57 = icmp slt i32 %call84.i.i, 0
  br i1 %cmp.i57, label %tpm_seal.exit.i.do.end.i_crit_edge, label %tpm_seal.exit.i.if.end10.i_crit_edge

tpm_seal.exit.i.if.end10.i_crit_edge:             ; preds = %tpm_seal.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

tpm_seal.exit.i.do.end.i_crit_edge:               ; preds = %tpm_seal.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i:                                         ; preds = %tpm_seal.exit.i.do.end.i_crit_edge, %tpm_seal.exit.thread115.i, %tpm_seal.exit.thread.i
  %retval.0.i30114.i = phi i32 [ -12, %tpm_seal.exit.thread.i ], [ %call84.i.i, %tpm_seal.exit.i.do.end.i_crit_edge ], [ %ret.1.i.ph.i, %tpm_seal.exit.thread115.i ]
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %retval.0.i30114.i) #15
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i, %tpm_seal.exit.i.if.end10.i_crit_edge, %tpm_seal.exit.thread118.i
  %retval.0.i30113.i = phi i32 [ %retval.0.i30114.i, %do.end.i ], [ %call84.i.i, %tpm_seal.exit.i.if.end10.i_crit_edge ], [ 0, %tpm_seal.exit.thread118.i ]
  call void @free_pages(i32 noundef %call.i.i, i32 noundef 0) #11
  br label %if.end16

if.end16:                                         ; preds = %if.end10.i, %if.then13
  %ret.0 = phi i32 [ %call14, %if.then13 ], [ %retval.0.i30113.i, %if.end10.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp17 = icmp slt i32 %ret.0, 0
  br i1 %cmp17, label %if.end16.do.end_crit_edge, label %if.end20

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %if.end16.do.end_crit_edge, %if.else.do.end_crit_edge
  %ret.067 = phi i32 [ %ret.0, %if.end16.do.end_crit_edge ], [ -12, %if.else.do.end_crit_edge ]
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %ret.067) #15
  br label %out

if.end20:                                         ; preds = %if.end16
  %pcrlock = getelementptr inbounds %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 7
  %187 = ptrtoint ptr %pcrlock to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %pcrlock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool21.not = icmp eq i32 %188, 0
  br i1 %tobool21.not, label %if.end20.out_crit_edge, label %if.then22

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then22:                                        ; preds = %if.end20
  %call.i59 = call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call.i59, label %if.end.i61, label %if.then22.do.end29_crit_edge

if.then22.do.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

if.end.i61:                                       ; preds = %if.then22
  %189 = load ptr, ptr @chip, align 4
  %190 = load ptr, ptr @digests, align 4
  %call1.i = call i32 @tpm_pcr_extend(ptr noundef %189, i32 noundef %188, ptr noundef %190) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i60 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i60, label %if.end.i61.out_crit_edge, label %if.end.i61.do.end29_crit_edge

if.end.i61.do.end29_crit_edge:                    ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

if.end.i61.out_crit_edge:                         ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end29:                                         ; preds = %if.end.i61.do.end29_crit_edge, %if.then22.do.end29_crit_edge
  %retval.0.i62.ph = phi i32 [ -1, %if.then22.do.end29_crit_edge ], [ -22, %if.end.i61.do.end29_crit_edge ]
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %retval.0.i62.ph) #15
  br label %out

out:                                              ; preds = %do.end29, %if.end.i61.out_crit_edge, %if.end20.out_crit_edge, %do.end, %if.end7.out_crit_edge, %if.end3.out_crit_edge
  %ret.1 = phi i32 [ %call4, %if.end3.out_crit_edge ], [ %ret.067, %do.end ], [ %retval.0.i62.ph, %do.end29 ], [ %ret.0, %if.end20.out_crit_edge ], [ -22, %if.end7.out_crit_edge ], [ 0, %if.end.i61.out_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trusted_tpm_unseal(ptr noundef %p, ptr noundef %datablob) #0 align 64 {
entry:
  %nonceodd.i.i = alloca [20 x i8], align 1
  %enonce1.i.i = alloca [20 x i8], align 1
  %enonce2.i.i = alloca [20 x i8], align 1
  %authdata1.i.i = alloca [20 x i8], align 1
  %authdata2.i.i = alloca [20 x i8], align 1
  %ordinal.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @chip, align 4
  %call = tail call i32 @tpm_is_tpm2(ptr noundef %0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @chip, align 4
  %call.i = tail call i32 @tpm_is_tpm2(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 200) #18
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.then2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2.i:                                       ; preds = %if.end.i
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 4, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then4.i, label %if.then2.i.if.end3_crit_edge

if.then2.i.if.end3_crit_edge:                     ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %keyhandle.i = getelementptr inbounds %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %keyhandle.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1073741824, ptr %keyhandle.i, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then4.i, %if.then2.i.if.end3_crit_edge
  %call4 = tail call fastcc i32 @getoptions(ptr noundef %datablob, ptr noundef %p, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.out_crit_edge, label %if.end7

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end7:                                          ; preds = %if.end3
  %keyhandle = getelementptr inbounds %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %keyhandle to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %keyhandle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  %or.cond = select i1 %tobool8.not, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %if.end7.out_crit_edge, label %if.end11

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end11:                                         ; preds = %if.end7
  br i1 %tobool9.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load ptr, ptr @chip, align 4
  %call14 = tail call i32 @tpm2_unseal_trusted(ptr noundef %7, ptr noundef %p, ptr noundef nonnull %call7.i.i.i) #11
  br label %if.end16

if.else:                                          ; preds = %if.end11
  %call.i.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #11
  %8 = inttoptr i32 %call.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.do.end_crit_edge, label %if.end.i55

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i55:                                       ; preds = %if.else
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 0, ptr %8, align 1
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 10, ptr %length.i.i.i, align 1
  %11 = getelementptr inbounds %struct.tpm_header, ptr %8, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %11, align 1
  %13 = ptrtoint ptr %keyhandle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %keyhandle, align 4
  %keyauth.i = getelementptr inbounds %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 2
  %blob.i = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 6
  %blob_len.i = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 2
  %15 = ptrtoint ptr %blob_len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blob_len.i, align 4
  %blobauth.i = getelementptr inbounds %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 4
  %key.i = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 5
  %key_len.i = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %nonceodd.i.i) #11
  %17 = call ptr @memset(ptr %nonceodd.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %enonce1.i.i) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %enonce2.i.i) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %authdata1.i.i) #11
  %18 = call ptr @memset(ptr %authdata1.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %authdata2.i.i) #11
  %19 = call ptr @memset(ptr %authdata2.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ordinal.i.i) #11
  %20 = load ptr, ptr @chip, align 4
  %tobool.not.i.i.i = icmp eq ptr %20, null
  br i1 %tobool.not.i.i.i, label %if.end.i55.do.end.i.i_crit_edge, label %trusted_tpm_send.exit.i.i.i

if.end.i55.do.end.i.i_crit_edge:                  ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

trusted_tpm_send.exit.i.i.i:                      ; preds = %if.end.i55
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 193, ptr %8, align 1
  %22 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 10, ptr %length.i.i.i, align 1
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 10, ptr %11, align 1
  %call.i.i.i.i = tail call i32 @tpm_send(ptr noundef nonnull %20, ptr noundef nonnull %8, i32 noundef 1024) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %call.i.i.i.i, 0
  %spec.store.select.i.i.i.i = select i1 %cmp.i.i.i.i, i32 -1, i32 %call.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %spec.store.select.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %trusted_tpm_send.exit.i.i.i.do.end.i.i_crit_edge, label %if.end.i23.i

trusted_tpm_send.exit.i.i.i.do.end.i.i_crit_edge: ; preds = %trusted_tpm_send.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %trusted_tpm_send.exit.i.i.i.do.end.i.i_crit_edge, %if.end.i55.do.end.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %spec.store.select.i.i.i.i, %trusted_tpm_send.exit.i.i.i.do.end.i.i_crit_edge ], [ -19, %if.end.i55.do.end.i.i_crit_edge ]
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %retval.0.i.ph.i.i) #15
  br label %do.end.i

if.end.i23.i:                                     ; preds = %trusted_tpm_send.exit.i.i.i
  %arrayidx.i.i.i = getelementptr i8, ptr %8, i32 10
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr i8, ptr %8, i32 14
  %26 = call ptr @memcpy(ptr %enonce1.i.i, ptr %arrayidx5.i.i.i, i32 20)
  %27 = load ptr, ptr @chip, align 4
  %tobool.not.i127.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i127.i.i, label %if.end.i23.i.do.end8.i.i_crit_edge, label %trusted_tpm_send.exit.i134.i.i

if.end.i23.i.do.end8.i.i_crit_edge:               ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

trusted_tpm_send.exit.i134.i.i:                   ; preds = %if.end.i23.i
  %28 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 193, ptr %8, align 1
  %29 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 10, ptr %length.i.i.i, align 1
  %30 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 10, ptr %11, align 1
  %call.i.i130.i.i = tail call i32 @tpm_send(ptr noundef nonnull %27, ptr noundef nonnull %8, i32 noundef 1024) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i130.i.i)
  %cmp.i.i131.i.i = icmp sgt i32 %call.i.i130.i.i, 0
  %spec.store.select.i.i132.i.i = select i1 %cmp.i.i131.i.i, i32 -1, i32 %call.i.i130.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i132.i.i)
  %cmp.i133.i.i = icmp slt i32 %spec.store.select.i.i132.i.i, 0
  br i1 %cmp.i133.i.i, label %trusted_tpm_send.exit.i134.i.i.do.end8.i.i_crit_edge, label %if.end11.i.i

trusted_tpm_send.exit.i134.i.i.do.end8.i.i_crit_edge: ; preds = %trusted_tpm_send.exit.i134.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %trusted_tpm_send.exit.i134.i.i.do.end8.i.i_crit_edge, %if.end.i23.i.do.end8.i.i_crit_edge
  %retval.0.i138.ph.i.i = phi i32 [ %spec.store.select.i.i132.i.i, %trusted_tpm_send.exit.i134.i.i.do.end8.i.i_crit_edge ], [ -19, %if.end.i23.i.do.end8.i.i_crit_edge ]
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %retval.0.i138.ph.i.i) #15
  br label %do.end.i

if.end11.i.i:                                     ; preds = %trusted_tpm_send.exit.i134.i.i
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.i, align 4
  %33 = call ptr @memcpy(ptr %enonce2.i.i, ptr %arrayidx5.i.i.i, i32 20)
  %34 = ptrtoint ptr %ordinal.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 24, ptr %ordinal.i.i, align 4
  %35 = load ptr, ptr @chip, align 4
  %call13.i.i = call i32 @tpm_get_random(ptr noundef %35, ptr noundef nonnull %nonceodd.i.i, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %if.end11.i.i.do.end.i_crit_edge, label %if.end16.i.i

if.end11.i.i.do.end.i_crit_edge:                  ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end16.i.i:                                     ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %call13.i.i)
  %cmp17.not.i.i = icmp eq i32 %call13.i.i, 20
  br i1 %cmp17.not.i.i, label %if.end24.i.i, label %do.end21.i.i

do.end21.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %call13.i.i) #15
  br label %do.end.i

if.end24.i.i:                                     ; preds = %if.end16.i.i
  %call28.i.i = call i32 (ptr, ptr, i32, ptr, ptr, i32, ...) @TSS_authhmac(ptr noundef nonnull %authdata1.i.i, ptr noundef %keyauth.i, i32 noundef 20, ptr noundef nonnull %enonce1.i.i, ptr noundef nonnull %nonceodd.i.i, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %ordinal.i.i, i32 noundef %16, ptr noundef %blob.i, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %cmp29.i.i = icmp slt i32 %call28.i.i, 0
  br i1 %cmp29.i.i, label %if.end24.i.i.do.end.i_crit_edge, label %if.end32.i.i

if.end24.i.i.do.end.i_crit_edge:                  ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end32.i.i:                                     ; preds = %if.end24.i.i
  %call37.i.i = call i32 (ptr, ptr, i32, ptr, ptr, i32, ...) @TSS_authhmac(ptr noundef nonnull %authdata2.i.i, ptr noundef %blobauth.i, i32 noundef 20, ptr noundef nonnull %enonce2.i.i, ptr noundef nonnull %nonceodd.i.i, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %ordinal.i.i, i32 noundef %16, ptr noundef %blob.i, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i)
  %cmp38.i.i = icmp slt i32 %call37.i.i, 0
  br i1 %cmp38.i.i, label %if.end32.i.i.do.end.i_crit_edge, label %if.end.i.i.i

if.end32.i.i.do.end.i_crit_edge:                  ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end.i.i.i:                                     ; preds = %if.end32.i.i
  %36 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %36, i32 2)
  store i16 195, ptr %8, align 1
  %37 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 24, ptr %11, align 1
  %38 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %38, i32 4)
  store i32 %14, ptr %arrayidx.i.i.i, align 1
  %39 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 14, ptr %length.i.i.i, align 1
  %add.i.i.i = add i32 %16, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i)
  %cmp.i145.i.i = icmp ugt i32 %add.i.i.i, 4096
  br i1 %cmp.i145.i.i, label %tpm_buf_append.exit.i.i, label %if.end.i.i153.i.i

tpm_buf_append.exit.i.i:                          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit241.i.i

if.end.i.i153.i.i:                                ; preds = %if.end.i.i.i
  %40 = call ptr @memcpy(ptr %arrayidx5.i.i.i, ptr %blob.i, i32 %16)
  %41 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %add.i.i.i, ptr %length.i.i.i, align 1
  %add.i.i151.i.i = add nsw i32 %16, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i151.i.i)
  %cmp.i.i152.i.i = icmp ugt i32 %add.i.i151.i.i, 4096
  br i1 %cmp.i.i152.i.i, label %do.end.i.i155.i.i, label %if.end.i165.i.i

do.end.i.i155.i.i:                                ; preds = %if.end.i.i153.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit241.i.i

if.end.i165.i.i:                                  ; preds = %if.end.i.i153.i.i
  %arrayidx.i.i156.i.i = getelementptr i8, ptr %8, i32 %add.i.i.i
  %42 = ptrtoint ptr %arrayidx.i.i156.i.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %25, ptr %arrayidx.i.i156.i.i, align 1
  %43 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 4)
  store i32 %add.i.i151.i.i, ptr %length.i.i.i, align 1
  %add.i163.i.i = add nsw i32 %16, 38
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i163.i.i)
  %cmp.i164.i.i = icmp ugt i32 %add.i163.i.i, 4096
  br i1 %cmp.i164.i.i, label %do.end.i167.i.i, label %if.end.i.i177.i.i

do.end.i167.i.i:                                  ; preds = %if.end.i165.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit241.i.i

if.end.i.i177.i.i:                                ; preds = %if.end.i165.i.i
  %arrayidx.i168.i.i = getelementptr i8, ptr %8, i32 %add.i.i151.i.i
  %44 = call ptr @memcpy(ptr %arrayidx.i168.i.i, ptr %nonceodd.i.i, i32 20)
  %45 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %add.i163.i.i, ptr %length.i.i.i, align 1
  %add.i.i175.i.i = add nsw i32 %16, 39
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i175.i.i)
  %cmp.i.i176.i.i = icmp ugt i32 %add.i.i175.i.i, 4096
  br i1 %cmp.i.i176.i.i, label %do.end.i.i179.i.i, label %if.end.i188.i.i

do.end.i.i179.i.i:                                ; preds = %if.end.i.i177.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit241.i.i

if.end.i188.i.i:                                  ; preds = %if.end.i.i177.i.i
  %arrayidx.i.i180.i.i = getelementptr i8, ptr %8, i32 %add.i163.i.i
  %46 = ptrtoint ptr %arrayidx.i.i180.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %arrayidx.i.i180.i.i, align 1
  %47 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %add.i.i175.i.i, ptr %length.i.i.i, align 1
  %add.i186.i.i = add nsw i32 %16, 59
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i186.i.i)
  %cmp.i187.i.i = icmp ugt i32 %add.i186.i.i, 4096
  br i1 %cmp.i187.i.i, label %do.end.i190.i.i, label %if.end.i.i200.i.i

do.end.i190.i.i:                                  ; preds = %if.end.i188.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit241.i.i

if.end.i.i200.i.i:                                ; preds = %if.end.i188.i.i
  %arrayidx.i191.i.i = getelementptr i8, ptr %8, i32 %add.i.i175.i.i
  %48 = call ptr @memcpy(ptr %arrayidx.i191.i.i, ptr %authdata1.i.i, i32 20)
  %49 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %49, i32 4)
  store i32 %add.i186.i.i, ptr %length.i.i.i, align 1
  %add.i.i198.i.i = add nsw i32 %16, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i198.i.i)
  %cmp.i.i199.i.i = icmp ugt i32 %add.i.i198.i.i, 4096
  br i1 %cmp.i.i199.i.i, label %do.end.i.i202.i.i, label %if.end.i212.i.i

do.end.i.i202.i.i:                                ; preds = %if.end.i.i200.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit241.i.i

if.end.i212.i.i:                                  ; preds = %if.end.i.i200.i.i
  %arrayidx.i.i203.i.i = getelementptr i8, ptr %8, i32 %add.i186.i.i
  %50 = ptrtoint ptr %arrayidx.i.i203.i.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %32, ptr %arrayidx.i.i203.i.i, align 1
  %51 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %add.i.i198.i.i, ptr %length.i.i.i, align 1
  %add.i210.i.i = add nsw i32 %16, 83
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i210.i.i)
  %cmp.i211.i.i = icmp ugt i32 %add.i210.i.i, 4096
  br i1 %cmp.i211.i.i, label %do.end.i214.i.i, label %if.end.i.i224.i.i

do.end.i214.i.i:                                  ; preds = %if.end.i212.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit241.i.i

if.end.i.i224.i.i:                                ; preds = %if.end.i212.i.i
  %arrayidx.i215.i.i = getelementptr i8, ptr %8, i32 %add.i.i198.i.i
  %52 = call ptr @memcpy(ptr %arrayidx.i215.i.i, ptr %nonceodd.i.i, i32 20)
  %53 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %add.i210.i.i, ptr %length.i.i.i, align 1
  %add.i.i222.i.i = add nsw i32 %16, 84
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i222.i.i)
  %cmp.i.i223.i.i = icmp ugt i32 %add.i.i222.i.i, 4096
  br i1 %cmp.i.i223.i.i, label %do.end.i.i226.i.i, label %if.end.i236.i.i

do.end.i.i226.i.i:                                ; preds = %if.end.i.i224.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit241.i.i

if.end.i236.i.i:                                  ; preds = %if.end.i.i224.i.i
  %arrayidx.i.i227.i.i = getelementptr i8, ptr %8, i32 %add.i210.i.i
  %54 = ptrtoint ptr %arrayidx.i.i227.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %arrayidx.i.i227.i.i, align 1
  %55 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %add.i.i222.i.i, ptr %length.i.i.i, align 1
  %add.i234.i.i = add nsw i32 %16, 104
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i234.i.i)
  %cmp.i235.i.i = icmp ugt i32 %add.i234.i.i, 4096
  br i1 %cmp.i235.i.i, label %do.end.i238.i.i, label %if.end20.i240.i.i

do.end.i238.i.i:                                  ; preds = %if.end.i236.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.30) #11
  br label %tpm_buf_append.exit241.i.i

if.end20.i240.i.i:                                ; preds = %if.end.i236.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i239.i.i = getelementptr i8, ptr %8, i32 %add.i.i222.i.i
  %56 = call ptr @memcpy(ptr %arrayidx.i239.i.i, ptr %authdata2.i.i, i32 20)
  %57 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 %add.i234.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append.exit241.i.i

tpm_buf_append.exit241.i.i:                       ; preds = %if.end20.i240.i.i, %do.end.i238.i.i, %do.end.i.i226.i.i, %do.end.i214.i.i, %do.end.i.i202.i.i, %do.end.i190.i.i, %do.end.i.i179.i.i, %do.end.i167.i.i, %do.end.i.i155.i.i, %tpm_buf_append.exit.i.i
  %58 = load ptr, ptr @chip, align 4
  %tobool.not.i242.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i242.i.i, label %tpm_buf_append.exit241.i.i.do.end53.i.i_crit_edge, label %if.end.i244.i.i

tpm_buf_append.exit241.i.i.do.end53.i.i_crit_edge: ; preds = %tpm_buf_append.exit241.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53.i.i

if.end.i244.i.i:                                  ; preds = %tpm_buf_append.exit241.i.i
  %call.i.i.i = call i32 @tpm_send(ptr noundef nonnull %58, ptr noundef nonnull %8, i32 noundef 1024) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i243.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i243.i.i, label %if.end.i244.i.i.do.end53.i.i_crit_edge, label %trusted_tpm_send.exit.i.i

if.end.i244.i.i.do.end53.i.i_crit_edge:           ; preds = %if.end.i244.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53.i.i

trusted_tpm_send.exit.i.i:                        ; preds = %if.end.i244.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp48.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp48.i.i, label %trusted_tpm_send.exit.i.i.do.end53.i.i_crit_edge, label %if.end56.i.i

trusted_tpm_send.exit.i.i.do.end53.i.i_crit_edge: ; preds = %trusted_tpm_send.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end53.i.i

do.end53.i.i:                                     ; preds = %trusted_tpm_send.exit.i.i.do.end53.i.i_crit_edge, %if.end.i244.i.i.do.end53.i.i_crit_edge, %tpm_buf_append.exit241.i.i.do.end53.i.i_crit_edge
  %retval.0.i245256.i.i = phi i32 [ %call.i.i.i, %trusted_tpm_send.exit.i.i.do.end53.i.i_crit_edge ], [ -19, %tpm_buf_append.exit241.i.i.do.end53.i.i_crit_edge ], [ -1, %if.end.i244.i.i.do.end53.i.i_crit_edge ]
  %call55.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %retval.0.i245256.i.i) #15
  br label %do.end.i

if.end56.i.i:                                     ; preds = %trusted_tpm_send.exit.i.i
  %59 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i.i, align 4
  %61 = ptrtoint ptr %key_len.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %key_len.i, align 4
  %62 = ptrtoint ptr %ordinal.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ordinal.i.i, align 4
  %call60.i.i = call i32 (ptr, i32, ptr, ptr, i32, ptr, i32, ...) @TSS_checkhmac2(ptr noundef nonnull %8, i32 noundef %63, ptr noundef nonnull %nonceodd.i.i, ptr noundef %keyauth.i, i32 undef, ptr noundef %blobauth.i, i32 undef, i32 noundef 4, i32 noundef 10, i32 noundef %60, i32 noundef 14, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i.i)
  %cmp61.i.i = icmp slt i32 %call60.i.i, 0
  br i1 %cmp61.i.i, label %do.end66.i.i, label %if.else.i

do.end66.i.i:                                     ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call68.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %call60.i.i) #15
  br label %do.end.i

do.end.i:                                         ; preds = %do.end66.i.i, %do.end53.i.i, %if.end32.i.i.do.end.i_crit_edge, %if.end24.i.i.do.end.i_crit_edge, %do.end21.i.i, %if.end11.i.i.do.end.i_crit_edge, %do.end8.i.i, %do.end.i.i
  %retval.0.i25.ph.i = phi i32 [ %call37.i.i, %if.end32.i.i.do.end.i_crit_edge ], [ %call28.i.i, %if.end24.i.i.do.end.i_crit_edge ], [ %call13.i.i, %if.end11.i.i.do.end.i_crit_edge ], [ %call60.i.i, %do.end66.i.i ], [ %retval.0.i245256.i.i, %do.end53.i.i ], [ -5, %do.end21.i.i ], [ %retval.0.i138.ph.i.i, %do.end8.i.i ], [ %retval.0.i.ph.i.i, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ordinal.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %authdata2.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %authdata1.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %enonce2.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %enonce1.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %nonceodd.i.i) #11
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %retval.0.i25.ph.i) #15
  br label %if.end9.i

if.else.i:                                        ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %key_len.i, align 4
  %66 = call ptr @memcpy(ptr %key.i, ptr %arrayidx5.i.i.i, i32 %65)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ordinal.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %authdata2.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %authdata1.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %enonce2.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %enonce1.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %nonceodd.i.i) #11
  %dec.i = add i32 %65, -1
  %67 = ptrtoint ptr %key_len.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %dec.i, ptr %key_len.i, align 4
  %arrayidx.i = getelementptr %struct.trusted_key_payload, ptr %p, i32 0, i32 5, i32 %dec.i
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i, align 1
  %migratable.i = getelementptr inbounds %struct.trusted_key_payload, ptr %p, i32 0, i32 3
  %70 = ptrtoint ptr %migratable.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %migratable.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else.i, %do.end.i
  %retval.0.i2598.i = phi i32 [ 0, %if.else.i ], [ %retval.0.i25.ph.i, %do.end.i ]
  call void @free_pages(i32 noundef %call.i.i, i32 noundef 0) #11
  br label %if.end16

if.end16:                                         ; preds = %if.end9.i, %if.then13
  %ret.0 = phi i32 [ %call14, %if.then13 ], [ %retval.0.i2598.i, %if.end9.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp17 = icmp slt i32 %ret.0, 0
  br i1 %cmp17, label %if.end16.do.end_crit_edge, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.end16.do.end_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %if.end16.do.end_crit_edge, %if.else.do.end_crit_edge
  %ret.066 = phi i32 [ %ret.0, %if.end16.do.end_crit_edge ], [ -12, %if.else.do.end_crit_edge ]
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %ret.066) #15
  br label %if.end20

if.end20:                                         ; preds = %do.end, %if.end16.if.end20_crit_edge
  %ret.065 = phi i32 [ %ret.066, %do.end ], [ %ret.0, %if.end16.if.end20_crit_edge ]
  %pcrlock = getelementptr inbounds %struct.trusted_key_options, ptr %call7.i.i.i, i32 0, i32 7
  %71 = ptrtoint ptr %pcrlock to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %pcrlock, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool21.not = icmp eq i32 %72, 0
  br i1 %tobool21.not, label %if.end20.out_crit_edge, label %if.then22

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then22:                                        ; preds = %if.end20
  %call.i57 = call zeroext i1 @capable(i32 noundef 21) #11
  br i1 %call.i57, label %if.end.i59, label %if.then22.do.end29_crit_edge

if.then22.do.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

if.end.i59:                                       ; preds = %if.then22
  %73 = load ptr, ptr @chip, align 4
  %74 = load ptr, ptr @digests, align 4
  %call1.i = call i32 @tpm_pcr_extend(ptr noundef %73, i32 noundef %72, ptr noundef %74) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i58 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i58, label %if.end.i59.out_crit_edge, label %if.end.i59.do.end29_crit_edge

if.end.i59.do.end29_crit_edge:                    ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end29

if.end.i59.out_crit_edge:                         ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end29:                                         ; preds = %if.end.i59.do.end29_crit_edge, %if.then22.do.end29_crit_edge
  %retval.0.i60.ph = phi i32 [ -1, %if.then22.do.end29_crit_edge ], [ -22, %if.end.i59.do.end29_crit_edge ]
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %retval.0.i60.ph) #15
  br label %out

out:                                              ; preds = %do.end29, %if.end.i59.out_crit_edge, %if.end20.out_crit_edge, %if.end7.out_crit_edge, %if.end3.out_crit_edge
  %ret.1 = phi i32 [ %call4, %if.end3.out_crit_edge ], [ %retval.0.i60.ph, %do.end29 ], [ %ret.065, %if.end20.out_crit_edge ], [ -22, %if.end7.out_crit_edge ], [ 0, %if.end.i59.out_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call7.i.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trusted_tpm_get_random(ptr noundef %key, i32 noundef %key_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @chip, align 4
  %call = tail call i32 @tpm_get_random(ptr noundef %0, ptr noundef %key, i32 noundef %key_len) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trusted_tpm_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @chip, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @put_device(ptr noundef nonnull %0) #11
  %1 = load ptr, ptr @digests, align 4
  tail call void @kfree(ptr noundef %1) #11
  %2 = load ptr, ptr @hashalg, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %2, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %2, ptr noundef %base.i.i.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %3 = load ptr, ptr @hmacalg, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.trusted_shash_release.exit_crit_edge, label %if.then2.i

if.end.i.trusted_shash_release.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %trusted_shash_release.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i5.i = getelementptr inbounds %struct.crypto_shash, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %3, ptr noundef %base.i.i5.i) #11
  br label %trusted_shash_release.exit

trusted_shash_release.exit:                       ; preds = %if.then2.i, %if.end.i.trusted_shash_release.exit_crit_edge
  tail call void @unregister_key_type(ptr noundef nonnull @key_type_trusted) #11
  br label %if.end

if.end:                                           ; preds = %trusted_shash_release.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tpm_default_chip() local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_digests() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @chip, align 4
  %nr_allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 25
  %1 = ptrtoint ptr %nr_allocated_banks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_allocated_banks, align 8
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 66) #11
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !139

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  store ptr null, ptr @digests, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #14
  store ptr %call8.i.i, ptr @digests, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %6 = load ptr, ptr @chip, align 4
  %nr_allocated_banks19 = getelementptr inbounds %struct.tpm_chip, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %nr_allocated_banks19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_allocated_banks19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10.not = icmp eq i32 %8, 0
  br i1 %cmp10.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %9 = load ptr, ptr @chip, align 4
  %nr_allocated_banks1 = getelementptr inbounds %struct.tpm_chip, ptr %9, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %10 = phi ptr [ %9, %for.body.for.body_crit_edge ], [ %6, %for.body.preheader ]
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %allocated_banks = getelementptr inbounds %struct.tpm_chip, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %allocated_banks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %allocated_banks, align 4
  %arrayidx = getelementptr %struct.tpm_bank_info, ptr %12, i32 %i.011
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr %struct.tpm_digest, ptr %call8.i.i, i32 %i.011
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %arrayidx2, align 2
  %inc = add nuw i32 %i.011, 1
  %16 = ptrtoint ptr %nr_allocated_banks1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_allocated_banks1, align 8
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trusted_shash_alloc() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @hmac_alg, i32 noundef 0, i32 noundef 0) #11
  store ptr %call, ptr @hmacalg, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @hmac_alg) #15
  %0 = load ptr, ptr @hmacalg, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @hash_alg, i32 noundef 0, i32 noundef 0) #11
  store ptr %call4, ptr @hashalg, align 4
  %cmp.i14 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i14, label %do.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @hash_alg) #15
  %2 = load ptr, ptr @hashalg, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = load ptr, ptr @hmacalg, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %4, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %4, ptr noundef %base.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %3, %do.end9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_key_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trusted_shash_release() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @hashalg, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %0, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %0, ptr noundef %base.i.i) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = load ptr, ptr @hmacalg, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %base.i.i5 = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef %base.i.i5) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_is_tpm2(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @getoptions(ptr noundef %c, ptr nocapture noundef writeonly %pay, ptr noundef %opt) unnamed_addr #0 align 64 {
entry:
  %c.addr = alloca ptr, align 4
  %args = alloca [3 x %struct.substring_t], align 4
  %handle = alloca i32, align 4
  %lock = alloca i32, align 4
  %token_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %c, ptr %c.addr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #11
  %1 = call ptr @memset(ptr %args, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %handle) #11
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %handle, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lock) #11
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %lock, align 4, !annotation !138
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %token_mask) #11
  %4 = ptrtoint ptr %token_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %token_mask, align 4
  %5 = load ptr, ptr @chip, align 4
  %call = tail call i32 @tpm_is_tpm2(ptr noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 2, i32 4
  %hash = getelementptr inbounds %struct.trusted_key_options, ptr %opt, i32 0, i32 8
  %6 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %cond, ptr %hash, align 4
  %7 = ptrtoint ptr %c.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %c.addr, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %while.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.preheader:                             ; preds = %if.end
  %call4231 = call ptr @strsep(ptr noundef nonnull %c.addr, ptr noundef nonnull @.str.14) #11
  %tobool5.not232 = icmp eq ptr %call4231, null
  br i1 %tobool5.not232, label %while.cond.preheader.cleanup_crit_edge, label %while.body.lr.ph

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %policyhandle = getelementptr inbounds %struct.trusted_key_options, ptr %opt, i32 0, i32 11
  %policydigest = getelementptr inbounds %struct.trusted_key_options, ptr %opt, i32 0, i32 10
  %policydigest_len = getelementptr inbounds %struct.trusted_key_options, ptr %opt, i32 0, i32 9
  %tobool.not.not223 = xor i1 %tobool.not, true
  %pcrlock = getelementptr inbounds %struct.trusted_key_options, ptr %opt, i32 0, i32 7
  %migratable = getelementptr inbounds %struct.trusted_key_payload, ptr %pay, i32 0, i32 3
  %blobauth_len = getelementptr inbounds %struct.trusted_key_options, ptr %opt, i32 0, i32 3
  %blobauth84 = getelementptr inbounds %struct.trusted_key_options, ptr %opt, i32 0, i32 4
  %keyauth = getelementptr inbounds %struct.trusted_key_options, ptr %opt, i32 0, i32 2
  %keyhandle = getelementptr inbounds %struct.trusted_key_options, ptr %opt, i32 0, i32 1
  %pcrinfo_len = getelementptr inbounds %struct.trusted_key_options, ptr %opt, i32 0, i32 5
  %pcrinfo = getelementptr inbounds %struct.trusted_key_options, ptr %opt, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call4233 = phi ptr [ %call4231, %while.body.lr.ph ], [ %call4, %while.cond.backedge.while.body_crit_edge ]
  %9 = ptrtoint ptr %call4233 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call4233, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %10, label %if.end16 [
    i8 0, label %while.body.while.cond.backedge_crit_edge
    i8 32, label %while.body.while.cond.backedge_crit_edge260
    i8 9, label %while.body.while.cond.backedge_crit_edge261
  ]

while.body.while.cond.backedge_crit_edge261:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

while.body.while.cond.backedge_crit_edge260:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end169, %if.end158, %if.end131.while.cond.backedge_crit_edge, %if.end112, %if.then96, %sw.bb90.while.cond.backedge_crit_edge, %if.then83, %if.end76, %if.end52.while.cond.backedge_crit_edge, %if.end44, %if.end27.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge260, %while.body.while.cond.backedge_crit_edge261
  %call4 = call ptr @strsep(ptr noundef nonnull %c.addr, ptr noundef nonnull @.str.14) #11
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %while.body
  %call17 = call i32 @match_token(ptr noundef nonnull %call4233, ptr noundef nonnull @key_tokens, ptr noundef nonnull %args) #11
  %call18 = call i32 @_test_and_set_bit(i32 noundef %call17, ptr noundef nonnull %token_mask) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %12 = zext i32 %call17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %call17, label %if.end21.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 1, label %sw.bb37
    i32 2, label %sw.bb45
    i32 3, label %sw.bb61
    i32 6, label %sw.bb90
    i32 5, label %sw.bb105
    i32 7, label %sw.bb113
    i32 8, label %sw.bb139
    i32 9, label %sw.bb159
  ]

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end21
  %13 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %args, align 4
  %call22 = call i32 @strlen(ptr noundef %14) #16
  %div222 = lshr i32 %call22, 1
  %15 = ptrtoint ptr %pcrinfo_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div222, ptr %pcrinfo_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %call22)
  %cmp24 = icmp ugt i32 %call22, 129
  br i1 %cmp24, label %sw.bb.cleanup_crit_edge, label %if.end27

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %sw.bb
  %call32 = call i32 @hex2bin(ptr noundef %pcrinfo, ptr noundef %14, i32 noundef %div222) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end27.cleanup_crit_edge, label %if.end27.while.cond.backedge_crit_edge

if.end27.while.cond.backedge_crit_edge:           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb37:                                          ; preds = %if.end21
  %16 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %args, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %17, i32 noundef 16, ptr noundef nonnull %handle) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp41 = icmp slt i32 %call.i, 0
  br i1 %cmp41, label %sw.bb37.cleanup_crit_edge, label %if.end44

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end44:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %opt to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 1, ptr %opt, align 4
  %19 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %handle, align 4
  %21 = ptrtoint ptr %keyhandle to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %keyhandle, align 4
  br label %while.cond.backedge

sw.bb45:                                          ; preds = %if.end21
  %22 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args, align 4
  %call48 = call i32 @strlen(ptr noundef %23) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 40
  br i1 %cmp49.not, label %if.end52, label %sw.bb45.cleanup_crit_edge

sw.bb45.cleanup_crit_edge:                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52:                                         ; preds = %sw.bb45
  %call56 = call i32 @hex2bin(ptr noundef %keyauth, ptr noundef %23, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end52.cleanup_crit_edge, label %if.end52.while.cond.backedge_crit_edge

if.end52.while.cond.backedge_crit_edge:           ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb61:                                          ; preds = %if.end21
  %24 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %args, align 4
  %call64 = call i32 @strlen(ptr noundef %25) #16
  %26 = ptrtoint ptr %blobauth_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call64, ptr %blobauth_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %call64)
  %cmp66 = icmp eq i32 %call64, 40
  br i1 %cmp66, label %if.then68, label %if.end78

if.then68:                                        ; preds = %sw.bb61
  %call72 = call i32 @hex2bin(ptr noundef %blobauth84, ptr noundef %25, i32 noundef 20) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.then68.cleanup_crit_edge, label %if.end76

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end76:                                         ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %blobauth_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 20, ptr %blobauth_len, align 4
  br label %while.cond.backedge

if.end78:                                         ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %call64)
  %cmp81 = icmp ult i32 %call64, 21
  %or.cond = select i1 %tobool.not.not223, i1 %cmp81, i1 false
  br i1 %or.cond, label %if.then83, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %28 = call ptr @memcpy(ptr %blobauth84, ptr %25, i32 %call64)
  br label %while.cond.backedge

sw.bb90:                                          ; preds = %if.end21
  %29 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %args, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %32, label %sw.bb90.cleanup_crit_edge [
    i8 48, label %if.then96
    i8 49, label %sw.bb90.while.cond.backedge_crit_edge
  ]

sw.bb90.while.cond.backedge_crit_edge:            ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

sw.bb90.cleanup_crit_edge:                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then96:                                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %migratable to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %migratable, align 4
  br label %while.cond.backedge

sw.bb105:                                         ; preds = %if.end21
  %35 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %args, align 4
  %call.i225 = call i32 @_kstrtoul(ptr noundef %36, i32 noundef 10, ptr noundef nonnull %lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %cmp109 = icmp slt i32 %call.i225, 0
  br i1 %cmp109, label %sw.bb105.cleanup_crit_edge, label %if.end112

sw.bb105.cleanup_crit_edge:                       ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end112:                                        ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lock, align 4
  %39 = ptrtoint ptr %pcrlock to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %pcrlock, align 4
  br label %while.cond.backedge

sw.bb113:                                         ; preds = %if.end21
  %40 = ptrtoint ptr %token_mask to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %token_mask, align 4
  %42 = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool115.not = icmp eq i32 %42, 0
  br i1 %tobool115.not, label %for.cond.preheader, label %sw.bb113.cleanup_crit_edge

sw.bb113.cleanup_crit_edge:                       ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %sw.bb113
  %43 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %args, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0230 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx122 = getelementptr [20 x ptr], ptr @hash_algo_name, i32 0, i32 %i.0230
  %45 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx122, align 4
  %call123 = call i32 @strcmp(ptr noundef %44, ptr noundef %46) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end131, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0230, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end131:                                        ; preds = %for.body
  %47 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %i.0230, ptr %hash, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0230)
  %cmp134.not = icmp eq i32 %i.0230, 2
  %or.cond224 = select i1 %tobool.not.not223, i1 true, i1 %cmp134.not
  br i1 %or.cond224, label %if.end131.while.cond.backedge_crit_edge, label %do.end

if.end131.while.cond.backedge_crit_edge:          ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.backedge

do.end:                                           ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #13
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  br label %cleanup

sw.bb139:                                         ; preds = %if.end21
  %48 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hash, align 4
  %arrayidx141 = getelementptr [20 x i32], ptr @hash_digest_size, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx141, align 4
  br i1 %tobool.not, label %sw.bb139.cleanup_crit_edge, label %lor.lhs.false143

sw.bb139.cleanup_crit_edge:                       ; preds = %sw.bb139
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false143:                                 ; preds = %sw.bb139
  %52 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %args, align 4
  %call146 = call i32 @strlen(ptr noundef %53) #16
  %mul = shl i32 %51, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call146, i32 %mul)
  %cmp147.not = icmp eq i32 %call146, %mul
  br i1 %cmp147.not, label %if.end150, label %lor.lhs.false143.cleanup_crit_edge

lor.lhs.false143.cleanup_crit_edge:               ; preds = %lor.lhs.false143
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end150:                                        ; preds = %lor.lhs.false143
  %call154 = call i32 @hex2bin(ptr noundef %policydigest, ptr noundef %53, i32 noundef %51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %cmp155 = icmp slt i32 %call154, 0
  br i1 %cmp155, label %if.end150.cleanup_crit_edge, label %if.end158

if.end150.cleanup_crit_edge:                      ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end158:                                        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  %54 = ptrtoint ptr %policydigest_len to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %51, ptr %policydigest_len, align 4
  br label %while.cond.backedge

sw.bb159:                                         ; preds = %if.end21
  br i1 %tobool.not, label %sw.bb159.cleanup_crit_edge, label %if.end162

sw.bb159.cleanup_crit_edge:                       ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end162:                                        ; preds = %sw.bb159
  %55 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %args, align 4
  %call.i226 = call i32 @_kstrtoul(ptr noundef %56, i32 noundef 16, ptr noundef nonnull %handle) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp166 = icmp slt i32 %call.i226, 0
  br i1 %cmp166, label %if.end162.cleanup_crit_edge, label %if.end169

if.end162.cleanup_crit_edge:                      ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end169:                                        ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %handle, align 4
  %59 = ptrtoint ptr %policyhandle to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %policyhandle, align 4
  br label %while.cond.backedge

cleanup:                                          ; preds = %if.end162.cleanup_crit_edge, %sw.bb159.cleanup_crit_edge, %if.end150.cleanup_crit_edge, %lor.lhs.false143.cleanup_crit_edge, %sw.bb139.cleanup_crit_edge, %do.end, %for.inc.cleanup_crit_edge, %sw.bb113.cleanup_crit_edge, %sw.bb105.cleanup_crit_edge, %sw.bb90.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %sw.bb45.cleanup_crit_edge, %sw.bb37.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ -22, %sw.bb37.cleanup_crit_edge ], [ -22, %sw.bb45.cleanup_crit_edge ], [ -22, %if.end52.cleanup_crit_edge ], [ -22, %if.then68.cleanup_crit_edge ], [ -22, %if.end78.cleanup_crit_edge ], [ -22, %sw.bb90.cleanup_crit_edge ], [ -22, %sw.bb105.cleanup_crit_edge ], [ -22, %sw.bb113.cleanup_crit_edge ], [ -22, %lor.lhs.false143.cleanup_crit_edge ], [ -22, %sw.bb139.cleanup_crit_edge ], [ -22, %if.end150.cleanup_crit_edge ], [ -22, %sw.bb159.cleanup_crit_edge ], [ -22, %if.end162.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %token_mask) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %handle) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_seal_trusted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @match_token(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_get_random(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_pcr_extend(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm2_unseal_trusted(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @TSS_checkhmac2(ptr noundef %buffer, i32 noundef %command, ptr noundef %ononce, ptr noundef %key1, i32 %keylen1, ptr noundef %key2, i32 %keylen2, ...) unnamed_addr #0 align 64 {
entry:
  %ordinal = alloca i32, align 4
  %result = alloca i32, align 4
  %testhmac1 = alloca [20 x i8], align 1
  %testhmac2 = alloca [20 x i8], align 1
  %paramdigest = alloca [20 x i8], align 1
  %argp = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ordinal) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %testhmac1) #11
  %0 = call ptr @memset(ptr %testhmac1, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %testhmac2) #11
  %1 = call ptr @memset(ptr %testhmac2, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %paramdigest) #11
  %2 = call ptr @memset(ptr %paramdigest, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %argp) #11
  %3 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %argp, align 4, !annotation !138
  %arrayidx = getelementptr i8, ptr %buffer, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %buffer to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buffer, align 2
  %8 = ptrtoint ptr %ordinal to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %command, ptr %ordinal, align 4
  %arrayidx2 = getelementptr i8, ptr %buffer, i32 6
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  %11 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %result, align 4
  %12 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %7, label %if.then7 [
    i16 196, label %entry.cleanup_crit_edge
    i16 198, label %if.end8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %buffer, i32 %5
  %add.ptr9 = getelementptr i8, ptr %add.ptr, i32 -61
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 -20
  %add.ptr12 = getelementptr i8, ptr %add.ptr9, i32 -1
  %add.ptr13 = getelementptr i8, ptr %add.ptr11, i32 -1
  %add.ptr14 = getelementptr i8, ptr %add.ptr12, i32 -20
  %add.ptr15 = getelementptr i8, ptr %add.ptr13, i32 -20
  %13 = load ptr, ptr @hashalg, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 128
  %add.i = add i32 %15, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #14
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.do.end_crit_edge, label %init_sdesc.exit

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

init_sdesc.exit:                                  ; preds = %if.end8
  %16 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %call9.i.i, align 128
  %cmp.i = icmp ugt ptr %call9.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %init_sdesc.exit.do.end_crit_edge, label %if.end20

init_sdesc.exit.do.end_crit_edge:                 ; preds = %init_sdesc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %init_sdesc.exit.do.end_crit_edge, %if.end8.do.end_crit_edge
  %retval.0.i137 = phi ptr [ %call9.i.i, %init_sdesc.exit.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.do.end_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hash_alg) #15
  %17 = ptrtoint ptr %retval.0.i137 to i32
  br label %cleanup

if.end20:                                         ; preds = %init_sdesc.exit
  %18 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call9.i.i, align 128
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i129 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i129, label %crypto_shash_init.exit, label %if.end20.out_crit_edge

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

crypto_shash_init.exit:                           ; preds = %if.end20
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %19, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 -256
  %24 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %25(ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp22 = icmp slt i32 %call3.i, 0
  br i1 %cmp22, label %crypto_shash_init.exit.out_crit_edge, label %if.end25

crypto_shash_init.exit.out_crit_edge:             ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end25:                                         ; preds = %crypto_shash_init.exit
  %call27 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %result, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end25.out_crit_edge, label %if.end31

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end31:                                         ; preds = %if.end25
  %call33 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %ordinal, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end31.out_crit_edge, label %if.end37

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end37:                                         ; preds = %if.end31
  call void @llvm.va_start(ptr nonnull %argp)
  %26 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %26)
  %argp.cur158 = load ptr, ptr %argp, align 4
  %argp.next159 = getelementptr inbounds i8, ptr %argp.cur158, i32 4
  store ptr %argp.next159, ptr %argp, align 4
  %27 = ptrtoint ptr %argp.cur158 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %argp.cur158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp38160 = icmp eq i32 %28, 0
  br i1 %cmp38160, label %if.end37.for.end_crit_edge, label %if.end37.if.end41_crit_edge

if.end37.if.end41_crit_edge:                      ; preds = %if.end37
  br label %if.end41

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond:                                         ; preds = %if.end41
  %29 = ptrtoint ptr %argp to i32
  call void @__asan_load4_noabort(i32 %29)
  %argp.cur = load ptr, ptr %argp, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %argp, align 4
  %30 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %argp.cur, align 4
  %cmp38 = icmp eq i32 %31, 0
  br i1 %cmp38, label %for.cond.for.end_crit_edge, label %for.cond.if.end41_crit_edge

for.cond.if.end41_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end41:                                         ; preds = %for.cond.if.end41_crit_edge, %if.end37.if.end41_crit_edge
  %32 = phi i32 [ %31, %for.cond.if.end41_crit_edge ], [ %28, %if.end37.if.end41_crit_edge ]
  %argp.next162 = phi ptr [ %argp.next, %for.cond.if.end41_crit_edge ], [ %argp.next159, %if.end37.if.end41_crit_edge ]
  %argp.cur161 = phi ptr [ %argp.cur, %for.cond.if.end41_crit_edge ], [ %argp.cur158, %if.end37.if.end41_crit_edge ]
  %argp.next43 = getelementptr inbounds i8, ptr %argp.cur161, i32 8
  %33 = ptrtoint ptr %argp to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %argp.next43, ptr %argp, align 4
  %34 = ptrtoint ptr %argp.next162 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %argp.next162, align 4
  %add.ptr45 = getelementptr i8, ptr %buffer, i32 %35
  %call46 = call i32 @crypto_shash_update(ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr45, i32 noundef %32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end54.thread, label %for.cond

if.end54.thread:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.va_end(ptr nonnull %argp)
  br label %out

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end37.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ %call33, %if.end37.for.end_crit_edge ], [ %call46, %for.cond.for.end_crit_edge ]
  call void @llvm.va_end(ptr nonnull %argp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.lcssa)
  %tobool.not = icmp eq i32 %ret.0.lcssa, 0
  br i1 %tobool.not, label %if.end54, label %for.end.if.end58_crit_edge

for.end.if.end58_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end54:                                         ; preds = %for.end
  %call53 = call i32 @crypto_shash_final(ptr noundef nonnull %call9.i.i, ptr noundef nonnull %paramdigest) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp55 = icmp slt i32 %call53, 0
  br i1 %cmp55, label %if.end54.out_crit_edge, label %if.end54.if.end58_crit_edge

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end54.out_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end58:                                         ; preds = %if.end54.if.end58_crit_edge, %for.end.if.end58_crit_edge
  %call61 = call i32 (ptr, ptr, i32, ...) @TSS_rawhmac(ptr noundef nonnull %testhmac1, ptr noundef %key1, i32 noundef 20, i32 noundef 20, ptr noundef nonnull %paramdigest, i32 noundef 20, ptr noundef %add.ptr14, i32 noundef 20, ptr noundef %ononce, i32 noundef 1, ptr noundef %add.ptr12, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.end58.out_crit_edge, label %if.end65

if.end58.out_crit_edge:                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end65:                                         ; preds = %if.end58
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) %testhmac1, ptr noundef dereferenceable(20) %add.ptr9, i32 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool68.not = icmp eq i32 %bcmp, 0
  br i1 %tobool68.not, label %if.end70, label %if.end65.out_crit_edge

if.end65.out_crit_edge:                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end70:                                         ; preds = %if.end65
  %call73 = call i32 (ptr, ptr, i32, ...) @TSS_rawhmac(ptr noundef nonnull %testhmac2, ptr noundef %key2, i32 noundef 20, i32 noundef 20, ptr noundef nonnull %paramdigest, i32 noundef 20, ptr noundef %add.ptr15, i32 noundef 20, ptr noundef %ononce, i32 noundef 1, ptr noundef %add.ptr13, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end70.out_crit_edge, label %if.end77

if.end70.out_crit_edge:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %bcmp128 = call i32 @bcmp(ptr noundef nonnull dereferenceable(20) %testhmac2, ptr noundef dereferenceable(20) %add.ptr11, i32 20) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp128)
  %tobool80.not = icmp eq i32 %bcmp128, 0
  %spec.select = select i1 %tobool80.not, i32 %call73, i32 -22
  br label %out

out:                                              ; preds = %if.end77, %if.end70.out_crit_edge, %if.end65.out_crit_edge, %if.end58.out_crit_edge, %if.end54.out_crit_edge, %if.end54.thread, %if.end31.out_crit_edge, %if.end25.out_crit_edge, %crypto_shash_init.exit.out_crit_edge, %if.end20.out_crit_edge
  %ret.3 = phi i32 [ %call3.i, %crypto_shash_init.exit.out_crit_edge ], [ %call27, %if.end25.out_crit_edge ], [ %call33, %if.end31.out_crit_edge ], [ %call53, %if.end54.out_crit_edge ], [ %call61, %if.end58.out_crit_edge ], [ %call73, %if.end70.out_crit_edge ], [ -22, %if.end65.out_crit_edge ], [ %spec.select, %if.end77 ], [ %call46, %if.end54.thread ], [ -126, %if.end20.out_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then7 ], [ %17, %do.end ], [ %ret.3, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %argp) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %paramdigest) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %testhmac2) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %testhmac1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ordinal) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_key_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { cold }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 132, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @TSS_authhmac._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @TSS_authhmac._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @__ksymtab_TSS_authhmac, !7, !"__ksymtab_TSS_authhmac", i1 false, i1 false}
!7 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 165, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 208, i32 3}
!10 = !{ptr @TSS_checkhmac1._entry, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @TSS_checkhmac1._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_TSS_checkhmac1, !13, !"__ksymtab_TSS_checkhmac1", i1 false, i1 false}
!13 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 250, i32 1}
!14 = !{ptr @__ksymtab_trusted_tpm_send, !15, !"__ksymtab_trusted_tpm_send", i1 false, i1 false}
!15 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 372, i32 1}
!16 = !{ptr @__ksymtab_oiap, !17, !"__ksymtab_oiap", i1 false, i1 false}
!17 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 443, i32 1}
!18 = !{ptr @trusted_key_tpm_ops, !19, !"trusted_key_tpm_ops", i1 false, i1 false}
!19 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 1067, i32 24}
!20 = !{ptr @chip, !21, !"chip", i1 false, i1 false}
!21 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 27, i32 25}
!22 = !{ptr @hashalg, !23, !"hashalg", i1 false, i1 false}
!23 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 35, i32 29}
!24 = !{ptr @hash_alg, !25, !"hash_alg", i1 false, i1 false}
!25 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 26, i32 19}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 79, i32 3}
!28 = !{ptr @TSS_rawhmac._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @TSS_rawhmac._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @hmacalg, !31, !"hmacalg", i1 false, i1 false}
!31 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 36, i32 29}
!32 = !{ptr @hmac_alg, !33, !"hmac_alg", i1 false, i1 false}
!33 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 25, i32 19}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 995, i32 3}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @trusted_shash_alloc._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @trusted_shash_alloc._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @trusted_shash_alloc._entry.7, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 1002, i32 3}
!41 = !{ptr @trusted_shash_alloc._entry_ptr.8, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @digests, !43, !"digests", i1 false, i1 false}
!43 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 28, i32 27}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 917, i32 3}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @trusted_tpm_seal._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @trusted_tpm_seal._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 924, i32 4}
!51 = !{ptr @trusted_tpm_seal._entry.11, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @trusted_tpm_seal._entry_ptr.13, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 755, i32 25}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 839, i32 5}
!57 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @getoptions._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @getoptions._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 719, i32 18}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 720, i32 16}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 721, i32 17}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 722, i32 16}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 723, i32 16}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 724, i32 19}
!72 = !{ptr @.str.23, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 725, i32 13}
!74 = !{ptr @.str.24, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 726, i32 21}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 727, i32 21}
!78 = !{ptr @key_tokens, !79, !"key_tokens", i1 false, i1 false}
!79 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 718, i32 28}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 678, i32 3}
!82 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @key_seal._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @key_seal._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 59, i32 3}
!87 = !{ptr @TSS_sha1._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @TSS_sha1._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/tpm.h", i32 376, i32 3}
!91 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 962, i32 3}
!94 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @trusted_tpm_unseal._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @trusted_tpm_unseal._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @trusted_tpm_unseal._entry.33, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 967, i32 4}
!99 = !{ptr @trusted_tpm_unseal._entry_ptr.34, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 700, i32 3}
!102 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @key_unseal._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @key_unseal._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 595, i32 3}
!107 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @tpm_unseal._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @tpm_unseal._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @tpm_unseal._entry.39, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 600, i32 3}
!112 = !{ptr @tpm_unseal._entry_ptr.40, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 610, i32 3}
!115 = !{ptr @tpm_unseal._entry.41, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @tpm_unseal._entry_ptr.43, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.45, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 639, i32 3}
!119 = !{ptr @tpm_unseal._entry.44, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @tpm_unseal._entry_ptr.46, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 651, i32 3}
!123 = !{ptr @tpm_unseal._entry.47, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @tpm_unseal._entry_ptr.49, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../security/keys/trusted-keys/trusted_tpm1.c", i32 301, i32 3}
!127 = !{ptr @TSS_checkhmac2._entry, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @TSS_checkhmac2._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
!139 = !{!"branch_weights", i32 1, i32 2000}
