; ModuleID = '/llk/IR_all_yes/crypto/asymmetric_keys/asym_tpm.c_pt.bc'
source_filename = "../crypto/asymmetric_keys/asym_tpm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tpm_key_create\22, \22a\22\09"
module asm "\09.weak\09__crc_tpm_key_create\09\09\09\09"
module asm "\09.long\09__crc_tpm_key_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tpm_key_create:\09\09\09\09\09"
module asm "\09.asciz \09\22tpm_key_create\22\09\09\09\09\09"
module asm "__kstrtabns_tpm_key_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+asym_tpm_subtype\22, \22a\22\09"
module asm "\09.weak\09__crc_asym_tpm_subtype\09\09\09\09"
module asm "\09.long\09__crc_asym_tpm_subtype\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_asym_tpm_subtype:\09\09\09\09\09"
module asm "\09.asciz \09\22asym_tpm_subtype\22\09\09\09\09\09"
module asm "__kstrtabns_asym_tpm_subtype:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.asymmetric_key_subtype = type { ptr, ptr, i16, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.asn1_template = type { ptr, ptr, i32 }
%struct.tpm_key = type { ptr, i32, i16, ptr, i16 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.21, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.22, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.23, %union.anon.28, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.21 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.22 = type { i64 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.23 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.24, ptr, ptr, ptr }
%union.anon.24 = type { i32 }
%union.anon.28 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.kernel_pkey_params = type { ptr, ptr, ptr, ptr, i32, %union.anon.26, i8 }
%union.anon.26 = type { i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.kernel_pkey_query = type { i32, i32, i16, i16, i16, i16 }
%struct.tpm_buf = type { i32, ptr }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.akcipher_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }
%struct.tpm_header = type <{ i16, i32, %union.anon.77 }>
%union.anon.77 = type { i32 }
%struct.public_key_signature = type { [3 x ptr], ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }

@__kstrtab_tpm_key_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_tpm_key_create = external dso_local constant [0 x i8], align 1
@__ksymtab_tpm_key_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tpm_key_create to i32), ptr @__kstrtab_tpm_key_create, ptr @__kstrtabns_tpm_key_create }, section "___ksymtab_gpl+tpm_key_create", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asym_tpm\00", [23 x i8] zeroinitializer }, align 32
@asym_tpm_subtype = dso_local global { %struct.asymmetric_key_subtype, [32 x i8] } { %struct.asymmetric_key_subtype { ptr null, ptr @.str, i16 8, ptr @asym_tpm_describe, ptr @asym_tpm_destroy, ptr @tpm_key_query, ptr @tpm_key_eds_op, ptr @tpm_key_verify_signature }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_asym_tpm_subtype = external dso_local constant [0 x i8], align 1
@__kstrtabns_asym_tpm_subtype = external dso_local constant [0 x i8], align 1
@__ksymtab_asym_tpm_subtype = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @asym_tpm_subtype to i32), ptr @__kstrtab_asym_tpm_subtype, ptr @__kstrtabns_asym_tpm_subtype }, section "___ksymtab_gpl+asym_tpm_subtype", align 4
@__UNIQUE_ID_description244 = internal constant [54 x i8] c"asym_tpm.description=TPM based asymmetric key subtype\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [34 x i8] c"asym_tpm.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file246 = internal constant [46 x i8] c"asym_tpm.file=crypto/asymmetric_keys/asym_tpm\00", section ".modinfo", align 1
@__UNIQUE_ID_license247 = internal constant [24 x i8] c"asym_tpm.license=GPL v2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TPM1.2/Blob\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pkcs1\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pkcs1pad(rsa)\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pkcs1pad(rsa,%s)\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@__const.derive_pub_key.e = private unnamed_addr constant [3 x i8] c"\01\00\01", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@tpm_loadkey2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016trusted_key: oiap failed (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tpm_loadkey2\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"crypto/asymmetric_keys/asym_tpm.c\00", [62 x i8] zeroinitializer }, align 32
@tpm_loadkey2._entry_ptr = internal global ptr @tpm_loadkey2._entry, section ".printk_index", align 4
@tpm_loadkey2._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.10, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016trusted_key: tpm_get_random failed (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@tpm_loadkey2._entry_ptr.13 = internal global ptr @tpm_loadkey2._entry.11, section ".printk_index", align 4
@tpm_loadkey2._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.10, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016trusted_key: authhmac failed (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@tpm_loadkey2._entry_ptr.16 = internal global ptr @tpm_loadkey2._entry.14, section ".printk_index", align 4
@tpm_loadkey2._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.10, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016trusted_key: TSS_checkhmac1 failed (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@tpm_loadkey2._entry_ptr.19 = internal global ptr @tpm_loadkey2._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/tpm.h\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tpm_buf: overflow\0A\00", [45 x i8] zeroinitializer }, align 32
@tpm_unbind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.22, ptr @.str.10, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tpm_unbind\00", [21 x i8] zeroinitializer }, align 32
@tpm_unbind._entry_ptr = internal global ptr @tpm_unbind._entry, section ".printk_index", align 4
@tpm_unbind._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.22, ptr @.str.10, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tpm_unbind._entry_ptr.24 = internal global ptr @tpm_unbind._entry.23, section ".printk_index", align 4
@tpm_unbind._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.22, ptr @.str.10, i32 159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tpm_unbind._entry_ptr.26 = internal global ptr @tpm_unbind._entry.25, section ".printk_index", align 4
@tpm_unbind._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.22, ptr @.str.10, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tpm_unbind._entry_ptr.28 = internal global ptr @tpm_unbind._entry.27, section ".printk_index", align 4
@asn1_templates = internal constant { [8 x %struct.asn1_template], [32 x i8] } { [8 x %struct.asn1_template] [%struct.asn1_template { ptr @.str.29, ptr @digest_info_md5, i32 18 }, %struct.asn1_template { ptr @.str.30, ptr @digest_info_sha1, i32 15 }, %struct.asn1_template { ptr @.str.31, ptr @digest_info_rmd160, i32 15 }, %struct.asn1_template { ptr @.str.32, ptr @digest_info_sha256, i32 19 }, %struct.asn1_template { ptr @.str.33, ptr @digest_info_sha384, i32 19 }, %struct.asn1_template { ptr @.str.34, ptr @digest_info_sha512, i32 19 }, %struct.asn1_template { ptr @.str.35, ptr @digest_info_sha224, i32 19 }, %struct.asn1_template zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@digest_info_md5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"0 0\0C\06\08*\86H\86\F7\0D\02\05\05\00\04\10", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@digest_info_sha1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0!0\09\06\05+\0E\03\02\1A\05\00\04\14", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rmd160\00", [25 x i8] zeroinitializer }, align 32
@digest_info_rmd160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0!0\09\06\05+$\03\02\01\05\00\04\14", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@digest_info_sha256 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"010\0D\06\09`\86H\01e\03\04\02\01\05\00\04 ", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha384\00", [25 x i8] zeroinitializer }, align 32
@digest_info_sha384 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0A0\0D\06\09`\86H\01e\03\04\02\02\05\00\040", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha512\00", [25 x i8] zeroinitializer }, align 32
@digest_info_sha512 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0Q0\0D\06\09`\86H\01e\03\04\02\03\05\00\04@", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha224\00", [25 x i8] zeroinitializer }, align 32
@digest_info_sha224 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0-0\0D\06\09`\86H\01e\03\04\02\04\05\00\04\1C", [45 x i8] zeroinitializer }, align 32
@tpm_sign._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.36, ptr @.str.10, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tpm_sign\00", [23 x i8] zeroinitializer }, align 32
@tpm_sign._entry_ptr = internal global ptr @tpm_sign._entry, section ".printk_index", align 4
@tpm_sign._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.36, ptr @.str.10, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tpm_sign._entry_ptr.38 = internal global ptr @tpm_sign._entry.37, section ".printk_index", align 4
@tpm_sign._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.36, ptr @.str.10, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tpm_sign._entry_ptr.40 = internal global ptr @tpm_sign._entry.39, section ".printk_index", align 4
@tpm_sign._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.36, ptr @.str.10, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tpm_sign._entry_ptr.42 = internal global ptr @tpm_sign._entry.41, section ".printk_index", align 4
@tpm_key_verify_signature.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 945, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"asym_tpm_subtype\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 943, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 292, i32 16 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 368, i32 23 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 370, i32 21 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 374, i32 47 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 381, i32 23 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 87, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 48, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 55, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 77, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 84, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"../include/linux/tpm.h\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 376, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 128, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 135, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 159, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 171, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant [15 x i8] c"asn1_templates\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 601, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 603, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"digest_info_md5\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 555, i32 17 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 604, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"digest_info_sha1\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 561, i32 17 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 605, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [19 x i8] c"digest_info_rmd160\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 567, i32 17 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 606, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [19 x i8] c"digest_info_sha256\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 579, i32 17 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 607, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [19 x i8] c"digest_info_sha384\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 585, i32 17 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 608, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [19 x i8] c"digest_info_sha512\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 591, i32 17 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 609, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"digest_info_sha224\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 573, i32 17 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 211, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 218, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 242, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private constant [37 x i8] c"../crypto/asymmetric_keys/asym_tpm.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 254, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file246, ptr @__UNIQUE_ID_license247, ptr @__ksymtab_asym_tpm_subtype, ptr @__ksymtab_tpm_key_create, ptr @tpm_loadkey2._entry, ptr @tpm_loadkey2._entry.11, ptr @tpm_loadkey2._entry.14, ptr @tpm_loadkey2._entry.17, ptr @tpm_loadkey2._entry_ptr, ptr @tpm_loadkey2._entry_ptr.13, ptr @tpm_loadkey2._entry_ptr.16, ptr @tpm_loadkey2._entry_ptr.19, ptr @tpm_sign._entry, ptr @tpm_sign._entry.37, ptr @tpm_sign._entry.39, ptr @tpm_sign._entry.41, ptr @tpm_sign._entry_ptr, ptr @tpm_sign._entry_ptr.38, ptr @tpm_sign._entry_ptr.40, ptr @tpm_sign._entry_ptr.42, ptr @tpm_unbind._entry, ptr @tpm_unbind._entry.23, ptr @tpm_unbind._entry.25, ptr @tpm_unbind._entry.27, ptr @tpm_unbind._entry_ptr, ptr @tpm_unbind._entry_ptr.24, ptr @tpm_unbind._entry_ptr.26, ptr @tpm_unbind._entry_ptr.28, ptr @.str, ptr @asym_tpm_subtype, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @init_completion.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @asn1_templates, ptr @.str.29, ptr @digest_info_md5, ptr @.str.30, ptr @digest_info_sha1, ptr @.str.31, ptr @digest_info_rmd160, ptr @.str.32, ptr @digest_info_sha256, ptr @.str.33, ptr @digest_info_sha384, ptr @.str.34, ptr @digest_info_sha512, ptr @.str.35, ptr @digest_info_sha224, ptr @.str.36], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asym_tpm_subtype to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_loadkey2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_loadkey2._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_loadkey2._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_loadkey2._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_unbind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_unbind._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_unbind._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_unbind._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asn1_templates to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digest_info_md5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digest_info_sha1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digest_info_rmd160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digest_info_sha256 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digest_info_sha384 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digest_info_sha512 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digest_info_sha224 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_sign._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_sign._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_sign._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tpm_sign._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tpm_key_create(ptr noundef %blob, i32 noundef %blob_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tpm_is_tpm2(ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end3.error_crit_edge, label %if.end6

if.end3.error_crit_edge:                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end6:                                          ; preds = %if.end3
  %call7 = tail call ptr @kmemdup(ptr noundef %blob, i32 noundef %blob_len, i32 noundef 3264) #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %call7.i.i, align 8
  %tobool10.not = icmp eq ptr %call7, null
  br i1 %tobool10.not, label %if.end6.error_memdup_crit_edge, label %if.end12

if.end6.error_memdup_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_memdup

if.end12:                                         ; preds = %if.end6
  %blob_len13 = getelementptr inbounds %struct.tpm_key, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %blob_len13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %blob_len, ptr %blob_len13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %blob_len)
  %cmp.i = icmp ult i32 %blob_len, 11
  br i1 %cmp.i, label %if.end12.error_extract_crit_edge, label %if.end.i

if.end12.error_extract_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_extract

if.end.i:                                         ; preds = %if.end12
  %add.ptr.i = getelementptr i8, ptr %call7, i32 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %4)
  %cmp1.not.i = icmp eq i16 %4, 21
  br i1 %cmp1.not.i, label %if.end4.i, label %if.end.i.error_extract_crit_edge

if.end.i.error_extract_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_extract

if.end4.i:                                        ; preds = %if.end.i
  %sub.i = add i32 %blob_len, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i)
  %cmp6.i = icmp ult i32 %sub.i, 12
  br i1 %cmp6.i, label %if.end4.i.error_extract_crit_edge, label %if.end9.i

if.end4.i.error_extract_crit_edge:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_extract

if.end9.i:                                        ; preds = %if.end4.i
  %add.ptr5.i = getelementptr i8, ptr %call7, i32 11
  %5 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %add.ptr5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp11.not.i = icmp eq i32 %6, 1
  br i1 %cmp11.not.i, label %if.end14.i, label %if.end9.i.error_extract_crit_edge

if.end9.i.error_extract_crit_edge:                ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_extract

if.end14.i:                                       ; preds = %if.end9.i
  %add.ptr15.i = getelementptr i8, ptr %call7, i32 15
  %7 = ptrtoint ptr %add.ptr15.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %add.ptr15.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %8)
  %cmp18.not.i = icmp eq i16 %8, 2
  br i1 %cmp18.not.i, label %if.end21.i, label %if.end14.i.error_extract_crit_edge

if.end14.i.error_extract_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_extract

if.end21.i:                                       ; preds = %if.end14.i
  %add.ptr22.i = getelementptr i8, ptr %call7, i32 17
  %9 = ptrtoint ptr %add.ptr22.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %10)
  %cmp25.not.i = icmp eq i16 %10, 3
  br i1 %cmp25.not.i, label %if.end28.i, label %if.end21.i.error_extract_crit_edge

if.end21.i.error_extract_crit_edge:               ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_extract

if.end28.i:                                       ; preds = %if.end21.i
  %add.ptr29.i = getelementptr i8, ptr %call7, i32 19
  %11 = ptrtoint ptr %add.ptr29.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %add.ptr29.i, align 1
  %add.i = add i32 %12, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add.i)
  %cmp31.i = icmp ult i32 %sub.i, %add.i
  br i1 %cmp31.i, label %if.end28.i.error_extract_crit_edge, label %if.end34.i

if.end28.i.error_extract_crit_edge:               ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_extract

if.end34.i:                                       ; preds = %if.end28.i
  %add.ptr36.i = getelementptr i8, ptr %call7, i32 23
  %13 = ptrtoint ptr %add.ptr36.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr36.i, align 1
  %15 = add i32 %14, -512
  %16 = tail call i32 @llvm.fshl.i32(i32 %15, i32 %15, i32 23) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %switch.i = icmp ult i32 %16, 4
  br i1 %switch.i, label %sw.epilog.i, label %if.end34.i.error_extract_crit_edge

if.end34.i.error_extract_crit_edge:               ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_extract

sw.epilog.i:                                      ; preds = %if.end34.i
  %sub35.i = add i32 %blob_len, -23
  %add.ptr38.i = getelementptr i8, ptr %add.ptr36.i, i32 %12
  %sub39.i = sub i32 %sub35.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub39.i)
  %cmp40.i = icmp ult i32 %sub39.i, 4
  br i1 %cmp40.i, label %sw.epilog.i.error_extract_crit_edge, label %if.end43.i

sw.epilog.i.error_extract_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_extract

if.end43.i:                                       ; preds = %sw.epilog.i
  %17 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %18 = load i32, ptr %add.ptr38.i, align 1
  %add45.i = add i32 %18, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub39.i, i32 %add45.i)
  %cmp46.i = icmp ult i32 %sub39.i, %add45.i
  br i1 %cmp46.i, label %if.end43.i.error_extract_crit_edge, label %if.end49.i

if.end43.i.error_extract_crit_edge:               ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_extract

if.end49.i:                                       ; preds = %if.end43.i
  %add.ptr51.i = getelementptr i8, ptr %add.ptr38.i, i32 %add45.i
  %19 = ptrtoint ptr %add.ptr51.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %add.ptr51.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %20)
  %cmp55.i = icmp ugt i32 %20, 256
  br i1 %cmp55.i, label %if.end49.i.error_extract_crit_edge, label %extract_key_parameters.exit

if.end49.i.error_extract_crit_edge:               ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_extract

extract_key_parameters.exit:                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr59.i = getelementptr i8, ptr %add.ptr51.i, i32 4
  %conv60.i = trunc i32 %14 to i16
  %key_len61.i = getelementptr inbounds %struct.tpm_key, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %key_len61.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv60.i, ptr %key_len61.i, align 8
  %pub_key62.i = getelementptr inbounds %struct.tpm_key, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %pub_key62.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr59.i, ptr %pub_key62.i, align 4
  %conv63.i = trunc i32 %20 to i16
  %pub_key_len.i = getelementptr inbounds %struct.tpm_key, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %pub_key_len.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv63.i, ptr %pub_key_len.i, align 8
  br label %cleanup

error_extract:                                    ; preds = %if.end49.i.error_extract_crit_edge, %if.end43.i.error_extract_crit_edge, %sw.epilog.i.error_extract_crit_edge, %if.end34.i.error_extract_crit_edge, %if.end28.i.error_extract_crit_edge, %if.end21.i.error_extract_crit_edge, %if.end14.i.error_extract_crit_edge, %if.end9.i.error_extract_crit_edge, %if.end4.i.error_extract_crit_edge, %if.end.i.error_extract_crit_edge, %if.end12.error_extract_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end49.i.error_extract_crit_edge ], [ -74, %if.end43.i.error_extract_crit_edge ], [ -74, %sw.epilog.i.error_extract_crit_edge ], [ -22, %if.end34.i.error_extract_crit_edge ], [ -74, %if.end28.i.error_extract_crit_edge ], [ -74, %if.end21.i.error_extract_crit_edge ], [ -74, %if.end14.i.error_extract_crit_edge ], [ -74, %if.end9.i.error_extract_crit_edge ], [ -74, %if.end4.i.error_extract_crit_edge ], [ -74, %if.end.i.error_extract_crit_edge ], [ -74, %if.end12.error_extract_crit_edge ]
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %25) #9
  %26 = ptrtoint ptr %blob_len13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %blob_len13, align 4
  br label %error_memdup

error_memdup:                                     ; preds = %error_extract, %if.end6.error_memdup_crit_edge
  %r.0 = phi i32 [ %retval.0.i.ph, %error_extract ], [ -12, %if.end6.error_memdup_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %error

error:                                            ; preds = %error_memdup, %if.end3.error_crit_edge, %if.end.error_crit_edge, %entry.error_crit_edge
  %r.1 = phi i32 [ %call, %entry.error_crit_edge ], [ %r.0, %error_memdup ], [ -12, %if.end3.error_crit_edge ], [ -19, %if.end.error_crit_edge ]
  %27 = inttoptr i32 %r.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %error, %extract_key_parameters.exit
  %retval.0 = phi ptr [ %27, %error ], [ %call7.i.i, %extract_key_parameters.exit ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_is_tpm2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asym_tpm_describe(ptr nocapture noundef readonly %asymmetric_key, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %asymmetric_key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @asym_tpm_destroy(ptr noundef %payload0, ptr nocapture noundef readnone %payload3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %payload0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %payload0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %payload0, align 4
  tail call void @kfree(ptr noundef %1) #9
  %blob_len = getelementptr inbounds %struct.tpm_key, ptr %payload0, i32 0, i32 1
  %2 = ptrtoint ptr %blob_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %blob_len, align 4
  tail call void @kfree(ptr noundef nonnull %payload0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_key_query(ptr nocapture noundef readonly %params, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  %alg_name = alloca [128 x i8], align 4
  %der_pub_key = alloca [278 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %2 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %alg_name) #9
  %5 = call ptr @memset(ptr %alg_name, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 278, ptr nonnull %der_pub_key) #9
  %6 = getelementptr inbounds i8, ptr %der_pub_key, i32 1
  %7 = call ptr @memset(ptr %6, i32 255, i32 277)
  %encoding = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 1
  %8 = ptrtoint ptr %encoding to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %encoding, align 4
  %hash_algo = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 2
  %10 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash_algo, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(6) @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %entry
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call ptr @memcpy(ptr %alg_name, ptr @.str.3, i32 14)
  br label %if.end

if.end.i:                                         ; preds = %if.then.i
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %alg_name, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef nonnull %11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call3.i)
  %cmp4.i = icmp sgt i32 %call3.i, 127
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %entry
  %call8.i = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(4) @.str.5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %alg_name to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1920164096, ptr %alg_name, align 4
  br label %if.end

if.end:                                           ; preds = %if.then10.i, %if.end.i.if.end_crit_edge, %if.then1.i
  %call2 = call ptr @crypto_alloc_akcipher(ptr noundef nonnull %alg_name, i32 noundef 0, i32 noundef 0) #9
  %cmp.i51 = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %pub_key = getelementptr inbounds %struct.tpm_key, ptr %4, i32 0, i32 3
  %15 = ptrtoint ptr %pub_key to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pub_key, align 4
  %pub_key_len = getelementptr inbounds %struct.tpm_key, ptr %4, i32 0, i32 4
  %17 = ptrtoint ptr %pub_key_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pub_key_len, align 4
  %conv = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %18)
  %cmp.i.i = icmp ult i16 %18, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %18)
  %cmp1.i.i = icmp ult i16 %18, 256
  %..i.op.i = select i1 %cmp1.i.i, i32 3, i32 4
  %add.i = select i1 %cmp.i.i, i32 2, i32 %..i.op.i
  %add1.i = add nuw nsw i32 %conv, 6
  %add6.i = add nuw nsw i32 %add1.i, %add.i
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %der_pub_key, i32 1
  %19 = ptrtoint ptr %der_pub_key to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 48, ptr %der_pub_key, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add6.i)
  %cmp.i28.i = icmp ult i32 %add6.i, 128
  br i1 %cmp.i28.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = trunc i32 %add6.i to i8
  %20 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i.i, ptr %incdec.ptr.i.i, align 1
  br label %encode_tag_length.exit.i

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add6.i)
  %cmp1.i29.i = icmp ult i32 %add6.i, 256
  br i1 %cmp1.i29.i, label %if.then3.i.i, label %if.end8.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -127, ptr %incdec.ptr.i.i, align 1
  %conv5.i.i = trunc i32 %add6.i to i8
  %arrayidx6.i.i = getelementptr inbounds i8, ptr %der_pub_key, i32 2
  %22 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv5.i.i, ptr %arrayidx6.i.i, align 1
  br label %encode_tag_length.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -126, ptr %incdec.ptr.i.i, align 1
  %conv10.i.i = trunc i32 %add6.i to i16
  %add.ptr11.i.i = getelementptr inbounds i8, ptr %der_pub_key, i32 2
  %24 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %conv10.i.i, ptr %add.ptr11.i.i, align 1
  br label %encode_tag_length.exit.i

encode_tag_length.exit.i:                         ; preds = %if.end8.i.i, %if.then3.i.i, %if.then.i.i
  %.sink.i.i = phi i32 [ 4, %if.end8.i.i ], [ 3, %if.then3.i.i ], [ 2, %if.then.i.i ]
  %add.ptr12.i.i = getelementptr i8, ptr %der_pub_key, i32 %.sink.i.i
  %add8.i = add nuw nsw i32 %conv, 1
  %incdec.ptr.i30.i = getelementptr i8, ptr %add.ptr12.i.i, i32 1
  %25 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %add.ptr12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %18)
  %cmp.i31.i = icmp ult i16 %18, 127
  br i1 %cmp.i31.i, label %if.then.i33.i, label %if.end.i35.i

if.then.i33.i:                                    ; preds = %encode_tag_length.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i32.i = trunc i32 %add8.i to i8
  %26 = ptrtoint ptr %incdec.ptr.i30.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i32.i, ptr %incdec.ptr.i30.i, align 1
  br label %derive_pub_key.exit

if.end.i35.i:                                     ; preds = %encode_tag_length.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %18)
  %cmp1.i34.i = icmp ult i16 %18, 255
  br i1 %cmp1.i34.i, label %if.then3.i38.i, label %if.end8.i41.i

if.then3.i38.i:                                   ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %incdec.ptr.i30.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -127, ptr %incdec.ptr.i30.i, align 1
  %conv5.i36.i = trunc i32 %add8.i to i8
  %arrayidx6.i37.i = getelementptr i8, ptr %add.ptr12.i.i, i32 2
  %28 = ptrtoint ptr %arrayidx6.i37.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv5.i36.i, ptr %arrayidx6.i37.i, align 1
  br label %derive_pub_key.exit

if.end8.i41.i:                                    ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %incdec.ptr.i30.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -126, ptr %incdec.ptr.i30.i, align 1
  %conv10.i39.i = trunc i32 %add8.i to i16
  %add.ptr11.i40.i = getelementptr i8, ptr %add.ptr12.i.i, i32 2
  %30 = ptrtoint ptr %add.ptr11.i40.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %conv10.i39.i, ptr %add.ptr11.i40.i, align 1
  br label %derive_pub_key.exit

derive_pub_key.exit:                              ; preds = %if.end8.i41.i, %if.then3.i38.i, %if.then.i33.i
  %.sink.i42.i = phi i32 [ 4, %if.end8.i41.i ], [ 3, %if.then3.i38.i ], [ 2, %if.then.i33.i ]
  %add.ptr12.i43.i = getelementptr i8, ptr %add.ptr12.i.i, i32 %.sink.i42.i
  %31 = ptrtoint ptr %add.ptr12.i43.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %add.ptr12.i43.i, align 1
  %add.ptr.i = getelementptr i8, ptr %add.ptr12.i43.i, i32 1
  %32 = call ptr @memcpy(ptr %add.ptr.i, ptr %16, i32 %conv)
  %add.ptr11.i = getelementptr i8, ptr %add.ptr12.i43.i, i32 %add8.i
  %incdec.ptr.i45.i = getelementptr i8, ptr %add.ptr11.i, i32 1
  %33 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 2, ptr %add.ptr11.i, align 1
  %34 = ptrtoint ptr %incdec.ptr.i45.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 3, ptr %incdec.ptr.i45.i, align 1
  %add.ptr12.i48.i = getelementptr i8, ptr %add.ptr11.i, i32 2
  %35 = call ptr @memcpy(ptr %add.ptr12.i48.i, ptr @__const.derive_pub_key.e, i32 3)
  %add.ptr13.i = getelementptr i8, ptr %add.ptr12.i48.i, i32 3
  %36 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 8)
  store i64 0, ptr %add.ptr13.i, align 1
  call void asm sideeffect "", "r,~{memory}"(ptr %add.ptr13.i) #9, !srcloc !118
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr13.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %der_pub_key to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %call2, i32 0, i32 3
  %37 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__crt_alg.i.i, align 4
  %set_pub_key.i = getelementptr i8, ptr %38, i32 -112
  %39 = ptrtoint ptr %set_pub_key.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set_pub_key.i, align 16
  %call1.i = call i32 %40(ptr noundef %call2, ptr noundef nonnull %der_pub_key, i32 noundef %sub.ptr.sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp11 = icmp slt i32 %call1.i, 0
  br i1 %cmp11, label %derive_pub_key.exit.error_free_tfm_crit_edge, label %if.end14

derive_pub_key.exit.error_free_tfm_crit_edge:     ; preds = %derive_pub_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_tfm

if.end14:                                         ; preds = %derive_pub_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %__crt_alg.i.i, align 4
  %max_size.i = getelementptr i8, ptr %42, i32 -104
  %43 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %max_size.i, align 8
  %call1.i53 = call i32 %44(ptr noundef %call2) #9
  %key_len = getelementptr inbounds %struct.tpm_key, ptr %4, i32 0, i32 2
  %45 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %key_len, align 4
  %conv16 = zext i16 %46 to i32
  %key_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 1
  %47 = ptrtoint ptr %key_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv16, ptr %key_size, align 4
  %48 = load i16, ptr %key_len, align 4
  %49 = lshr i16 %48, 3
  %max_data_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 2
  %50 = ptrtoint ptr %max_data_size to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %max_data_size, align 4
  %conv20 = trunc i32 %call1.i53 to i16
  %max_sig_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 3
  %51 = ptrtoint ptr %max_sig_size to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv20, ptr %max_sig_size, align 2
  %max_enc_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 4
  %52 = ptrtoint ptr %max_enc_size to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv20, ptr %max_enc_size, align 4
  %53 = load i16, ptr %key_len, align 4
  %54 = lshr i16 %53, 3
  %max_dec_size = getelementptr inbounds %struct.kernel_pkey_query, ptr %info, i32 0, i32 5
  %55 = ptrtoint ptr %max_dec_size to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %max_dec_size, align 2
  %56 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 15, ptr %info, align 4
  br label %error_free_tfm

error_free_tfm:                                   ; preds = %if.end14, %derive_pub_key.exit.error_free_tfm_crit_edge
  %ret.0 = phi i32 [ %call1.i, %derive_pub_key.exit.error_free_tfm_crit_edge ], [ 0, %if.end14 ]
  call void @crypto_destroy_tfm(ptr noundef %call2, ptr noundef %call2) #9
  br label %cleanup

cleanup:                                          ; preds = %error_free_tfm, %if.then4, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then4 ], [ %ret.0, %error_free_tfm ], [ -65, %if.end7.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 278, ptr nonnull %der_pub_key) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %alg_name) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_key_eds_op(ptr nocapture noundef readonly %params, ptr noundef %in, ptr noundef %out) #0 align 64 {
entry:
  %nonceodd.i.i36 = alloca [20 x i8], align 1
  %enonce.i.i37 = alloca [20 x i8], align 1
  %authdata.i.i38 = alloca [20 x i8], align 1
  %authhandle.i.i39 = alloca i32, align 4
  %ordinal.i.i40 = alloca i32, align 4
  %datalen.i.i41 = alloca i32, align 4
  %tb.i42 = alloca %struct.tpm_buf, align 4
  %keyhandle.i43 = alloca i32, align 4
  %srkauth.i44 = alloca [20 x i8], align 1
  %keyauth.i45 = alloca [20 x i8], align 1
  %nonceodd.i.i = alloca [20 x i8], align 1
  %enonce.i.i = alloca [20 x i8], align 1
  %authdata.i.i = alloca [20 x i8], align 1
  %authhandle.i.i = alloca i32, align 4
  %ordinal.i.i = alloca i32, align 4
  %datalen.i.i = alloca i32, align 4
  %tb.i = alloca %struct.tpm_buf, align 4
  %keyhandle.i = alloca i32, align 4
  %srkauth.i = alloca [20 x i8], align 1
  %keyauth.i = alloca [20 x i8], align 1
  %alg_name.i = alloca [128 x i8], align 4
  %cwait.i = alloca %struct.crypto_wait, align 4
  %in_sg.i = alloca %struct.scatterlist, align 4
  %out_sg.i = alloca %struct.scatterlist, align 4
  %der_pub_key.i = alloca [278 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params, align 4
  %2 = getelementptr inbounds %struct.key, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %op = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 6
  %5 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load18 = load i8, ptr %op, align 4
  %6 = zext i8 %bf.load18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bf.load18, label %do.body [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %alg_name.i) #9
  %7 = call ptr @memset(ptr %alg_name.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cwait.i) #9
  %8 = call ptr @memset(ptr %cwait.i, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %in_sg.i) #9
  %9 = call ptr @memset(ptr %in_sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %out_sg.i) #9
  %10 = call ptr @memset(ptr %out_sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 278, ptr nonnull %der_pub_key.i) #9
  %11 = getelementptr inbounds i8, ptr %der_pub_key.i, i32 1
  %12 = call ptr @memset(ptr %11, i32 255, i32 277)
  %encoding.i = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 1
  %13 = ptrtoint ptr %encoding.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %encoding.i, align 4
  %hash_algo.i = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 2
  %15 = ptrtoint ptr %hash_algo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hash_algo.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(6) @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end7.i.i

if.then.i.i:                                      ; preds = %sw.bb
  %tobool.not.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i, label %if.then1.i.i, label %if.end.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = call ptr @memcpy(ptr %alg_name.i, ptr @.str.3, i32 14)
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %call3.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %alg_name.i, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef nonnull %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call3.i.i)
  %cmp4.i.i = icmp sgt i32 %call3.i.i, 127
  br i1 %cmp4.i.i, label %if.end.i.i.tpm_key_encrypt.exit_crit_edge, label %if.end.i.i.if.end.i_crit_edge

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i.i.tpm_key_encrypt.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_key_encrypt.exit

if.end7.i.i:                                      ; preds = %sw.bb
  %call8.i.i = tail call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(4) @.str.5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp9.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end7.i.i.tpm_key_encrypt.exit_crit_edge

if.end7.i.i.tpm_key_encrypt.exit_crit_edge:       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_key_encrypt.exit

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %alg_name.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1920164096, ptr %alg_name.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i.i, %if.end.i.i.if.end.i_crit_edge, %if.then1.i.i
  %call2.i = call ptr @crypto_alloc_akcipher(ptr noundef nonnull %alg_name.i, i32 noundef 0, i32 noundef 0) #9
  %cmp.i54.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i54.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call2.i to i32
  br label %tpm_key_encrypt.exit

if.end6.i:                                        ; preds = %if.end.i
  %pub_key.i = getelementptr inbounds %struct.tpm_key, ptr %4, i32 0, i32 3
  %20 = ptrtoint ptr %pub_key.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pub_key.i, align 4
  %pub_key_len.i = getelementptr inbounds %struct.tpm_key, ptr %4, i32 0, i32 4
  %22 = ptrtoint ptr %pub_key_len.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %pub_key_len.i, align 4
  %conv.i = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %23)
  %cmp.i.i.i = icmp ult i16 %23, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %23)
  %cmp1.i.i.i = icmp ult i16 %23, 256
  %..i.op.i.i = select i1 %cmp1.i.i.i, i32 3, i32 4
  %add.i.i = select i1 %cmp.i.i.i, i32 2, i32 %..i.op.i.i
  %add1.i.i = add nuw nsw i32 %conv.i, 6
  %add6.i.i = add nuw nsw i32 %add1.i.i, %add.i.i
  %24 = ptrtoint ptr %der_pub_key.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 48, ptr %der_pub_key.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add6.i.i)
  %cmp.i28.i.i = icmp ult i32 %add6.i.i, 128
  br i1 %cmp.i28.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i = trunc i32 %add6.i.i to i8
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv.i.i.i, ptr %11, align 1
  br label %encode_tag_length.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add6.i.i)
  %cmp1.i29.i.i = icmp ult i32 %add6.i.i, 256
  br i1 %cmp1.i29.i.i, label %if.then3.i.i.i, label %if.end8.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -127, ptr %11, align 1
  %conv5.i.i.i = trunc i32 %add6.i.i to i8
  %arrayidx6.i.i.i = getelementptr inbounds i8, ptr %der_pub_key.i, i32 2
  %27 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv5.i.i.i, ptr %arrayidx6.i.i.i, align 1
  br label %encode_tag_length.exit.i.i

if.end8.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -126, ptr %11, align 1
  %conv10.i.i.i = trunc i32 %add6.i.i to i16
  %add.ptr11.i.i.i = getelementptr inbounds i8, ptr %der_pub_key.i, i32 2
  %29 = ptrtoint ptr %add.ptr11.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %conv10.i.i.i, ptr %add.ptr11.i.i.i, align 1
  br label %encode_tag_length.exit.i.i

encode_tag_length.exit.i.i:                       ; preds = %if.end8.i.i.i, %if.then3.i.i.i, %if.then.i.i.i
  %.sink.i.i.i = phi i32 [ 4, %if.end8.i.i.i ], [ 3, %if.then3.i.i.i ], [ 2, %if.then.i.i.i ]
  %add.ptr12.i.i.i = getelementptr i8, ptr %der_pub_key.i, i32 %.sink.i.i.i
  %add8.i.i = add nuw nsw i32 %conv.i, 1
  %incdec.ptr.i30.i.i = getelementptr i8, ptr %add.ptr12.i.i.i, i32 1
  %30 = ptrtoint ptr %add.ptr12.i.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %add.ptr12.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %23)
  %cmp.i31.i.i = icmp ult i16 %23, 127
  br i1 %cmp.i31.i.i, label %if.then.i33.i.i, label %if.end.i35.i.i

if.then.i33.i.i:                                  ; preds = %encode_tag_length.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i32.i.i = trunc i32 %add8.i.i to i8
  %31 = ptrtoint ptr %incdec.ptr.i30.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.i32.i.i, ptr %incdec.ptr.i30.i.i, align 1
  br label %derive_pub_key.exit.i

if.end.i35.i.i:                                   ; preds = %encode_tag_length.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %23)
  %cmp1.i34.i.i = icmp ult i16 %23, 255
  br i1 %cmp1.i34.i.i, label %if.then3.i38.i.i, label %if.end8.i41.i.i

if.then3.i38.i.i:                                 ; preds = %if.end.i35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %incdec.ptr.i30.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -127, ptr %incdec.ptr.i30.i.i, align 1
  %conv5.i36.i.i = trunc i32 %add8.i.i to i8
  %arrayidx6.i37.i.i = getelementptr i8, ptr %add.ptr12.i.i.i, i32 2
  %33 = ptrtoint ptr %arrayidx6.i37.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv5.i36.i.i, ptr %arrayidx6.i37.i.i, align 1
  br label %derive_pub_key.exit.i

if.end8.i41.i.i:                                  ; preds = %if.end.i35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %incdec.ptr.i30.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -126, ptr %incdec.ptr.i30.i.i, align 1
  %conv10.i39.i.i = trunc i32 %add8.i.i to i16
  %add.ptr11.i40.i.i = getelementptr i8, ptr %add.ptr12.i.i.i, i32 2
  %35 = ptrtoint ptr %add.ptr11.i40.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %conv10.i39.i.i, ptr %add.ptr11.i40.i.i, align 1
  br label %derive_pub_key.exit.i

derive_pub_key.exit.i:                            ; preds = %if.end8.i41.i.i, %if.then3.i38.i.i, %if.then.i33.i.i
  %.sink.i42.i.i = phi i32 [ 4, %if.end8.i41.i.i ], [ 3, %if.then3.i38.i.i ], [ 2, %if.then.i33.i.i ]
  %add.ptr12.i43.i.i = getelementptr i8, ptr %add.ptr12.i.i.i, i32 %.sink.i42.i.i
  %36 = ptrtoint ptr %add.ptr12.i43.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %add.ptr12.i43.i.i, align 1
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr12.i43.i.i, i32 1
  %37 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %21, i32 %conv.i)
  %add.ptr11.i.i = getelementptr i8, ptr %add.ptr12.i43.i.i, i32 %add8.i.i
  %incdec.ptr.i45.i.i = getelementptr i8, ptr %add.ptr11.i.i, i32 1
  %38 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 2, ptr %add.ptr11.i.i, align 1
  %39 = ptrtoint ptr %incdec.ptr.i45.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 3, ptr %incdec.ptr.i45.i.i, align 1
  %add.ptr12.i48.i.i = getelementptr i8, ptr %add.ptr11.i.i, i32 2
  %40 = call ptr @memcpy(ptr %add.ptr12.i48.i.i, ptr @__const.derive_pub_key.e, i32 3)
  %add.ptr13.i.i = getelementptr i8, ptr %add.ptr12.i48.i.i, i32 3
  %41 = ptrtoint ptr %add.ptr13.i.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 0, ptr %add.ptr13.i.i, align 1
  call void asm sideeffect "", "r,~{memory}"(ptr %add.ptr13.i.i) #9, !srcloc !118
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr13.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %der_pub_key.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %call2.i, i32 0, i32 3
  %42 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %set_pub_key.i.i = getelementptr i8, ptr %43, i32 -112
  %44 = ptrtoint ptr %set_pub_key.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %set_pub_key.i.i, align 16
  %call1.i.i = call i32 %45(ptr noundef %call2.i, ptr noundef nonnull %der_pub_key.i, i32 noundef %sub.ptr.sub.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp11.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp11.i, label %derive_pub_key.exit.i.error_free_tfm.i_crit_edge, label %if.end8.i.i60.i

derive_pub_key.exit.i.error_free_tfm.i_crit_edge: ; preds = %derive_pub_key.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_tfm.i

if.end8.i.i60.i:                                  ; preds = %derive_pub_key.exit.i
  %46 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %reqsize.i.i.i = getelementptr i8, ptr %47, i32 -92
  %48 = ptrtoint ptr %reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reqsize.i.i.i, align 4
  %add.i55.i = add i32 %49, 128
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i55.i, i32 noundef 3264) #14
  %tobool.not.i61.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i61.i, label %if.end8.i.i60.i.error_free_tfm.i_crit_edge, label %if.end17.i, !prof !119

if.end8.i.i60.i.error_free_tfm.i_crit_edge:       ; preds = %if.end8.i.i60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_tfm.i

if.end17.i:                                       ; preds = %if.end8.i.i60.i
  %tfm1.i.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 3
  %50 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call2.i, ptr %tfm1.i.i.i, align 16
  %in_len.i = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 4
  %51 = ptrtoint ptr %in_len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %in_len.i, align 4
  call void @sg_init_one(ptr noundef nonnull %in_sg.i, ptr noundef %in, i32 noundef %52) #9
  %53 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 5
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  call void @sg_init_one(ptr noundef nonnull %out_sg.i, ptr noundef %out, i32 noundef %55) #9
  %56 = ptrtoint ptr %in_len.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %in_len.i, align 4
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %53, align 4
  %src1.i.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %in_sg.i, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %out_sg.i, ptr %dst2.i.i, align 4
  %src_len3.i.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i.i, i32 0, i32 3
  %62 = ptrtoint ptr %src_len3.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %57, ptr %src_len3.i.i, align 32
  %dst_len4.i.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %dst_len4.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %59, ptr %dst_len4.i.i, align 4
  %64 = ptrtoint ptr %cwait.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %cwait.i, align 4
  %wait.i.i.i = getelementptr inbounds %struct.completion, ptr %cwait.i, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #9
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 1
  %65 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @crypto_req_done, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 2
  %66 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %cwait.i, ptr %data2.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1536, ptr %flags.i.i, align 4
  %68 = ptrtoint ptr %tfm1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tfm1.i.i.i, align 16
  %__crt_alg.i.i64.i = getelementptr inbounds %struct.crypto_tfm, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %__crt_alg.i.i64.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %__crt_alg.i.i64.i, align 4
  %72 = ptrtoint ptr %src_len3.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %src_len3.i.i, align 32
  call void @crypto_stats_get(ptr noundef %71) #9
  %encrypt.i.i = getelementptr i8, ptr %71, i32 -120
  %74 = ptrtoint ptr %encrypt.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %encrypt.i.i, align 8
  %call3.i65.i = call i32 %75(ptr noundef nonnull %call9.i.i.i) #9
  call void @crypto_stats_akcipher_encrypt(i32 noundef %73, i32 noundef %call3.i65.i, ptr noundef %71) #9
  %76 = zext i32 %call3.i65.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call3.i65.i, label %if.end17.i.crypto_wait_req.exit.i_crit_edge [
    i32 -115, label %if.end17.i.sw.bb.i.i_crit_edge
    i32 -16, label %if.end17.i.sw.bb.i.i_crit_edge192
  ]

if.end17.i.sw.bb.i.i_crit_edge192:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

if.end17.i.sw.bb.i.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i.i

if.end17.i.crypto_wait_req.exit.i_crit_edge:      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_wait_req.exit.i

sw.bb.i.i:                                        ; preds = %if.end17.i.sw.bb.i.i_crit_edge, %if.end17.i.sw.bb.i.i_crit_edge192
  call void @wait_for_completion(ptr noundef nonnull %cwait.i) #9
  %77 = ptrtoint ptr %cwait.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %cwait.i, align 4
  %err2.i.i = getelementptr inbounds %struct.crypto_wait, ptr %cwait.i, i32 0, i32 1
  %78 = ptrtoint ptr %err2.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %err2.i.i, align 4
  br label %crypto_wait_req.exit.i

crypto_wait_req.exit.i:                           ; preds = %sw.bb.i.i, %if.end17.i.crypto_wait_req.exit.i_crit_edge
  %err.addr.0.i.i = phi i32 [ %call3.i65.i, %if.end17.i.crypto_wait_req.exit.i_crit_edge ], [ %79, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i.i)
  %cmp21.i = icmp eq i32 %err.addr.0.i.i, 0
  br i1 %cmp21.i, label %if.then23.i, label %crypto_wait_req.exit.i.if.end24.i_crit_edge

crypto_wait_req.exit.i.if.end24.i_crit_edge:      ; preds = %crypto_wait_req.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.then23.i:                                      ; preds = %crypto_wait_req.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %dst_len4.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dst_len4.i.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then23.i, %crypto_wait_req.exit.i.if.end24.i_crit_edge
  %ret.0.i = phi i32 [ %81, %if.then23.i ], [ %err.addr.0.i.i, %crypto_wait_req.exit.i.if.end24.i_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i.i) #9
  br label %error_free_tfm.i

error_free_tfm.i:                                 ; preds = %if.end24.i, %if.end8.i.i60.i.error_free_tfm.i_crit_edge, %derive_pub_key.exit.i.error_free_tfm.i_crit_edge
  %ret.1.i = phi i32 [ %call1.i.i, %derive_pub_key.exit.i.error_free_tfm.i_crit_edge ], [ %ret.0.i, %if.end24.i ], [ -12, %if.end8.i.i60.i.error_free_tfm.i_crit_edge ]
  call void @crypto_destroy_tfm(ptr noundef %call2.i, ptr noundef %call2.i) #9
  br label %tpm_key_encrypt.exit

tpm_key_encrypt.exit:                             ; preds = %error_free_tfm.i, %if.then4.i, %if.end7.i.i.tpm_key_encrypt.exit_crit_edge, %if.end.i.i.tpm_key_encrypt.exit_crit_edge
  %retval.0.i = phi i32 [ %19, %if.then4.i ], [ %ret.1.i, %error_free_tfm.i ], [ -65, %if.end7.i.i.tpm_key_encrypt.exit_crit_edge ], [ -22, %if.end.i.i.tpm_key_encrypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 278, ptr nonnull %der_pub_key.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %out_sg.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %in_sg.i) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cwait.i) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %alg_name.i) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb.i) #9
  %82 = getelementptr inbounds %struct.tpm_buf, ptr %tb.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %keyhandle.i) #9
  %83 = ptrtoint ptr %keyhandle.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %keyhandle.i, align 4, !annotation !120
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %srkauth.i) #9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %keyauth.i) #9
  %hash_algo.i19 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 2
  %84 = call ptr @memset(ptr %keyauth.i, i32 255, i32 20)
  %85 = ptrtoint ptr %hash_algo.i19 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hash_algo.i19, align 4
  %tobool.not.i = icmp eq ptr %86, null
  br i1 %tobool.not.i, label %if.end.i21, label %sw.bb1.tpm_key_decrypt.exit_crit_edge

sw.bb1.tpm_key_decrypt.exit_crit_edge:            ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_key_decrypt.exit

if.end.i21:                                       ; preds = %sw.bb1
  %encoding.i20 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 1
  %87 = ptrtoint ptr %encoding.i20 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %encoding.i20, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %88, ptr noundef nonnull dereferenceable(6) @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i21.tpm_key_decrypt.exit_crit_edge

if.end.i21.tpm_key_decrypt.exit_crit_edge:        ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_key_decrypt.exit

if.end3.i:                                        ; preds = %if.end.i21
  %call.i.i22 = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %89 = inttoptr i32 %call.i.i22 to ptr
  %90 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22)
  %tobool.not.i.i23 = icmp eq i32 %call.i.i22, 0
  br i1 %tobool.not.i.i23, label %if.end3.i.tpm_key_decrypt.exit_crit_edge, label %if.end7.i

if.end3.i.tpm_key_decrypt.exit_crit_edge:         ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_key_decrypt.exit

if.end7.i:                                        ; preds = %if.end3.i
  %91 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %tb.i, align 4
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 0, ptr %89, align 1
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %89, i32 0, i32 1
  %93 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 4)
  store i32 10, ptr %length.i.i.i, align 1
  %94 = getelementptr inbounds %struct.tpm_header, ptr %89, i32 0, i32 2
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_storeN_noabort(i32 %95, i32 4)
  store i32 0, ptr %94, align 1
  %96 = call ptr @memset(ptr %srkauth.i, i32 0, i32 20)
  %97 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %4, align 4
  %blob_len.i = getelementptr inbounds %struct.tpm_key, ptr %4, i32 0, i32 1
  %99 = ptrtoint ptr %blob_len.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %blob_len.i, align 4
  %call9.i = call fastcc i32 @tpm_loadkey2(ptr noundef nonnull %tb.i, ptr noundef nonnull %srkauth.i, ptr noundef %98, i32 noundef %100, ptr noundef nonnull %keyhandle.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp.i = icmp slt i32 %call9.i, 0
  br i1 %cmp.i, label %if.end7.i.error.i_crit_edge, label %if.end12.i

if.end7.i.error.i_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end12.i:                                       ; preds = %if.end7.i
  %101 = call ptr @memset(ptr %keyauth.i, i32 0, i32 20)
  %102 = ptrtoint ptr %keyhandle.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %keyhandle.i, align 4
  %in_len.i24 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 4
  %104 = ptrtoint ptr %in_len.i24 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %in_len.i24, align 4
  %106 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 5
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %nonceodd.i.i) #9
  %109 = call ptr @memset(ptr %nonceodd.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %enonce.i.i) #9
  %110 = call ptr @memset(ptr %enonce.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %authdata.i.i) #9
  %111 = call ptr @memset(ptr %authdata.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %authhandle.i.i) #9
  %112 = ptrtoint ptr %authhandle.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %authhandle.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ordinal.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datalen.i.i) #9
  %113 = ptrtoint ptr %ordinal.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 30, ptr %ordinal.i.i, align 4
  %114 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %105, ptr %datalen.i.i, align 4
  %call.i38.i = call i32 @oiap(ptr noundef nonnull %tb.i, ptr noundef nonnull %authhandle.i.i, ptr noundef nonnull %enonce.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %cmp.i.i25 = icmp slt i32 %call.i38.i, 0
  br i1 %cmp.i.i25, label %do.end.i.i, label %if.end.i39.i

do.end.i.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call.i38.i) #15
  br label %tpm_unbind.exit.i

if.end.i39.i:                                     ; preds = %if.end12.i
  %call3.i.i27 = call i32 @tpm_get_random(ptr noundef null, ptr noundef nonnull %nonceodd.i.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i27)
  %cmp4.i.i28 = icmp slt i32 %call3.i.i27, 0
  br i1 %cmp4.i.i28, label %do.end8.i.i, label %if.end11.i.i

do.end8.i.i:                                      ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call3.i.i27) #15
  br label %tpm_unbind.exit.i

if.end11.i.i:                                     ; preds = %if.end.i39.i
  %call15.i.i = call i32 (ptr, ptr, i32, ptr, ptr, i32, ...) @TSS_authhmac(ptr noundef nonnull %authdata.i.i, ptr noundef nonnull %keyauth.i, i32 noundef 20, ptr noundef nonnull %enonce.i.i, ptr noundef nonnull %nonceodd.i.i, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %ordinal.i.i, i32 noundef 4, ptr noundef nonnull %datalen.i.i, i32 noundef %105, ptr noundef %in, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp16.i.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp16.i.i, label %if.end11.i.i.tpm_unbind.exit.i_crit_edge, label %if.end19.i.i

if.end11.i.i.tpm_unbind.exit.i_crit_edge:         ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_unbind.exit.i

if.end19.i.i:                                     ; preds = %if.end11.i.i
  %115 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %82, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_storeN_noabort(i32 %117, i32 2)
  store i16 194, ptr %116, align 1
  %length.i.i40.i = getelementptr inbounds %struct.tpm_header, ptr %116, i32 0, i32 1
  %118 = ptrtoint ptr %length.i.i40.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 10, ptr %length.i.i40.i, align 1
  %119 = getelementptr inbounds %struct.tpm_header, ptr %116, i32 0, i32 2
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 30, ptr %119, align 1
  %121 = load ptr, ptr %82, align 4
  %length.i.i.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %122, i32 4)
  %123 = load i32, ptr %length.i.i.i.i.i, align 1
  %124 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tb.i, align 4
  %and.i.i.i.i = and i32 %125, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i29 = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i29, label %if.end.i.i.i.i31, label %if.end19.i.i.tpm_buf_append_u32.exit.i.i_crit_edge

if.end19.i.i.tpm_buf_append_u32.exit.i.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit.i.i

if.end.i.i.i.i31:                                 ; preds = %if.end19.i.i
  %add.i.i.i.i = add i32 %123, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i.i)
  %cmp.i.i.i.i30 = icmp ugt i32 %add.i.i.i.i, 4096
  br i1 %cmp.i.i.i.i30, label %do.end.i.i.i.i, label %if.end20.i.i.i.i32

do.end.i.i.i.i:                                   ; preds = %if.end.i.i.i.i31
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %126 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tb.i, align 4
  %or.i.i.i.i = or i32 %127, 1
  store i32 %or.i.i.i.i, ptr %tb.i, align 4
  br label %tpm_buf_append_u32.exit.i.i

if.end20.i.i.i.i32:                               ; preds = %if.end.i.i.i.i31
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i.i = getelementptr i8, ptr %121, i32 %123
  %128 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 %103, ptr %arrayidx.i.i.i.i, align 1
  %129 = ptrtoint ptr %length.i.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %add.i.i.i.i, ptr %length.i.i.i.i.i, align 1
  br label %tpm_buf_append_u32.exit.i.i

tpm_buf_append_u32.exit.i.i:                      ; preds = %if.end20.i.i.i.i32, %do.end.i.i.i.i, %if.end19.i.i.tpm_buf_append_u32.exit.i.i_crit_edge
  %130 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %82, align 4
  %length.i.i.i91.i.i = getelementptr inbounds %struct.tpm_header, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %length.i.i.i91.i.i to i32
  call void @__asan_loadN_noabort(i32 %132, i32 4)
  %133 = load i32, ptr %length.i.i.i91.i.i, align 1
  %134 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tb.i, align 4
  %and.i.i92.i.i = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i92.i.i)
  %tobool.not.i.i93.i.i = icmp eq i32 %and.i.i92.i.i, 0
  br i1 %tobool.not.i.i93.i.i, label %if.end.i.i96.i.i, label %tpm_buf_append_u32.exit.i.i.tpm_buf_append_u32.exit101.i.i_crit_edge

tpm_buf_append_u32.exit.i.i.tpm_buf_append_u32.exit101.i.i_crit_edge: ; preds = %tpm_buf_append_u32.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit101.i.i

if.end.i.i96.i.i:                                 ; preds = %tpm_buf_append_u32.exit.i.i
  %add.i.i94.i.i = add i32 %133, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i94.i.i)
  %cmp.i.i95.i.i = icmp ugt i32 %add.i.i94.i.i, 4096
  br i1 %cmp.i.i95.i.i, label %do.end.i.i98.i.i, label %if.end20.i.i100.i.i

do.end.i.i98.i.i:                                 ; preds = %if.end.i.i96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %136 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %tb.i, align 4
  %or.i.i97.i.i = or i32 %137, 1
  store i32 %or.i.i97.i.i, ptr %tb.i, align 4
  br label %tpm_buf_append_u32.exit101.i.i

if.end20.i.i100.i.i:                              ; preds = %if.end.i.i96.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i99.i.i = getelementptr i8, ptr %131, i32 %133
  %138 = ptrtoint ptr %arrayidx.i.i99.i.i to i32
  call void @__asan_storeN_noabort(i32 %138, i32 4)
  store i32 %105, ptr %arrayidx.i.i99.i.i, align 1
  %139 = ptrtoint ptr %length.i.i.i91.i.i to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 %add.i.i94.i.i, ptr %length.i.i.i91.i.i, align 1
  br label %tpm_buf_append_u32.exit101.i.i

tpm_buf_append_u32.exit101.i.i:                   ; preds = %if.end20.i.i100.i.i, %do.end.i.i98.i.i, %tpm_buf_append_u32.exit.i.i.tpm_buf_append_u32.exit101.i.i_crit_edge
  %140 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %82, align 4
  %length.i.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %length.i.i.i.i, align 1
  %144 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %tb.i, align 4
  %and.i.i.i = and i32 %145, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i34, label %tpm_buf_append_u32.exit101.i.i.tpm_buf_append.exit.i.i_crit_edge

tpm_buf_append_u32.exit101.i.i.tpm_buf_append.exit.i.i_crit_edge: ; preds = %tpm_buf_append_u32.exit101.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append.exit.i.i

if.end.i.i.i34:                                   ; preds = %tpm_buf_append_u32.exit101.i.i
  %add.i.i.i = add i32 %143, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i)
  %cmp.i.i.i33 = icmp ugt i32 %add.i.i.i, 4096
  br i1 %cmp.i.i.i33, label %do.end.i.i.i, label %if.end20.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i34
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %146 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %tb.i, align 4
  %or.i.i.i = or i32 %147, 1
  store i32 %or.i.i.i, ptr %tb.i, align 4
  br label %tpm_buf_append.exit.i.i

if.end20.i.i.i:                                   ; preds = %if.end.i.i.i34
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i = getelementptr i8, ptr %141, i32 %143
  %148 = call ptr @memcpy(ptr %arrayidx.i.i.i, ptr %in, i32 %105)
  %149 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %149, i32 4)
  store i32 %add.i.i.i, ptr %length.i.i.i.i, align 1
  br label %tpm_buf_append.exit.i.i

tpm_buf_append.exit.i.i:                          ; preds = %if.end20.i.i.i, %do.end.i.i.i, %tpm_buf_append_u32.exit101.i.i.tpm_buf_append.exit.i.i_crit_edge
  %150 = ptrtoint ptr %authhandle.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %authhandle.i.i, align 4
  %152 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %82, align 4
  %length.i.i.i104.i.i = getelementptr inbounds %struct.tpm_header, ptr %153, i32 0, i32 1
  %154 = ptrtoint ptr %length.i.i.i104.i.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %155 = load i32, ptr %length.i.i.i104.i.i, align 1
  %156 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tb.i, align 4
  %and.i.i105.i.i = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i105.i.i)
  %tobool.not.i.i106.i.i = icmp eq i32 %and.i.i105.i.i, 0
  br i1 %tobool.not.i.i106.i.i, label %if.end.i.i109.i.i, label %tpm_buf_append.exit.i.i.tpm_buf_append_u32.exit114.i.i_crit_edge

tpm_buf_append.exit.i.i.tpm_buf_append_u32.exit114.i.i_crit_edge: ; preds = %tpm_buf_append.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit114.i.i

if.end.i.i109.i.i:                                ; preds = %tpm_buf_append.exit.i.i
  %add.i.i107.i.i = add i32 %155, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i107.i.i)
  %cmp.i.i108.i.i = icmp ugt i32 %add.i.i107.i.i, 4096
  br i1 %cmp.i.i108.i.i, label %do.end.i.i111.i.i, label %if.end20.i.i113.i.i

do.end.i.i111.i.i:                                ; preds = %if.end.i.i109.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %158 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %tb.i, align 4
  %or.i.i110.i.i = or i32 %159, 1
  store i32 %or.i.i110.i.i, ptr %tb.i, align 4
  br label %tpm_buf_append_u32.exit114.i.i

if.end20.i.i113.i.i:                              ; preds = %if.end.i.i109.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i112.i.i = getelementptr i8, ptr %153, i32 %155
  %160 = ptrtoint ptr %arrayidx.i.i112.i.i to i32
  call void @__asan_storeN_noabort(i32 %160, i32 4)
  store i32 %151, ptr %arrayidx.i.i112.i.i, align 1
  %161 = ptrtoint ptr %length.i.i.i104.i.i to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 %add.i.i107.i.i, ptr %length.i.i.i104.i.i, align 1
  br label %tpm_buf_append_u32.exit114.i.i

tpm_buf_append_u32.exit114.i.i:                   ; preds = %if.end20.i.i113.i.i, %do.end.i.i111.i.i, %tpm_buf_append.exit.i.i.tpm_buf_append_u32.exit114.i.i_crit_edge
  %162 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %82, align 4
  %length.i.i116.i.i = getelementptr inbounds %struct.tpm_header, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %length.i.i116.i.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 4)
  %165 = load i32, ptr %length.i.i116.i.i, align 1
  %166 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %tb.i, align 4
  %and.i117.i.i = and i32 %167, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117.i.i)
  %tobool.not.i118.i.i = icmp eq i32 %and.i117.i.i, 0
  br i1 %tobool.not.i118.i.i, label %if.end.i121.i.i, label %tpm_buf_append_u32.exit114.i.i.tpm_buf_append.exit126.i.i_crit_edge

tpm_buf_append_u32.exit114.i.i.tpm_buf_append.exit126.i.i_crit_edge: ; preds = %tpm_buf_append_u32.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append.exit126.i.i

if.end.i121.i.i:                                  ; preds = %tpm_buf_append_u32.exit114.i.i
  %add.i119.i.i = add i32 %165, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i119.i.i)
  %cmp.i120.i.i = icmp ugt i32 %add.i119.i.i, 4096
  br i1 %cmp.i120.i.i, label %do.end.i123.i.i, label %if.end20.i125.i.i

do.end.i123.i.i:                                  ; preds = %if.end.i121.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %168 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %tb.i, align 4
  %or.i122.i.i = or i32 %169, 1
  store i32 %or.i122.i.i, ptr %tb.i, align 4
  br label %tpm_buf_append.exit126.i.i

if.end20.i125.i.i:                                ; preds = %if.end.i121.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i124.i.i = getelementptr i8, ptr %163, i32 %165
  %170 = call ptr @memcpy(ptr %arrayidx.i124.i.i, ptr %nonceodd.i.i, i32 20)
  %171 = ptrtoint ptr %length.i.i116.i.i to i32
  call void @__asan_storeN_noabort(i32 %171, i32 4)
  store i32 %add.i119.i.i, ptr %length.i.i116.i.i, align 1
  br label %tpm_buf_append.exit126.i.i

tpm_buf_append.exit126.i.i:                       ; preds = %if.end20.i125.i.i, %do.end.i123.i.i, %tpm_buf_append_u32.exit114.i.i.tpm_buf_append.exit126.i.i_crit_edge
  %172 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %82, align 4
  %length.i.i.i128.i.i = getelementptr inbounds %struct.tpm_header, ptr %173, i32 0, i32 1
  %174 = ptrtoint ptr %length.i.i.i128.i.i to i32
  call void @__asan_loadN_noabort(i32 %174, i32 4)
  %175 = load i32, ptr %length.i.i.i128.i.i, align 1
  %176 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %tb.i, align 4
  %and.i.i129.i.i = and i32 %177, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i129.i.i)
  %tobool.not.i.i130.i.i = icmp eq i32 %and.i.i129.i.i, 0
  br i1 %tobool.not.i.i130.i.i, label %if.end.i.i133.i.i, label %tpm_buf_append.exit126.i.i.tpm_buf_append_u8.exit.i.i_crit_edge

tpm_buf_append.exit126.i.i.tpm_buf_append_u8.exit.i.i_crit_edge: ; preds = %tpm_buf_append.exit126.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u8.exit.i.i

if.end.i.i133.i.i:                                ; preds = %tpm_buf_append.exit126.i.i
  %add.i.i131.i.i = add i32 %175, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i131.i.i)
  %cmp.i.i132.i.i = icmp ugt i32 %add.i.i131.i.i, 4096
  br i1 %cmp.i.i132.i.i, label %do.end.i.i135.i.i, label %if.end20.i.i137.i.i

do.end.i.i135.i.i:                                ; preds = %if.end.i.i133.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %178 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %tb.i, align 4
  %or.i.i134.i.i = or i32 %179, 1
  store i32 %or.i.i134.i.i, ptr %tb.i, align 4
  br label %tpm_buf_append_u8.exit.i.i

if.end20.i.i137.i.i:                              ; preds = %if.end.i.i133.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i136.i.i = getelementptr i8, ptr %173, i32 %175
  %180 = ptrtoint ptr %arrayidx.i.i136.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 0, ptr %arrayidx.i.i136.i.i, align 1
  %181 = ptrtoint ptr %length.i.i.i128.i.i to i32
  call void @__asan_storeN_noabort(i32 %181, i32 4)
  store i32 %add.i.i131.i.i, ptr %length.i.i.i128.i.i, align 1
  br label %tpm_buf_append_u8.exit.i.i

tpm_buf_append_u8.exit.i.i:                       ; preds = %if.end20.i.i137.i.i, %do.end.i.i135.i.i, %tpm_buf_append.exit126.i.i.tpm_buf_append_u8.exit.i.i_crit_edge
  %182 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %82, align 4
  %length.i.i139.i.i = getelementptr inbounds %struct.tpm_header, ptr %183, i32 0, i32 1
  %184 = ptrtoint ptr %length.i.i139.i.i to i32
  call void @__asan_loadN_noabort(i32 %184, i32 4)
  %185 = load i32, ptr %length.i.i139.i.i, align 1
  %186 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %tb.i, align 4
  %and.i140.i.i = and i32 %187, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140.i.i)
  %tobool.not.i141.i.i = icmp eq i32 %and.i140.i.i, 0
  br i1 %tobool.not.i141.i.i, label %if.end.i144.i.i, label %tpm_buf_append_u8.exit.i.i.tpm_buf_append.exit149.i.i_crit_edge

tpm_buf_append_u8.exit.i.i.tpm_buf_append.exit149.i.i_crit_edge: ; preds = %tpm_buf_append_u8.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append.exit149.i.i

if.end.i144.i.i:                                  ; preds = %tpm_buf_append_u8.exit.i.i
  %add.i142.i.i = add i32 %185, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i142.i.i)
  %cmp.i143.i.i = icmp ugt i32 %add.i142.i.i, 4096
  br i1 %cmp.i143.i.i, label %do.end.i146.i.i, label %if.end20.i148.i.i

do.end.i146.i.i:                                  ; preds = %if.end.i144.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %188 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %tb.i, align 4
  %or.i145.i.i = or i32 %189, 1
  store i32 %or.i145.i.i, ptr %tb.i, align 4
  br label %tpm_buf_append.exit149.i.i

if.end20.i148.i.i:                                ; preds = %if.end.i144.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i147.i.i = getelementptr i8, ptr %183, i32 %185
  %190 = call ptr @memcpy(ptr %arrayidx.i147.i.i, ptr %authdata.i.i, i32 20)
  %191 = ptrtoint ptr %length.i.i139.i.i to i32
  call void @__asan_storeN_noabort(i32 %191, i32 4)
  store i32 %add.i142.i.i, ptr %length.i.i139.i.i, align 1
  br label %tpm_buf_append.exit149.i.i

tpm_buf_append.exit149.i.i:                       ; preds = %if.end20.i148.i.i, %do.end.i146.i.i, %tpm_buf_append_u8.exit.i.i.tpm_buf_append.exit149.i.i_crit_edge
  %192 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %82, align 4
  %call22.i.i = call i32 @trusted_tpm_send(ptr noundef %193, i32 noundef 1024) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %do.end28.i.i, label %if.end31.i.i

do.end28.i.i:                                     ; preds = %tpm_buf_append.exit149.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call30.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call22.i.i) #15
  br label %tpm_unbind.exit.i

if.end31.i.i:                                     ; preds = %tpm_buf_append.exit149.i.i
  %194 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %82, align 4
  %arrayidx.i.i = getelementptr i8, ptr %195, i32 10
  %196 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %arrayidx.i.i, align 4
  %198 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %datalen.i.i, align 4
  %199 = ptrtoint ptr %ordinal.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %ordinal.i.i, align 4
  %call35.i.i = call i32 (ptr, i32, ptr, ptr, i32, ...) @TSS_checkhmac1(ptr noundef %195, i32 noundef %200, ptr noundef nonnull %nonceodd.i.i, ptr noundef nonnull %keyauth.i, i32 noundef 20, i32 noundef 4, i32 noundef 10, i32 noundef %197, i32 noundef 14, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %cmp36.i.i = icmp slt i32 %call35.i.i, 0
  br i1 %cmp36.i.i, label %do.end41.i.i, label %if.end44.i.i

do.end41.i.i:                                     ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call43.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call35.i.i) #15
  br label %tpm_unbind.exit.i

if.end44.i.i:                                     ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %201 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %82, align 4
  %add.ptr46.i.i = getelementptr i8, ptr %202, i32 14
  %203 = ptrtoint ptr %datalen.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %datalen.i.i, align 4
  %205 = call i32 @llvm.umin.i32(i32 %204, i32 %108) #9
  %206 = call ptr @memcpy(ptr %out, ptr %add.ptr46.i.i, i32 %205)
  br label %tpm_unbind.exit.i

tpm_unbind.exit.i:                                ; preds = %if.end44.i.i, %do.end41.i.i, %do.end28.i.i, %if.end11.i.i.tpm_unbind.exit.i_crit_edge, %do.end8.i.i, %do.end.i.i
  %retval.0.i41.i = phi i32 [ %call.i38.i, %do.end.i.i ], [ %call3.i.i27, %do.end8.i.i ], [ %call22.i.i, %do.end28.i.i ], [ %call35.i.i, %do.end41.i.i ], [ %204, %if.end44.i.i ], [ %call15.i.i, %if.end11.i.i.tpm_unbind.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datalen.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ordinal.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %authhandle.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %authdata.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %enonce.i.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %nonceodd.i.i) #9
  %207 = ptrtoint ptr %keyhandle.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %keyhandle.i, align 4
  %209 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %82, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_storeN_noabort(i32 %211, i32 2)
  store i16 193, ptr %210, align 1
  %length.i.i43.i = getelementptr inbounds %struct.tpm_header, ptr %210, i32 0, i32 1
  %212 = ptrtoint ptr %length.i.i43.i to i32
  call void @__asan_storeN_noabort(i32 %212, i32 4)
  store i32 10, ptr %length.i.i43.i, align 1
  %213 = getelementptr inbounds %struct.tpm_header, ptr %210, i32 0, i32 2
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 186, ptr %213, align 1
  %215 = load ptr, ptr %82, align 4
  %length.i.i.i.i44.i = getelementptr inbounds %struct.tpm_header, ptr %215, i32 0, i32 1
  %216 = ptrtoint ptr %length.i.i.i.i44.i to i32
  call void @__asan_loadN_noabort(i32 %216, i32 4)
  %217 = load i32, ptr %length.i.i.i.i44.i, align 1
  %218 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %tb.i, align 4
  %and.i.i.i45.i = and i32 %219, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i45.i)
  %tobool.not.i.i.i46.i = icmp eq i32 %and.i.i.i45.i, 0
  br i1 %tobool.not.i.i.i46.i, label %if.end.i.i.i49.i, label %tpm_unbind.exit.i.tpm_buf_append_u32.exit.i54.i_crit_edge

tpm_unbind.exit.i.tpm_buf_append_u32.exit.i54.i_crit_edge: ; preds = %tpm_unbind.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit.i54.i

if.end.i.i.i49.i:                                 ; preds = %tpm_unbind.exit.i
  %add.i.i.i47.i = add i32 %217, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i47.i)
  %cmp.i.i.i48.i = icmp ugt i32 %add.i.i.i47.i, 4096
  br i1 %cmp.i.i.i48.i, label %do.end.i.i.i51.i, label %if.end20.i.i.i53.i

do.end.i.i.i51.i:                                 ; preds = %if.end.i.i.i49.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %220 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %tb.i, align 4
  %or.i.i.i50.i = or i32 %221, 1
  store i32 %or.i.i.i50.i, ptr %tb.i, align 4
  br label %tpm_buf_append_u32.exit.i54.i

if.end20.i.i.i53.i:                               ; preds = %if.end.i.i.i49.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i52.i = getelementptr i8, ptr %215, i32 %217
  %222 = ptrtoint ptr %arrayidx.i.i.i52.i to i32
  call void @__asan_storeN_noabort(i32 %222, i32 4)
  store i32 %208, ptr %arrayidx.i.i.i52.i, align 1
  %223 = ptrtoint ptr %length.i.i.i.i44.i to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 %add.i.i.i47.i, ptr %length.i.i.i.i44.i, align 1
  br label %tpm_buf_append_u32.exit.i54.i

tpm_buf_append_u32.exit.i54.i:                    ; preds = %if.end20.i.i.i53.i, %do.end.i.i.i51.i, %tpm_unbind.exit.i.tpm_buf_append_u32.exit.i54.i_crit_edge
  %224 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %82, align 4
  %length.i.i.i5.i.i = getelementptr inbounds %struct.tpm_header, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %length.i.i.i5.i.i to i32
  call void @__asan_loadN_noabort(i32 %226, i32 4)
  %227 = load i32, ptr %length.i.i.i5.i.i, align 1
  %228 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %tb.i, align 4
  %and.i.i6.i.i = and i32 %229, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i6.i.i)
  %tobool.not.i.i7.i.i = icmp eq i32 %and.i.i6.i.i, 0
  br i1 %tobool.not.i.i7.i.i, label %if.end.i.i10.i.i, label %tpm_buf_append_u32.exit.i54.i.tpm_flushspecific.exit.i_crit_edge

tpm_buf_append_u32.exit.i54.i.tpm_flushspecific.exit.i_crit_edge: ; preds = %tpm_buf_append_u32.exit.i54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_flushspecific.exit.i

if.end.i.i10.i.i:                                 ; preds = %tpm_buf_append_u32.exit.i54.i
  %add.i.i8.i.i = add i32 %227, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i8.i.i)
  %cmp.i.i9.i.i = icmp ugt i32 %add.i.i8.i.i, 4096
  br i1 %cmp.i.i9.i.i, label %do.end.i.i12.i.i, label %if.end20.i.i14.i.i

do.end.i.i12.i.i:                                 ; preds = %if.end.i.i10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %230 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %tb.i, align 4
  %or.i.i11.i.i = or i32 %231, 1
  store i32 %or.i.i11.i.i, ptr %tb.i, align 4
  br label %tpm_flushspecific.exit.i

if.end20.i.i14.i.i:                               ; preds = %if.end.i.i10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i13.i.i = getelementptr i8, ptr %225, i32 %227
  %232 = ptrtoint ptr %arrayidx.i.i13.i.i to i32
  call void @__asan_storeN_noabort(i32 %232, i32 4)
  store i32 1, ptr %arrayidx.i.i13.i.i, align 1
  %233 = ptrtoint ptr %length.i.i.i5.i.i to i32
  call void @__asan_storeN_noabort(i32 %233, i32 4)
  store i32 %add.i.i8.i.i, ptr %length.i.i.i5.i.i, align 1
  br label %tpm_flushspecific.exit.i

tpm_flushspecific.exit.i:                         ; preds = %if.end20.i.i14.i.i, %do.end.i.i12.i.i, %tpm_buf_append_u32.exit.i54.i.tpm_flushspecific.exit.i_crit_edge
  %234 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %82, align 4
  %call.i55.i = call i32 @trusted_tpm_send(ptr noundef %235, i32 noundef 1024) #9
  br label %error.i

error.i:                                          ; preds = %tpm_flushspecific.exit.i, %if.end7.i.error.i_crit_edge
  %r.0.i = phi i32 [ %call9.i, %if.end7.i.error.i_crit_edge ], [ %retval.0.i41.i, %tpm_flushspecific.exit.i ]
  %236 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %82, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @free_pages(i32 noundef %238, i32 noundef 0) #9
  br label %tpm_key_decrypt.exit

tpm_key_decrypt.exit:                             ; preds = %error.i, %if.end3.i.tpm_key_decrypt.exit_crit_edge, %if.end.i21.tpm_key_decrypt.exit_crit_edge, %sw.bb1.tpm_key_decrypt.exit_crit_edge
  %retval.0.i35 = phi i32 [ %r.0.i, %error.i ], [ -65, %sw.bb1.tpm_key_decrypt.exit_crit_edge ], [ -65, %if.end.i21.tpm_key_decrypt.exit_crit_edge ], [ -12, %if.end3.i.tpm_key_decrypt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %keyauth.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %srkauth.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %keyhandle.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb.i42) #9
  %239 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 -1, ptr %tb.i42, align 4, !annotation !120
  %240 = getelementptr inbounds %struct.tpm_buf, ptr %tb.i42, i32 0, i32 1
  %241 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr inttoptr (i32 -1 to ptr), ptr %240, align 4, !annotation !120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %keyhandle.i43) #9
  %242 = ptrtoint ptr %keyhandle.i43 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 -1, ptr %keyhandle.i43, align 4, !annotation !120
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %srkauth.i44) #9
  %243 = call ptr @memset(ptr %srkauth.i44, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %keyauth.i45) #9
  %in_len1.i = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 4
  %244 = call ptr @memset(ptr %keyauth.i45, i32 255, i32 20)
  %245 = ptrtoint ptr %in_len1.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %in_len1.i, align 4
  %encoding.i46 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 1
  %247 = ptrtoint ptr %encoding.i46 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %encoding.i46, align 4
  %call.i47 = tail call i32 @strcmp(ptr noundef %248, ptr noundef nonnull dereferenceable(6) @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i48 = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i48, label %if.end.i50, label %sw.bb3.tpm_key_sign.exit_crit_edge

sw.bb3.tpm_key_sign.exit_crit_edge:               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_key_sign.exit

if.end.i50:                                       ; preds = %sw.bb3
  %hash_algo.i49 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 2
  %249 = ptrtoint ptr %hash_algo.i49 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %hash_algo.i49, align 4
  %tobool2.not.i = icmp eq ptr %250, null
  br i1 %tobool2.not.i, label %if.end.i50.if.end17.i82_crit_edge, label %if.then3.i

if.end.i50.if.end17.i82_crit_edge:                ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i82

if.then3.i:                                       ; preds = %if.end.i50
  %call.i.i51 = tail call i32 @strcmp(ptr noundef nonnull %250, ptr noundef nonnull dereferenceable(4) @.str.29) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp.i.i52 = icmp eq i32 %call.i.i51, 0
  br i1 %cmp.i.i52, label %if.then3.i.if.end8.i_crit_edge, label %for.inc.i.i

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.i.i:                                      ; preds = %if.then3.i
  %call.1.i.i = tail call i32 @strcmp(ptr noundef nonnull %250, ptr noundef nonnull dereferenceable(5) @.str.30) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %cmp.1.i.i = icmp eq i32 %call.1.i.i, 0
  br i1 %cmp.1.i.i, label %for.inc.i.i.if.end8.i_crit_edge, label %for.inc.1.i.i

for.inc.i.i.if.end8.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %call.2.i.i = tail call i32 @strcmp(ptr noundef nonnull %250, ptr noundef nonnull dereferenceable(7) @.str.31) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %cmp.2.i.i = icmp eq i32 %call.2.i.i, 0
  br i1 %cmp.2.i.i, label %for.inc.1.i.i.if.end8.i_crit_edge, label %for.inc.2.i.i

for.inc.1.i.i.if.end8.i_crit_edge:                ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %call.3.i.i = tail call i32 @strcmp(ptr noundef nonnull %250, ptr noundef nonnull dereferenceable(7) @.str.32) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i.i)
  %cmp.3.i.i = icmp eq i32 %call.3.i.i, 0
  br i1 %cmp.3.i.i, label %for.inc.2.i.i.if.end8.i_crit_edge, label %for.inc.3.i.i

for.inc.2.i.i.if.end8.i_crit_edge:                ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %call.4.i.i = tail call i32 @strcmp(ptr noundef nonnull %250, ptr noundef nonnull dereferenceable(7) @.str.33) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i.i)
  %cmp.4.i.i = icmp eq i32 %call.4.i.i, 0
  br i1 %cmp.4.i.i, label %for.inc.3.i.i.if.end8.i_crit_edge, label %for.inc.4.i.i

for.inc.3.i.i.if.end8.i_crit_edge:                ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %call.5.i.i = tail call i32 @strcmp(ptr noundef nonnull %250, ptr noundef nonnull dereferenceable(7) @.str.34) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i.i)
  %cmp.5.i.i = icmp eq i32 %call.5.i.i, 0
  br i1 %cmp.5.i.i, label %for.inc.4.i.i.if.end8.i_crit_edge, label %for.inc.5.i.i

for.inc.4.i.i.if.end8.i_crit_edge:                ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %call.6.i.i = tail call i32 @strcmp(ptr noundef nonnull %250, ptr noundef nonnull dereferenceable(7) @.str.35) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i.i)
  %cmp.6.i.i = icmp eq i32 %call.6.i.i, 0
  br i1 %cmp.6.i.i, label %for.inc.5.i.i.if.end8.i_crit_edge, label %for.inc.5.i.i.tpm_key_sign.exit_crit_edge

for.inc.5.i.i.tpm_key_sign.exit_crit_edge:        ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_key_sign.exit

for.inc.5.i.i.if.end8.i_crit_edge:                ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.end8.i:                                        ; preds = %for.inc.5.i.i.if.end8.i_crit_edge, %for.inc.4.i.i.if.end8.i_crit_edge, %for.inc.3.i.i.if.end8.i_crit_edge, %for.inc.2.i.i.if.end8.i_crit_edge, %for.inc.1.i.i.if.end8.i_crit_edge, %for.inc.i.i.if.end8.i_crit_edge, %if.then3.i.if.end8.i_crit_edge
  %retval.0.i.ph.i = phi ptr [ getelementptr inbounds ([8 x %struct.asn1_template], ptr @asn1_templates, i32 0, i32 5), %for.inc.4.i.i.if.end8.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.asn1_template], ptr @asn1_templates, i32 0, i32 4), %for.inc.3.i.i.if.end8.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.asn1_template], ptr @asn1_templates, i32 0, i32 3), %for.inc.2.i.i.if.end8.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.asn1_template], ptr @asn1_templates, i32 0, i32 2), %for.inc.1.i.i.if.end8.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.asn1_template], ptr @asn1_templates, i32 0, i32 1), %for.inc.i.i.if.end8.i_crit_edge ], [ @asn1_templates, %if.then3.i.if.end8.i_crit_edge ], [ getelementptr inbounds ([8 x %struct.asn1_template], ptr @asn1_templates, i32 0, i32 6), %for.inc.5.i.i.if.end8.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.asn1_template, ptr %retval.0.i.ph.i, i32 0, i32 2
  %251 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %size.i, align 4
  %add.i = add i32 %252, %246
  %call9.i.i.i78 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3520) #14
  %tobool10.not.i = icmp eq ptr %call9.i.i.i78, null
  br i1 %tobool10.not.i, label %if.end8.i.tpm_key_sign.exit_crit_edge, label %cleanup.i

if.end8.i.tpm_key_sign.exit_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_key_sign.exit

cleanup.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.asn1_template, ptr %retval.0.i.ph.i, i32 0, i32 1
  %253 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %data.i, align 4
  %255 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %size.i, align 4
  %257 = call ptr @memcpy(ptr %call9.i.i.i78, ptr %254, i32 %256)
  %add.ptr.i = getelementptr i8, ptr %call9.i.i.i78, i32 %256
  %258 = call ptr @memcpy(ptr %add.ptr.i, ptr %in, i32 %246)
  %add16.i = add i32 %256, %246
  br label %if.end17.i82

if.end17.i82:                                     ; preds = %cleanup.i, %if.end.i50.if.end17.i82_crit_edge
  %in_len.1.i = phi i32 [ %add16.i, %cleanup.i ], [ %246, %if.end.i50.if.end17.i82_crit_edge ]
  %asn1_wrapped.1.i = phi ptr [ %call9.i.i.i78, %cleanup.i ], [ null, %if.end.i50.if.end17.i82_crit_edge ]
  %in.addr.1.i = phi ptr [ %call9.i.i.i78, %cleanup.i ], [ %in, %if.end.i50.if.end17.i82_crit_edge ]
  %key_len.i = getelementptr inbounds %struct.tpm_key, ptr %4, i32 0, i32 2
  %259 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %key_len.i, align 4
  %261 = lshr i16 %260, 3
  %div.i = zext i16 %261 to i32
  %sub.i = add nsw i32 %div.i, -11
  call void @__sanitizer_cov_trace_cmp4(i32 %in_len.1.i, i32 %sub.i)
  %cmp.i81 = icmp ugt i32 %in_len.1.i, %sub.i
  br i1 %cmp.i81, label %if.end17.i82.error_free_asn1_wrapped.i_crit_edge, label %if.end20.i

if.end17.i82.error_free_asn1_wrapped.i_crit_edge: ; preds = %if.end17.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_asn1_wrapped.i

if.end20.i:                                       ; preds = %if.end17.i82
  %call.i77.i = tail call i32 @__get_free_pages(i32 noundef 3264, i32 noundef 0) #9
  %262 = inttoptr i32 %call.i77.i to ptr
  %263 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr %262, ptr %240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool.not.i.i83 = icmp eq i32 %call.i77.i, 0
  br i1 %tobool.not.i.i83, label %if.end20.i.error_free_asn1_wrapped.i_crit_edge, label %if.end24.i86

if.end20.i.error_free_asn1_wrapped.i_crit_edge:   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_asn1_wrapped.i

if.end24.i86:                                     ; preds = %if.end20.i
  %264 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 0, ptr %tb.i42, align 4
  %265 = ptrtoint ptr %262 to i32
  call void @__asan_storeN_noabort(i32 %265, i32 2)
  store i16 0, ptr %262, align 1
  %length.i.i.i84 = getelementptr inbounds %struct.tpm_header, ptr %262, i32 0, i32 1
  %266 = ptrtoint ptr %length.i.i.i84 to i32
  call void @__asan_storeN_noabort(i32 %266, i32 4)
  store i32 10, ptr %length.i.i.i84, align 1
  %267 = getelementptr inbounds %struct.tpm_header, ptr %262, i32 0, i32 2
  %268 = ptrtoint ptr %267 to i32
  call void @__asan_storeN_noabort(i32 %268, i32 4)
  store i32 0, ptr %267, align 1
  %269 = call ptr @memset(ptr %srkauth.i44, i32 0, i32 20)
  %270 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %4, align 4
  %blob_len.i85 = getelementptr inbounds %struct.tpm_key, ptr %4, i32 0, i32 1
  %272 = ptrtoint ptr %blob_len.i85 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %blob_len.i85, align 4
  %call26.i = call fastcc i32 @tpm_loadkey2(ptr noundef nonnull %tb.i42, ptr noundef nonnull %srkauth.i44, ptr noundef %271, i32 noundef %273, ptr noundef nonnull %keyhandle.i43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %if.end24.i86.error_free_tb.i_crit_edge, label %if.end31.i

if.end24.i86.error_free_tb.i_crit_edge:           ; preds = %if.end24.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_tb.i

if.end31.i:                                       ; preds = %if.end24.i86
  %274 = call ptr @memset(ptr %keyauth.i45, i32 0, i32 20)
  %275 = ptrtoint ptr %keyhandle.i43 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %keyhandle.i43, align 4
  %277 = getelementptr inbounds %struct.kernel_pkey_params, ptr %params, i32 0, i32 5
  %278 = ptrtoint ptr %277 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %277, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %nonceodd.i.i36) #9
  %280 = call ptr @memset(ptr %nonceodd.i.i36, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %enonce.i.i37) #9
  %281 = call ptr @memset(ptr %enonce.i.i37, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %authdata.i.i38) #9
  %282 = call ptr @memset(ptr %authdata.i.i38, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %authhandle.i.i39) #9
  %283 = ptrtoint ptr %authhandle.i.i39 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 0, ptr %authhandle.i.i39, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ordinal.i.i40) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datalen.i.i41) #9
  %284 = ptrtoint ptr %ordinal.i.i40 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 60, ptr %ordinal.i.i40, align 4
  %285 = ptrtoint ptr %datalen.i.i41 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %in_len.1.i, ptr %datalen.i.i41, align 4
  %call.i79.i = call i32 @oiap(ptr noundef nonnull %tb.i42, ptr noundef nonnull %authhandle.i.i39, ptr noundef nonnull %enonce.i.i37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i)
  %cmp.i80.i = icmp slt i32 %call.i79.i, 0
  br i1 %cmp.i80.i, label %do.end.i.i88, label %if.end.i81.i

do.end.i.i88:                                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call.i79.i) #15
  br label %tpm_sign.exit.i

if.end.i81.i:                                     ; preds = %if.end31.i
  %call3.i.i89 = call i32 @tpm_get_random(ptr noundef null, ptr noundef nonnull %nonceodd.i.i36, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i89)
  %cmp4.i.i90 = icmp slt i32 %call3.i.i89, 0
  br i1 %cmp4.i.i90, label %do.end8.i.i92, label %if.end11.i.i95

do.end8.i.i92:                                    ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #11
  %call10.i.i91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call3.i.i89) #15
  br label %tpm_sign.exit.i

if.end11.i.i95:                                   ; preds = %if.end.i81.i
  %call15.i.i93 = call i32 (ptr, ptr, i32, ptr, ptr, i32, ...) @TSS_authhmac(ptr noundef nonnull %authdata.i.i38, ptr noundef nonnull %keyauth.i45, i32 noundef 20, ptr noundef nonnull %enonce.i.i37, ptr noundef nonnull %nonceodd.i.i36, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %ordinal.i.i40, i32 noundef 4, ptr noundef nonnull %datalen.i.i41, i32 noundef %in_len.1.i, ptr noundef %in.addr.1.i, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i93)
  %cmp16.i.i94 = icmp slt i32 %call15.i.i93, 0
  br i1 %cmp16.i.i94, label %if.end11.i.i95.tpm_sign.exit.i_crit_edge, label %if.end19.i.i98

if.end11.i.i95.tpm_sign.exit.i_crit_edge:         ; preds = %if.end11.i.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_sign.exit.i

if.end19.i.i98:                                   ; preds = %if.end11.i.i95
  %286 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %240, align 4
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_storeN_noabort(i32 %288, i32 2)
  store i16 194, ptr %287, align 1
  %length.i.i82.i = getelementptr inbounds %struct.tpm_header, ptr %287, i32 0, i32 1
  %289 = ptrtoint ptr %length.i.i82.i to i32
  call void @__asan_storeN_noabort(i32 %289, i32 4)
  store i32 10, ptr %length.i.i82.i, align 1
  %290 = getelementptr inbounds %struct.tpm_header, ptr %287, i32 0, i32 2
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_storeN_noabort(i32 %291, i32 4)
  store i32 60, ptr %290, align 1
  %292 = load ptr, ptr %240, align 4
  %length.i.i.i.i.i96 = getelementptr inbounds %struct.tpm_header, ptr %292, i32 0, i32 1
  %293 = ptrtoint ptr %length.i.i.i.i.i96 to i32
  call void @__asan_loadN_noabort(i32 %293, i32 4)
  %294 = load i32, ptr %length.i.i.i.i.i96, align 1
  %295 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %tb.i42, align 4
  %and.i.i.i.i97 = and i32 %296, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i97)
  %tobool.not.i.i.i83.i = icmp eq i32 %and.i.i.i.i97, 0
  br i1 %tobool.not.i.i.i83.i, label %if.end.i.i.i85.i, label %if.end19.i.i98.tpm_buf_append_u32.exit.i.i106_crit_edge

if.end19.i.i98.tpm_buf_append_u32.exit.i.i106_crit_edge: ; preds = %if.end19.i.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit.i.i106

if.end.i.i.i85.i:                                 ; preds = %if.end19.i.i98
  %add.i.i.i.i99 = add i32 %294, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i.i99)
  %cmp.i.i.i84.i = icmp ugt i32 %add.i.i.i.i99, 4096
  br i1 %cmp.i.i.i84.i, label %do.end.i.i.i.i101, label %if.end20.i.i.i86.i

do.end.i.i.i.i101:                                ; preds = %if.end.i.i.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %297 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %tb.i42, align 4
  %or.i.i.i.i100 = or i32 %298, 1
  store i32 %or.i.i.i.i100, ptr %tb.i42, align 4
  br label %tpm_buf_append_u32.exit.i.i106

if.end20.i.i.i86.i:                               ; preds = %if.end.i.i.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i.i102 = getelementptr i8, ptr %292, i32 %294
  %299 = ptrtoint ptr %arrayidx.i.i.i.i102 to i32
  call void @__asan_storeN_noabort(i32 %299, i32 4)
  store i32 %276, ptr %arrayidx.i.i.i.i102, align 1
  %300 = ptrtoint ptr %length.i.i.i.i.i96 to i32
  call void @__asan_storeN_noabort(i32 %300, i32 4)
  store i32 %add.i.i.i.i99, ptr %length.i.i.i.i.i96, align 1
  br label %tpm_buf_append_u32.exit.i.i106

tpm_buf_append_u32.exit.i.i106:                   ; preds = %if.end20.i.i.i86.i, %do.end.i.i.i.i101, %if.end19.i.i98.tpm_buf_append_u32.exit.i.i106_crit_edge
  %301 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %240, align 4
  %length.i.i.i91.i.i103 = getelementptr inbounds %struct.tpm_header, ptr %302, i32 0, i32 1
  %303 = ptrtoint ptr %length.i.i.i91.i.i103 to i32
  call void @__asan_loadN_noabort(i32 %303, i32 4)
  %304 = load i32, ptr %length.i.i.i91.i.i103, align 1
  %305 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %tb.i42, align 4
  %and.i.i92.i.i104 = and i32 %306, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i92.i.i104)
  %tobool.not.i.i93.i.i105 = icmp eq i32 %and.i.i92.i.i104, 0
  br i1 %tobool.not.i.i93.i.i105, label %if.end.i.i96.i.i109, label %tpm_buf_append_u32.exit.i.i106.tpm_buf_append_u32.exit101.i.i117_crit_edge

tpm_buf_append_u32.exit.i.i106.tpm_buf_append_u32.exit101.i.i117_crit_edge: ; preds = %tpm_buf_append_u32.exit.i.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit101.i.i117

if.end.i.i96.i.i109:                              ; preds = %tpm_buf_append_u32.exit.i.i106
  %add.i.i94.i.i107 = add i32 %304, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i94.i.i107)
  %cmp.i.i95.i.i108 = icmp ugt i32 %add.i.i94.i.i107, 4096
  br i1 %cmp.i.i95.i.i108, label %do.end.i.i98.i.i111, label %if.end20.i.i100.i.i113

do.end.i.i98.i.i111:                              ; preds = %if.end.i.i96.i.i109
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %307 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %tb.i42, align 4
  %or.i.i97.i.i110 = or i32 %308, 1
  store i32 %or.i.i97.i.i110, ptr %tb.i42, align 4
  br label %tpm_buf_append_u32.exit101.i.i117

if.end20.i.i100.i.i113:                           ; preds = %if.end.i.i96.i.i109
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i99.i.i112 = getelementptr i8, ptr %302, i32 %304
  %309 = ptrtoint ptr %arrayidx.i.i99.i.i112 to i32
  call void @__asan_storeN_noabort(i32 %309, i32 4)
  store i32 %in_len.1.i, ptr %arrayidx.i.i99.i.i112, align 1
  %310 = ptrtoint ptr %length.i.i.i91.i.i103 to i32
  call void @__asan_storeN_noabort(i32 %310, i32 4)
  store i32 %add.i.i94.i.i107, ptr %length.i.i.i91.i.i103, align 1
  br label %tpm_buf_append_u32.exit101.i.i117

tpm_buf_append_u32.exit101.i.i117:                ; preds = %if.end20.i.i100.i.i113, %do.end.i.i98.i.i111, %tpm_buf_append_u32.exit.i.i106.tpm_buf_append_u32.exit101.i.i117_crit_edge
  %311 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %240, align 4
  %length.i.i.i.i114 = getelementptr inbounds %struct.tpm_header, ptr %312, i32 0, i32 1
  %313 = ptrtoint ptr %length.i.i.i.i114 to i32
  call void @__asan_loadN_noabort(i32 %313, i32 4)
  %314 = load i32, ptr %length.i.i.i.i114, align 1
  %315 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %tb.i42, align 4
  %and.i.i.i115 = and i32 %316, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i115)
  %tobool.not.i.i.i116 = icmp eq i32 %and.i.i.i115, 0
  br i1 %tobool.not.i.i.i116, label %if.end.i.i88.i, label %tpm_buf_append_u32.exit101.i.i117.tpm_buf_append.exit.i.i126_crit_edge

tpm_buf_append_u32.exit101.i.i117.tpm_buf_append.exit.i.i126_crit_edge: ; preds = %tpm_buf_append_u32.exit101.i.i117
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append.exit.i.i126

if.end.i.i88.i:                                   ; preds = %tpm_buf_append_u32.exit101.i.i117
  %add.i.i.i118 = add i32 %314, %in_len.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i118)
  %cmp.i.i87.i = icmp ugt i32 %add.i.i.i118, 4096
  br i1 %cmp.i.i87.i, label %do.end.i.i.i120, label %if.end20.i.i.i122

do.end.i.i.i120:                                  ; preds = %if.end.i.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %317 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %tb.i42, align 4
  %or.i.i.i119 = or i32 %318, 1
  store i32 %or.i.i.i119, ptr %tb.i42, align 4
  br label %tpm_buf_append.exit.i.i126

if.end20.i.i.i122:                                ; preds = %if.end.i.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i121 = getelementptr i8, ptr %312, i32 %314
  %319 = call ptr @memcpy(ptr %arrayidx.i.i.i121, ptr %in.addr.1.i, i32 %in_len.1.i)
  %320 = ptrtoint ptr %length.i.i.i.i114 to i32
  call void @__asan_storeN_noabort(i32 %320, i32 4)
  store i32 %add.i.i.i118, ptr %length.i.i.i.i114, align 1
  br label %tpm_buf_append.exit.i.i126

tpm_buf_append.exit.i.i126:                       ; preds = %if.end20.i.i.i122, %do.end.i.i.i120, %tpm_buf_append_u32.exit101.i.i117.tpm_buf_append.exit.i.i126_crit_edge
  %321 = ptrtoint ptr %authhandle.i.i39 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %authhandle.i.i39, align 4
  %323 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %240, align 4
  %length.i.i.i104.i.i123 = getelementptr inbounds %struct.tpm_header, ptr %324, i32 0, i32 1
  %325 = ptrtoint ptr %length.i.i.i104.i.i123 to i32
  call void @__asan_loadN_noabort(i32 %325, i32 4)
  %326 = load i32, ptr %length.i.i.i104.i.i123, align 1
  %327 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %tb.i42, align 4
  %and.i.i105.i.i124 = and i32 %328, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i105.i.i124)
  %tobool.not.i.i106.i.i125 = icmp eq i32 %and.i.i105.i.i124, 0
  br i1 %tobool.not.i.i106.i.i125, label %if.end.i.i109.i.i129, label %tpm_buf_append.exit.i.i126.tpm_buf_append_u32.exit114.i.i137_crit_edge

tpm_buf_append.exit.i.i126.tpm_buf_append_u32.exit114.i.i137_crit_edge: ; preds = %tpm_buf_append.exit.i.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit114.i.i137

if.end.i.i109.i.i129:                             ; preds = %tpm_buf_append.exit.i.i126
  %add.i.i107.i.i127 = add i32 %326, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i107.i.i127)
  %cmp.i.i108.i.i128 = icmp ugt i32 %add.i.i107.i.i127, 4096
  br i1 %cmp.i.i108.i.i128, label %do.end.i.i111.i.i131, label %if.end20.i.i113.i.i133

do.end.i.i111.i.i131:                             ; preds = %if.end.i.i109.i.i129
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %329 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %tb.i42, align 4
  %or.i.i110.i.i130 = or i32 %330, 1
  store i32 %or.i.i110.i.i130, ptr %tb.i42, align 4
  br label %tpm_buf_append_u32.exit114.i.i137

if.end20.i.i113.i.i133:                           ; preds = %if.end.i.i109.i.i129
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i112.i.i132 = getelementptr i8, ptr %324, i32 %326
  %331 = ptrtoint ptr %arrayidx.i.i112.i.i132 to i32
  call void @__asan_storeN_noabort(i32 %331, i32 4)
  store i32 %322, ptr %arrayidx.i.i112.i.i132, align 1
  %332 = ptrtoint ptr %length.i.i.i104.i.i123 to i32
  call void @__asan_storeN_noabort(i32 %332, i32 4)
  store i32 %add.i.i107.i.i127, ptr %length.i.i.i104.i.i123, align 1
  br label %tpm_buf_append_u32.exit114.i.i137

tpm_buf_append_u32.exit114.i.i137:                ; preds = %if.end20.i.i113.i.i133, %do.end.i.i111.i.i131, %tpm_buf_append.exit.i.i126.tpm_buf_append_u32.exit114.i.i137_crit_edge
  %333 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %240, align 4
  %length.i.i116.i.i134 = getelementptr inbounds %struct.tpm_header, ptr %334, i32 0, i32 1
  %335 = ptrtoint ptr %length.i.i116.i.i134 to i32
  call void @__asan_loadN_noabort(i32 %335, i32 4)
  %336 = load i32, ptr %length.i.i116.i.i134, align 1
  %337 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %tb.i42, align 4
  %and.i117.i.i135 = and i32 %338, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i117.i.i135)
  %tobool.not.i118.i.i136 = icmp eq i32 %and.i117.i.i135, 0
  br i1 %tobool.not.i118.i.i136, label %if.end.i121.i.i140, label %tpm_buf_append_u32.exit114.i.i137.tpm_buf_append.exit126.i.i148_crit_edge

tpm_buf_append_u32.exit114.i.i137.tpm_buf_append.exit126.i.i148_crit_edge: ; preds = %tpm_buf_append_u32.exit114.i.i137
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append.exit126.i.i148

if.end.i121.i.i140:                               ; preds = %tpm_buf_append_u32.exit114.i.i137
  %add.i119.i.i138 = add i32 %336, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i119.i.i138)
  %cmp.i120.i.i139 = icmp ugt i32 %add.i119.i.i138, 4096
  br i1 %cmp.i120.i.i139, label %do.end.i123.i.i142, label %if.end20.i125.i.i144

do.end.i123.i.i142:                               ; preds = %if.end.i121.i.i140
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %339 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %tb.i42, align 4
  %or.i122.i.i141 = or i32 %340, 1
  store i32 %or.i122.i.i141, ptr %tb.i42, align 4
  br label %tpm_buf_append.exit126.i.i148

if.end20.i125.i.i144:                             ; preds = %if.end.i121.i.i140
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i124.i.i143 = getelementptr i8, ptr %334, i32 %336
  %341 = call ptr @memcpy(ptr %arrayidx.i124.i.i143, ptr %nonceodd.i.i36, i32 20)
  %342 = ptrtoint ptr %length.i.i116.i.i134 to i32
  call void @__asan_storeN_noabort(i32 %342, i32 4)
  store i32 %add.i119.i.i138, ptr %length.i.i116.i.i134, align 1
  br label %tpm_buf_append.exit126.i.i148

tpm_buf_append.exit126.i.i148:                    ; preds = %if.end20.i125.i.i144, %do.end.i123.i.i142, %tpm_buf_append_u32.exit114.i.i137.tpm_buf_append.exit126.i.i148_crit_edge
  %343 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %240, align 4
  %length.i.i.i128.i.i145 = getelementptr inbounds %struct.tpm_header, ptr %344, i32 0, i32 1
  %345 = ptrtoint ptr %length.i.i.i128.i.i145 to i32
  call void @__asan_loadN_noabort(i32 %345, i32 4)
  %346 = load i32, ptr %length.i.i.i128.i.i145, align 1
  %347 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %tb.i42, align 4
  %and.i.i129.i.i146 = and i32 %348, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i129.i.i146)
  %tobool.not.i.i130.i.i147 = icmp eq i32 %and.i.i129.i.i146, 0
  br i1 %tobool.not.i.i130.i.i147, label %if.end.i.i133.i.i151, label %tpm_buf_append.exit126.i.i148.tpm_buf_append_u8.exit.i.i159_crit_edge

tpm_buf_append.exit126.i.i148.tpm_buf_append_u8.exit.i.i159_crit_edge: ; preds = %tpm_buf_append.exit126.i.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u8.exit.i.i159

if.end.i.i133.i.i151:                             ; preds = %tpm_buf_append.exit126.i.i148
  %add.i.i131.i.i149 = add i32 %346, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i131.i.i149)
  %cmp.i.i132.i.i150 = icmp ugt i32 %add.i.i131.i.i149, 4096
  br i1 %cmp.i.i132.i.i150, label %do.end.i.i135.i.i153, label %if.end20.i.i137.i.i155

do.end.i.i135.i.i153:                             ; preds = %if.end.i.i133.i.i151
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %349 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %tb.i42, align 4
  %or.i.i134.i.i152 = or i32 %350, 1
  store i32 %or.i.i134.i.i152, ptr %tb.i42, align 4
  br label %tpm_buf_append_u8.exit.i.i159

if.end20.i.i137.i.i155:                           ; preds = %if.end.i.i133.i.i151
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i136.i.i154 = getelementptr i8, ptr %344, i32 %346
  %351 = ptrtoint ptr %arrayidx.i.i136.i.i154 to i32
  call void @__asan_store1_noabort(i32 %351)
  store i8 0, ptr %arrayidx.i.i136.i.i154, align 1
  %352 = ptrtoint ptr %length.i.i.i128.i.i145 to i32
  call void @__asan_storeN_noabort(i32 %352, i32 4)
  store i32 %add.i.i131.i.i149, ptr %length.i.i.i128.i.i145, align 1
  br label %tpm_buf_append_u8.exit.i.i159

tpm_buf_append_u8.exit.i.i159:                    ; preds = %if.end20.i.i137.i.i155, %do.end.i.i135.i.i153, %tpm_buf_append.exit126.i.i148.tpm_buf_append_u8.exit.i.i159_crit_edge
  %353 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %240, align 4
  %length.i.i139.i.i156 = getelementptr inbounds %struct.tpm_header, ptr %354, i32 0, i32 1
  %355 = ptrtoint ptr %length.i.i139.i.i156 to i32
  call void @__asan_loadN_noabort(i32 %355, i32 4)
  %356 = load i32, ptr %length.i.i139.i.i156, align 1
  %357 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %tb.i42, align 4
  %and.i140.i.i157 = and i32 %358, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140.i.i157)
  %tobool.not.i141.i.i158 = icmp eq i32 %and.i140.i.i157, 0
  br i1 %tobool.not.i141.i.i158, label %if.end.i144.i.i162, label %tpm_buf_append_u8.exit.i.i159.tpm_buf_append.exit149.i.i169_crit_edge

tpm_buf_append_u8.exit.i.i159.tpm_buf_append.exit149.i.i169_crit_edge: ; preds = %tpm_buf_append_u8.exit.i.i159
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append.exit149.i.i169

if.end.i144.i.i162:                               ; preds = %tpm_buf_append_u8.exit.i.i159
  %add.i142.i.i160 = add i32 %356, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i142.i.i160)
  %cmp.i143.i.i161 = icmp ugt i32 %add.i142.i.i160, 4096
  br i1 %cmp.i143.i.i161, label %do.end.i146.i.i164, label %if.end20.i148.i.i166

do.end.i146.i.i164:                               ; preds = %if.end.i144.i.i162
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %359 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %tb.i42, align 4
  %or.i145.i.i163 = or i32 %360, 1
  store i32 %or.i145.i.i163, ptr %tb.i42, align 4
  br label %tpm_buf_append.exit149.i.i169

if.end20.i148.i.i166:                             ; preds = %if.end.i144.i.i162
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i147.i.i165 = getelementptr i8, ptr %354, i32 %356
  %361 = call ptr @memcpy(ptr %arrayidx.i147.i.i165, ptr %authdata.i.i38, i32 20)
  %362 = ptrtoint ptr %length.i.i139.i.i156 to i32
  call void @__asan_storeN_noabort(i32 %362, i32 4)
  store i32 %add.i142.i.i160, ptr %length.i.i139.i.i156, align 1
  br label %tpm_buf_append.exit149.i.i169

tpm_buf_append.exit149.i.i169:                    ; preds = %if.end20.i148.i.i166, %do.end.i146.i.i164, %tpm_buf_append_u8.exit.i.i159.tpm_buf_append.exit149.i.i169_crit_edge
  %363 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %240, align 4
  %call22.i.i167 = call i32 @trusted_tpm_send(ptr noundef %364, i32 noundef 1024) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i167)
  %cmp23.i.i168 = icmp slt i32 %call22.i.i167, 0
  br i1 %cmp23.i.i168, label %do.end28.i.i171, label %if.end31.i.i175

do.end28.i.i171:                                  ; preds = %tpm_buf_append.exit149.i.i169
  call void @__sanitizer_cov_trace_pc() #11
  %call30.i.i170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call22.i.i167) #15
  br label %tpm_sign.exit.i

if.end31.i.i175:                                  ; preds = %tpm_buf_append.exit149.i.i169
  %365 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %240, align 4
  %arrayidx.i.i172 = getelementptr i8, ptr %366, i32 10
  %367 = ptrtoint ptr %arrayidx.i.i172 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx.i.i172, align 4
  %369 = ptrtoint ptr %datalen.i.i41 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %368, ptr %datalen.i.i41, align 4
  %370 = ptrtoint ptr %ordinal.i.i40 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %ordinal.i.i40, align 4
  %call35.i.i173 = call i32 (ptr, i32, ptr, ptr, i32, ...) @TSS_checkhmac1(ptr noundef %366, i32 noundef %371, ptr noundef nonnull %nonceodd.i.i36, ptr noundef nonnull %keyauth.i45, i32 noundef 20, i32 noundef 4, i32 noundef 10, i32 noundef %368, i32 noundef 14, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i173)
  %cmp36.i.i174 = icmp slt i32 %call35.i.i173, 0
  br i1 %cmp36.i.i174, label %do.end41.i.i177, label %if.end44.i.i179

do.end41.i.i177:                                  ; preds = %if.end31.i.i175
  call void @__sanitizer_cov_trace_pc() #11
  %call43.i.i176 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call35.i.i173) #15
  br label %tpm_sign.exit.i

if.end44.i.i179:                                  ; preds = %if.end31.i.i175
  call void @__sanitizer_cov_trace_pc() #11
  %372 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %240, align 4
  %add.ptr46.i.i178 = getelementptr i8, ptr %373, i32 14
  %374 = ptrtoint ptr %datalen.i.i41 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %datalen.i.i41, align 4
  %376 = call i32 @llvm.umin.i32(i32 %375, i32 %279) #9
  %377 = call ptr @memcpy(ptr %out, ptr %add.ptr46.i.i178, i32 %376)
  br label %tpm_sign.exit.i

tpm_sign.exit.i:                                  ; preds = %if.end44.i.i179, %do.end41.i.i177, %do.end28.i.i171, %if.end11.i.i95.tpm_sign.exit.i_crit_edge, %do.end8.i.i92, %do.end.i.i88
  %retval.0.i89.i = phi i32 [ %call.i79.i, %do.end.i.i88 ], [ %call3.i.i89, %do.end8.i.i92 ], [ %call22.i.i167, %do.end28.i.i171 ], [ %call35.i.i173, %do.end41.i.i177 ], [ %375, %if.end44.i.i179 ], [ %call15.i.i93, %if.end11.i.i95.tpm_sign.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datalen.i.i41) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ordinal.i.i40) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %authhandle.i.i39) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %authdata.i.i38) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %enonce.i.i37) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %nonceodd.i.i36) #9
  %378 = ptrtoint ptr %keyhandle.i43 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %keyhandle.i43, align 4
  %380 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %240, align 4
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_storeN_noabort(i32 %382, i32 2)
  store i16 193, ptr %381, align 1
  %length.i.i91.i = getelementptr inbounds %struct.tpm_header, ptr %381, i32 0, i32 1
  %383 = ptrtoint ptr %length.i.i91.i to i32
  call void @__asan_storeN_noabort(i32 %383, i32 4)
  store i32 10, ptr %length.i.i91.i, align 1
  %384 = getelementptr inbounds %struct.tpm_header, ptr %381, i32 0, i32 2
  %385 = ptrtoint ptr %384 to i32
  call void @__asan_storeN_noabort(i32 %385, i32 4)
  store i32 186, ptr %384, align 1
  %386 = load ptr, ptr %240, align 4
  %length.i.i.i.i92.i = getelementptr inbounds %struct.tpm_header, ptr %386, i32 0, i32 1
  %387 = ptrtoint ptr %length.i.i.i.i92.i to i32
  call void @__asan_loadN_noabort(i32 %387, i32 4)
  %388 = load i32, ptr %length.i.i.i.i92.i, align 1
  %389 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %tb.i42, align 4
  %and.i.i.i93.i = and i32 %390, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i93.i)
  %tobool.not.i.i.i94.i = icmp eq i32 %and.i.i.i93.i, 0
  br i1 %tobool.not.i.i.i94.i, label %if.end.i.i.i97.i, label %tpm_sign.exit.i.tpm_buf_append_u32.exit.i102.i_crit_edge

tpm_sign.exit.i.tpm_buf_append_u32.exit.i102.i_crit_edge: ; preds = %tpm_sign.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit.i102.i

if.end.i.i.i97.i:                                 ; preds = %tpm_sign.exit.i
  %add.i.i.i95.i = add i32 %388, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i.i95.i)
  %cmp.i.i.i96.i = icmp ugt i32 %add.i.i.i95.i, 4096
  br i1 %cmp.i.i.i96.i, label %do.end.i.i.i99.i, label %if.end20.i.i.i101.i

do.end.i.i.i99.i:                                 ; preds = %if.end.i.i.i97.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %391 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %tb.i42, align 4
  %or.i.i.i98.i = or i32 %392, 1
  store i32 %or.i.i.i98.i, ptr %tb.i42, align 4
  br label %tpm_buf_append_u32.exit.i102.i

if.end20.i.i.i101.i:                              ; preds = %if.end.i.i.i97.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i.i100.i = getelementptr i8, ptr %386, i32 %388
  %393 = ptrtoint ptr %arrayidx.i.i.i100.i to i32
  call void @__asan_storeN_noabort(i32 %393, i32 4)
  store i32 %379, ptr %arrayidx.i.i.i100.i, align 1
  %394 = ptrtoint ptr %length.i.i.i.i92.i to i32
  call void @__asan_storeN_noabort(i32 %394, i32 4)
  store i32 %add.i.i.i95.i, ptr %length.i.i.i.i92.i, align 1
  br label %tpm_buf_append_u32.exit.i102.i

tpm_buf_append_u32.exit.i102.i:                   ; preds = %if.end20.i.i.i101.i, %do.end.i.i.i99.i, %tpm_sign.exit.i.tpm_buf_append_u32.exit.i102.i_crit_edge
  %395 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %240, align 4
  %length.i.i.i5.i.i180 = getelementptr inbounds %struct.tpm_header, ptr %396, i32 0, i32 1
  %397 = ptrtoint ptr %length.i.i.i5.i.i180 to i32
  call void @__asan_loadN_noabort(i32 %397, i32 4)
  %398 = load i32, ptr %length.i.i.i5.i.i180, align 1
  %399 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %tb.i42, align 4
  %and.i.i6.i.i181 = and i32 %400, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i6.i.i181)
  %tobool.not.i.i7.i.i182 = icmp eq i32 %and.i.i6.i.i181, 0
  br i1 %tobool.not.i.i7.i.i182, label %if.end.i.i10.i.i185, label %tpm_buf_append_u32.exit.i102.i.tpm_flushspecific.exit.i190_crit_edge

tpm_buf_append_u32.exit.i102.i.tpm_flushspecific.exit.i190_crit_edge: ; preds = %tpm_buf_append_u32.exit.i102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_flushspecific.exit.i190

if.end.i.i10.i.i185:                              ; preds = %tpm_buf_append_u32.exit.i102.i
  %add.i.i8.i.i183 = add i32 %398, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i8.i.i183)
  %cmp.i.i9.i.i184 = icmp ugt i32 %add.i.i8.i.i183, 4096
  br i1 %cmp.i.i9.i.i184, label %do.end.i.i12.i.i187, label %if.end20.i.i14.i.i189

do.end.i.i12.i.i187:                              ; preds = %if.end.i.i10.i.i185
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %401 = ptrtoint ptr %tb.i42 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %tb.i42, align 4
  %or.i.i11.i.i186 = or i32 %402, 1
  store i32 %or.i.i11.i.i186, ptr %tb.i42, align 4
  br label %tpm_flushspecific.exit.i190

if.end20.i.i14.i.i189:                            ; preds = %if.end.i.i10.i.i185
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i13.i.i188 = getelementptr i8, ptr %396, i32 %398
  %403 = ptrtoint ptr %arrayidx.i.i13.i.i188 to i32
  call void @__asan_storeN_noabort(i32 %403, i32 4)
  store i32 1, ptr %arrayidx.i.i13.i.i188, align 1
  %404 = ptrtoint ptr %length.i.i.i5.i.i180 to i32
  call void @__asan_storeN_noabort(i32 %404, i32 4)
  store i32 %add.i.i8.i.i183, ptr %length.i.i.i5.i.i180, align 1
  br label %tpm_flushspecific.exit.i190

tpm_flushspecific.exit.i190:                      ; preds = %if.end20.i.i14.i.i189, %do.end.i.i12.i.i187, %tpm_buf_append_u32.exit.i102.i.tpm_flushspecific.exit.i190_crit_edge
  %405 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %240, align 4
  %call.i103.i = call i32 @trusted_tpm_send(ptr noundef %406, i32 noundef 1024) #9
  br label %error_free_tb.i

error_free_tb.i:                                  ; preds = %tpm_flushspecific.exit.i190, %if.end24.i86.error_free_tb.i_crit_edge
  %r.0.i191 = phi i32 [ %call26.i, %if.end24.i86.error_free_tb.i_crit_edge ], [ %retval.0.i89.i, %tpm_flushspecific.exit.i190 ]
  %407 = ptrtoint ptr %240 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %240, align 4
  %409 = ptrtoint ptr %408 to i32
  call void @free_pages(i32 noundef %409, i32 noundef 0) #9
  br label %error_free_asn1_wrapped.i

error_free_asn1_wrapped.i:                        ; preds = %error_free_tb.i, %if.end20.i.error_free_asn1_wrapped.i_crit_edge, %if.end17.i82.error_free_asn1_wrapped.i_crit_edge
  %r.1.i = phi i32 [ %r.0.i191, %error_free_tb.i ], [ -75, %if.end17.i82.error_free_asn1_wrapped.i_crit_edge ], [ -12, %if.end20.i.error_free_asn1_wrapped.i_crit_edge ]
  call void @kfree(ptr noundef %asn1_wrapped.1.i) #9
  br label %tpm_key_sign.exit

tpm_key_sign.exit:                                ; preds = %error_free_asn1_wrapped.i, %if.end8.i.tpm_key_sign.exit_crit_edge, %for.inc.5.i.i.tpm_key_sign.exit_crit_edge, %sw.bb3.tpm_key_sign.exit_crit_edge
  %retval.1.i = phi i32 [ %r.1.i, %error_free_asn1_wrapped.i ], [ -65, %sw.bb3.tpm_key_sign.exit_crit_edge ], [ -65, %for.inc.5.i.i.tpm_key_sign.exit_crit_edge ], [ -12, %if.end8.i.tpm_key_sign.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %keyauth.i45) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %srkauth.i44) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %keyhandle.i43) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i42) #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/asymmetric_keys/asym_tpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 722, 0\0A.popsection", ""() #9, !srcloc !121
  unreachable

sw.epilog:                                        ; preds = %tpm_key_sign.exit, %tpm_key_decrypt.exit, %tpm_key_encrypt.exit
  %ret.0 = phi i32 [ %retval.1.i, %tpm_key_sign.exit ], [ %retval.0.i35, %tpm_key_decrypt.exit ], [ %retval.0.i, %tpm_key_encrypt.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tpm_key_verify_signature(ptr nocapture noundef readonly %key, ptr noundef readonly %sig) #0 align 64 {
entry:
  %cwait = alloca %struct.crypto_wait, align 4
  %src_sg = alloca [2 x %struct.scatterlist], align 4
  %alg_name = alloca [128 x i8], align 4
  %der_pub_key = alloca [278 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.key, ptr %key, i32 0, i32 17
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %cwait) #9
  %3 = call ptr @memset(ptr %cwait, i32 255, i32 60)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %src_sg) #9
  %4 = call ptr @memset(ptr %src_sg, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %alg_name) #9
  %5 = call ptr @memset(ptr %alg_name, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 278, ptr nonnull %der_pub_key) #9
  %6 = call ptr @memset(ptr %der_pub_key, i32 255, i32 278)
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.body4, label %do.body10, !prof !119

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/asymmetric_keys/asym_tpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 746, 0\0A.popsection", ""() #9, !srcloc !122
  unreachable

do.body10:                                        ; preds = %entry
  %tobool11.not = icmp eq ptr %sig, null
  br i1 %tobool11.not, label %do.body21, label %do.body30, !prof !119

do.body21:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/asymmetric_keys/asym_tpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 747, 0\0A.popsection", ""() #9, !srcloc !123
  unreachable

do.body30:                                        ; preds = %do.body10
  %s = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 1
  %7 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s, align 4
  %tobool31.not = icmp eq ptr %8, null
  br i1 %tobool31.not, label %do.body41, label %do.end49, !prof !119

do.body41:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/asymmetric_keys/asym_tpm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 748, 0\0A.popsection", ""() #9, !srcloc !124
  unreachable

do.end49:                                         ; preds = %do.body30
  %digest = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 2
  %9 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %digest, align 4
  %tobool50.not = icmp eq ptr %10, null
  br i1 %tobool50.not, label %do.end49.cleanup_crit_edge, label %if.end52

do.end49.cleanup_crit_edge:                       ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end52:                                         ; preds = %do.end49
  %encoding = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 7
  %11 = ptrtoint ptr %encoding to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %encoding, align 4
  %hash_algo = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 6
  %13 = ptrtoint ptr %hash_algo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hash_algo, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(6) @.str.2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %if.end52
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then1.i, label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = call ptr @memcpy(ptr %alg_name, ptr @.str.3, i32 14)
  br label %if.end54

if.end.i:                                         ; preds = %if.then.i
  %call3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %alg_name, i32 noundef 128, ptr noundef nonnull @.str.4, ptr noundef nonnull %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %call3.i)
  %cmp4.i = icmp sgt i32 %call3.i, 127
  br i1 %cmp4.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end54_crit_edge

if.end.i.if.end54_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.end52
  %call8.i = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(4) @.str.5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp eq i32 %call8.i, 0
  br i1 %cmp9.i, label %if.then10.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %alg_name to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1920164096, ptr %alg_name, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then10.i, %if.end.i.if.end54_crit_edge, %if.then1.i
  %call56 = call ptr @crypto_alloc_akcipher(ptr noundef nonnull %alg_name, i32 noundef 0, i32 noundef 0) #9
  %cmp.i173 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call56 to i32
  br label %cleanup

if.end60:                                         ; preds = %if.end54
  %pub_key = getelementptr inbounds %struct.tpm_key, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %pub_key to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pub_key, align 4
  %pub_key_len = getelementptr inbounds %struct.tpm_key, ptr %2, i32 0, i32 4
  %20 = ptrtoint ptr %pub_key_len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pub_key_len, align 4
  %conv = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %21)
  %cmp.i.i = icmp ult i16 %21, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %21)
  %cmp1.i.i = icmp ult i16 %21, 256
  %..i.op.i = select i1 %cmp1.i.i, i32 3, i32 4
  %add.i = select i1 %cmp.i.i, i32 2, i32 %..i.op.i
  %add1.i = add nuw nsw i32 %conv, 6
  %add6.i = add nuw nsw i32 %add1.i, %add.i
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %der_pub_key, i32 1
  %22 = ptrtoint ptr %der_pub_key to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 48, ptr %der_pub_key, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add6.i)
  %cmp.i28.i = icmp ult i32 %add6.i, 128
  br i1 %cmp.i28.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = trunc i32 %add6.i to i8
  %23 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i.i, ptr %incdec.ptr.i.i, align 1
  br label %encode_tag_length.exit.i

if.end.i.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add6.i)
  %cmp1.i29.i = icmp ult i32 %add6.i, 256
  br i1 %cmp1.i29.i, label %if.then3.i.i, label %if.end8.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -127, ptr %incdec.ptr.i.i, align 1
  %conv5.i.i = trunc i32 %add6.i to i8
  %arrayidx6.i.i = getelementptr inbounds i8, ptr %der_pub_key, i32 2
  %25 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv5.i.i, ptr %arrayidx6.i.i, align 1
  br label %encode_tag_length.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -126, ptr %incdec.ptr.i.i, align 1
  %conv10.i.i = trunc i32 %add6.i to i16
  %add.ptr11.i.i = getelementptr inbounds i8, ptr %der_pub_key, i32 2
  %27 = ptrtoint ptr %add.ptr11.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %conv10.i.i, ptr %add.ptr11.i.i, align 1
  br label %encode_tag_length.exit.i

encode_tag_length.exit.i:                         ; preds = %if.end8.i.i, %if.then3.i.i, %if.then.i.i
  %.sink.i.i = phi i32 [ 4, %if.end8.i.i ], [ 3, %if.then3.i.i ], [ 2, %if.then.i.i ]
  %add.ptr12.i.i = getelementptr i8, ptr %der_pub_key, i32 %.sink.i.i
  %add8.i = add nuw nsw i32 %conv, 1
  %incdec.ptr.i30.i = getelementptr i8, ptr %add.ptr12.i.i, i32 1
  %28 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %add.ptr12.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 127, i16 %21)
  %cmp.i31.i = icmp ult i16 %21, 127
  br i1 %cmp.i31.i, label %if.then.i33.i, label %if.end.i35.i

if.then.i33.i:                                    ; preds = %encode_tag_length.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i32.i = trunc i32 %add8.i to i8
  %29 = ptrtoint ptr %incdec.ptr.i30.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i32.i, ptr %incdec.ptr.i30.i, align 1
  br label %derive_pub_key.exit

if.end.i35.i:                                     ; preds = %encode_tag_length.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %21)
  %cmp1.i34.i = icmp ult i16 %21, 255
  br i1 %cmp1.i34.i, label %if.then3.i38.i, label %if.end8.i41.i

if.then3.i38.i:                                   ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %incdec.ptr.i30.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -127, ptr %incdec.ptr.i30.i, align 1
  %conv5.i36.i = trunc i32 %add8.i to i8
  %arrayidx6.i37.i = getelementptr i8, ptr %add.ptr12.i.i, i32 2
  %31 = ptrtoint ptr %arrayidx6.i37.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv5.i36.i, ptr %arrayidx6.i37.i, align 1
  br label %derive_pub_key.exit

if.end8.i41.i:                                    ; preds = %if.end.i35.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %incdec.ptr.i30.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -126, ptr %incdec.ptr.i30.i, align 1
  %conv10.i39.i = trunc i32 %add8.i to i16
  %add.ptr11.i40.i = getelementptr i8, ptr %add.ptr12.i.i, i32 2
  %33 = ptrtoint ptr %add.ptr11.i40.i to i32
  call void @__asan_storeN_noabort(i32 %33, i32 2)
  store i16 %conv10.i39.i, ptr %add.ptr11.i40.i, align 1
  br label %derive_pub_key.exit

derive_pub_key.exit:                              ; preds = %if.end8.i41.i, %if.then3.i38.i, %if.then.i33.i
  %.sink.i42.i = phi i32 [ 4, %if.end8.i41.i ], [ 3, %if.then3.i38.i ], [ 2, %if.then.i33.i ]
  %add.ptr12.i43.i = getelementptr i8, ptr %add.ptr12.i.i, i32 %.sink.i42.i
  %34 = ptrtoint ptr %add.ptr12.i43.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %add.ptr12.i43.i, align 1
  %add.ptr.i = getelementptr i8, ptr %add.ptr12.i43.i, i32 1
  %35 = call ptr @memcpy(ptr %add.ptr.i, ptr %19, i32 %conv)
  %add.ptr11.i = getelementptr i8, ptr %add.ptr12.i43.i, i32 %add8.i
  %incdec.ptr.i45.i = getelementptr i8, ptr %add.ptr11.i, i32 1
  %36 = ptrtoint ptr %add.ptr11.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %add.ptr11.i, align 1
  %37 = ptrtoint ptr %incdec.ptr.i45.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 3, ptr %incdec.ptr.i45.i, align 1
  %add.ptr12.i48.i = getelementptr i8, ptr %add.ptr11.i, i32 2
  %38 = call ptr @memcpy(ptr %add.ptr12.i48.i, ptr @__const.derive_pub_key.e, i32 3)
  %add.ptr13.i = getelementptr i8, ptr %add.ptr12.i48.i, i32 3
  %39 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 0, ptr %add.ptr13.i, align 1
  call void asm sideeffect "", "r,~{memory}"(ptr %add.ptr13.i) #9, !srcloc !118
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr13.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %der_pub_key to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %call56, i32 0, i32 3
  %40 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %__crt_alg.i.i, align 4
  %set_pub_key.i = getelementptr i8, ptr %41, i32 -112
  %42 = ptrtoint ptr %set_pub_key.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %set_pub_key.i, align 16
  %call1.i = call i32 %43(ptr noundef %call56, ptr noundef nonnull %der_pub_key, i32 noundef %sub.ptr.sub.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp65 = icmp slt i32 %call1.i, 0
  br i1 %cmp65, label %derive_pub_key.exit.error_free_tfm.thread_crit_edge, label %if.end8.i.i179

derive_pub_key.exit.error_free_tfm.thread_crit_edge: ; preds = %derive_pub_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_tfm.thread

if.end8.i.i179:                                   ; preds = %derive_pub_key.exit
  %44 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %__crt_alg.i.i, align 4
  %reqsize.i.i = getelementptr i8, ptr %45, i32 -92
  %46 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %reqsize.i.i, align 4
  %add.i174 = add i32 %47, 128
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i174, i32 noundef 3264) #14
  %tobool.not.i180 = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i180, label %if.end8.i.i179.error_free_tfm.thread_crit_edge, label %if.end72, !prof !119

if.end8.i.i179.error_free_tfm.thread_crit_edge:   ; preds = %if.end8.i.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_tfm.thread

if.end72:                                         ; preds = %if.end8.i.i179
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call56, ptr %tfm1.i.i, align 16
  call void @sg_init_table(ptr noundef nonnull %src_sg, i32 noundef 2) #9
  %49 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s, align 4
  %s_size = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 3
  %51 = ptrtoint ptr %s_size to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %s_size, align 4
  %53 = ptrtoint ptr %50 to i32
  %cmp.i183 = icmp ugt ptr %50, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i183, label %land.lhs.true.i, label %if.end72.do.body5.i_crit_edge, !prof !125

if.end72.do.body5.i_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %if.end72
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %54 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %54, %50
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !125

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i = add i32 %53, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %55 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i184 = add i32 %55, %shr.i
  %call.i185 = call i32 @pfn_valid(i32 noundef %add.i184) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i185)
  %tobool.i = icmp eq i32 %call.i185, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !119

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %if.end72.do.body5.i_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !126
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %56 = load ptr, ptr @mem_map, align 4
  %add.ptr.i186 = getelementptr %struct.page, ptr %56, i32 %shr.i
  %57 = ptrtoint ptr %src_sg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %src_sg, align 4
  %59 = ptrtoint ptr %add.ptr.i186 to i32
  %and2.i.i.i = and i32 %59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i187 = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i187, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !125

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !127
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !125

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i = and i32 %53, 4095
  %and.i.i.i = and i32 %58, 3
  %or.i.i.i = or i32 %and.i.i.i, %59
  %60 = ptrtoint ptr %src_sg to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i.i.i, ptr %src_sg, align 4
  %offset1.i.i = getelementptr inbounds %struct.scatterlist, ptr %src_sg, i32 0, i32 1
  %61 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr inbounds %struct.scatterlist, ptr %src_sg, i32 0, i32 2
  %62 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %52, ptr %length.i.i, align 4
  %arrayidx76 = getelementptr inbounds [2 x %struct.scatterlist], ptr %src_sg, i32 0, i32 1
  %63 = ptrtoint ptr %digest to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %digest, align 4
  %digest_size = getelementptr inbounds %struct.public_key_signature, ptr %sig, i32 0, i32 4
  %65 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %digest_size, align 4
  %67 = ptrtoint ptr %64 to i32
  %cmp.i188 = icmp ugt ptr %64, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i188, label %land.lhs.true.i190, label %sg_set_buf.exit.do.body5.i197_crit_edge, !prof !125

sg_set_buf.exit.do.body5.i197_crit_edge:          ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i197

land.lhs.true.i190:                               ; preds = %sg_set_buf.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %68 = load ptr, ptr @high_memory, align 4
  %cmp1.i189 = icmp ugt ptr %68, %64
  br i1 %cmp1.i189, label %land.rhs.i196, label %land.lhs.true.i190.do.body5.i197_crit_edge, !prof !125

land.lhs.true.i190.do.body5.i197_crit_edge:       ; preds = %land.lhs.true.i190
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i197

land.rhs.i196:                                    ; preds = %land.lhs.true.i190
  %sub.i191 = add i32 %67, 1073741824
  %shr.i192 = lshr i32 %sub.i191, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %69 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i193 = add i32 %69, %shr.i192
  %call.i194 = call i32 @pfn_valid(i32 noundef %add.i193) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool.i195 = icmp eq i32 %call.i194, 0
  br i1 %tobool.i195, label %land.rhs.i196.do.body5.i197_crit_edge, label %do.end8.i201, !prof !119

land.rhs.i196.do.body5.i197_crit_edge:            ; preds = %land.rhs.i196
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body5.i197

do.body5.i197:                                    ; preds = %land.rhs.i196.do.body5.i197_crit_edge, %land.lhs.true.i190.do.body5.i197_crit_edge, %sg_set_buf.exit.do.body5.i197_crit_edge
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #9, !srcloc !126
  unreachable

do.end8.i201:                                     ; preds = %land.rhs.i196
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %70 = load ptr, ptr @mem_map, align 4
  %add.ptr.i198 = getelementptr %struct.page, ptr %70, i32 %shr.i192
  %71 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx76, align 4
  %73 = ptrtoint ptr %add.ptr.i198 to i32
  %and2.i.i.i199 = and i32 %73, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i199)
  %tobool.not.i.i.i200 = icmp eq i32 %and2.i.i.i199, 0
  br i1 %tobool.not.i.i.i200, label %do.body11.i.i.i205, label %do.body5.i.i.i202, !prof !125

do.body5.i.i.i202:                                ; preds = %do.end8.i201
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #9, !srcloc !127
  unreachable

do.body11.i.i.i205:                               ; preds = %do.end8.i201
  %and.i.i.i.i203 = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i203)
  %tobool.i.not.i.i.i204 = icmp eq i32 %and.i.i.i.i203, 0
  br i1 %tobool.i.not.i.i.i204, label %sg_set_buf.exit212, label %do.body19.i.i.i206, !prof !125

do.body19.i.i.i206:                               ; preds = %do.body11.i.i.i205
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #9, !srcloc !128
  unreachable

sg_set_buf.exit212:                               ; preds = %do.body11.i.i.i205
  %and.i207 = and i32 %67, 4095
  %and.i.i.i208 = and i32 %72, 3
  %or.i.i.i209 = or i32 %and.i.i.i208, %73
  %74 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or.i.i.i209, ptr %arrayidx76, align 4
  %offset1.i.i210 = getelementptr inbounds [2 x %struct.scatterlist], ptr %src_sg, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %offset1.i.i210 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and.i207, ptr %offset1.i.i210, align 4
  %length.i.i211 = getelementptr inbounds [2 x %struct.scatterlist], ptr %src_sg, i32 0, i32 1, i32 2
  %76 = ptrtoint ptr %length.i.i211 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %66, ptr %length.i.i211, align 4
  %77 = ptrtoint ptr %s_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %s_size, align 4
  %79 = ptrtoint ptr %digest_size to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %digest_size, align 4
  %src1.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i, i32 0, i32 1
  %81 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %src_sg, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i, i32 0, i32 2
  %82 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %dst2.i, align 4
  %src_len3.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i, i32 0, i32 3
  %83 = ptrtoint ptr %src_len3.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %78, ptr %src_len3.i, align 32
  %dst_len4.i = getelementptr inbounds %struct.akcipher_request, ptr %call9.i.i, i32 0, i32 4
  %84 = ptrtoint ptr %dst_len4.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %80, ptr %dst_len4.i, align 4
  %85 = ptrtoint ptr %cwait to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %cwait, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %cwait, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_completion.__key) #9
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 1
  %86 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @crypto_req_done, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %cwait, ptr %data2.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %call9.i.i, i32 0, i32 4
  %88 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1536, ptr %flags.i, align 4
  %89 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tfm1.i.i, align 16
  %__crt_alg.i.i213 = getelementptr inbounds %struct.crypto_tfm, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %__crt_alg.i.i213 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %__crt_alg.i.i213, align 4
  call void @crypto_stats_get(ptr noundef %92) #9
  %verify.i = getelementptr i8, ptr %92, i32 -124
  %93 = ptrtoint ptr %verify.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %verify.i, align 4
  %call2.i = call i32 %94(ptr noundef nonnull %call9.i.i) #9
  call void @crypto_stats_akcipher_verify(i32 noundef %call2.i, ptr noundef %92) #9
  %95 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call2.i, label %sg_set_buf.exit212.error_free_tfm_crit_edge [
    i32 -115, label %sg_set_buf.exit212.sw.bb.i_crit_edge
    i32 -16, label %sg_set_buf.exit212.sw.bb.i_crit_edge222
  ]

sg_set_buf.exit212.sw.bb.i_crit_edge222:          ; preds = %sg_set_buf.exit212
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sg_set_buf.exit212.sw.bb.i_crit_edge:             ; preds = %sg_set_buf.exit212
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sg_set_buf.exit212.error_free_tfm_crit_edge:      ; preds = %sg_set_buf.exit212
  call void @__sanitizer_cov_trace_pc() #11
  br label %error_free_tfm

sw.bb.i:                                          ; preds = %sg_set_buf.exit212.sw.bb.i_crit_edge, %sg_set_buf.exit212.sw.bb.i_crit_edge222
  call void @wait_for_completion(ptr noundef nonnull %cwait) #9
  %96 = ptrtoint ptr %cwait to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %cwait, align 4
  %err2.i = getelementptr inbounds %struct.crypto_wait, ptr %cwait, i32 0, i32 1
  %97 = ptrtoint ptr %err2.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %err2.i, align 4
  br label %error_free_tfm

error_free_tfm.thread:                            ; preds = %if.end8.i.i179.error_free_tfm.thread_crit_edge, %derive_pub_key.exit.error_free_tfm.thread_crit_edge
  %ret.0.ph = phi i32 [ %call1.i, %derive_pub_key.exit.error_free_tfm.thread_crit_edge ], [ -12, %if.end8.i.i179.error_free_tfm.thread_crit_edge ]
  call void @crypto_destroy_tfm(ptr noundef %call56, ptr noundef %call56) #9
  br label %cleanup

error_free_tfm:                                   ; preds = %sw.bb.i, %sg_set_buf.exit212.error_free_tfm_crit_edge
  %err.addr.0.i = phi i32 [ %call2.i, %sg_set_buf.exit212.error_free_tfm_crit_edge ], [ %98, %sw.bb.i ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #9
  call void @crypto_destroy_tfm(ptr noundef %call56, ptr noundef %call56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.addr.0.i)
  %cmp84 = icmp sgt i32 %err.addr.0.i, 0
  br i1 %cmp84, label %land.rhs, label %error_free_tfm.cleanup_crit_edge

error_free_tfm.cleanup_crit_edge:                 ; preds = %error_free_tfm
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.rhs:                                         ; preds = %error_free_tfm
  %.b172 = load i1, ptr @tpm_key_verify_signature.__already_done, align 1
  br i1 %.b172, label %land.rhs.cleanup_crit_edge, label %if.then101, !prof !125

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then101:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tpm_key_verify_signature.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 788, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then101, %land.rhs.cleanup_crit_edge, %error_free_tfm.cleanup_crit_edge, %error_free_tfm.thread, %if.then58, %if.end7.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end49.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then58 ], [ -65, %do.end49.cleanup_crit_edge ], [ -65, %if.end7.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ %ret.0.ph, %error_free_tfm.thread ], [ %err.addr.0.i, %error_free_tfm.cleanup_crit_edge ], [ -22, %if.then101 ], [ -22, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 278, ptr nonnull %der_pub_key) #9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %alg_name) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %src_sg) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %cwait) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_akcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_akcipher_encrypt(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tpm_loadkey2(ptr noundef %tb, ptr noundef %keyauth, ptr noundef %keyblob, i32 noundef %keybloblen, ptr nocapture noundef writeonly %newhandle) unnamed_addr #0 align 64 {
entry:
  %nonceodd = alloca [20 x i8], align 1
  %enonce = alloca [20 x i8], align 1
  %authdata = alloca [20 x i8], align 1
  %authhandle = alloca i32, align 4
  %ordinal = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %nonceodd) #9
  %0 = call ptr @memset(ptr %nonceodd, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %enonce) #9
  %1 = call ptr @memset(ptr %enonce, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %authdata) #9
  %2 = call ptr @memset(ptr %authdata, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %authhandle) #9
  %3 = ptrtoint ptr %authhandle to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %authhandle, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ordinal) #9
  %4 = ptrtoint ptr %ordinal to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65, ptr %ordinal, align 4
  %call = call i32 @oiap(ptr noundef %tb, ptr noundef nonnull %authhandle, ptr noundef nonnull %enonce) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @tpm_get_random(ptr noundef null, ptr noundef nonnull %nonceodd, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call3) #15
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call15 = call i32 (ptr, ptr, i32, ptr, ptr, i32, ...) @TSS_authhmac(ptr noundef nonnull %authdata, ptr noundef %keyauth, i32 noundef 20, ptr noundef nonnull %enonce, ptr noundef nonnull %nonceodd, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %ordinal, i32 noundef %keybloblen, ptr noundef %keyblob, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end11.cleanup_crit_edge, label %if.end19

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %data.i = getelementptr inbounds %struct.tpm_buf, ptr %tb, i32 0, i32 1
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 194, ptr %6, align 1
  %length.i = getelementptr inbounds %struct.tpm_header, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 10, ptr %length.i, align 1
  %9 = getelementptr inbounds %struct.tpm_header, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 65, ptr %9, align 1
  %11 = load ptr, ptr %data.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.tpm_header, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %length.i.i.i, align 1
  %14 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tb, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end19.tpm_buf_append_u32.exit_crit_edge

if.end19.tpm_buf_append_u32.exit_crit_edge:       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit

if.end.i.i:                                       ; preds = %if.end19
  %add.i.i = add i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 4096
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end20.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %16 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tb, align 4
  %or.i.i = or i32 %17, 1
  store i32 %or.i.i, ptr %tb, align 4
  br label %tpm_buf_append_u32.exit

if.end20.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr i8, ptr %11, i32 %13
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 1073741824, ptr %arrayidx.i.i, align 1
  %19 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 %add.i.i, ptr %length.i.i.i, align 1
  br label %tpm_buf_append_u32.exit

tpm_buf_append_u32.exit:                          ; preds = %if.end20.i.i, %do.end.i.i, %if.end19.tpm_buf_append_u32.exit_crit_edge
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %length.i.i = getelementptr inbounds %struct.tpm_header, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %length.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %length.i.i, align 1
  %24 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tb, align 4
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %tpm_buf_append_u32.exit.tpm_buf_append.exit_crit_edge

tpm_buf_append_u32.exit.tpm_buf_append.exit_crit_edge: ; preds = %tpm_buf_append_u32.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append.exit

if.end.i:                                         ; preds = %tpm_buf_append_u32.exit
  %add.i = add i32 %23, %keybloblen
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4096
  br i1 %cmp.i, label %do.end.i, label %if.end20.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %26 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tb, align 4
  %or.i = or i32 %27, 1
  store i32 %or.i, ptr %tb, align 4
  br label %tpm_buf_append.exit

if.end20.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr i8, ptr %21, i32 %23
  %28 = call ptr @memcpy(ptr %arrayidx.i, ptr %keyblob, i32 %keybloblen)
  %29 = ptrtoint ptr %length.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %add.i, ptr %length.i.i, align 1
  br label %tpm_buf_append.exit

tpm_buf_append.exit:                              ; preds = %if.end20.i, %do.end.i, %tpm_buf_append_u32.exit.tpm_buf_append.exit_crit_edge
  %30 = ptrtoint ptr %authhandle to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %authhandle, align 4
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %length.i.i.i3 = getelementptr inbounds %struct.tpm_header, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %length.i.i.i3 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %length.i.i.i3, align 1
  %36 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tb, align 4
  %and.i.i4 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i4)
  %tobool.not.i.i5 = icmp eq i32 %and.i.i4, 0
  br i1 %tobool.not.i.i5, label %if.end.i.i8, label %tpm_buf_append.exit.tpm_buf_append_u32.exit13_crit_edge

tpm_buf_append.exit.tpm_buf_append_u32.exit13_crit_edge: ; preds = %tpm_buf_append.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u32.exit13

if.end.i.i8:                                      ; preds = %tpm_buf_append.exit
  %add.i.i6 = add i32 %35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i6)
  %cmp.i.i7 = icmp ugt i32 %add.i.i6, 4096
  br i1 %cmp.i.i7, label %do.end.i.i10, label %if.end20.i.i12

do.end.i.i10:                                     ; preds = %if.end.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %38 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tb, align 4
  %or.i.i9 = or i32 %39, 1
  store i32 %or.i.i9, ptr %tb, align 4
  br label %tpm_buf_append_u32.exit13

if.end20.i.i12:                                   ; preds = %if.end.i.i8
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i11 = getelementptr i8, ptr %33, i32 %35
  %40 = ptrtoint ptr %arrayidx.i.i11 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %31, ptr %arrayidx.i.i11, align 1
  %41 = ptrtoint ptr %length.i.i.i3 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %add.i.i6, ptr %length.i.i.i3, align 1
  br label %tpm_buf_append_u32.exit13

tpm_buf_append_u32.exit13:                        ; preds = %if.end20.i.i12, %do.end.i.i10, %tpm_buf_append.exit.tpm_buf_append_u32.exit13_crit_edge
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %length.i.i15 = getelementptr inbounds %struct.tpm_header, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %length.i.i15 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %length.i.i15, align 1
  %46 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tb, align 4
  %and.i16 = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i16)
  %tobool.not.i17 = icmp eq i32 %and.i16, 0
  br i1 %tobool.not.i17, label %if.end.i20, label %tpm_buf_append_u32.exit13.tpm_buf_append.exit25_crit_edge

tpm_buf_append_u32.exit13.tpm_buf_append.exit25_crit_edge: ; preds = %tpm_buf_append_u32.exit13
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append.exit25

if.end.i20:                                       ; preds = %tpm_buf_append_u32.exit13
  %add.i18 = add i32 %45, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i18)
  %cmp.i19 = icmp ugt i32 %add.i18, 4096
  br i1 %cmp.i19, label %do.end.i22, label %if.end20.i24

do.end.i22:                                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %48 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tb, align 4
  %or.i21 = or i32 %49, 1
  store i32 %or.i21, ptr %tb, align 4
  br label %tpm_buf_append.exit25

if.end20.i24:                                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i23 = getelementptr i8, ptr %43, i32 %45
  %50 = call ptr @memcpy(ptr %arrayidx.i23, ptr %nonceodd, i32 20)
  %51 = ptrtoint ptr %length.i.i15 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %add.i18, ptr %length.i.i15, align 1
  br label %tpm_buf_append.exit25

tpm_buf_append.exit25:                            ; preds = %if.end20.i24, %do.end.i22, %tpm_buf_append_u32.exit13.tpm_buf_append.exit25_crit_edge
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i, align 4
  %length.i.i.i27 = getelementptr inbounds %struct.tpm_header, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %length.i.i.i27 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %length.i.i.i27, align 1
  %56 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tb, align 4
  %and.i.i28 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i28)
  %tobool.not.i.i29 = icmp eq i32 %and.i.i28, 0
  br i1 %tobool.not.i.i29, label %if.end.i.i32, label %tpm_buf_append.exit25.tpm_buf_append_u8.exit_crit_edge

tpm_buf_append.exit25.tpm_buf_append_u8.exit_crit_edge: ; preds = %tpm_buf_append.exit25
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append_u8.exit

if.end.i.i32:                                     ; preds = %tpm_buf_append.exit25
  %add.i.i30 = add i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i.i30)
  %cmp.i.i31 = icmp ugt i32 %add.i.i30, 4096
  br i1 %cmp.i.i31, label %do.end.i.i34, label %if.end20.i.i36

do.end.i.i34:                                     ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %58 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tb, align 4
  %or.i.i33 = or i32 %59, 1
  store i32 %or.i.i33, ptr %tb, align 4
  br label %tpm_buf_append_u8.exit

if.end20.i.i36:                                   ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i35 = getelementptr i8, ptr %53, i32 %55
  %60 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %arrayidx.i.i35, align 1
  %61 = ptrtoint ptr %length.i.i.i27 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 4)
  store i32 %add.i.i30, ptr %length.i.i.i27, align 1
  br label %tpm_buf_append_u8.exit

tpm_buf_append_u8.exit:                           ; preds = %if.end20.i.i36, %do.end.i.i34, %tpm_buf_append.exit25.tpm_buf_append_u8.exit_crit_edge
  %62 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i, align 4
  %length.i.i38 = getelementptr inbounds %struct.tpm_header, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %length.i.i38 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %length.i.i38, align 1
  %66 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tb, align 4
  %and.i39 = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i39)
  %tobool.not.i40 = icmp eq i32 %and.i39, 0
  br i1 %tobool.not.i40, label %if.end.i43, label %tpm_buf_append_u8.exit.tpm_buf_append.exit48_crit_edge

tpm_buf_append_u8.exit.tpm_buf_append.exit48_crit_edge: ; preds = %tpm_buf_append_u8.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tpm_buf_append.exit48

if.end.i43:                                       ; preds = %tpm_buf_append_u8.exit
  %add.i41 = add i32 %65, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add.i41)
  %cmp.i42 = icmp ugt i32 %add.i41, 4096
  br i1 %cmp.i42, label %do.end.i45, label %if.end20.i47

do.end.i45:                                       ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 376, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  %68 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tb, align 4
  %or.i44 = or i32 %69, 1
  store i32 %or.i44, ptr %tb, align 4
  br label %tpm_buf_append.exit48

if.end20.i47:                                     ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i46 = getelementptr i8, ptr %63, i32 %65
  %70 = call ptr @memcpy(ptr %arrayidx.i46, ptr %authdata, i32 20)
  %71 = ptrtoint ptr %length.i.i38 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %add.i41, ptr %length.i.i38, align 1
  br label %tpm_buf_append.exit48

tpm_buf_append.exit48:                            ; preds = %if.end20.i47, %do.end.i45, %tpm_buf_append_u8.exit.tpm_buf_append.exit48_crit_edge
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i, align 4
  %call22 = call i32 @trusted_tpm_send(ptr noundef %73, i32 noundef 1024) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end28, label %if.end31

do.end28:                                         ; preds = %tpm_buf_append.exit48
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call22) #15
  br label %cleanup

if.end31:                                         ; preds = %tpm_buf_append.exit48
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i, align 4
  %76 = ptrtoint ptr %ordinal to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ordinal, align 4
  %call34 = call i32 (ptr, i32, ptr, ptr, i32, ...) @TSS_checkhmac1(ptr noundef %75, i32 noundef %77, ptr noundef nonnull %nonceodd, ptr noundef %keyauth, i32 noundef 20, i32 noundef 0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end40, label %if.end43

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call34) #15
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i, align 4
  %arrayidx = getelementptr i8, ptr %79, i32 10
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx, align 4
  %82 = ptrtoint ptr %newhandle to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %newhandle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end40, %do.end28, %if.end11.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %do.end8 ], [ %call22, %do.end28 ], [ %call34, %do.end40 ], [ 0, %if.end43 ], [ %call15, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ordinal) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %authhandle) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %authdata) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %enonce) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %nonceodd) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oiap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tpm_get_random(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @TSS_authhmac(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trusted_tpm_send(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @TSS_checkhmac1(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_akcipher_verify(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !100, !101, !103, !104, !106, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__ksymtab_tpm_key_create, !1, !"__ksymtab_tpm_key_create", i1 false, i1 false}
!1 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 938, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 945, i32 12}
!4 = !{ptr @asym_tpm_subtype, !5, !"asym_tpm_subtype", i1 false, i1 false}
!5 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 943, i32 31}
!6 = !{ptr @__ksymtab_asym_tpm_subtype, !7, !"__ksymtab_asym_tpm_subtype", i1 false, i1 false}
!7 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 953, i32 1}
!8 = !{ptr @__UNIQUE_ID_description244, !9, !"__UNIQUE_ID_description244", i1 false, i1 false}
!9 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 955, i32 1}
!10 = !{ptr @__UNIQUE_ID_author245, !11, !"__UNIQUE_ID_author245", i1 false, i1 false}
!11 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 956, i32 1}
!12 = !{ptr @__UNIQUE_ID_file246, !13, !"__UNIQUE_ID_file246", i1 false, i1 false}
!13 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 957, i32 1}
!14 = !{ptr @__UNIQUE_ID_license247, !13, !"__UNIQUE_ID_license247", i1 false, i1 false}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 292, i32 16}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 368, i32 23}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 370, i32 21}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 374, i32 47}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 381, i32 23}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 382, i32 20}
!27 = !{ptr @init_completion.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../include/linux/completion.h", i32 87, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 48, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @tpm_loadkey2._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @tpm_loadkey2._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 55, i32 3}
!38 = !{ptr @tpm_loadkey2._entry.11, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tpm_loadkey2._entry_ptr.13, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 77, i32 3}
!42 = !{ptr @tpm_loadkey2._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tpm_loadkey2._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 84, i32 3}
!46 = !{ptr @tpm_loadkey2._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @tpm_loadkey2._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/tpm.h", i32 376, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 128, i32 3}
!53 = !{ptr @tpm_unbind._entry, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @tpm_unbind._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @tpm_unbind._entry.23, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 135, i32 3}
!57 = !{ptr @tpm_unbind._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @tpm_unbind._entry.25, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 159, i32 3}
!60 = !{ptr @tpm_unbind._entry_ptr.26, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @tpm_unbind._entry.27, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 171, i32 3}
!63 = !{ptr @tpm_unbind._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 603, i32 2}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 604, i32 2}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 605, i32 2}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 606, i32 2}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 607, i32 2}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 608, i32 2}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 609, i32 2}
!78 = !{ptr @asn1_templates, !79, !"asn1_templates", i1 false, i1 false}
!79 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 601, i32 3}
!80 = !{ptr @digest_info_md5, !81, !"digest_info_md5", i1 false, i1 false}
!81 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 555, i32 17}
!82 = !{ptr @digest_info_sha1, !83, !"digest_info_sha1", i1 false, i1 false}
!83 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 561, i32 17}
!84 = !{ptr @digest_info_rmd160, !85, !"digest_info_rmd160", i1 false, i1 false}
!85 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 567, i32 17}
!86 = !{ptr @digest_info_sha256, !87, !"digest_info_sha256", i1 false, i1 false}
!87 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 579, i32 17}
!88 = !{ptr @digest_info_sha384, !89, !"digest_info_sha384", i1 false, i1 false}
!89 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 585, i32 17}
!90 = !{ptr @digest_info_sha512, !91, !"digest_info_sha512", i1 false, i1 false}
!91 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 591, i32 17}
!92 = !{ptr @digest_info_sha224, !93, !"digest_info_sha224", i1 false, i1 false}
!93 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 573, i32 17}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 211, i32 3}
!96 = !{ptr @tpm_sign._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @tpm_sign._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @tpm_sign._entry.37, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 218, i32 3}
!100 = !{ptr @tpm_sign._entry_ptr.38, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @tpm_sign._entry.39, !102, !"_entry", i1 false, i1 false}
!102 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 242, i32 3}
!103 = !{ptr @tpm_sign._entry_ptr.40, !102, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @tpm_sign._entry.41, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 254, i32 3}
!106 = !{ptr @tpm_sign._entry_ptr.42, !105, !"_entry_ptr", i1 false, i1 false}
!107 = distinct !{null, !108, !"__already_done", i1 false, i1 false}
!108 = !{!"../crypto/asymmetric_keys/asym_tpm.c", i32 788, i32 6}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 2149181811}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{!"auto-init"}
!121 = !{i64 2154894615, i64 2154895113, i64 2154894652, i64 2154894708, i64 2154894742, i64 2154894766, i64 2154894807, i64 2154894828, i64 2154894856, i64 2154894890}
!122 = !{i64 2154897951, i64 2154898449, i64 2154897988, i64 2154898044, i64 2154898078, i64 2154898102, i64 2154898143, i64 2154898164, i64 2154898192, i64 2154898226}
!123 = !{i64 2154899557, i64 2154900055, i64 2154899594, i64 2154899650, i64 2154899684, i64 2154899708, i64 2154899749, i64 2154899770, i64 2154899798, i64 2154899832}
!124 = !{i64 2154901169, i64 2154901667, i64 2154901206, i64 2154901262, i64 2154901296, i64 2154901320, i64 2154901361, i64 2154901382, i64 2154901410, i64 2154901444}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2153639753, i64 2153640245, i64 2153639790, i64 2153639846, i64 2153639880, i64 2153639904, i64 2153639945, i64 2153639966, i64 2153639994, i64 2153640028}
!127 = !{i64 2153633434, i64 2153633926, i64 2153633471, i64 2153633527, i64 2153633561, i64 2153633585, i64 2153633626, i64 2153633647, i64 2153633675, i64 2153633709}
!128 = !{i64 2153635044, i64 2153635536, i64 2153635081, i64 2153635137, i64 2153635171, i64 2153635195, i64 2153635236, i64 2153635257, i64 2153635285, i64 2153635319}
