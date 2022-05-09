; ModuleID = '/llk/IR_all_yes/crypto/ecc.c_pt.bc'
source_filename = "../crypto/ecc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ecc_get_curve25519\22, \22a\22\09"
module asm "\09.weak\09__crc_ecc_get_curve25519\09\09\09\09"
module asm "\09.long\09__crc_ecc_get_curve25519\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_get_curve25519:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_get_curve25519\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_get_curve25519:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ecc_get_curve\22, \22a\22\09"
module asm "\09.weak\09__crc_ecc_get_curve\09\09\09\09"
module asm "\09.long\09__crc_ecc_get_curve\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_get_curve:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_get_curve\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_get_curve:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ecc_alloc_point\22, \22a\22\09"
module asm "\09.weak\09__crc_ecc_alloc_point\09\09\09\09"
module asm "\09.long\09__crc_ecc_alloc_point\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_alloc_point:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_alloc_point\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_alloc_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ecc_free_point\22, \22a\22\09"
module asm "\09.weak\09__crc_ecc_free_point\09\09\09\09"
module asm "\09.long\09__crc_ecc_free_point\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_free_point:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_free_point\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_free_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vli_is_zero\22, \22a\22\09"
module asm "\09.weak\09__crc_vli_is_zero\09\09\09\09"
module asm "\09.long\09__crc_vli_is_zero\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_is_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_is_zero\22\09\09\09\09\09"
module asm "__kstrtabns_vli_is_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vli_num_bits\22, \22a\22\09"
module asm "\09.weak\09__crc_vli_num_bits\09\09\09\09"
module asm "\09.long\09__crc_vli_num_bits\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_num_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_num_bits\22\09\09\09\09\09"
module asm "__kstrtabns_vli_num_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vli_from_be64\22, \22a\22\09"
module asm "\09.weak\09__crc_vli_from_be64\09\09\09\09"
module asm "\09.long\09__crc_vli_from_be64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_from_be64:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_from_be64\22\09\09\09\09\09"
module asm "__kstrtabns_vli_from_be64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vli_from_le64\22, \22a\22\09"
module asm "\09.weak\09__crc_vli_from_le64\09\09\09\09"
module asm "\09.long\09__crc_vli_from_le64\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_from_le64:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_from_le64\22\09\09\09\09\09"
module asm "__kstrtabns_vli_from_le64:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vli_cmp\22, \22a\22\09"
module asm "\09.weak\09__crc_vli_cmp\09\09\09\09"
module asm "\09.long\09__crc_vli_cmp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_cmp:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_cmp\22\09\09\09\09\09"
module asm "__kstrtabns_vli_cmp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vli_sub\22, \22a\22\09"
module asm "\09.weak\09__crc_vli_sub\09\09\09\09"
module asm "\09.long\09__crc_vli_sub\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_sub:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_sub\22\09\09\09\09\09"
module asm "__kstrtabns_vli_sub:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vli_mod_mult_slow\22, \22a\22\09"
module asm "\09.weak\09__crc_vli_mod_mult_slow\09\09\09\09"
module asm "\09.long\09__crc_vli_mod_mult_slow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_mod_mult_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_mod_mult_slow\22\09\09\09\09\09"
module asm "__kstrtabns_vli_mod_mult_slow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vli_mod_inv\22, \22a\22\09"
module asm "\09.weak\09__crc_vli_mod_inv\09\09\09\09"
module asm "\09.long\09__crc_vli_mod_inv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vli_mod_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22vli_mod_inv\22\09\09\09\09\09"
module asm "__kstrtabns_vli_mod_inv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ecc_point_is_zero\22, \22a\22\09"
module asm "\09.weak\09__crc_ecc_point_is_zero\09\09\09\09"
module asm "\09.long\09__crc_ecc_point_is_zero\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_point_is_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_point_is_zero\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_point_is_zero:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ecc_point_mult_shamir\22, \22a\22\09"
module asm "\09.weak\09__crc_ecc_point_mult_shamir\09\09\09\09"
module asm "\09.long\09__crc_ecc_point_mult_shamir\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_point_mult_shamir:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_point_mult_shamir\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_point_mult_shamir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ecc_is_key_valid\22, \22a\22\09"
module asm "\09.weak\09__crc_ecc_is_key_valid\09\09\09\09"
module asm "\09.long\09__crc_ecc_is_key_valid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_is_key_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_is_key_valid\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_is_key_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ecc_gen_privkey\22, \22a\22\09"
module asm "\09.weak\09__crc_ecc_gen_privkey\09\09\09\09"
module asm "\09.long\09__crc_ecc_gen_privkey\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_gen_privkey:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_gen_privkey\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_gen_privkey:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ecc_make_pub_key\22, \22a\22\09"
module asm "\09.weak\09__crc_ecc_make_pub_key\09\09\09\09"
module asm "\09.long\09__crc_ecc_make_pub_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_make_pub_key:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_make_pub_key\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_make_pub_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ecc_is_pubkey_valid_partial\22, \22a\22\09"
module asm "\09.weak\09__crc_ecc_is_pubkey_valid_partial\09\09\09\09"
module asm "\09.long\09__crc_ecc_is_pubkey_valid_partial\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_is_pubkey_valid_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_is_pubkey_valid_partial\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_is_pubkey_valid_partial:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ecc_is_pubkey_valid_full\22, \22a\22\09"
module asm "\09.weak\09__crc_ecc_is_pubkey_valid_full\09\09\09\09"
module asm "\09.long\09__crc_ecc_is_pubkey_valid_full\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ecc_is_pubkey_valid_full:\09\09\09\09\09"
module asm "\09.asciz \09\22ecc_is_pubkey_valid_full\22\09\09\09\09\09"
module asm "__kstrtabns_ecc_is_pubkey_valid_full:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_ecdh_shared_secret\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_ecdh_shared_secret\09\09\09\09"
module asm "\09.long\09__crc_crypto_ecdh_shared_secret\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_ecdh_shared_secret:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_ecdh_shared_secret\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_ecdh_shared_secret:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ecc_curve = type { ptr, %struct.ecc_point, ptr, ptr, ptr, ptr }
%struct.ecc_point = type { ptr, ptr, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@ecc_25519 = internal constant { %struct.ecc_curve, [32 x i8] } { %struct.ecc_curve { ptr @.str.1, %struct.ecc_point { ptr @curve25519_g_x, ptr null, i8 4 }, ptr @curve25519_p, ptr null, ptr @curve25519_a, ptr null }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_ecc_get_curve25519 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_get_curve25519 = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_get_curve25519 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_get_curve25519 to i32), ptr @__kstrtab_ecc_get_curve25519, ptr @__kstrtabns_ecc_get_curve25519 }, section "___ksymtab+ecc_get_curve25519", align 4
@nist_p192 = internal global { %struct.ecc_curve, [32 x i8] } { %struct.ecc_curve { ptr @.str.2, %struct.ecc_point { ptr @nist_p192_g_x, ptr @nist_p192_g_y, i8 3 }, ptr @nist_p192_p, ptr @nist_p192_n, ptr @nist_p192_a, ptr @nist_p192_b }, [32 x i8] zeroinitializer }, align 32
@nist_p256 = internal global { %struct.ecc_curve, [32 x i8] } { %struct.ecc_curve { ptr @.str.3, %struct.ecc_point { ptr @nist_p256_g_x, ptr @nist_p256_g_y, i8 4 }, ptr @nist_p256_p, ptr @nist_p256_n, ptr @nist_p256_a, ptr @nist_p256_b }, [32 x i8] zeroinitializer }, align 32
@nist_p384 = internal global { %struct.ecc_curve, [32 x i8] } { %struct.ecc_curve { ptr @.str.4, %struct.ecc_point { ptr @nist_p384_g_x, ptr @nist_p384_g_y, i8 6 }, ptr @nist_p384_p, ptr @nist_p384_n, ptr @nist_p384_a, ptr @nist_p384_b }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_ecc_get_curve = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_get_curve = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_get_curve = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_get_curve to i32), ptr @__kstrtab_ecc_get_curve, ptr @__kstrtabns_ecc_get_curve }, section "___ksymtab+ecc_get_curve", align 4
@__kstrtab_ecc_alloc_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_alloc_point = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_alloc_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_alloc_point to i32), ptr @__kstrtab_ecc_alloc_point, ptr @__kstrtabns_ecc_alloc_point }, section "___ksymtab+ecc_alloc_point", align 4
@__kstrtab_ecc_free_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_free_point = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_free_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_free_point to i32), ptr @__kstrtab_ecc_free_point, ptr @__kstrtabns_ecc_free_point }, section "___ksymtab+ecc_free_point", align 4
@__kstrtab_vli_is_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_is_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_is_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_is_zero to i32), ptr @__kstrtab_vli_is_zero, ptr @__kstrtabns_vli_is_zero }, section "___ksymtab+vli_is_zero", align 4
@__kstrtab_vli_num_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_num_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_num_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_num_bits to i32), ptr @__kstrtab_vli_num_bits, ptr @__kstrtabns_vli_num_bits }, section "___ksymtab+vli_num_bits", align 4
@__kstrtab_vli_from_be64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_from_be64 = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_from_be64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_from_be64 to i32), ptr @__kstrtab_vli_from_be64, ptr @__kstrtabns_vli_from_be64 }, section "___ksymtab+vli_from_be64", align 4
@__kstrtab_vli_from_le64 = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_from_le64 = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_from_le64 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_from_le64 to i32), ptr @__kstrtab_vli_from_le64, ptr @__kstrtabns_vli_from_le64 }, section "___ksymtab+vli_from_le64", align 4
@__kstrtab_vli_cmp = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_cmp = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_cmp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_cmp to i32), ptr @__kstrtab_vli_cmp, ptr @__kstrtabns_vli_cmp }, section "___ksymtab+vli_cmp", align 4
@__kstrtab_vli_sub = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_sub = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_sub = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_sub to i32), ptr @__kstrtab_vli_sub, ptr @__kstrtabns_vli_sub }, section "___ksymtab+vli_sub", align 4
@__kstrtab_vli_mod_mult_slow = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_mod_mult_slow = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_mod_mult_slow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_mod_mult_slow to i32), ptr @__kstrtab_vli_mod_mult_slow, ptr @__kstrtabns_vli_mod_mult_slow }, section "___ksymtab+vli_mod_mult_slow", align 4
@__kstrtab_vli_mod_inv = external dso_local constant [0 x i8], align 1
@__kstrtabns_vli_mod_inv = external dso_local constant [0 x i8], align 1
@__ksymtab_vli_mod_inv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vli_mod_inv to i32), ptr @__kstrtab_vli_mod_inv, ptr @__kstrtabns_vli_mod_inv }, section "___ksymtab+vli_mod_inv", align 4
@__kstrtab_ecc_point_is_zero = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_point_is_zero = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_point_is_zero = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_point_is_zero to i32), ptr @__kstrtab_ecc_point_is_zero, ptr @__kstrtabns_ecc_point_is_zero }, section "___ksymtab+ecc_point_is_zero", align 4
@__kstrtab_ecc_point_mult_shamir = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_point_mult_shamir = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_point_mult_shamir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_point_mult_shamir to i32), ptr @__kstrtab_ecc_point_mult_shamir, ptr @__kstrtabns_ecc_point_mult_shamir }, section "___ksymtab+ecc_point_mult_shamir", align 4
@__kstrtab_ecc_is_key_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_is_key_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_is_key_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_is_key_valid to i32), ptr @__kstrtab_ecc_is_key_valid, ptr @__kstrtabns_ecc_is_key_valid }, section "___ksymtab+ecc_is_key_valid", align 4
@crypto_default_rng = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_ecc_gen_privkey = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_gen_privkey = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_gen_privkey = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_gen_privkey to i32), ptr @__kstrtab_ecc_gen_privkey, ptr @__kstrtabns_ecc_gen_privkey }, section "___ksymtab+ecc_gen_privkey", align 4
@__kstrtab_ecc_make_pub_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_make_pub_key = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_make_pub_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_make_pub_key to i32), ptr @__kstrtab_ecc_make_pub_key, ptr @__kstrtabns_ecc_make_pub_key }, section "___ksymtab+ecc_make_pub_key", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"crypto/ecc.c\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_ecc_is_pubkey_valid_partial = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_is_pubkey_valid_partial = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_is_pubkey_valid_partial = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_is_pubkey_valid_partial to i32), ptr @__kstrtab_ecc_is_pubkey_valid_partial, ptr @__kstrtabns_ecc_is_pubkey_valid_partial }, section "___ksymtab+ecc_is_pubkey_valid_partial", align 4
@__kstrtab_ecc_is_pubkey_valid_full = external dso_local constant [0 x i8], align 1
@__kstrtabns_ecc_is_pubkey_valid_full = external dso_local constant [0 x i8], align 1
@__ksymtab_ecc_is_pubkey_valid_full = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ecc_is_pubkey_valid_full to i32), ptr @__kstrtab_ecc_is_pubkey_valid_full, ptr @__kstrtabns_ecc_is_pubkey_valid_full }, section "___ksymtab+ecc_is_pubkey_valid_full", align 4
@__kstrtab_crypto_ecdh_shared_secret = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_ecdh_shared_secret = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_ecdh_shared_secret = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_ecdh_shared_secret to i32), ptr @__kstrtab_crypto_ecdh_shared_secret, ptr @__kstrtabns_crypto_ecdh_shared_secret }, section "___ksymtab+crypto_ecdh_shared_secret", align 4
@__UNIQUE_ID_file175 = internal constant [20 x i8] c"ecc.file=crypto/ecc\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [25 x i8] c"ecc.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"curve25519\00", [21 x i8] zeroinitializer }, align 32
@curve25519_g_x = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 9, i64 0, i64 0, i64 0], [32 x i8] zeroinitializer }, align 32
@curve25519_p = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 -19, i64 -1, i64 -1, i64 9223372036854775807], [32 x i8] zeroinitializer }, align 32
@curve25519_a = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 121665, i64 0, i64 0, i64 0], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nist_192\00", [23 x i8] zeroinitializer }, align 32
@nist_p192_g_x = internal global { [3 x i64], [40 x i8] } { [3 x i64] [i64 -792902925453160430, i64 8988939576078862336, i64 1769255009665454326], [40 x i8] zeroinitializer }, align 32
@nist_p192_g_y = internal global { [3 x i64], [40 x i8] } { [3 x i64] [i64 8356842117447370769, i64 7138225120784731605, i64 511487955924736632], [40 x i8] zeroinitializer }, align 32
@nist_p192_p = internal global { [3 x i64], [40 x i8] } { [3 x i64] [i64 -1, i64 -2, i64 -1], [40 x i8] zeroinitializer }, align 32
@nist_p192_n = internal global { [3 x i64], [40 x i8] } { [3 x i64] [i64 1471491468346665009, i64 -1713440714, i64 -1], [40 x i8] zeroinitializer }, align 32
@nist_p192_a = internal global { [3 x i64], [40 x i8] } { [3 x i64] [i64 -4, i64 -2, i64 -1], [40 x i8] zeroinitializer }, align 32
@nist_p192_b = internal global { [3 x i64], [40 x i8] } { [3 x i64] [i64 -92078683924809295, i64 1128127154243252297, i64 7215053686808805607], [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nist_256\00", [23 x i8] zeroinitializer }, align 32
@nist_p256_g_x = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 -819310685055303018, i64 8575836109218198432, i64 -523289583788211982, i64 7716867327612699207], [32 x i8] zeroinitializer }, align 32
@nist_p256_g_y = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 -3767753221892779531, i64 3156516839386865358, i64 -8149286295562117610, i64 5756518291402817435], [32 x i8] zeroinitializer }, align 32
@nist_p256_p = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 -1, i64 4294967295, i64 0, i64 -4294967295], [32 x i8] zeroinitializer }, align 32
@nist_p256_n = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 -884452912994769583, i64 -4834901526196019580, i64 -1, i64 -4294967296], [32 x i8] zeroinitializer }, align 32
@nist_p256_a = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 -4, i64 4294967295, i64 0, i64 -4294967295], [32 x i8] zeroinitializer }, align 32
@nist_p256_b = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 4309448131093880907, i64 7285987128567378166, i64 -5482079946633869636, i64 6540974713487397863], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nist_384\00", [23 x i8] zeroinitializer }, align 32
@nist_p384_g_x = internal global { [6 x i64], [48 x i8] } { [6 x i64] [i64 4203087948775033527, i64 6125724927633205612, i64 6482722621138151992, i64 7934563412932533144, i64 -8164525713704047244, i64 -6158731714831383241], [48 x i8] zeroinitializer }, align 32
@nist_p384_g_y = internal global { [6 x i64], [48 x i8] } { [6 x i64] [i64 8809917716911230559, i64 747793036959711645, i64 -1595909157222827840, i64 -507748159718812548, i64 6745997240412855337, i64 3897828414440483951], [48 x i8] zeroinitializer }, align 32
@nist_p384_p = internal global { [6 x i64], [48 x i8] } { [6 x i64] [i64 4294967295, i64 -4294967296, i64 -2, i64 -1, i64 -1, i64 -1], [48 x i8] zeroinitializer }, align 32
@nist_p384_n = internal global { [6 x i64], [48 x i8] } { [6 x i64] [i64 -1374695839762142861, i64 6348401684107011962, i64 -4079331616924160545, i64 -1, i64 -1, i64 -1], [48 x i8] zeroinitializer }, align 32
@nist_p384_a = internal global { [6 x i64], [48 x i8] } { [6 x i64] [i64 4294967292, i64 -4294967296, i64 -2, i64 -1, i64 -1, i64 -1], [48 x i8] zeroinitializer }, align 32
@nist_p384_b = internal global { [6 x i64], [48 x i8] } { [6 x i64] [i64 3064076045283764975, i64 -4155070326131207779, i64 221811693264799578, i64 1737717031765098770, i64 -7454014372307260135, i64 -5534590068959811612], [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nist_\00", [26 x i8] zeroinitializer }, align 32
@vli_mmod_fast._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vli_mmod_fast = private unnamed_addr constant [14 x i8] c"vli_mmod_fast\00", align 1
@vli_mmod_fast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.vli_mmod_fast, ptr @.str, i32 945, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013ecc: unsupported digits size!\0A\00", [63 x i8] zeroinitializer }, align 32
@vli_mmod_fast._entry_ptr = internal global ptr @vli_mmod_fast._entry, section ".printk_index", align 4
@switch.table.ecc_get_curve = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @nist_p192, ptr @nist_p256, ptr @nist_p384], [20 x i8] zeroinitializer }, align 32
@switch.table.ecc_is_key_valid = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @nist_p192, ptr @nist_p256, ptr @nist_p384], [20 x i8] zeroinitializer }, align 32
@switch.table.ecc_gen_privkey = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @nist_p192, ptr @nist_p256, ptr @nist_p384], [20 x i8] zeroinitializer }, align 32
@switch.table.ecc_make_pub_key = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @nist_p192, ptr @nist_p256, ptr @nist_p384], [20 x i8] zeroinitializer }, align 32
@switch.table.crypto_ecdh_shared_secret = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @nist_p192, ptr @nist_p256, ptr @nist_p384], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 -9223372036854775808, i64 -1]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 4, i64 6]
@___asan_gen_.9 = private unnamed_addr constant [10 x i8] c"ecc_25519\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 96, i32 31 }
@___asan_gen_.12 = private unnamed_addr constant [10 x i8] c"nist_p192\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 18, i32 25 }
@___asan_gen_.15 = private unnamed_addr constant [10 x i8] c"nist_p256\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 44, i32 25 }
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"nist_p384\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 76, i32 25 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 1553, i32 6 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 97, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"curve25519_g_x\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 90, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"curve25519_p\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 92, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"curve25519_a\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 94, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 19, i32 10 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"nist_p192_g_x\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 6, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"nist_p192_g_y\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 8, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"nist_p192_p\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 10, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"nist_p192_n\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 12, i32 12 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"nist_p192_a\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 14, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"nist_p192_b\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 16, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 45, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"nist_p256_g_x\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 32, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"nist_p256_g_y\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 34, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"nist_p256_p\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 36, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"nist_p256_n\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 38, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"nist_p256_a\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 40, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"nist_p256_b\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 42, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 77, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"nist_p384_g_x\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 58, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"nist_p384_g_y\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 61, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"nist_p384_p\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 64, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"nist_p384_n\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 67, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [12 x i8] c"nist_p384_a\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 70, i32 12 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"nist_p384_b\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"../crypto/ecc_curve_defs.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 73, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 918, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.112 = private constant [16 x i8] c"../crypto/ecc.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 945, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [27 x i8] c"switch.table.ecc_get_curve\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [30 x i8] c"switch.table.ecc_is_key_valid\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [29 x i8] c"switch.table.ecc_gen_privkey\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [30 x i8] c"switch.table.ecc_make_pub_key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [39 x i8] c"switch.table.crypto_ecdh_shared_secret\00", align 1
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__ksymtab_crypto_ecdh_shared_secret, ptr @__ksymtab_ecc_alloc_point, ptr @__ksymtab_ecc_free_point, ptr @__ksymtab_ecc_gen_privkey, ptr @__ksymtab_ecc_get_curve, ptr @__ksymtab_ecc_get_curve25519, ptr @__ksymtab_ecc_is_key_valid, ptr @__ksymtab_ecc_is_pubkey_valid_full, ptr @__ksymtab_ecc_is_pubkey_valid_partial, ptr @__ksymtab_ecc_make_pub_key, ptr @__ksymtab_ecc_point_is_zero, ptr @__ksymtab_ecc_point_mult_shamir, ptr @__ksymtab_vli_cmp, ptr @__ksymtab_vli_from_be64, ptr @__ksymtab_vli_from_le64, ptr @__ksymtab_vli_is_zero, ptr @__ksymtab_vli_mod_inv, ptr @__ksymtab_vli_mod_mult_slow, ptr @__ksymtab_vli_num_bits, ptr @__ksymtab_vli_sub, ptr @vli_mmod_fast._entry, ptr @vli_mmod_fast._entry_ptr, ptr @ecc_25519, ptr @nist_p192, ptr @nist_p256, ptr @nist_p384, ptr @.str, ptr @.str.1, ptr @curve25519_g_x, ptr @curve25519_p, ptr @curve25519_a, ptr @.str.2, ptr @nist_p192_g_x, ptr @nist_p192_g_y, ptr @nist_p192_p, ptr @nist_p192_n, ptr @nist_p192_a, ptr @nist_p192_b, ptr @.str.3, ptr @nist_p256_g_x, ptr @nist_p256_g_y, ptr @nist_p256_p, ptr @nist_p256_n, ptr @nist_p256_a, ptr @nist_p256_b, ptr @.str.4, ptr @nist_p384_g_x, ptr @nist_p384_g_y, ptr @nist_p384_p, ptr @nist_p384_n, ptr @nist_p384_a, ptr @nist_p384_b, ptr @.str.5, ptr @vli_mmod_fast._rs, ptr @.str.6, ptr @.str.7, ptr @switch.table.ecc_get_curve, ptr @switch.table.ecc_is_key_valid, ptr @switch.table.ecc_gen_privkey, ptr @switch.table.ecc_make_pub_key, ptr @switch.table.crypto_ecdh_shared_secret], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecc_25519 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p192 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p256 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p384 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curve25519_g_x to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curve25519_p to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @curve25519_a to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p192_g_x to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p192_g_y to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p192_p to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p192_n to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p192_a to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p192_b to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p256_g_x to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p256_g_y to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p256_p to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p256_n to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p256_a to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p256_b to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p384_g_x to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p384_g_y to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p384_p to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p384_n to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p384_a to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nist_p384_b to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vli_mmod_fast._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vli_mmod_fast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ecc_get_curve to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ecc_is_key_valid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ecc_gen_privkey to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ecc_make_pub_key to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.crypto_ecdh_shared_secret to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @ecc_get_curve25519() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @ecc_25519
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ecc_get_curve(i32 noundef %curve_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %curve_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ecc_get_curve, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ null, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ecc_alloc_point(i32 noundef %ndigits) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 12) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul.i = shl i32 %ndigits, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool.not.i = icmp eq i32 %mul.i, 0
  br i1 %tobool.not.i, label %ecc_alloc_digits_space.exit.thread, label %ecc_alloc_digits_space.exit.thread55

ecc_alloc_digits_space.exit.thread:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %call7.i, align 8
  br label %err_alloc_x

ecc_alloc_digits_space.exit.thread55:             ; preds = %if.end
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #20
  %2 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i.i, ptr %call7.i, align 8
  %tobool3.not57 = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not57, label %ecc_alloc_digits_space.exit.thread55.err_alloc_x_crit_edge, label %if.end8.i.i50

ecc_alloc_digits_space.exit.thread55.err_alloc_x_crit_edge: ; preds = %ecc_alloc_digits_space.exit.thread55
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_alloc_x

if.end8.i.i50:                                    ; preds = %ecc_alloc_digits_space.exit.thread55
  %call9.i.i49 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #20
  %y = getelementptr inbounds %struct.ecc_point, ptr %call7.i, i32 0, i32 1
  %3 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i49, ptr %y, align 4
  %tobool8.not = icmp eq ptr %call9.i.i49, null
  br i1 %tobool8.not, label %err_alloc_y, label %if.end10

if.end10:                                         ; preds = %if.end8.i.i50
  call void @__sanitizer_cov_trace_pc() #18
  %conv = trunc i32 %ndigits to i8
  %ndigits11 = getelementptr inbounds %struct.ecc_point, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %ndigits11 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %ndigits11, align 8
  br label %cleanup

err_alloc_y:                                      ; preds = %if.end8.i.i50
  call void @__sanitizer_cov_trace_pc() #18
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call7.i, align 8
  tail call void @kfree_sensitive(ptr noundef %6) #16
  br label %err_alloc_x

err_alloc_x:                                      ; preds = %err_alloc_y, %ecc_alloc_digits_space.exit.thread55.err_alloc_x_crit_edge, %ecc_alloc_digits_space.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_x, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end10 ], [ null, %err_alloc_x ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecc_free_point(ptr noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #16
  %y = getelementptr inbounds %struct.ecc_point, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %y, align 4
  tail call void @kfree_sensitive(ptr noundef %3) #16
  tail call void @kfree_sensitive(ptr noundef nonnull %p) #16
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @vli_is_zero(ptr nocapture noundef readonly %vli, i32 noundef %ndigits) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndigits)
  %cmp3.not = icmp eq i32 %ndigits, 0
  br i1 %cmp3.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %vli to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %vli, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not7 = icmp eq i64 %1, 0
  br i1 %tobool.not7, label %for.body.preheader.for.cond_crit_edge, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader.for.cond_crit_edge:            ; preds = %for.body.preheader
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.body.preheader.for.cond_crit_edge
  %i.048 = phi i32 [ %inc, %for.body.for.cond_crit_edge ], [ 0, %for.body.preheader.for.cond_crit_edge ]
  %inc = add nuw i32 %i.048, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %ndigits)
  %exitcond.not = icmp eq i32 %inc, %ndigits
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit_crit_edge, label %for.body

for.cond.cleanup.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.loopexit

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr i64, ptr %vli, i32 %inc
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %tobool.not = icmp eq i64 %3, 0
  br i1 %tobool.not, label %for.body.for.cond_crit_edge, label %for.body.cleanup.loopexit_crit_edge

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.loopexit

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

cleanup.loopexit:                                 ; preds = %for.body.cleanup.loopexit_crit_edge, %for.cond.cleanup.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %ndigits)
  %cmp.le = icmp uge i32 %inc, %ndigits
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %for.body.preheader.cleanup_crit_edge ], [ %cmp.le, %cleanup.loopexit ]
  ret i1 %cmp.lcssa
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vli_num_bits(ptr nocapture noundef readonly %vli, i32 noundef %ndigits) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %ndigits, -1
  %smin.i = tail call i32 @llvm.smin.i32(i32 %0, i32 -1) #16
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.rhs.i.for.cond.i_crit_edge, %entry
  %i.0.in.i = phi i32 [ %ndigits, %entry ], [ %i.0.i, %land.rhs.i.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i)
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %land.rhs.i, label %vli_num_digits.exit

land.rhs.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i64, ptr %vli, i32 %i.0.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %arrayidx.i, align 8
  %cmp1.i = icmp eq i64 %2, 0
  br i1 %cmp1.i, label %land.rhs.i.for.cond.i_crit_edge, label %land.rhs.i.if.end_crit_edge

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.rhs.i.for.cond.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

vli_num_digits.exit:                              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %ndigits)
  %cmp = icmp ult i32 %ndigits, -2147483647
  br i1 %cmp, label %vli_num_digits.exit.cleanup_crit_edge, label %vli_num_digits.exit.if.end_crit_edge

vli_num_digits.exit.if.end_crit_edge:             ; preds = %vli_num_digits.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

vli_num_digits.exit.cleanup_crit_edge:            ; preds = %vli_num_digits.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %vli_num_digits.exit.if.end_crit_edge, %land.rhs.i.if.end_crit_edge
  %sub.pre-phi = phi i32 [ %smin.i, %vli_num_digits.exit.if.end_crit_edge ], [ %i.0.i, %land.rhs.i.if.end_crit_edge ]
  %arrayidx = getelementptr i64, ptr %vli, i32 %sub.pre-phi
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not13 = icmp eq i64 %4, 0
  br i1 %tobool.not13, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %digit.015 = phi i64 [ %shr, %for.body.for.body_crit_edge ], [ %4, %if.end.for.body_crit_edge ]
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %shr = lshr i64 %digit.015, 1
  %inc = add nuw nsw i32 %i.014, 1
  %tobool.not = icmp ult i64 %digit.015, 2
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %mul = shl i32 %sub.pre-phi, 6
  %add = add i32 %i.0.lcssa, %mul
  br label %cleanup

cleanup:                                          ; preds = %for.end, %vli_num_digits.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %for.end ], [ 0, %vli_num_digits.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vli_from_be64(ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src, i32 noundef %ndigits) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndigits)
  %cmp7.not = icmp eq i32 %ndigits, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %0 = xor i32 %i.08, -1
  %sub1 = add i32 %0, %ndigits
  %arrayidx = getelementptr i64, ptr %src, i32 %sub1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr i64, ptr %dest, i32 %i.08
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %arrayidx2, align 8
  %inc = add nuw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %ndigits
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vli_from_le64(ptr nocapture noundef writeonly %dest, ptr nocapture noundef readonly %src, i32 noundef %ndigits) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndigits)
  %cmp5.not = icmp eq i32 %ndigits, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %src, i32 %i.06
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %arrayidx, align 1
  %2 = tail call i64 @llvm.bswap.i64(i64 %1) #16
  %arrayidx1 = getelementptr i64, ptr %dest, i32 %i.06
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %arrayidx1, align 8
  %inc = add nuw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %ndigits
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vli_cmp(ptr nocapture noundef readonly %left, ptr nocapture noundef readonly %right, i32 noundef %ndigits) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %if.else.for.cond_crit_edge, %entry
  %i.0.in = phi i32 [ %ndigits, %entry ], [ %i.0, %if.else.for.cond_crit_edge ]
  %i.0 = add i32 %i.0.in, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0)
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.body, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr i64, ptr %left, i32 %i.0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr i64, ptr %right, i32 %i.0
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp2 = icmp ugt i64 %1, %3
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.else

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else:                                          ; preds = %for.body
  %cmp5 = icmp ult i64 %1, %3
  br i1 %cmp5, label %if.else.cleanup_crit_edge, label %if.else.for.cond_crit_edge

if.else.for.cond_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.body.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @vli_sub(ptr nocapture noundef writeonly %result, ptr nocapture noundef readonly %left, ptr nocapture noundef readonly %right, i32 noundef %ndigits) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndigits)
  %cmp20.not = icmp eq i32 %ndigits, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %borrow.021 = phi i64 [ %borrow.1, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i64, ptr %left, i32 %i.022
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %arrayidx, align 8
  %arrayidx1 = getelementptr i64, ptr %right, i32 %i.022
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx1, align 8
  %4 = add i64 %3, %borrow.021
  %sub2 = sub i64 %1, %4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %cmp4.not = icmp eq i64 %4, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %4)
  %cmp6 = icmp ult i64 %1, %4
  %5 = zext i1 %cmp6 to i64
  %borrow.1 = select i1 %cmp4.not, i64 %borrow.021, i64 %5
  %arrayidx8 = getelementptr i64, ptr %result, i32 %i.022
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %sub2, ptr %arrayidx8, align 8
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %ndigits
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %borrow.0.lcssa = phi i64 [ 0, %entry.for.end_crit_edge ], [ %borrow.1, %for.body.for.end_crit_edge ]
  ret i64 %borrow.0.lcssa
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vli_mod_mult_slow(ptr nocapture noundef writeonly %result, ptr nocapture noundef readonly %left, ptr nocapture noundef readonly %right, ptr nocapture noundef readonly %mod, i32 noundef %ndigits) #8 align 64 {
entry:
  %mod_m.i = alloca [16 x i64], align 8
  %tmp.i = alloca [16 x i64], align 8
  %v.i = alloca [2 x ptr], align 4
  %product = alloca [16 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %product) #16
  %0 = call ptr @memset(ptr %product, i32 255, i32 128)
  %mul.i = shl i32 %ndigits, 1
  %sub.i = add i32 %mul.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %entry
  %r01.sroa.0.064.i = phi i64 [ 0, %entry ], [ %r01.sroa.8.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %r01.sroa.8.063.i = phi i64 [ 0, %entry ], [ %r2.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %k.061.i = phi i32 [ 0, %entry ], [ %add.i, %for.end.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.061.i, i32 %ndigits)
  %cmp1.i = icmp ult i32 %k.061.i, %ndigits
  %add.i = add nuw i32 %k.061.i, 1
  %sub2.i = sub i32 %add.i, %ndigits
  %min.0.i = select i1 %cmp1.i, i32 0, i32 %sub2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %k.061.i, i32 %min.0.i)
  %cmp4.not52.i = icmp uge i32 %k.061.i, %min.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %min.0.i, i32 %ndigits)
  %cmp553.i = icmp ult i32 %min.0.i, %ndigits
  %or.cond54.i = and i1 %cmp4.not52.i, %cmp553.i
  br i1 %or.cond54.i, label %for.body.i.for.body6.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i.for.body6.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.body.i.for.body6.i_crit_edge
  %r01.sroa.0.158.i = phi i64 [ %add.i49.i, %for.body6.i.for.body6.i_crit_edge ], [ %r01.sroa.0.064.i, %for.body.i.for.body6.i_crit_edge ]
  %r01.sroa.8.157.i = phi i64 [ %add8.i51.i, %for.body6.i.for.body6.i_crit_edge ], [ %r01.sroa.8.063.i, %for.body.i.for.body6.i_crit_edge ]
  %i.056.i = phi i32 [ %inc.i, %for.body6.i.for.body6.i_crit_edge ], [ %min.0.i, %for.body.i.for.body6.i_crit_edge ]
  %r2.155.i = phi i64 [ %add13.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %for.body.i.for.body6.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %left, i32 %i.056.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %arrayidx.i, align 8
  %sub7.i = sub i32 %k.061.i, %i.056.i
  %arrayidx8.i = getelementptr i64, ptr %right, i32 %sub7.i
  %3 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx8.i, align 8
  %and.i.i = and i64 %2, 4294967295
  %shr.i.i = lshr i64 %2, 32
  %and1.i.i = and i64 %4, 4294967295
  %shr2.i.i = lshr i64 %4, 32
  %mul.i.i = mul nuw i64 %and1.i.i, %and.i.i
  %mul3.i.i = mul nuw i64 %shr2.i.i, %and.i.i
  %mul4.i.i = mul nuw i64 %and1.i.i, %shr.i.i
  %mul5.i.i = mul nuw i64 %shr2.i.i, %shr.i.i
  %shr6.i.i = lshr i64 %mul.i.i, 32
  %add.i.i = add i64 %mul3.i.i, %mul4.i.i
  %add7.i.i = add i64 %add.i.i, %shr6.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add7.i.i, i64 %mul3.i.i)
  %cmp.i.i = icmp ult i64 %add7.i.i, %mul3.i.i
  %add8.i.i = add nuw i64 %mul5.i.i, 4294967296
  %spec.select.i.i = select i1 %cmp.i.i, i64 %add8.i.i, i64 %mul5.i.i
  %and9.i.i = and i64 %mul.i.i, 4294967295
  %shl.i.i = shl i64 %add7.i.i, 32
  %shr10.i.i = lshr i64 %add7.i.i, 32
  %add11.i.i = add i64 %spec.select.i.i, %shr10.i.i
  %or.i.i = add i64 %and9.i.i, %r01.sroa.0.158.i
  %add.i49.i = add i64 %or.i.i, %shl.i.i
  %add4.i.i = add i64 %add11.i.i, %r01.sroa.8.157.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i49.i, i64 %r01.sroa.0.158.i)
  %cmp.i50.i = icmp ult i64 %add.i49.i, %r01.sroa.0.158.i
  %5 = zext i1 %cmp.i50.i to i64
  %add8.i51.i = add i64 %add4.i.i, %5
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i51.i, i64 %add11.i.i)
  %cmp11.i = icmp ult i64 %add8.i51.i, %add11.i.i
  %6 = zext i1 %cmp11.i to i64
  %add13.i = add i64 %r2.155.i, %6
  %inc.i = add nuw i32 %i.056.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %k.061.i, i32 %i.056.i)
  %cmp4.not.i = icmp ugt i32 %k.061.i, %i.056.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %ndigits)
  %cmp5.i = icmp ult i32 %inc.i, %ndigits
  %or.cond.i = and i1 %cmp4.not.i, %cmp5.i
  br i1 %or.cond.i, label %for.body6.i.for.body6.i_crit_edge, label %for.body6.i.for.end.i_crit_edge

for.body6.i.for.end.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body6.i

for.end.i:                                        ; preds = %for.body6.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %r2.1.lcssa.i = phi i64 [ 0, %for.body.i.for.end.i_crit_edge ], [ %add13.i, %for.body6.i.for.end.i_crit_edge ]
  %r01.sroa.8.1.lcssa.i = phi i64 [ %r01.sroa.8.063.i, %for.body.i.for.end.i_crit_edge ], [ %add8.i51.i, %for.body6.i.for.end.i_crit_edge ]
  %r01.sroa.0.1.lcssa.i = phi i64 [ %r01.sroa.0.064.i, %for.body.i.for.end.i_crit_edge ], [ %add.i49.i, %for.body6.i.for.end.i_crit_edge ]
  %arrayidx14.i = getelementptr i64, ptr %product, i32 %k.061.i
  %7 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %r01.sroa.0.1.lcssa.i, ptr %arrayidx14.i, align 8
  %exitcond.not.i = icmp eq i32 %add.i, %sub.i
  br i1 %exitcond.not.i, label %vli_mult.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

vli_mult.exit:                                    ; preds = %for.end.i
  %arrayidx24.i = getelementptr i64, ptr %product, i32 %sub.i
  %8 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %r01.sroa.8.1.lcssa.i, ptr %arrayidx24.i, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %mod_m.i) #16
  %9 = call ptr @memset(ptr %mod_m.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i) #16
  %10 = call ptr @memset(ptr %tmp.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %v.i) #16
  %11 = getelementptr inbounds [2 x ptr], ptr %v.i, i32 0, i32 1
  %12 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %tmp.i, ptr %v.i, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %product, ptr %11, align 4
  %mul1.i = shl i32 %ndigits, 7
  %14 = add i32 %ndigits, -1
  %smin.i.i.i = call i32 @llvm.smin.i32(i32 %14, i32 -1) #16
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %land.rhs.i.i.i.for.cond.i.i.i_crit_edge, %vli_mult.exit
  %i.0.in.i.i.i = phi i32 [ %ndigits, %vli_mult.exit ], [ %i.0.i.i.i, %land.rhs.i.i.i.for.cond.i.i.i_crit_edge ]
  %i.0.i.i.i = add i32 %i.0.in.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %i.0.i.i.i, -1
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %vli_num_digits.exit.i.i

land.rhs.i.i.i:                                   ; preds = %for.cond.i.i.i
  %arrayidx.i.i.i = getelementptr i64, ptr %mod, i32 %i.0.i.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx.i.i.i, align 8
  %cmp1.i.i.i = icmp eq i64 %16, 0
  br i1 %cmp1.i.i.i, label %land.rhs.i.i.i.for.cond.i.i.i_crit_edge, label %land.rhs.i.i.i.if.end.i.i_crit_edge

land.rhs.i.i.i.if.end.i.i_crit_edge:              ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.rhs.i.i.i.for.cond.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i.i

vli_num_digits.exit.i.i:                          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %ndigits)
  %cmp.i.i4 = icmp ult i32 %ndigits, -2147483647
  br i1 %cmp.i.i4, label %vli_num_digits.exit.i.i.vli_num_bits.exit.i_crit_edge, label %vli_num_digits.exit.i.i.if.end.i.i_crit_edge

vli_num_digits.exit.i.i.if.end.i.i_crit_edge:     ; preds = %vli_num_digits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

vli_num_digits.exit.i.i.vli_num_bits.exit.i_crit_edge: ; preds = %vli_num_digits.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_num_bits.exit.i

if.end.i.i:                                       ; preds = %vli_num_digits.exit.i.i.if.end.i.i_crit_edge, %land.rhs.i.i.i.if.end.i.i_crit_edge
  %sub.pre-phi.i.i = phi i32 [ %smin.i.i.i, %vli_num_digits.exit.i.i.if.end.i.i_crit_edge ], [ %i.0.i.i.i, %land.rhs.i.i.i.if.end.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i64, ptr %mod, i32 %sub.pre-phi.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool.not13.i.i = icmp eq i64 %18, 0
  br i1 %tobool.not13.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %digit.015.i.i = phi i64 [ %shr.i.i5, %for.body.i.i.for.body.i.i_crit_edge ], [ %18, %if.end.i.i.for.body.i.i_crit_edge ]
  %i.014.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i.for.body.i.i_crit_edge ]
  %shr.i.i5 = lshr i64 %digit.015.i.i, 1
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %tobool.not.i.i = icmp ult i64 %digit.015.i.i, 2
  br i1 %tobool.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %i.0.lcssa.i.i = phi i32 [ 0, %if.end.i.i.for.end.i.i_crit_edge ], [ %inc.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %mul.i.i6 = shl i32 %sub.pre-phi.i.i, 6
  %add.i.i7 = add i32 %i.0.lcssa.i.i, %mul.i.i6
  br label %vli_num_bits.exit.i

vli_num_bits.exit.i:                              ; preds = %for.end.i.i, %vli_num_digits.exit.i.i.vli_num_bits.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %add.i.i7, %for.end.i.i ], [ 0, %vli_num_digits.exit.i.i.vli_num_bits.exit.i_crit_edge ]
  %sub.i8 = sub i32 %mul1.i, %retval.0.i.i
  %sub.i8.frozen = freeze i32 %sub.i8
  %div.i = sdiv i32 %sub.i8.frozen, 64
  %19 = mul i32 %div.i, 64
  %rem.i.decomposed = sub i32 %sub.i8.frozen, %19
  %sub.off.i = add i32 %sub.i8, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub.off.i)
  %20 = icmp ult i32 %sub.off.i, 127
  br i1 %20, label %vli_num_bits.exit.i.vli_clear.exit.i_crit_edge, label %for.body.preheader.i.i

vli_num_bits.exit.i.vli_clear.exit.i_crit_edge:   ; preds = %vli_num_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_clear.exit.i

for.body.preheader.i.i:                           ; preds = %vli_num_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %21 = shl nuw nsw i32 %div.i, 3
  %22 = call ptr @memset(ptr %mod_m.i, i32 0, i32 %21)
  br label %vli_clear.exit.i

vli_clear.exit.i:                                 ; preds = %for.body.preheader.i.i, %vli_num_bits.exit.i.vli_clear.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp.i = icmp sgt i32 %rem.i.decomposed, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndigits)
  %cmp3116.not.i = icmp eq i32 %ndigits, 0
  br i1 %cmp.i, label %for.cond.preheader.i, label %if.else.i

for.cond.preheader.i:                             ; preds = %vli_clear.exit.i
  br i1 %cmp3116.not.i, label %for.cond.preheader.i.if.end.i_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sh_prom.i = zext i32 %rem.i.decomposed to i64
  %sub6.i = sub nuw nsw i32 64, %rem.i.decomposed
  %sh_prom7.i = zext i32 %sub6.i to i64
  br label %for.body.i13

for.body.i13:                                     ; preds = %for.body.i13.for.body.i13_crit_edge, %for.body.lr.ph.i
  %i.0118.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i11, %for.body.i13.for.body.i13_crit_edge ]
  %carry.0117.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %shr.i, %for.body.i13.for.body.i13_crit_edge ]
  %arrayidx.i9 = getelementptr i64, ptr %mod, i32 %i.0118.i
  %23 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.i9, align 8
  %shl.i = shl i64 %24, %sh_prom.i
  %or.i = or i64 %shl.i, %carry.0117.i
  %add.i10 = add i32 %i.0118.i, %div.i
  %arrayidx4.i = getelementptr [16 x i64], ptr %mod_m.i, i32 0, i32 %add.i10
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or.i, ptr %arrayidx4.i, align 8
  %shr.i = lshr i64 %24, %sh_prom7.i
  %inc.i11 = add nuw i32 %i.0118.i, 1
  %exitcond.not.i12 = icmp eq i32 %inc.i11, %ndigits
  br i1 %exitcond.not.i12, label %for.body.i13.if.end.i_crit_edge, label %for.body.i13.for.body.i13_crit_edge

for.body.i13.for.body.i13_crit_edge:              ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i13

for.body.i13.if.end.i_crit_edge:                  ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.else.i:                                        ; preds = %vli_clear.exit.i
  br i1 %cmp3116.not.i, label %if.else.i.if.end.i_crit_edge, label %for.body.i90.preheader.i

if.else.i.if.end.i_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

for.body.i90.preheader.i:                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i64, ptr %mod_m.i, i32 %div.i
  %26 = shl nuw i32 %ndigits, 3
  %27 = call ptr @memcpy(ptr %add.ptr.i, ptr %mod, i32 %26)
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i90.preheader.i, %if.else.i.if.end.i_crit_edge, %for.body.i13.if.end.i_crit_edge, %for.cond.preheader.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i8)
  %cmp10122.i = icmp sgt i32 %sub.i8, -1
  br i1 %cmp10122.i, label %for.cond12.preheader.lr.ph.i, label %if.end.i.for.end46.i_crit_edge

if.end.i.for.end46.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end46.i

for.cond12.preheader.lr.ph.i:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp14119.not.i = icmp eq i32 %mul.i, 0
  %add.ptr.i.i = getelementptr i64, ptr %mod_m.i, i32 %ndigits
  %cmp6.i.i = icmp ugt ptr %add.ptr.i.i, %mod_m.i
  %arrayidx41.i = getelementptr [16 x i64], ptr %mod_m.i, i32 0, i32 %14
  %add.ptr.i94.i = getelementptr i64, ptr %add.ptr.i.i, i32 %ndigits
  br label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %vli_rshift1.exit104.i.for.cond12.preheader.i_crit_edge, %for.cond12.preheader.lr.ph.i
  %shift.0125.i = phi i32 [ %sub.i8, %for.cond12.preheader.lr.ph.i ], [ %dec.i, %vli_rshift1.exit104.i.for.cond12.preheader.i_crit_edge ]
  %i.1123.i = phi i32 [ 1, %for.cond12.preheader.lr.ph.i ], [ %lnot.ext.i, %vli_rshift1.exit104.i.for.cond12.preheader.i_crit_edge ]
  br i1 %cmp14119.not.i, label %for.cond12.preheader.i.for.end35.i_crit_edge, label %for.body15.lr.ph.i

for.cond12.preheader.i.for.end35.i_crit_edge:     ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end35.i

for.body15.lr.ph.i:                               ; preds = %for.cond12.preheader.i
  %arrayidx16.i = getelementptr [2 x ptr], ptr %v.i, i32 0, i32 %i.1123.i
  %28 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx16.i, align 4
  %sub30.i = xor i32 %i.1123.i, 1
  %arrayidx31.i = getelementptr [2 x ptr], ptr %v.i, i32 0, i32 %sub30.i
  %30 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx31.i, align 4
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %for.body15.lr.ph.i
  %j.0121.i = phi i32 [ 0, %for.body15.lr.ph.i ], [ %inc34.i, %for.body15.i.for.body15.i_crit_edge ]
  %borrow.0120.i = phi i64 [ 0, %for.body15.lr.ph.i ], [ %borrow.1.i, %for.body15.i.for.body15.i_crit_edge ]
  %arrayidx17.i = getelementptr i64, ptr %29, i32 %j.0121.i
  %32 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx17.i, align 8
  %arrayidx18.i = getelementptr [16 x i64], ptr %mod_m.i, i32 0, i32 %j.0121.i
  %34 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %arrayidx18.i, align 8
  %36 = add i64 %35, %borrow.0120.i
  %sub20.i = sub i64 %33, %36
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %36)
  %cmp23.not.i = icmp eq i64 %36, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %33, i64 %36)
  %cmp27.i = icmp ult i64 %33, %36
  %37 = zext i1 %cmp27.i to i64
  %borrow.1.i = select i1 %cmp23.not.i, i64 %borrow.0120.i, i64 %37
  %arrayidx32.i = getelementptr i64, ptr %31, i32 %j.0121.i
  %38 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %sub20.i, ptr %arrayidx32.i, align 8
  %inc34.i = add nuw i32 %j.0121.i, 1
  %exitcond129.not.i = icmp eq i32 %inc34.i, %mul.i
  br i1 %exitcond129.not.i, label %for.body15.i.for.end35.i_crit_edge, label %for.body15.i.for.body15.i_crit_edge

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body15.i

for.body15.i.for.end35.i_crit_edge:               ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end35.i

for.end35.i:                                      ; preds = %for.body15.i.for.end35.i_crit_edge, %for.cond12.preheader.i.for.end35.i_crit_edge
  %borrow.0.lcssa.i = phi i64 [ 0, %for.cond12.preheader.i.for.end35.i_crit_edge ], [ %borrow.1.i, %for.body15.i.for.end35.i_crit_edge ]
  %conv36.i = zext i32 %i.1123.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %borrow.0.lcssa.i, i64 %conv36.i)
  %tobool.not.i = icmp eq i64 %borrow.0.lcssa.i, %conv36.i
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  br i1 %cmp6.i.i, label %for.end35.i.while.body.i.i_crit_edge, label %vli_rshift1.exit.thread.i

for.end35.i.while.body.i.i_crit_edge:             ; preds = %for.end35.i
  br label %while.body.i.i

vli_rshift1.exit.thread.i:                        ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #18
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr.i.i, align 8
  %shl39130.i = shl i64 %40, 63
  %41 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx41.i, align 8
  %or42131.i = or i64 %42, %shl39130.i
  store i64 %or42131.i, ptr %arrayidx41.i, align 8
  br label %vli_rshift1.exit104.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.end35.i.while.body.i.i_crit_edge
  %vli.addr.08.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.ptr.i.i, %for.end35.i.while.body.i.i_crit_edge ]
  %carry.07.i.i = phi i64 [ %shl.i.i15, %while.body.i.i.while.body.i.i_crit_edge ], [ 0, %for.end35.i.while.body.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr i64, ptr %vli.addr.08.i.i, i32 -1
  %43 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %incdec.ptr.i.i, align 8
  %shr.i92.i = lshr i64 %44, 1
  %or.i.i14 = or i64 %shr.i92.i, %carry.07.i.i
  store i64 %or.i.i14, ptr %incdec.ptr.i.i, align 8
  %shl.i.i15 = shl i64 %44, 63
  %cmp.i93.i = icmp ugt ptr %incdec.ptr.i.i, %mod_m.i
  br i1 %cmp.i93.i, label %while.body.i.i.while.body.i.i_crit_edge, label %while.body.i103.i.preheader

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.body.i103.i.preheader:                      ; preds = %while.body.i.i
  %45 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %add.ptr.i.i, align 8
  %shl39.i = shl i64 %46, 63
  %47 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx41.i, align 8
  %or42.i = or i64 %48, %shl39.i
  store i64 %or42.i, ptr %arrayidx41.i, align 8
  br label %while.body.i103.i

while.body.i103.i:                                ; preds = %while.body.i103.i.while.body.i103.i_crit_edge, %while.body.i103.i.preheader
  %vli.addr.08.i96.i = phi ptr [ %incdec.ptr.i98.i, %while.body.i103.i.while.body.i103.i_crit_edge ], [ %add.ptr.i94.i, %while.body.i103.i.preheader ]
  %carry.07.i97.i = phi i64 [ %shl.i101.i, %while.body.i103.i.while.body.i103.i_crit_edge ], [ 0, %while.body.i103.i.preheader ]
  %incdec.ptr.i98.i = getelementptr i64, ptr %vli.addr.08.i96.i, i32 -1
  %49 = ptrtoint ptr %incdec.ptr.i98.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %incdec.ptr.i98.i, align 8
  %shr.i99.i = lshr i64 %50, 1
  %or.i100.i = or i64 %shr.i99.i, %carry.07.i97.i
  store i64 %or.i100.i, ptr %incdec.ptr.i98.i, align 8
  %shl.i101.i = shl i64 %50, 63
  %cmp.i102.i = icmp ugt ptr %incdec.ptr.i98.i, %add.ptr.i.i
  br i1 %cmp.i102.i, label %while.body.i103.i.while.body.i103.i_crit_edge, label %while.body.i103.i.vli_rshift1.exit104.i_crit_edge

while.body.i103.i.vli_rshift1.exit104.i_crit_edge: ; preds = %while.body.i103.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit104.i

while.body.i103.i.while.body.i103.i_crit_edge:    ; preds = %while.body.i103.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i103.i

vli_rshift1.exit104.i:                            ; preds = %while.body.i103.i.vli_rshift1.exit104.i_crit_edge, %vli_rshift1.exit.thread.i
  %dec.i = add nsw i32 %shift.0125.i, -1
  %cmp10.i = icmp sgt i32 %shift.0125.i, 0
  br i1 %cmp10.i, label %vli_rshift1.exit104.i.for.cond12.preheader.i_crit_edge, label %vli_rshift1.exit104.i.for.end46.i_crit_edge

vli_rshift1.exit104.i.for.end46.i_crit_edge:      ; preds = %vli_rshift1.exit104.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end46.i

vli_rshift1.exit104.i.for.cond12.preheader.i_crit_edge: ; preds = %vli_rshift1.exit104.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond12.preheader.i

for.end46.i:                                      ; preds = %vli_rshift1.exit104.i.for.end46.i_crit_edge, %if.end.i.for.end46.i_crit_edge
  %i.1.lcssa.i = phi i32 [ 1, %if.end.i.for.end46.i_crit_edge ], [ %lnot.ext.i, %vli_rshift1.exit104.i.for.end46.i_crit_edge ]
  %arrayidx47.i = getelementptr [2 x ptr], ptr %v.i, i32 0, i32 %i.1.lcssa.i
  %51 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx47.i, align 4
  br i1 %cmp3116.not.i, label %for.end46.i.vli_mmod_slow.exit_crit_edge, label %for.end46.i.for.body.i111.i_crit_edge

for.end46.i.for.body.i111.i_crit_edge:            ; preds = %for.end46.i
  br label %for.body.i111.i

for.end46.i.vli_mmod_slow.exit_crit_edge:         ; preds = %for.end46.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mmod_slow.exit

for.body.i111.i:                                  ; preds = %for.body.i111.i.for.body.i111.i_crit_edge, %for.end46.i.for.body.i111.i_crit_edge
  %i.06.i106.i = phi i32 [ %inc.i109.i, %for.body.i111.i.for.body.i111.i_crit_edge ], [ 0, %for.end46.i.for.body.i111.i_crit_edge ]
  %arrayidx.i107.i = getelementptr i64, ptr %52, i32 %i.06.i106.i
  %53 = ptrtoint ptr %arrayidx.i107.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx.i107.i, align 8
  %arrayidx1.i108.i = getelementptr i64, ptr %result, i32 %i.06.i106.i
  %55 = ptrtoint ptr %arrayidx1.i108.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %54, ptr %arrayidx1.i108.i, align 8
  %inc.i109.i = add nuw i32 %i.06.i106.i, 1
  %exitcond.not.i110.i = icmp eq i32 %inc.i109.i, %ndigits
  br i1 %exitcond.not.i110.i, label %for.body.i111.i.vli_mmod_slow.exit_crit_edge, label %for.body.i111.i.for.body.i111.i_crit_edge

for.body.i111.i.for.body.i111.i_crit_edge:        ; preds = %for.body.i111.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i111.i

for.body.i111.i.vli_mmod_slow.exit_crit_edge:     ; preds = %for.body.i111.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mmod_slow.exit

vli_mmod_slow.exit:                               ; preds = %for.body.i111.i.vli_mmod_slow.exit_crit_edge, %for.end46.i.vli_mmod_slow.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %v.i) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %mod_m.i) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %product) #16
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vli_mod_inv(ptr nocapture noundef writeonly %result, ptr nocapture noundef readonly %input, ptr nocapture noundef readonly %mod, i32 noundef %ndigits) #8 align 64 {
entry:
  %a = alloca [8 x i64], align 8
  %b = alloca [8 x i64], align 8
  %u = alloca [8 x i64], align 8
  %v = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #16
  %0 = call ptr @memset(ptr %a, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %b) #16
  %1 = call ptr @memset(ptr %b, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %u) #16
  %2 = getelementptr inbounds i8, ptr %u, i32 8
  %3 = call ptr @memset(ptr %2, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %v) #16
  %4 = call ptr @memset(ptr %v, i32 255, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndigits)
  %cmp3.not.i = icmp eq i32 %ndigits, 0
  br i1 %cmp3.not.i, label %entry.cleanup_crit_edge, label %for.body.i.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i.preheader:                             ; preds = %entry
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not.i453 = icmp eq i64 %6, 0
  br i1 %tobool.not.i453, label %for.body.i.preheader.for.cond.i_crit_edge, label %for.body.i.preheader.vli_clear.exit182_crit_edge

for.body.i.preheader.vli_clear.exit182_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_clear.exit182

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.04.i454 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.04.i454, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %ndigits)
  %exitcond.not.i = icmp eq i32 %inc.i, %ndigits
  br i1 %exitcond.not.i, label %for.cond.i.vli_is_zero.exit_crit_edge, label %for.body.i

for.cond.i.vli_is_zero.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_is_zero.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i64, ptr %input, i32 %inc.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq i64 %8, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.vli_is_zero.exit_crit_edge

for.body.i.vli_is_zero.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_is_zero.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

vli_is_zero.exit:                                 ; preds = %for.body.i.vli_is_zero.exit_crit_edge, %for.cond.i.vli_is_zero.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %ndigits)
  %cmp.i.le = icmp ult i32 %inc.i, %ndigits
  br i1 %cmp.i.le, label %vli_is_zero.exit.vli_clear.exit182_crit_edge, label %for.body.preheader.i

vli_is_zero.exit.vli_clear.exit182_crit_edge:     ; preds = %vli_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_clear.exit182

for.body.preheader.i:                             ; preds = %vli_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = shl nuw i32 %ndigits, 3
  %10 = call ptr @memset(ptr %result, i32 0, i32 %9)
  br label %cleanup

vli_clear.exit182:                                ; preds = %vli_is_zero.exit.vli_clear.exit182_crit_edge, %for.body.i.preheader.vli_clear.exit182_crit_edge
  %11 = shl nuw i32 %ndigits, 3
  %12 = call ptr @memcpy(ptr %a, ptr %input, i32 %11)
  %13 = call ptr @memcpy(ptr %b, ptr %mod, i32 %11)
  %14 = call ptr @memset(ptr %u, i32 0, i32 %11)
  %15 = ptrtoint ptr %u to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1, ptr %u, align 8
  %16 = call ptr @memset(ptr %v, i32 0, i32 %11)
  %add.ptr.i351 = getelementptr i64, ptr %b, i32 %ndigits
  %cmp6.i352 = icmp ugt ptr %add.ptr.i351, %b
  %add.ptr.i421 = getelementptr i64, ptr %v, i32 %ndigits
  %cmp6.i422 = icmp ugt ptr %add.ptr.i421, %v
  %sub109 = add i32 %ndigits, -1
  %arrayidx110 = getelementptr [8 x i64], ptr %v, i32 0, i32 %sub109
  %add.ptr.i255 = getelementptr i64, ptr %a, i32 %ndigits
  %cmp6.i256 = icmp ugt ptr %add.ptr.i255, %a
  %add.ptr.i325 = getelementptr i64, ptr %u, i32 %ndigits
  %cmp6.i326 = icmp ugt ptr %add.ptr.i325, %u
  %arrayidx76 = getelementptr [8 x i64], ptr %u, i32 0, i32 %sub109
  br label %for.cond.i184

for.cond.i184:                                    ; preds = %for.cond.i184.backedge, %vli_clear.exit182
  %i.0.in.i = phi i32 [ %ndigits, %vli_clear.exit182 ], [ %i.0.in.i.be, %for.cond.i184.backedge ]
  %i.0.i = add i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i)
  %cmp.i183 = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i183, label %for.body.i187, label %for.body.i438.preheader

for.body.i187:                                    ; preds = %for.cond.i184
  %arrayidx.i185 = getelementptr i64, ptr %a, i32 %i.0.i
  %17 = ptrtoint ptr %arrayidx.i185 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i185, align 8
  %arrayidx1.i186 = getelementptr i64, ptr %b, i32 %i.0.i
  %19 = ptrtoint ptr %arrayidx1.i186 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx1.i186, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %.not = icmp eq i64 %18, %20
  br i1 %.not, label %for.body.i187.for.cond.i184.backedge_crit_edge, label %while.body

for.body.i187.for.cond.i184.backedge_crit_edge:   ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i184.backedge

for.cond.i184.backedge:                           ; preds = %if.end115.sink.split, %vli_rshift1.exit431.for.cond.i184.backedge_crit_edge, %vli_rshift1.exit335.for.cond.i184.backedge_crit_edge, %vli_rshift1.exit244.for.cond.i184.backedge_crit_edge, %vli_rshift1.exit206.for.cond.i184.backedge_crit_edge, %for.body.i187.for.cond.i184.backedge_crit_edge
  %i.0.in.i.be = phi i32 [ %i.0.i, %for.body.i187.for.cond.i184.backedge_crit_edge ], [ %ndigits, %if.end115.sink.split ], [ %ndigits, %vli_rshift1.exit244.for.cond.i184.backedge_crit_edge ], [ %ndigits, %vli_rshift1.exit431.for.cond.i184.backedge_crit_edge ], [ %ndigits, %vli_rshift1.exit335.for.cond.i184.backedge_crit_edge ], [ %ndigits, %vli_rshift1.exit206.for.cond.i184.backedge_crit_edge ]
  br label %for.cond.i184

while.body:                                       ; preds = %for.body.i187
  call void @__sanitizer_cov_trace_cmp8(i64 %18, i64 %20)
  %cmp2.i.le = icmp ugt i64 %18, %20
  %21 = ptrtoint ptr %a to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %a, align 8
  %and = and i64 %22, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %while.body
  br i1 %cmp6.i256, label %if.then8.while.body.i_crit_edge, label %if.then8.vli_rshift1.exit_crit_edge

if.then8.vli_rshift1.exit_crit_edge:              ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit

if.then8.while.body.i_crit_edge:                  ; preds = %if.then8
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then8.while.body.i_crit_edge
  %vli.addr.08.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i255, %if.then8.while.body.i_crit_edge ]
  %carry.07.i = phi i64 [ %shl.i, %while.body.i.while.body.i_crit_edge ], [ 0, %if.then8.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i64, ptr %vli.addr.08.i, i32 -1
  %23 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %incdec.ptr.i, align 8
  %shr.i = lshr i64 %24, 1
  %or.i = or i64 %shr.i, %carry.07.i
  store i64 %or.i, ptr %incdec.ptr.i, align 8
  %shl.i = shl i64 %24, 63
  %cmp.i189 = icmp ugt ptr %incdec.ptr.i, %a
  br i1 %cmp.i189, label %while.body.i.while.body.i_crit_edge, label %while.body.i.vli_rshift1.exit_crit_edge

while.body.i.vli_rshift1.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

vli_rshift1.exit:                                 ; preds = %while.body.i.vli_rshift1.exit_crit_edge, %if.then8.vli_rshift1.exit_crit_edge
  %25 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %u, align 8
  %and11 = and i64 %26, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11)
  %tobool12.not = icmp eq i64 %and11, 0
  br i1 %tobool12.not, label %vli_rshift1.exit.if.end17_crit_edge, label %vli_rshift1.exit.for.body.i195_crit_edge

vli_rshift1.exit.for.body.i195_crit_edge:         ; preds = %vli_rshift1.exit
  br label %for.body.i195

vli_rshift1.exit.if.end17_crit_edge:              ; preds = %vli_rshift1.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

for.body.i195:                                    ; preds = %for.body.i195.for.body.i195_crit_edge, %vli_rshift1.exit.for.body.i195_crit_edge
  %i.022.i = phi i32 [ %inc.i193, %for.body.i195.for.body.i195_crit_edge ], [ 0, %vli_rshift1.exit.for.body.i195_crit_edge ]
  %carry.021.i = phi i64 [ %carry.1.i, %for.body.i195.for.body.i195_crit_edge ], [ 0, %vli_rshift1.exit.for.body.i195_crit_edge ]
  %arrayidx.i190 = getelementptr i64, ptr %u, i32 %i.022.i
  %27 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx.i190, align 8
  %arrayidx1.i191 = getelementptr i64, ptr %mod, i32 %i.022.i
  %29 = ptrtoint ptr %arrayidx1.i191 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx1.i191, align 8
  %add.i = add i64 %28, %carry.021.i
  %add2.i = add i64 %add.i, %30
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i, i64 %28)
  %cmp4.not.i = icmp eq i64 %add2.i, %28
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i, i64 %28)
  %cmp6.i192 = icmp ult i64 %add2.i, %28
  %31 = zext i1 %cmp6.i192 to i64
  %carry.1.i = select i1 %cmp4.not.i, i64 %carry.021.i, i64 %31
  %32 = ptrtoint ptr %arrayidx.i190 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %add2.i, ptr %arrayidx.i190, align 8
  %inc.i193 = add nuw i32 %i.022.i, 1
  %exitcond.not.i194 = icmp eq i32 %inc.i193, %ndigits
  br i1 %exitcond.not.i194, label %for.body.i195.if.end17_crit_edge, label %for.body.i195.for.body.i195_crit_edge

for.body.i195.for.body.i195_crit_edge:            ; preds = %for.body.i195
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i195

for.body.i195.if.end17_crit_edge:                 ; preds = %for.body.i195
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17

if.end17:                                         ; preds = %for.body.i195.if.end17_crit_edge, %vli_rshift1.exit.if.end17_crit_edge
  %carry.0 = phi i64 [ 0, %vli_rshift1.exit.if.end17_crit_edge ], [ %carry.1.i, %for.body.i195.if.end17_crit_edge ]
  br i1 %cmp6.i326, label %if.end17.while.body.i205_crit_edge, label %if.end17.vli_rshift1.exit206_crit_edge

if.end17.vli_rshift1.exit206_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit206

if.end17.while.body.i205_crit_edge:               ; preds = %if.end17
  br label %while.body.i205

while.body.i205:                                  ; preds = %while.body.i205.while.body.i205_crit_edge, %if.end17.while.body.i205_crit_edge
  %vli.addr.08.i198 = phi ptr [ %incdec.ptr.i200, %while.body.i205.while.body.i205_crit_edge ], [ %add.ptr.i325, %if.end17.while.body.i205_crit_edge ]
  %carry.07.i199 = phi i64 [ %shl.i203, %while.body.i205.while.body.i205_crit_edge ], [ 0, %if.end17.while.body.i205_crit_edge ]
  %incdec.ptr.i200 = getelementptr i64, ptr %vli.addr.08.i198, i32 -1
  %33 = ptrtoint ptr %incdec.ptr.i200 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %incdec.ptr.i200, align 8
  %shr.i201 = lshr i64 %34, 1
  %or.i202 = or i64 %shr.i201, %carry.07.i199
  store i64 %or.i202, ptr %incdec.ptr.i200, align 8
  %shl.i203 = shl i64 %34, 63
  %cmp.i204 = icmp ugt ptr %incdec.ptr.i200, %u
  br i1 %cmp.i204, label %while.body.i205.while.body.i205_crit_edge, label %while.body.i205.vli_rshift1.exit206_crit_edge

while.body.i205.vli_rshift1.exit206_crit_edge:    ; preds = %while.body.i205
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit206

while.body.i205.while.body.i205_crit_edge:        ; preds = %while.body.i205
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i205

vli_rshift1.exit206:                              ; preds = %while.body.i205.vli_rshift1.exit206_crit_edge, %if.end17.vli_rshift1.exit206_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.0)
  %tobool19.not = icmp eq i64 %carry.0, 0
  br i1 %tobool19.not, label %vli_rshift1.exit206.for.cond.i184.backedge_crit_edge, label %vli_rshift1.exit206.if.end115.sink.split_crit_edge

vli_rshift1.exit206.if.end115.sink.split_crit_edge: ; preds = %vli_rshift1.exit206
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115.sink.split

vli_rshift1.exit206.for.cond.i184.backedge_crit_edge: ; preds = %vli_rshift1.exit206
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i184.backedge

if.else:                                          ; preds = %while.body
  %35 = ptrtoint ptr %b to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %b, align 8
  %and24 = and i64 %36, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and24)
  %tobool25.not = icmp eq i64 %and24, 0
  br i1 %tobool25.not, label %if.then26, label %if.else43

if.then26:                                        ; preds = %if.else
  br i1 %cmp6.i352, label %if.then26.while.body.i216_crit_edge, label %if.then26.vli_rshift1.exit217_crit_edge

if.then26.vli_rshift1.exit217_crit_edge:          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit217

if.then26.while.body.i216_crit_edge:              ; preds = %if.then26
  br label %while.body.i216

while.body.i216:                                  ; preds = %while.body.i216.while.body.i216_crit_edge, %if.then26.while.body.i216_crit_edge
  %vli.addr.08.i209 = phi ptr [ %incdec.ptr.i211, %while.body.i216.while.body.i216_crit_edge ], [ %add.ptr.i351, %if.then26.while.body.i216_crit_edge ]
  %carry.07.i210 = phi i64 [ %shl.i214, %while.body.i216.while.body.i216_crit_edge ], [ 0, %if.then26.while.body.i216_crit_edge ]
  %incdec.ptr.i211 = getelementptr i64, ptr %vli.addr.08.i209, i32 -1
  %37 = ptrtoint ptr %incdec.ptr.i211 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %incdec.ptr.i211, align 8
  %shr.i212 = lshr i64 %38, 1
  %or.i213 = or i64 %shr.i212, %carry.07.i210
  store i64 %or.i213, ptr %incdec.ptr.i211, align 8
  %shl.i214 = shl i64 %38, 63
  %cmp.i215 = icmp ugt ptr %incdec.ptr.i211, %b
  br i1 %cmp.i215, label %while.body.i216.while.body.i216_crit_edge, label %while.body.i216.vli_rshift1.exit217_crit_edge

while.body.i216.vli_rshift1.exit217_crit_edge:    ; preds = %while.body.i216
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit217

while.body.i216.while.body.i216_crit_edge:        ; preds = %while.body.i216
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i216

vli_rshift1.exit217:                              ; preds = %while.body.i216.vli_rshift1.exit217_crit_edge, %if.then26.vli_rshift1.exit217_crit_edge
  %39 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %v, align 8
  %and29 = and i64 %40, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and29)
  %tobool30.not = icmp eq i64 %and29, 0
  br i1 %tobool30.not, label %vli_rshift1.exit217.if.end35_crit_edge, label %vli_rshift1.exit217.for.body.i231_crit_edge

vli_rshift1.exit217.for.body.i231_crit_edge:      ; preds = %vli_rshift1.exit217
  br label %for.body.i231

vli_rshift1.exit217.if.end35_crit_edge:           ; preds = %vli_rshift1.exit217
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

for.body.i231:                                    ; preds = %for.body.i231.for.body.i231_crit_edge, %vli_rshift1.exit217.for.body.i231_crit_edge
  %i.022.i219 = phi i32 [ %inc.i229, %for.body.i231.for.body.i231_crit_edge ], [ 0, %vli_rshift1.exit217.for.body.i231_crit_edge ]
  %carry.021.i220 = phi i64 [ %carry.1.i227, %for.body.i231.for.body.i231_crit_edge ], [ 0, %vli_rshift1.exit217.for.body.i231_crit_edge ]
  %arrayidx.i221 = getelementptr i64, ptr %v, i32 %i.022.i219
  %41 = ptrtoint ptr %arrayidx.i221 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx.i221, align 8
  %arrayidx1.i222 = getelementptr i64, ptr %mod, i32 %i.022.i219
  %43 = ptrtoint ptr %arrayidx1.i222 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx1.i222, align 8
  %add.i223 = add i64 %42, %carry.021.i220
  %add2.i224 = add i64 %add.i223, %44
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i224, i64 %42)
  %cmp4.not.i225 = icmp eq i64 %add2.i224, %42
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i224, i64 %42)
  %cmp6.i226 = icmp ult i64 %add2.i224, %42
  %45 = zext i1 %cmp6.i226 to i64
  %carry.1.i227 = select i1 %cmp4.not.i225, i64 %carry.021.i220, i64 %45
  %46 = ptrtoint ptr %arrayidx.i221 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %add2.i224, ptr %arrayidx.i221, align 8
  %inc.i229 = add nuw i32 %i.022.i219, 1
  %exitcond.not.i230 = icmp eq i32 %inc.i229, %ndigits
  br i1 %exitcond.not.i230, label %for.body.i231.if.end35_crit_edge, label %for.body.i231.for.body.i231_crit_edge

for.body.i231.for.body.i231_crit_edge:            ; preds = %for.body.i231
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i231

for.body.i231.if.end35_crit_edge:                 ; preds = %for.body.i231
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end35

if.end35:                                         ; preds = %for.body.i231.if.end35_crit_edge, %vli_rshift1.exit217.if.end35_crit_edge
  %carry.1 = phi i64 [ 0, %vli_rshift1.exit217.if.end35_crit_edge ], [ %carry.1.i227, %for.body.i231.if.end35_crit_edge ]
  br i1 %cmp6.i422, label %if.end35.while.body.i243_crit_edge, label %if.end35.vli_rshift1.exit244_crit_edge

if.end35.vli_rshift1.exit244_crit_edge:           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit244

if.end35.while.body.i243_crit_edge:               ; preds = %if.end35
  br label %while.body.i243

while.body.i243:                                  ; preds = %while.body.i243.while.body.i243_crit_edge, %if.end35.while.body.i243_crit_edge
  %vli.addr.08.i236 = phi ptr [ %incdec.ptr.i238, %while.body.i243.while.body.i243_crit_edge ], [ %add.ptr.i421, %if.end35.while.body.i243_crit_edge ]
  %carry.07.i237 = phi i64 [ %shl.i241, %while.body.i243.while.body.i243_crit_edge ], [ 0, %if.end35.while.body.i243_crit_edge ]
  %incdec.ptr.i238 = getelementptr i64, ptr %vli.addr.08.i236, i32 -1
  %47 = ptrtoint ptr %incdec.ptr.i238 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %incdec.ptr.i238, align 8
  %shr.i239 = lshr i64 %48, 1
  %or.i240 = or i64 %shr.i239, %carry.07.i237
  store i64 %or.i240, ptr %incdec.ptr.i238, align 8
  %shl.i241 = shl i64 %48, 63
  %cmp.i242 = icmp ugt ptr %incdec.ptr.i238, %v
  br i1 %cmp.i242, label %while.body.i243.while.body.i243_crit_edge, label %while.body.i243.vli_rshift1.exit244_crit_edge

while.body.i243.vli_rshift1.exit244_crit_edge:    ; preds = %while.body.i243
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit244

while.body.i243.while.body.i243_crit_edge:        ; preds = %while.body.i243
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i243

vli_rshift1.exit244:                              ; preds = %while.body.i243.vli_rshift1.exit244_crit_edge, %if.end35.vli_rshift1.exit244_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.1)
  %tobool37.not = icmp eq i64 %carry.1, 0
  br i1 %tobool37.not, label %vli_rshift1.exit244.for.cond.i184.backedge_crit_edge, label %vli_rshift1.exit244.if.end115.sink.split_crit_edge

vli_rshift1.exit244.if.end115.sink.split_crit_edge: ; preds = %vli_rshift1.exit244
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115.sink.split

vli_rshift1.exit244.for.cond.i184.backedge_crit_edge: ; preds = %vli_rshift1.exit244
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i184.backedge

if.else43:                                        ; preds = %if.else
  br i1 %cmp2.i.le, label %if.else43.for.body.i254_crit_edge, label %if.else43.for.body.i348_crit_edge

if.else43.for.body.i348_crit_edge:                ; preds = %if.else43
  br label %for.body.i348

if.else43.for.body.i254_crit_edge:                ; preds = %if.else43
  br label %for.body.i254

for.body.i254:                                    ; preds = %for.body.i254.for.body.i254_crit_edge, %if.else43.for.body.i254_crit_edge
  %i.022.i246 = phi i32 [ %inc.i252, %for.body.i254.for.body.i254_crit_edge ], [ 0, %if.else43.for.body.i254_crit_edge ]
  %borrow.021.i = phi i64 [ %borrow.1.i, %for.body.i254.for.body.i254_crit_edge ], [ 0, %if.else43.for.body.i254_crit_edge ]
  %arrayidx.i247 = getelementptr i64, ptr %a, i32 %i.022.i246
  %49 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx.i247, align 8
  %arrayidx1.i248 = getelementptr i64, ptr %b, i32 %i.022.i246
  %51 = ptrtoint ptr %arrayidx1.i248 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx1.i248, align 8
  %53 = add i64 %52, %borrow.021.i
  %sub2.i = sub i64 %50, %53
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %cmp4.not.i249 = icmp eq i64 %53, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %50, i64 %53)
  %cmp6.i250 = icmp ult i64 %50, %53
  %54 = zext i1 %cmp6.i250 to i64
  %borrow.1.i = select i1 %cmp4.not.i249, i64 %borrow.021.i, i64 %54
  %55 = ptrtoint ptr %arrayidx.i247 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %sub2.i, ptr %arrayidx.i247, align 8
  %inc.i252 = add nuw i32 %i.022.i246, 1
  %exitcond.not.i253 = icmp eq i32 %inc.i252, %ndigits
  br i1 %exitcond.not.i253, label %vli_sub.exit, label %for.body.i254.for.body.i254_crit_edge

for.body.i254.for.body.i254_crit_edge:            ; preds = %for.body.i254
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i254

vli_sub.exit:                                     ; preds = %for.body.i254
  br i1 %cmp6.i256, label %vli_sub.exit.while.body.i264_crit_edge, label %vli_sub.exit.for.cond.i269.preheader_crit_edge

vli_sub.exit.for.cond.i269.preheader_crit_edge:   ; preds = %vli_sub.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i269.preheader

vli_sub.exit.while.body.i264_crit_edge:           ; preds = %vli_sub.exit
  br label %while.body.i264

while.body.i264:                                  ; preds = %while.body.i264.while.body.i264_crit_edge, %vli_sub.exit.while.body.i264_crit_edge
  %vli.addr.08.i257 = phi ptr [ %incdec.ptr.i259, %while.body.i264.while.body.i264_crit_edge ], [ %add.ptr.i255, %vli_sub.exit.while.body.i264_crit_edge ]
  %carry.07.i258 = phi i64 [ %shl.i262, %while.body.i264.while.body.i264_crit_edge ], [ 0, %vli_sub.exit.while.body.i264_crit_edge ]
  %incdec.ptr.i259 = getelementptr i64, ptr %vli.addr.08.i257, i32 -1
  %56 = ptrtoint ptr %incdec.ptr.i259 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %incdec.ptr.i259, align 8
  %shr.i260 = lshr i64 %57, 1
  %or.i261 = or i64 %shr.i260, %carry.07.i258
  store i64 %or.i261, ptr %incdec.ptr.i259, align 8
  %shl.i262 = shl i64 %57, 63
  %cmp.i263 = icmp ugt ptr %incdec.ptr.i259, %a
  br i1 %cmp.i263, label %while.body.i264.while.body.i264_crit_edge, label %while.body.i264.for.cond.i269.preheader_crit_edge

while.body.i264.for.cond.i269.preheader_crit_edge: ; preds = %while.body.i264
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i269.preheader

while.body.i264.while.body.i264_crit_edge:        ; preds = %while.body.i264
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i264

for.cond.i269.preheader:                          ; preds = %while.body.i264.for.cond.i269.preheader_crit_edge, %vli_sub.exit.for.cond.i269.preheader_crit_edge
  br label %for.cond.i269

for.cond.i269:                                    ; preds = %if.else.i275.for.cond.i269_crit_edge, %for.cond.i269.preheader
  %i.0.in.i266 = phi i32 [ %i.0.i267, %if.else.i275.for.cond.i269_crit_edge ], [ %ndigits, %for.cond.i269.preheader ]
  %i.0.i267 = add i32 %i.0.in.i266, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i267)
  %cmp.i268 = icmp sgt i32 %i.0.i267, -1
  br i1 %cmp.i268, label %for.body.i273, label %for.cond.i269.for.body.i306.preheader_crit_edge

for.cond.i269.for.body.i306.preheader_crit_edge:  ; preds = %for.cond.i269
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i306.preheader

for.body.i273:                                    ; preds = %for.cond.i269
  %arrayidx.i270 = getelementptr i64, ptr %u, i32 %i.0.i267
  %58 = ptrtoint ptr %arrayidx.i270 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %arrayidx.i270, align 8
  %arrayidx1.i271 = getelementptr i64, ptr %v, i32 %i.0.i267
  %60 = ptrtoint ptr %arrayidx1.i271 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %arrayidx1.i271, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %59, i64 %61)
  %cmp2.i272 = icmp ugt i64 %59, %61
  br i1 %cmp2.i272, label %for.body.i273.for.body.i306.preheader_crit_edge, label %if.else.i275

for.body.i273.for.body.i306.preheader_crit_edge:  ; preds = %for.body.i273
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i306.preheader

if.else.i275:                                     ; preds = %for.body.i273
  %cmp5.i274 = icmp ult i64 %59, %61
  br i1 %cmp5.i274, label %if.else.i275.for.body.i291_crit_edge, label %if.else.i275.for.cond.i269_crit_edge

if.else.i275.for.cond.i269_crit_edge:             ; preds = %if.else.i275
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i269

if.else.i275.for.body.i291_crit_edge:             ; preds = %if.else.i275
  br label %for.body.i291

for.body.i291:                                    ; preds = %for.body.i291.for.body.i291_crit_edge, %if.else.i275.for.body.i291_crit_edge
  %i.022.i279 = phi i32 [ %inc.i289, %for.body.i291.for.body.i291_crit_edge ], [ 0, %if.else.i275.for.body.i291_crit_edge ]
  %carry.021.i280 = phi i64 [ %carry.1.i287, %for.body.i291.for.body.i291_crit_edge ], [ 0, %if.else.i275.for.body.i291_crit_edge ]
  %arrayidx.i281 = getelementptr i64, ptr %u, i32 %i.022.i279
  %62 = ptrtoint ptr %arrayidx.i281 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx.i281, align 8
  %arrayidx1.i282 = getelementptr i64, ptr %mod, i32 %i.022.i279
  %64 = ptrtoint ptr %arrayidx1.i282 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx1.i282, align 8
  %add.i283 = add i64 %63, %carry.021.i280
  %add2.i284 = add i64 %add.i283, %65
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i284, i64 %63)
  %cmp4.not.i285 = icmp eq i64 %add2.i284, %63
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i284, i64 %63)
  %cmp6.i286 = icmp ult i64 %add2.i284, %63
  %66 = zext i1 %cmp6.i286 to i64
  %carry.1.i287 = select i1 %cmp4.not.i285, i64 %carry.021.i280, i64 %66
  %67 = ptrtoint ptr %arrayidx.i281 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add2.i284, ptr %arrayidx.i281, align 8
  %inc.i289 = add nuw i32 %i.022.i279, 1
  %exitcond.not.i290 = icmp eq i32 %inc.i289, %ndigits
  br i1 %exitcond.not.i290, label %for.body.i291.for.body.i306.preheader_crit_edge, label %for.body.i291.for.body.i291_crit_edge

for.body.i291.for.body.i291_crit_edge:            ; preds = %for.body.i291
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i291

for.body.i291.for.body.i306.preheader_crit_edge:  ; preds = %for.body.i291
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i306.preheader

for.body.i306.preheader:                          ; preds = %for.body.i291.for.body.i306.preheader_crit_edge, %for.body.i273.for.body.i306.preheader_crit_edge, %for.cond.i269.for.body.i306.preheader_crit_edge
  br label %for.body.i306

for.body.i306:                                    ; preds = %for.body.i306.for.body.i306_crit_edge, %for.body.i306.preheader
  %i.022.i295 = phi i32 [ %inc.i304, %for.body.i306.for.body.i306_crit_edge ], [ 0, %for.body.i306.preheader ]
  %borrow.021.i296 = phi i64 [ %borrow.1.i302, %for.body.i306.for.body.i306_crit_edge ], [ 0, %for.body.i306.preheader ]
  %arrayidx.i297 = getelementptr i64, ptr %u, i32 %i.022.i295
  %68 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx.i297, align 8
  %arrayidx1.i298 = getelementptr i64, ptr %v, i32 %i.022.i295
  %70 = ptrtoint ptr %arrayidx1.i298 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx1.i298, align 8
  %72 = add i64 %71, %borrow.021.i296
  %sub2.i299 = sub i64 %69, %72
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %72)
  %cmp4.not.i300 = icmp eq i64 %72, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %72)
  %cmp6.i301 = icmp ult i64 %69, %72
  %73 = zext i1 %cmp6.i301 to i64
  %borrow.1.i302 = select i1 %cmp4.not.i300, i64 %borrow.021.i296, i64 %73
  %74 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %sub2.i299, ptr %arrayidx.i297, align 8
  %inc.i304 = add nuw i32 %i.022.i295, 1
  %exitcond.not.i305 = icmp eq i32 %inc.i304, %ndigits
  br i1 %exitcond.not.i305, label %vli_sub.exit308, label %for.body.i306.for.body.i306_crit_edge

for.body.i306.for.body.i306_crit_edge:            ; preds = %for.body.i306
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i306

vli_sub.exit308:                                  ; preds = %for.body.i306
  %75 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %u, align 8
  %and65 = and i64 %76, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and65)
  %tobool66.not = icmp eq i64 %and65, 0
  br i1 %tobool66.not, label %vli_sub.exit308.if.end71_crit_edge, label %vli_sub.exit308.for.body.i322_crit_edge

vli_sub.exit308.for.body.i322_crit_edge:          ; preds = %vli_sub.exit308
  br label %for.body.i322

vli_sub.exit308.if.end71_crit_edge:               ; preds = %vli_sub.exit308
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71

for.body.i322:                                    ; preds = %for.body.i322.for.body.i322_crit_edge, %vli_sub.exit308.for.body.i322_crit_edge
  %i.022.i310 = phi i32 [ %inc.i320, %for.body.i322.for.body.i322_crit_edge ], [ 0, %vli_sub.exit308.for.body.i322_crit_edge ]
  %carry.021.i311 = phi i64 [ %carry.1.i318, %for.body.i322.for.body.i322_crit_edge ], [ 0, %vli_sub.exit308.for.body.i322_crit_edge ]
  %arrayidx.i312 = getelementptr i64, ptr %u, i32 %i.022.i310
  %77 = ptrtoint ptr %arrayidx.i312 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx.i312, align 8
  %arrayidx1.i313 = getelementptr i64, ptr %mod, i32 %i.022.i310
  %79 = ptrtoint ptr %arrayidx1.i313 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx1.i313, align 8
  %add.i314 = add i64 %78, %carry.021.i311
  %add2.i315 = add i64 %add.i314, %80
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i315, i64 %78)
  %cmp4.not.i316 = icmp eq i64 %add2.i315, %78
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i315, i64 %78)
  %cmp6.i317 = icmp ult i64 %add2.i315, %78
  %81 = zext i1 %cmp6.i317 to i64
  %carry.1.i318 = select i1 %cmp4.not.i316, i64 %carry.021.i311, i64 %81
  %82 = ptrtoint ptr %arrayidx.i312 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %add2.i315, ptr %arrayidx.i312, align 8
  %inc.i320 = add nuw i32 %i.022.i310, 1
  %exitcond.not.i321 = icmp eq i32 %inc.i320, %ndigits
  br i1 %exitcond.not.i321, label %for.body.i322.if.end71_crit_edge, label %for.body.i322.for.body.i322_crit_edge

for.body.i322.for.body.i322_crit_edge:            ; preds = %for.body.i322
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i322

for.body.i322.if.end71_crit_edge:                 ; preds = %for.body.i322
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71

if.end71:                                         ; preds = %for.body.i322.if.end71_crit_edge, %vli_sub.exit308.if.end71_crit_edge
  %carry.2 = phi i64 [ 0, %vli_sub.exit308.if.end71_crit_edge ], [ %carry.1.i318, %for.body.i322.if.end71_crit_edge ]
  br i1 %cmp6.i326, label %if.end71.while.body.i334_crit_edge, label %if.end71.vli_rshift1.exit335_crit_edge

if.end71.vli_rshift1.exit335_crit_edge:           ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit335

if.end71.while.body.i334_crit_edge:               ; preds = %if.end71
  br label %while.body.i334

while.body.i334:                                  ; preds = %while.body.i334.while.body.i334_crit_edge, %if.end71.while.body.i334_crit_edge
  %vli.addr.08.i327 = phi ptr [ %incdec.ptr.i329, %while.body.i334.while.body.i334_crit_edge ], [ %add.ptr.i325, %if.end71.while.body.i334_crit_edge ]
  %carry.07.i328 = phi i64 [ %shl.i332, %while.body.i334.while.body.i334_crit_edge ], [ 0, %if.end71.while.body.i334_crit_edge ]
  %incdec.ptr.i329 = getelementptr i64, ptr %vli.addr.08.i327, i32 -1
  %83 = ptrtoint ptr %incdec.ptr.i329 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %incdec.ptr.i329, align 8
  %shr.i330 = lshr i64 %84, 1
  %or.i331 = or i64 %shr.i330, %carry.07.i328
  store i64 %or.i331, ptr %incdec.ptr.i329, align 8
  %shl.i332 = shl i64 %84, 63
  %cmp.i333 = icmp ugt ptr %incdec.ptr.i329, %u
  br i1 %cmp.i333, label %while.body.i334.while.body.i334_crit_edge, label %while.body.i334.vli_rshift1.exit335_crit_edge

while.body.i334.vli_rshift1.exit335_crit_edge:    ; preds = %while.body.i334
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit335

while.body.i334.while.body.i334_crit_edge:        ; preds = %while.body.i334
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i334

vli_rshift1.exit335:                              ; preds = %while.body.i334.vli_rshift1.exit335_crit_edge, %if.end71.vli_rshift1.exit335_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.2)
  %tobool73.not = icmp eq i64 %carry.2, 0
  br i1 %tobool73.not, label %vli_rshift1.exit335.for.cond.i184.backedge_crit_edge, label %vli_rshift1.exit335.if.end115.sink.split_crit_edge

vli_rshift1.exit335.if.end115.sink.split_crit_edge: ; preds = %vli_rshift1.exit335
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115.sink.split

vli_rshift1.exit335.for.cond.i184.backedge_crit_edge: ; preds = %vli_rshift1.exit335
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i184.backedge

for.body.i348:                                    ; preds = %for.body.i348.for.body.i348_crit_edge, %if.else43.for.body.i348_crit_edge
  %i.022.i337 = phi i32 [ %inc.i346, %for.body.i348.for.body.i348_crit_edge ], [ 0, %if.else43.for.body.i348_crit_edge ]
  %borrow.021.i338 = phi i64 [ %borrow.1.i344, %for.body.i348.for.body.i348_crit_edge ], [ 0, %if.else43.for.body.i348_crit_edge ]
  %arrayidx.i339 = getelementptr i64, ptr %b, i32 %i.022.i337
  %85 = ptrtoint ptr %arrayidx.i339 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx.i339, align 8
  %arrayidx1.i340 = getelementptr i64, ptr %a, i32 %i.022.i337
  %87 = ptrtoint ptr %arrayidx1.i340 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx1.i340, align 8
  %89 = add i64 %88, %borrow.021.i338
  %sub2.i341 = sub i64 %86, %89
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %89)
  %cmp4.not.i342 = icmp eq i64 %89, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %86, i64 %89)
  %cmp6.i343 = icmp ult i64 %86, %89
  %90 = zext i1 %cmp6.i343 to i64
  %borrow.1.i344 = select i1 %cmp4.not.i342, i64 %borrow.021.i338, i64 %90
  %91 = ptrtoint ptr %arrayidx.i339 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %sub2.i341, ptr %arrayidx.i339, align 8
  %inc.i346 = add nuw i32 %i.022.i337, 1
  %exitcond.not.i347 = icmp eq i32 %inc.i346, %ndigits
  br i1 %exitcond.not.i347, label %vli_sub.exit350, label %for.body.i348.for.body.i348_crit_edge

for.body.i348.for.body.i348_crit_edge:            ; preds = %for.body.i348
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i348

vli_sub.exit350:                                  ; preds = %for.body.i348
  br i1 %cmp6.i352, label %vli_sub.exit350.while.body.i360_crit_edge, label %vli_sub.exit350.for.cond.i365.preheader_crit_edge

vli_sub.exit350.for.cond.i365.preheader_crit_edge: ; preds = %vli_sub.exit350
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i365.preheader

vli_sub.exit350.while.body.i360_crit_edge:        ; preds = %vli_sub.exit350
  br label %while.body.i360

while.body.i360:                                  ; preds = %while.body.i360.while.body.i360_crit_edge, %vli_sub.exit350.while.body.i360_crit_edge
  %vli.addr.08.i353 = phi ptr [ %incdec.ptr.i355, %while.body.i360.while.body.i360_crit_edge ], [ %add.ptr.i351, %vli_sub.exit350.while.body.i360_crit_edge ]
  %carry.07.i354 = phi i64 [ %shl.i358, %while.body.i360.while.body.i360_crit_edge ], [ 0, %vli_sub.exit350.while.body.i360_crit_edge ]
  %incdec.ptr.i355 = getelementptr i64, ptr %vli.addr.08.i353, i32 -1
  %92 = ptrtoint ptr %incdec.ptr.i355 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %incdec.ptr.i355, align 8
  %shr.i356 = lshr i64 %93, 1
  %or.i357 = or i64 %shr.i356, %carry.07.i354
  store i64 %or.i357, ptr %incdec.ptr.i355, align 8
  %shl.i358 = shl i64 %93, 63
  %cmp.i359 = icmp ugt ptr %incdec.ptr.i355, %b
  br i1 %cmp.i359, label %while.body.i360.while.body.i360_crit_edge, label %while.body.i360.for.cond.i365.preheader_crit_edge

while.body.i360.for.cond.i365.preheader_crit_edge: ; preds = %while.body.i360
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i365.preheader

while.body.i360.while.body.i360_crit_edge:        ; preds = %while.body.i360
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i360

for.cond.i365.preheader:                          ; preds = %while.body.i360.for.cond.i365.preheader_crit_edge, %vli_sub.exit350.for.cond.i365.preheader_crit_edge
  br label %for.cond.i365

for.cond.i365:                                    ; preds = %if.else.i371.for.cond.i365_crit_edge, %for.cond.i365.preheader
  %i.0.in.i362 = phi i32 [ %i.0.i363, %if.else.i371.for.cond.i365_crit_edge ], [ %ndigits, %for.cond.i365.preheader ]
  %i.0.i363 = add i32 %i.0.in.i362, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i363)
  %cmp.i364 = icmp sgt i32 %i.0.i363, -1
  br i1 %cmp.i364, label %for.body.i369, label %for.cond.i365.for.body.i402.preheader_crit_edge

for.cond.i365.for.body.i402.preheader_crit_edge:  ; preds = %for.cond.i365
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i402.preheader

for.body.i369:                                    ; preds = %for.cond.i365
  %arrayidx.i366 = getelementptr i64, ptr %v, i32 %i.0.i363
  %94 = ptrtoint ptr %arrayidx.i366 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx.i366, align 8
  %arrayidx1.i367 = getelementptr i64, ptr %u, i32 %i.0.i363
  %96 = ptrtoint ptr %arrayidx1.i367 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %arrayidx1.i367, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %95, i64 %97)
  %cmp2.i368 = icmp ugt i64 %95, %97
  br i1 %cmp2.i368, label %for.body.i369.for.body.i402.preheader_crit_edge, label %if.else.i371

for.body.i369.for.body.i402.preheader_crit_edge:  ; preds = %for.body.i369
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i402.preheader

if.else.i371:                                     ; preds = %for.body.i369
  %cmp5.i370 = icmp ult i64 %95, %97
  br i1 %cmp5.i370, label %if.else.i371.for.body.i387_crit_edge, label %if.else.i371.for.cond.i365_crit_edge

if.else.i371.for.cond.i365_crit_edge:             ; preds = %if.else.i371
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i365

if.else.i371.for.body.i387_crit_edge:             ; preds = %if.else.i371
  br label %for.body.i387

for.body.i387:                                    ; preds = %for.body.i387.for.body.i387_crit_edge, %if.else.i371.for.body.i387_crit_edge
  %i.022.i375 = phi i32 [ %inc.i385, %for.body.i387.for.body.i387_crit_edge ], [ 0, %if.else.i371.for.body.i387_crit_edge ]
  %carry.021.i376 = phi i64 [ %carry.1.i383, %for.body.i387.for.body.i387_crit_edge ], [ 0, %if.else.i371.for.body.i387_crit_edge ]
  %arrayidx.i377 = getelementptr i64, ptr %v, i32 %i.022.i375
  %98 = ptrtoint ptr %arrayidx.i377 to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %arrayidx.i377, align 8
  %arrayidx1.i378 = getelementptr i64, ptr %mod, i32 %i.022.i375
  %100 = ptrtoint ptr %arrayidx1.i378 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx1.i378, align 8
  %add.i379 = add i64 %99, %carry.021.i376
  %add2.i380 = add i64 %add.i379, %101
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i380, i64 %99)
  %cmp4.not.i381 = icmp eq i64 %add2.i380, %99
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i380, i64 %99)
  %cmp6.i382 = icmp ult i64 %add2.i380, %99
  %102 = zext i1 %cmp6.i382 to i64
  %carry.1.i383 = select i1 %cmp4.not.i381, i64 %carry.021.i376, i64 %102
  %103 = ptrtoint ptr %arrayidx.i377 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %add2.i380, ptr %arrayidx.i377, align 8
  %inc.i385 = add nuw i32 %i.022.i375, 1
  %exitcond.not.i386 = icmp eq i32 %inc.i385, %ndigits
  br i1 %exitcond.not.i386, label %for.body.i387.for.body.i402.preheader_crit_edge, label %for.body.i387.for.body.i387_crit_edge

for.body.i387.for.body.i387_crit_edge:            ; preds = %for.body.i387
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i387

for.body.i387.for.body.i402.preheader_crit_edge:  ; preds = %for.body.i387
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i402.preheader

for.body.i402.preheader:                          ; preds = %for.body.i387.for.body.i402.preheader_crit_edge, %for.body.i369.for.body.i402.preheader_crit_edge, %for.cond.i365.for.body.i402.preheader_crit_edge
  br label %for.body.i402

for.body.i402:                                    ; preds = %for.body.i402.for.body.i402_crit_edge, %for.body.i402.preheader
  %i.022.i391 = phi i32 [ %inc.i400, %for.body.i402.for.body.i402_crit_edge ], [ 0, %for.body.i402.preheader ]
  %borrow.021.i392 = phi i64 [ %borrow.1.i398, %for.body.i402.for.body.i402_crit_edge ], [ 0, %for.body.i402.preheader ]
  %arrayidx.i393 = getelementptr i64, ptr %v, i32 %i.022.i391
  %104 = ptrtoint ptr %arrayidx.i393 to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %arrayidx.i393, align 8
  %arrayidx1.i394 = getelementptr i64, ptr %u, i32 %i.022.i391
  %106 = ptrtoint ptr %arrayidx1.i394 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %arrayidx1.i394, align 8
  %108 = add i64 %107, %borrow.021.i392
  %sub2.i395 = sub i64 %105, %108
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %108)
  %cmp4.not.i396 = icmp eq i64 %108, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %105, i64 %108)
  %cmp6.i397 = icmp ult i64 %105, %108
  %109 = zext i1 %cmp6.i397 to i64
  %borrow.1.i398 = select i1 %cmp4.not.i396, i64 %borrow.021.i392, i64 %109
  %110 = ptrtoint ptr %arrayidx.i393 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %sub2.i395, ptr %arrayidx.i393, align 8
  %inc.i400 = add nuw i32 %i.022.i391, 1
  %exitcond.not.i401 = icmp eq i32 %inc.i400, %ndigits
  br i1 %exitcond.not.i401, label %vli_sub.exit404, label %for.body.i402.for.body.i402_crit_edge

for.body.i402.for.body.i402_crit_edge:            ; preds = %for.body.i402
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i402

vli_sub.exit404:                                  ; preds = %for.body.i402
  %111 = ptrtoint ptr %v to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %v, align 8
  %and99 = and i64 %112, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and99)
  %tobool100.not = icmp eq i64 %and99, 0
  br i1 %tobool100.not, label %vli_sub.exit404.if.end105_crit_edge, label %vli_sub.exit404.for.body.i418_crit_edge

vli_sub.exit404.for.body.i418_crit_edge:          ; preds = %vli_sub.exit404
  br label %for.body.i418

vli_sub.exit404.if.end105_crit_edge:              ; preds = %vli_sub.exit404
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

for.body.i418:                                    ; preds = %for.body.i418.for.body.i418_crit_edge, %vli_sub.exit404.for.body.i418_crit_edge
  %i.022.i406 = phi i32 [ %inc.i416, %for.body.i418.for.body.i418_crit_edge ], [ 0, %vli_sub.exit404.for.body.i418_crit_edge ]
  %carry.021.i407 = phi i64 [ %carry.1.i414, %for.body.i418.for.body.i418_crit_edge ], [ 0, %vli_sub.exit404.for.body.i418_crit_edge ]
  %arrayidx.i408 = getelementptr i64, ptr %v, i32 %i.022.i406
  %113 = ptrtoint ptr %arrayidx.i408 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx.i408, align 8
  %arrayidx1.i409 = getelementptr i64, ptr %mod, i32 %i.022.i406
  %115 = ptrtoint ptr %arrayidx1.i409 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx1.i409, align 8
  %add.i410 = add i64 %114, %carry.021.i407
  %add2.i411 = add i64 %add.i410, %116
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i411, i64 %114)
  %cmp4.not.i412 = icmp eq i64 %add2.i411, %114
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i411, i64 %114)
  %cmp6.i413 = icmp ult i64 %add2.i411, %114
  %117 = zext i1 %cmp6.i413 to i64
  %carry.1.i414 = select i1 %cmp4.not.i412, i64 %carry.021.i407, i64 %117
  %118 = ptrtoint ptr %arrayidx.i408 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %add2.i411, ptr %arrayidx.i408, align 8
  %inc.i416 = add nuw i32 %i.022.i406, 1
  %exitcond.not.i417 = icmp eq i32 %inc.i416, %ndigits
  br i1 %exitcond.not.i417, label %for.body.i418.if.end105_crit_edge, label %for.body.i418.for.body.i418_crit_edge

for.body.i418.for.body.i418_crit_edge:            ; preds = %for.body.i418
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i418

for.body.i418.if.end105_crit_edge:                ; preds = %for.body.i418
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end105

if.end105:                                        ; preds = %for.body.i418.if.end105_crit_edge, %vli_sub.exit404.if.end105_crit_edge
  %carry.3 = phi i64 [ 0, %vli_sub.exit404.if.end105_crit_edge ], [ %carry.1.i414, %for.body.i418.if.end105_crit_edge ]
  br i1 %cmp6.i422, label %if.end105.while.body.i430_crit_edge, label %if.end105.vli_rshift1.exit431_crit_edge

if.end105.vli_rshift1.exit431_crit_edge:          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit431

if.end105.while.body.i430_crit_edge:              ; preds = %if.end105
  br label %while.body.i430

while.body.i430:                                  ; preds = %while.body.i430.while.body.i430_crit_edge, %if.end105.while.body.i430_crit_edge
  %vli.addr.08.i423 = phi ptr [ %incdec.ptr.i425, %while.body.i430.while.body.i430_crit_edge ], [ %add.ptr.i421, %if.end105.while.body.i430_crit_edge ]
  %carry.07.i424 = phi i64 [ %shl.i428, %while.body.i430.while.body.i430_crit_edge ], [ 0, %if.end105.while.body.i430_crit_edge ]
  %incdec.ptr.i425 = getelementptr i64, ptr %vli.addr.08.i423, i32 -1
  %119 = ptrtoint ptr %incdec.ptr.i425 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %incdec.ptr.i425, align 8
  %shr.i426 = lshr i64 %120, 1
  %or.i427 = or i64 %shr.i426, %carry.07.i424
  store i64 %or.i427, ptr %incdec.ptr.i425, align 8
  %shl.i428 = shl i64 %120, 63
  %cmp.i429 = icmp ugt ptr %incdec.ptr.i425, %v
  br i1 %cmp.i429, label %while.body.i430.while.body.i430_crit_edge, label %while.body.i430.vli_rshift1.exit431_crit_edge

while.body.i430.vli_rshift1.exit431_crit_edge:    ; preds = %while.body.i430
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit431

while.body.i430.while.body.i430_crit_edge:        ; preds = %while.body.i430
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i430

vli_rshift1.exit431:                              ; preds = %while.body.i430.vli_rshift1.exit431_crit_edge, %if.end105.vli_rshift1.exit431_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.3)
  %tobool107.not = icmp eq i64 %carry.3, 0
  br i1 %tobool107.not, label %vli_rshift1.exit431.for.cond.i184.backedge_crit_edge, label %vli_rshift1.exit431.if.end115.sink.split_crit_edge

vli_rshift1.exit431.if.end115.sink.split_crit_edge: ; preds = %vli_rshift1.exit431
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end115.sink.split

vli_rshift1.exit431.for.cond.i184.backedge_crit_edge: ; preds = %vli_rshift1.exit431
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i184.backedge

if.end115.sink.split:                             ; preds = %vli_rshift1.exit431.if.end115.sink.split_crit_edge, %vli_rshift1.exit335.if.end115.sink.split_crit_edge, %vli_rshift1.exit244.if.end115.sink.split_crit_edge, %vli_rshift1.exit206.if.end115.sink.split_crit_edge
  %arrayidx110.sink461 = phi ptr [ %arrayidx76, %vli_rshift1.exit206.if.end115.sink.split_crit_edge ], [ %arrayidx110, %vli_rshift1.exit244.if.end115.sink.split_crit_edge ], [ %arrayidx76, %vli_rshift1.exit335.if.end115.sink.split_crit_edge ], [ %arrayidx110, %vli_rshift1.exit431.if.end115.sink.split_crit_edge ]
  %121 = ptrtoint ptr %arrayidx110.sink461 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx110.sink461, align 8
  %or41 = or i64 %122, -9223372036854775808
  store i64 %or41, ptr %arrayidx110.sink461, align 8
  br label %for.cond.i184.backedge

for.body.i438.preheader:                          ; preds = %for.cond.i184
  call void @__sanitizer_cov_trace_pc() #18
  %123 = shl nuw i32 %ndigits, 3
  %124 = call ptr @memcpy(ptr %result, ptr %u, i32 %123)
  br label %cleanup

cleanup:                                          ; preds = %for.body.i438.preheader, %for.body.preheader.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %v) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %u) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %b) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #16
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ecc_point_is_zero(ptr nocapture noundef readonly %point) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %point to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %point, align 4
  %ndigits = getelementptr inbounds %struct.ecc_point, ptr %point, i32 0, i32 2
  %2 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ndigits, align 4
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3.not.i = icmp eq i8 %3, 0
  br i1 %cmp3.not.i, label %entry.land.end_crit_edge, label %for.body.i.preheader

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

for.body.i.preheader:                             ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not.i23 = icmp eq i64 %5, 0
  br i1 %tobool.not.i23, label %for.body.i.preheader.for.cond.i_crit_edge, label %for.body.i.preheader.land.end_crit_edge

for.body.i.preheader.land.end_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.04.i24 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.04.i24, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv)
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %for.cond.i.vli_is_zero.exit_crit_edge, label %for.body.i

for.cond.i.vli_is_zero.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_is_zero.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i64, ptr %1, i32 %inc.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq i64 %7, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.vli_is_zero.exit_crit_edge

for.body.i.vli_is_zero.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_is_zero.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

vli_is_zero.exit:                                 ; preds = %for.body.i.vli_is_zero.exit_crit_edge, %for.cond.i.vli_is_zero.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv)
  %cmp.i.le = icmp ult i32 %inc.i, %conv
  br i1 %cmp.i.le, label %vli_is_zero.exit.land.end_crit_edge, label %for.body.i18.preheader

vli_is_zero.exit.land.end_crit_edge:              ; preds = %vli_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

for.body.i18.preheader:                           ; preds = %vli_is_zero.exit
  %y = getelementptr inbounds %struct.ecc_point, ptr %point, i32 0, i32 1
  %8 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %y, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %9, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i1726 = icmp eq i64 %11, 0
  br i1 %tobool.not.i1726, label %for.body.i18.preheader.for.cond.i13_crit_edge, label %for.body.i18.preheader.land.end_crit_edge

for.body.i18.preheader.land.end_crit_edge:        ; preds = %for.body.i18.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end

for.body.i18.preheader.for.cond.i13_crit_edge:    ; preds = %for.body.i18.preheader
  br label %for.cond.i13

for.cond.i13:                                     ; preds = %for.body.i18.for.cond.i13_crit_edge, %for.body.i18.preheader.for.cond.i13_crit_edge
  %i.04.i1527 = phi i32 [ %inc.i10, %for.body.i18.for.cond.i13_crit_edge ], [ 0, %for.body.i18.preheader.for.cond.i13_crit_edge ]
  %inc.i10 = add nuw nsw i32 %i.04.i1527, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i10, i32 %conv)
  %exitcond.not.i12 = icmp eq i32 %inc.i10, %conv
  br i1 %exitcond.not.i12, label %for.cond.i13.land.end.loopexit_crit_edge, label %for.body.i18

for.cond.i13.land.end.loopexit_crit_edge:         ; preds = %for.cond.i13
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.loopexit

for.body.i18:                                     ; preds = %for.cond.i13
  %arrayidx.i16 = getelementptr i64, ptr %9, i32 %inc.i10
  %12 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i16, align 8
  %tobool.not.i17 = icmp eq i64 %13, 0
  br i1 %tobool.not.i17, label %for.body.i18.for.cond.i13_crit_edge, label %for.body.i18.land.end.loopexit_crit_edge

for.body.i18.land.end.loopexit_crit_edge:         ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.end.loopexit

for.body.i18.for.cond.i13_crit_edge:              ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i13

land.end.loopexit:                                ; preds = %for.body.i18.land.end.loopexit_crit_edge, %for.cond.i13.land.end.loopexit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i10, i32 %conv)
  %cmp.i11.le = icmp uge i32 %inc.i10, %conv
  br label %land.end

land.end:                                         ; preds = %land.end.loopexit, %for.body.i18.preheader.land.end_crit_edge, %vli_is_zero.exit.land.end_crit_edge, %for.body.i.preheader.land.end_crit_edge, %entry.land.end_crit_edge
  %14 = phi i1 [ false, %vli_is_zero.exit.land.end_crit_edge ], [ false, %for.body.i.preheader.land.end_crit_edge ], [ true, %entry.land.end_crit_edge ], [ false, %for.body.i18.preheader.land.end_crit_edge ], [ %cmp.i11.le, %land.end.loopexit ]
  ret i1 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ecc_point_mult_shamir(ptr nocapture noundef readonly %result, ptr nocapture noundef readonly %u1, ptr noundef %p, ptr nocapture noundef readonly %u2, ptr noundef %q, ptr noundef readonly %curve) #1 align 64 {
entry:
  %t1.i194 = alloca [8 x i64], align 8
  %t1.i = alloca [8 x i64], align 8
  %t1.i.i = alloca [8 x i64], align 8
  %z.i = alloca [8 x i64], align 8
  %px.i = alloca [8 x i64], align 8
  %py.i = alloca [8 x i64], align 8
  %z = alloca [8 x i64], align 8
  %sump = alloca [2 x [8 x i64]], align 8
  %sum = alloca %struct.ecc_point, align 4
  %points = alloca [4 x ptr], align 4
  %tx = alloca [8 x i64], align 8
  %ty = alloca [8 x i64], align 8
  %tz = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %z) #16
  %0 = call ptr @memset(ptr %z, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sump) #16
  %1 = call ptr @memset(ptr %sump, i32 255, i32 128)
  %2 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %result, align 4
  %y = getelementptr inbounds %struct.ecc_point, ptr %result, i32 0, i32 1
  %4 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %y, align 4
  %ndigits1 = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %ndigits1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ndigits1, align 4
  %conv = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sum) #16
  %8 = getelementptr inbounds i8, ptr %sum, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4
  %10 = ptrtoint ptr %sum to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sump, ptr %sum, align 4
  %y3 = getelementptr inbounds %struct.ecc_point, ptr %sum, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [2 x [8 x i64]], ptr %sump, i32 0, i32 1
  %11 = ptrtoint ptr %y3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx4, ptr %y3, align 4
  %ndigits6 = getelementptr inbounds %struct.ecc_point, ptr %sum, i32 0, i32 2
  %12 = ptrtoint ptr %ndigits6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %7, ptr %ndigits6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %points) #16
  %13 = getelementptr inbounds [4 x ptr], ptr %points, i32 0, i32 1
  %14 = getelementptr inbounds [4 x ptr], ptr %points, i32 0, i32 2
  %15 = getelementptr inbounds [4 x ptr], ptr %points, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %z.i) #16
  %16 = call ptr @memset(ptr %z.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %px.i) #16
  %17 = call ptr @memset(ptr %px.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %py.i) #16
  %18 = call ptr @memset(ptr %py.i, i32 255, i32 64)
  %19 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %q, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp5.not.i.i = icmp eq i8 %7, 0
  br i1 %cmp5.not.i.i, label %vli_set.exit46.thread.i, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i64, ptr %20, i32 %i.06.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i.i, align 8
  %arrayidx1.i.i = getelementptr i64, ptr %sump, i32 %i.06.i.i
  %23 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx1.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv
  br i1 %exitcond.not.i.i, label %for.body.i45.preheader.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.body.i45.preheader.i:                         ; preds = %for.body.i.i
  %y3.i = getelementptr inbounds %struct.ecc_point, ptr %q, i32 0, i32 1
  %24 = ptrtoint ptr %y3.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %y3.i, align 4
  br label %for.body.i45.i

for.body.i45.i:                                   ; preds = %for.body.i45.i.for.body.i45.i_crit_edge, %for.body.i45.preheader.i
  %i.06.i40.i = phi i32 [ %inc.i43.i, %for.body.i45.i.for.body.i45.i_crit_edge ], [ 0, %for.body.i45.preheader.i ]
  %arrayidx.i41.i = getelementptr i64, ptr %25, i32 %i.06.i40.i
  %26 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i41.i, align 8
  %arrayidx1.i42.i = getelementptr i64, ptr %arrayidx4, i32 %i.06.i40.i
  %28 = ptrtoint ptr %arrayidx1.i42.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx1.i42.i, align 8
  %inc.i43.i = add nuw nsw i32 %i.06.i40.i, 1
  %exitcond.not.i44.i = icmp eq i32 %inc.i43.i, %conv
  br i1 %exitcond.not.i44.i, label %for.body.i.i.preheader.i, label %for.body.i45.i.for.body.i45.i_crit_edge

for.body.i45.i.for.body.i45.i_crit_edge:          ; preds = %for.body.i45.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i45.i

vli_set.exit46.thread.i:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %p667.i = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 2
  br label %ecc_point_add.exit

for.body.i.i.preheader.i:                         ; preds = %for.body.i45.i
  %29 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %p, align 4
  %p6.i = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 2
  %31 = ptrtoint ptr %p6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %p6.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i.preheader.i
  %i.022.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i.preheader.i ]
  %borrow.021.i.i.i = phi i64 [ %borrow.1.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.i.preheader.i ]
  %arrayidx.i.i.i = getelementptr i64, ptr %sump, i32 %i.022.i.i.i
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.i.i.i, align 8
  %arrayidx1.i.i.i = getelementptr i64, ptr %30, i32 %i.022.i.i.i
  %35 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx1.i.i.i, align 8
  %37 = add i64 %36, %borrow.021.i.i.i
  %sub2.i.i.i = sub i64 %34, %37
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %37)
  %cmp4.not.i.i.i = icmp eq i64 %37, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %37)
  %cmp6.i.i.i = icmp ult i64 %34, %37
  %38 = zext i1 %cmp6.i.i.i to i64
  %borrow.1.i.i.i = select i1 %cmp4.not.i.i.i, i64 %borrow.021.i.i.i, i64 %38
  %arrayidx8.i.i.i = getelementptr i64, ptr %z.i, i32 %i.022.i.i.i
  %39 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %sub2.i.i.i, ptr %arrayidx8.i.i.i, align 8
  %inc.i.i.i = add nuw nsw i32 %i.022.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv
  br i1 %exitcond.not.i.i.i, label %vli_sub.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

vli_sub.exit.i.i:                                 ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i.i)
  %tobool.not.i.i = icmp eq i64 %borrow.1.i.i.i, 0
  br i1 %tobool.not.i.i, label %vli_sub.exit.i.i.for.body.i53.i.preheader_crit_edge, label %vli_sub.exit.i.i.for.body.i14.i.i_crit_edge

vli_sub.exit.i.i.for.body.i14.i.i_crit_edge:      ; preds = %vli_sub.exit.i.i
  br label %for.body.i14.i.i

vli_sub.exit.i.i.for.body.i53.i.preheader_crit_edge: ; preds = %vli_sub.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i53.i.preheader

for.body.i14.i.i:                                 ; preds = %for.body.i14.i.i.for.body.i14.i.i_crit_edge, %vli_sub.exit.i.i.for.body.i14.i.i_crit_edge
  %i.022.i6.i.i = phi i32 [ %inc.i12.i.i, %for.body.i14.i.i.for.body.i14.i.i_crit_edge ], [ 0, %vli_sub.exit.i.i.for.body.i14.i.i_crit_edge ]
  %carry.021.i.i.i = phi i64 [ %carry.1.i.i.i, %for.body.i14.i.i.for.body.i14.i.i_crit_edge ], [ 0, %vli_sub.exit.i.i.for.body.i14.i.i_crit_edge ]
  %arrayidx.i7.i.i = getelementptr i64, ptr %z.i, i32 %i.022.i6.i.i
  %40 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx.i7.i.i, align 8
  %arrayidx1.i8.i.i = getelementptr i64, ptr %32, i32 %i.022.i6.i.i
  %42 = ptrtoint ptr %arrayidx1.i8.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx1.i8.i.i, align 8
  %add.i.i.i = add i64 %41, %carry.021.i.i.i
  %add2.i.i.i = add i64 %add.i.i.i, %43
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i.i, i64 %41)
  %cmp4.not.i9.i.i = icmp eq i64 %add2.i.i.i, %41
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i.i, i64 %41)
  %cmp6.i10.i.i = icmp ult i64 %add2.i.i.i, %41
  %44 = zext i1 %cmp6.i10.i.i to i64
  %carry.1.i.i.i = select i1 %cmp4.not.i9.i.i, i64 %carry.021.i.i.i, i64 %44
  %45 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %add2.i.i.i, ptr %arrayidx.i7.i.i, align 8
  %inc.i12.i.i = add nuw nsw i32 %i.022.i6.i.i, 1
  %exitcond.not.i13.i.i = icmp eq i32 %inc.i12.i.i, %conv
  br i1 %exitcond.not.i13.i.i, label %for.body.i14.i.i.for.body.i53.i.preheader_crit_edge, label %for.body.i14.i.i.for.body.i14.i.i_crit_edge

for.body.i14.i.i.for.body.i14.i.i_crit_edge:      ; preds = %for.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i.i

for.body.i14.i.i.for.body.i53.i.preheader_crit_edge: ; preds = %for.body.i14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i53.i.preheader

for.body.i53.i.preheader:                         ; preds = %for.body.i14.i.i.for.body.i53.i.preheader_crit_edge, %vli_sub.exit.i.i.for.body.i53.i.preheader_crit_edge
  br label %for.body.i53.i

for.body.i53.i:                                   ; preds = %for.body.i53.i.for.body.i53.i_crit_edge, %for.body.i53.i.preheader
  %i.06.i48.i = phi i32 [ %inc.i51.i, %for.body.i53.i.for.body.i53.i_crit_edge ], [ 0, %for.body.i53.i.preheader ]
  %arrayidx.i49.i = getelementptr i64, ptr %30, i32 %i.06.i48.i
  %46 = ptrtoint ptr %arrayidx.i49.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx.i49.i, align 8
  %arrayidx1.i50.i = getelementptr i64, ptr %px.i, i32 %i.06.i48.i
  %48 = ptrtoint ptr %arrayidx1.i50.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %arrayidx1.i50.i, align 8
  %inc.i51.i = add nuw nsw i32 %i.06.i48.i, 1
  %exitcond.not.i52.i = icmp eq i32 %inc.i51.i, %conv
  br i1 %exitcond.not.i52.i, label %for.body.i61.preheader.i, label %for.body.i53.i.for.body.i53.i_crit_edge

for.body.i53.i.for.body.i53.i_crit_edge:          ; preds = %for.body.i53.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i53.i

for.body.i61.preheader.i:                         ; preds = %for.body.i53.i
  %y10.i = getelementptr inbounds %struct.ecc_point, ptr %p, i32 0, i32 1
  %49 = ptrtoint ptr %y10.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %y10.i, align 4
  br label %for.body.i61.i

for.body.i61.i:                                   ; preds = %for.body.i61.i.for.body.i61.i_crit_edge, %for.body.i61.preheader.i
  %i.06.i56.i = phi i32 [ %inc.i59.i, %for.body.i61.i.for.body.i61.i_crit_edge ], [ 0, %for.body.i61.preheader.i ]
  %arrayidx.i57.i = getelementptr i64, ptr %50, i32 %i.06.i56.i
  %51 = ptrtoint ptr %arrayidx.i57.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx.i57.i, align 8
  %arrayidx1.i58.i = getelementptr i64, ptr %py.i, i32 %i.06.i56.i
  %53 = ptrtoint ptr %arrayidx1.i58.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %arrayidx1.i58.i, align 8
  %inc.i59.i = add nuw nsw i32 %i.06.i56.i, 1
  %exitcond.not.i60.i = icmp eq i32 %inc.i59.i, %conv
  br i1 %exitcond.not.i60.i, label %for.body.i61.i.ecc_point_add.exit_crit_edge, label %for.body.i61.i.for.body.i61.i_crit_edge

for.body.i61.i.for.body.i61.i_crit_edge:          ; preds = %for.body.i61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i61.i

for.body.i61.i.ecc_point_add.exit_crit_edge:      ; preds = %for.body.i61.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_point_add.exit

ecc_point_add.exit:                               ; preds = %for.body.i61.i.ecc_point_add.exit_crit_edge, %vli_set.exit46.thread.i
  %p6697379.i = phi ptr [ %p667.i, %vli_set.exit46.thread.i ], [ %p6.i, %for.body.i61.i.ecc_point_add.exit_crit_edge ]
  %54 = ptrtoint ptr %y3 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %y3, align 4
  call fastcc void @xycz_add(ptr noundef nonnull %px.i, ptr noundef nonnull %py.i, ptr noundef nonnull %sump, ptr noundef %55, ptr noundef %curve) #16
  %56 = ptrtoint ptr %p6697379.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %p6697379.i, align 4
  call void @vli_mod_inv(ptr noundef nonnull %z.i, ptr noundef nonnull %z.i, ptr noundef %57, i32 noundef %conv) #16
  %58 = ptrtoint ptr %sum to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sum, align 4
  %60 = ptrtoint ptr %y3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %y3, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %t1.i.i) #16
  %62 = call ptr @memset(ptr %t1.i.i, i32 255, i32 64)
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %z.i, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef %59, ptr noundef %59, ptr noundef nonnull %t1.i.i, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t1.i.i, ptr noundef nonnull %z.i, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef %61, ptr noundef %61, ptr noundef nonnull %t1.i.i, ptr noundef %curve) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %t1.i.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %py.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %px.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %z.i) #16
  %63 = ptrtoint ptr %points to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %points, align 4
  %64 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %p, ptr %13, align 4
  %65 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %q, ptr %14, align 4
  %66 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %sum, ptr %15, align 4
  %67 = add nsw i32 %conv, -1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.rhs.i.i.for.cond.i.i_crit_edge, %ecc_point_add.exit
  %i.0.in.i.i = phi i32 [ %conv, %ecc_point_add.exit ], [ %i.0.i.i, %land.rhs.i.i.for.cond.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i)
  %cmp.i.i = icmp sgt i32 %i.0.in.i.i, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %for.cond.i.i.vli_num_bits.exit_crit_edge

for.cond.i.i.vli_num_bits.exit_crit_edge:         ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_num_bits.exit

land.rhs.i.i:                                     ; preds = %for.cond.i.i
  %i.0.i.i = add nsw i32 %i.0.in.i.i, -1
  %arrayidx.i.i111 = getelementptr i64, ptr %u1, i32 %i.0.i.i
  %68 = ptrtoint ptr %arrayidx.i.i111 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx.i.i111, align 8
  %cmp1.i.i = icmp eq i64 %69, 0
  br i1 %cmp1.i.i, label %land.rhs.i.i.for.cond.i.i_crit_edge, label %land.rhs.i.i.for.body.i_crit_edge

land.rhs.i.i.for.body.i_crit_edge:                ; preds = %land.rhs.i.i
  br label %for.body.i

land.rhs.i.i.for.cond.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %land.rhs.i.i.for.body.i_crit_edge
  %digit.015.i = phi i64 [ %shr.i, %for.body.i.for.body.i_crit_edge ], [ %69, %land.rhs.i.i.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %land.rhs.i.i.for.body.i_crit_edge ]
  %shr.i = lshr i64 %digit.015.i, 1
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %tobool.not.i = icmp ult i64 %digit.015.i, 2
  br i1 %tobool.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %mul.i = shl i32 %i.0.i.i, 6
  %add.i = add i32 %inc.i, %mul.i
  br label %vli_num_bits.exit

vli_num_bits.exit:                                ; preds = %for.end.i, %for.cond.i.i.vli_num_bits.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %for.end.i ], [ 0, %for.cond.i.i.vli_num_bits.exit_crit_edge ]
  br label %for.cond.i.i116

for.cond.i.i116:                                  ; preds = %land.rhs.i.i119.for.cond.i.i116_crit_edge, %vli_num_bits.exit
  %i.0.in.i.i113 = phi i32 [ %conv, %vli_num_bits.exit ], [ %i.0.i.i114, %land.rhs.i.i119.for.cond.i.i116_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i113)
  %cmp.i.i115 = icmp sgt i32 %i.0.in.i.i113, 0
  br i1 %cmp.i.i115, label %land.rhs.i.i119, label %for.cond.i.i116.vli_num_bits.exit135_crit_edge

for.cond.i.i116.vli_num_bits.exit135_crit_edge:   ; preds = %for.cond.i.i116
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_num_bits.exit135

land.rhs.i.i119:                                  ; preds = %for.cond.i.i116
  %i.0.i.i114 = add nsw i32 %i.0.in.i.i113, -1
  %arrayidx.i.i117 = getelementptr i64, ptr %u2, i32 %i.0.i.i114
  %70 = ptrtoint ptr %arrayidx.i.i117 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx.i.i117, align 8
  %cmp1.i.i118 = icmp eq i64 %71, 0
  br i1 %cmp1.i.i118, label %land.rhs.i.i119.for.cond.i.i116_crit_edge, label %land.rhs.i.i119.for.body.i129_crit_edge

land.rhs.i.i119.for.body.i129_crit_edge:          ; preds = %land.rhs.i.i119
  br label %for.body.i129

land.rhs.i.i119.for.cond.i.i116_crit_edge:        ; preds = %land.rhs.i.i119
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i116

for.body.i129:                                    ; preds = %for.body.i129.for.body.i129_crit_edge, %land.rhs.i.i119.for.body.i129_crit_edge
  %digit.015.i124 = phi i64 [ %shr.i126, %for.body.i129.for.body.i129_crit_edge ], [ %71, %land.rhs.i.i119.for.body.i129_crit_edge ]
  %i.014.i125 = phi i32 [ %inc.i127, %for.body.i129.for.body.i129_crit_edge ], [ 0, %land.rhs.i.i119.for.body.i129_crit_edge ]
  %shr.i126 = lshr i64 %digit.015.i124, 1
  %inc.i127 = add nuw nsw i32 %i.014.i125, 1
  %tobool.not.i128 = icmp ult i64 %digit.015.i124, 2
  br i1 %tobool.not.i128, label %for.end.i133, label %for.body.i129.for.body.i129_crit_edge

for.body.i129.for.body.i129_crit_edge:            ; preds = %for.body.i129
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i129

for.end.i133:                                     ; preds = %for.body.i129
  call void @__sanitizer_cov_trace_pc() #18
  %mul.i131 = shl i32 %i.0.i.i114, 6
  %add.i132 = add i32 %inc.i127, %mul.i131
  br label %vli_num_bits.exit135

vli_num_bits.exit135:                             ; preds = %for.end.i133, %for.cond.i.i116.vli_num_bits.exit135_crit_edge
  %retval.0.i134 = phi i32 [ %add.i132, %for.end.i133 ], [ 0, %for.cond.i.i116.vli_num_bits.exit135_crit_edge ]
  %72 = call i32 @llvm.umax.i32(i32 %retval.0.i, i32 %retval.0.i134)
  %sub = add i32 %72, -1
  %div2.i = lshr i32 %sub, 6
  %arrayidx.i136 = getelementptr i64, ptr %u1, i32 %div2.i
  %73 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx.i136, align 8
  %rem.i = and i32 %sub, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and.i = and i64 %shl.i, %74
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool = icmp ne i64 %and.i, 0
  %lnot.ext = zext i1 %tobool to i32
  %arrayidx.i138 = getelementptr i64, ptr %u2, i32 %div2.i
  %75 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx.i138, align 8
  %and.i142 = and i64 %shl.i, %76
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i142)
  %tobool17.not = icmp eq i64 %and.i142, 0
  %shl = select i1 %tobool17.not, i32 0, i32 2
  %or = or i32 %shl, %lnot.ext
  %arrayidx22 = getelementptr [4 x ptr], ptr %points, i32 0, i32 %or
  %77 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx22, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  br i1 %cmp5.not.i.i, label %vli_set.exit155.thread, label %vli_num_bits.exit135.for.body.i145_crit_edge

vli_num_bits.exit135.for.body.i145_crit_edge:     ; preds = %vli_num_bits.exit135
  br label %for.body.i145

for.body.i145:                                    ; preds = %for.body.i145.for.body.i145_crit_edge, %vli_num_bits.exit135.for.body.i145_crit_edge
  %i.06.i = phi i32 [ %inc.i144, %for.body.i145.for.body.i145_crit_edge ], [ 0, %vli_num_bits.exit135.for.body.i145_crit_edge ]
  %arrayidx.i143 = getelementptr i64, ptr %80, i32 %i.06.i
  %81 = ptrtoint ptr %arrayidx.i143 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx.i143, align 8
  %arrayidx1.i = getelementptr i64, ptr %3, i32 %i.06.i
  %83 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %arrayidx1.i, align 8
  %inc.i144 = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i144, %conv
  br i1 %exitcond.not.i, label %for.body.i153.preheader, label %for.body.i145.for.body.i145_crit_edge

for.body.i145.for.body.i145_crit_edge:            ; preds = %for.body.i145
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i145

for.body.i153.preheader:                          ; preds = %for.body.i145
  %y24 = getelementptr inbounds %struct.ecc_point, ptr %78, i32 0, i32 1
  %84 = ptrtoint ptr %y24 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %y24, align 4
  br label %for.body.i153

for.body.i153:                                    ; preds = %for.body.i153.for.body.i153_crit_edge, %for.body.i153.preheader
  %i.06.i148 = phi i32 [ %inc.i151, %for.body.i153.for.body.i153_crit_edge ], [ 0, %for.body.i153.preheader ]
  %arrayidx.i149 = getelementptr i64, ptr %85, i32 %i.06.i148
  %86 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %arrayidx.i149, align 8
  %arrayidx1.i150 = getelementptr i64, ptr %5, i32 %i.06.i148
  %88 = ptrtoint ptr %arrayidx1.i150 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %arrayidx1.i150, align 8
  %inc.i151 = add nuw nsw i32 %i.06.i148, 1
  %exitcond.not.i152 = icmp eq i32 %inc.i151, %conv
  br i1 %exitcond.not.i152, label %vli_set.exit155, label %for.body.i153.for.body.i153_crit_edge

for.body.i153.for.body.i153_crit_edge:            ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i153

vli_set.exit155.thread:                           ; preds = %vli_num_bits.exit135
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr196 = getelementptr inbounds i64, ptr %z, i32 1
  br label %for.body.preheader.i

vli_set.exit155:                                  ; preds = %for.body.i153
  %add.ptr = getelementptr inbounds i64, ptr %z, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp3.not.i = icmp eq i32 %67, 0
  br i1 %cmp3.not.i, label %vli_set.exit155.vli_clear.exit_crit_edge, label %vli_set.exit155.for.body.preheader.i_crit_edge

vli_set.exit155.for.body.preheader.i_crit_edge:   ; preds = %vli_set.exit155
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.preheader.i

vli_set.exit155.vli_clear.exit_crit_edge:         ; preds = %vli_set.exit155
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_clear.exit

for.body.preheader.i:                             ; preds = %vli_set.exit155.for.body.preheader.i_crit_edge, %vli_set.exit155.thread
  %add.ptr198 = phi ptr [ %add.ptr196, %vli_set.exit155.thread ], [ %add.ptr, %vli_set.exit155.for.body.preheader.i_crit_edge ]
  %89 = shl nuw nsw i32 %67, 3
  %90 = call ptr @memset(ptr %add.ptr198, i32 0, i32 %89)
  br label %vli_clear.exit

vli_clear.exit:                                   ; preds = %for.body.preheader.i, %vli_set.exit155.vli_clear.exit_crit_edge
  %91 = ptrtoint ptr %z to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 1, ptr %z, align 8
  %dec = add i32 %72, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec)
  %cmp28203 = icmp sgt i32 %dec, -1
  br i1 %cmp28203, label %for.body.lr.ph, label %vli_clear.exit.for.end_crit_edge

vli_clear.exit.for.end_crit_edge:                 ; preds = %vli_clear.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %vli_clear.exit
  %p56 = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0204 = phi i32 [ %dec, %for.body.lr.ph ], [ %dec62, %for.inc.for.body_crit_edge ]
  call fastcc void @ecc_point_double_jacobian(ptr noundef %3, ptr noundef %5, ptr noundef nonnull %z, ptr noundef %curve)
  %div2.i157 = lshr i32 %i.0204, 6
  %arrayidx.i158 = getelementptr i64, ptr %u1, i32 %div2.i157
  %92 = ptrtoint ptr %arrayidx.i158 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx.i158, align 8
  %rem.i159 = and i32 %i.0204, 63
  %sh_prom.i160 = zext i32 %rem.i159 to i64
  %shl.i161 = shl nuw i64 1, %sh_prom.i160
  %and.i162 = and i64 %93, %shl.i161
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i162)
  %tobool32 = icmp ne i64 %and.i162, 0
  %lnot.ext36 = zext i1 %tobool32 to i32
  %arrayidx.i164 = getelementptr i64, ptr %u2, i32 %div2.i157
  %94 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %arrayidx.i164, align 8
  %and.i168 = and i64 %95, %shl.i161
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i168)
  %tobool38.not = icmp eq i64 %and.i168, 0
  %shl43 = select i1 %tobool38.not, i32 0, i32 2
  %or44 = or i32 %shl43, %lnot.ext36
  %arrayidx45 = getelementptr [4 x ptr], ptr %points, i32 0, i32 %or44
  %96 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx45, align 4
  %tobool46.not = icmp eq ptr %97, null
  br i1 %tobool46.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tx) #16
  %98 = call ptr @memset(ptr %tx, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ty) #16
  %99 = call ptr @memset(ptr %ty, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %tz) #16
  %100 = call ptr @memset(ptr %tz, i32 255, i32 64)
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %97, align 4
  br i1 %cmp5.not.i.i, label %if.then.vli_set.exit186_crit_edge, label %if.then.for.body.i175_crit_edge

if.then.for.body.i175_crit_edge:                  ; preds = %if.then
  br label %for.body.i175

if.then.vli_set.exit186_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_set.exit186

for.body.i175:                                    ; preds = %for.body.i175.for.body.i175_crit_edge, %if.then.for.body.i175_crit_edge
  %i.06.i170 = phi i32 [ %inc.i173, %for.body.i175.for.body.i175_crit_edge ], [ 0, %if.then.for.body.i175_crit_edge ]
  %arrayidx.i171 = getelementptr i64, ptr %102, i32 %i.06.i170
  %103 = ptrtoint ptr %arrayidx.i171 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx.i171, align 8
  %arrayidx1.i172 = getelementptr i64, ptr %tx, i32 %i.06.i170
  %105 = ptrtoint ptr %arrayidx1.i172 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %104, ptr %arrayidx1.i172, align 8
  %inc.i173 = add nuw nsw i32 %i.06.i170, 1
  %exitcond.not.i174 = icmp eq i32 %inc.i173, %conv
  br i1 %exitcond.not.i174, label %for.body.i184.preheader, label %for.body.i175.for.body.i175_crit_edge

for.body.i175.for.body.i175_crit_edge:            ; preds = %for.body.i175
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i175

for.body.i184.preheader:                          ; preds = %for.body.i175
  %y50 = getelementptr inbounds %struct.ecc_point, ptr %97, i32 0, i32 1
  %106 = ptrtoint ptr %y50 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %y50, align 4
  br label %for.body.i184

for.body.i184:                                    ; preds = %for.body.i184.for.body.i184_crit_edge, %for.body.i184.preheader
  %i.06.i179 = phi i32 [ %inc.i182, %for.body.i184.for.body.i184_crit_edge ], [ 0, %for.body.i184.preheader ]
  %arrayidx.i180 = getelementptr i64, ptr %107, i32 %i.06.i179
  %108 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx.i180, align 8
  %arrayidx1.i181 = getelementptr i64, ptr %ty, i32 %i.06.i179
  %110 = ptrtoint ptr %arrayidx1.i181 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %109, ptr %arrayidx1.i181, align 8
  %inc.i182 = add nuw nsw i32 %i.06.i179, 1
  %exitcond.not.i183 = icmp eq i32 %inc.i182, %conv
  br i1 %exitcond.not.i183, label %for.body.i184.vli_set.exit186_crit_edge, label %for.body.i184.for.body.i184_crit_edge

for.body.i184.for.body.i184_crit_edge:            ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i184

for.body.i184.vli_set.exit186_crit_edge:          ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_set.exit186

vli_set.exit186:                                  ; preds = %for.body.i184.vli_set.exit186_crit_edge, %if.then.vli_set.exit186_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %t1.i) #16
  %111 = call ptr @memset(ptr %t1.i, i32 255, i32 64)
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t1.i, ptr noundef nonnull %z, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %tx, ptr noundef nonnull %tx, ptr noundef nonnull %t1.i, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %t1.i, ptr noundef nonnull %t1.i, ptr noundef nonnull %z, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %ty, ptr noundef nonnull %ty, ptr noundef nonnull %t1.i, ptr noundef %curve) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %t1.i) #16
  %112 = ptrtoint ptr %p56 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %p56, align 4
  br i1 %cmp5.not.i.i, label %vli_set.exit186.vli_mod_sub.exit_crit_edge, label %vli_set.exit186.for.body.i.i191_crit_edge

vli_set.exit186.for.body.i.i191_crit_edge:        ; preds = %vli_set.exit186
  br label %for.body.i.i191

vli_set.exit186.vli_mod_sub.exit_crit_edge:       ; preds = %vli_set.exit186
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_sub.exit

for.body.i.i191:                                  ; preds = %for.body.i.i191.for.body.i.i191_crit_edge, %vli_set.exit186.for.body.i.i191_crit_edge
  %i.022.i.i = phi i32 [ %inc.i.i189, %for.body.i.i191.for.body.i.i191_crit_edge ], [ 0, %vli_set.exit186.for.body.i.i191_crit_edge ]
  %borrow.021.i.i = phi i64 [ %borrow.1.i.i, %for.body.i.i191.for.body.i.i191_crit_edge ], [ 0, %vli_set.exit186.for.body.i.i191_crit_edge ]
  %arrayidx.i.i187 = getelementptr i64, ptr %3, i32 %i.022.i.i
  %114 = ptrtoint ptr %arrayidx.i.i187 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx.i.i187, align 8
  %arrayidx1.i.i188 = getelementptr i64, ptr %tx, i32 %i.022.i.i
  %116 = ptrtoint ptr %arrayidx1.i.i188 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %arrayidx1.i.i188, align 8
  %118 = add i64 %117, %borrow.021.i.i
  %sub2.i.i = sub i64 %115, %118
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %118)
  %cmp4.not.i.i = icmp eq i64 %118, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %115, i64 %118)
  %cmp6.i.i = icmp ult i64 %115, %118
  %119 = zext i1 %cmp6.i.i to i64
  %borrow.1.i.i = select i1 %cmp4.not.i.i, i64 %borrow.021.i.i, i64 %119
  %arrayidx8.i.i = getelementptr i64, ptr %tz, i32 %i.022.i.i
  %120 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %sub2.i.i, ptr %arrayidx8.i.i, align 8
  %inc.i.i189 = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i190 = icmp eq i32 %inc.i.i189, %conv
  br i1 %exitcond.not.i.i190, label %vli_sub.exit.i, label %for.body.i.i191.for.body.i.i191_crit_edge

for.body.i.i191.for.body.i.i191_crit_edge:        ; preds = %for.body.i.i191
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i191

vli_sub.exit.i:                                   ; preds = %for.body.i.i191
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i)
  %tobool.not.i192 = icmp eq i64 %borrow.1.i.i, 0
  br i1 %tobool.not.i192, label %vli_sub.exit.i.vli_mod_sub.exit_crit_edge, label %vli_sub.exit.i.for.body.i14.i_crit_edge

vli_sub.exit.i.for.body.i14.i_crit_edge:          ; preds = %vli_sub.exit.i
  br label %for.body.i14.i

vli_sub.exit.i.vli_mod_sub.exit_crit_edge:        ; preds = %vli_sub.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_sub.exit

for.body.i14.i:                                   ; preds = %for.body.i14.i.for.body.i14.i_crit_edge, %vli_sub.exit.i.for.body.i14.i_crit_edge
  %i.022.i6.i = phi i32 [ %inc.i12.i, %for.body.i14.i.for.body.i14.i_crit_edge ], [ 0, %vli_sub.exit.i.for.body.i14.i_crit_edge ]
  %carry.021.i.i = phi i64 [ %carry.1.i.i, %for.body.i14.i.for.body.i14.i_crit_edge ], [ 0, %vli_sub.exit.i.for.body.i14.i_crit_edge ]
  %arrayidx.i7.i = getelementptr i64, ptr %tz, i32 %i.022.i6.i
  %121 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx.i7.i, align 8
  %arrayidx1.i8.i = getelementptr i64, ptr %113, i32 %i.022.i6.i
  %123 = ptrtoint ptr %arrayidx1.i8.i to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %arrayidx1.i8.i, align 8
  %add.i.i = add i64 %122, %carry.021.i.i
  %add2.i.i = add i64 %add.i.i, %124
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %122)
  %cmp4.not.i9.i = icmp eq i64 %add2.i.i, %122
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %122)
  %cmp6.i10.i = icmp ult i64 %add2.i.i, %122
  %125 = zext i1 %cmp6.i10.i to i64
  %carry.1.i.i = select i1 %cmp4.not.i9.i, i64 %carry.021.i.i, i64 %125
  %126 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %add2.i.i, ptr %arrayidx.i7.i, align 8
  %inc.i12.i = add nuw nsw i32 %i.022.i6.i, 1
  %exitcond.not.i13.i = icmp eq i32 %inc.i12.i, %conv
  br i1 %exitcond.not.i13.i, label %for.body.i14.i.vli_mod_sub.exit_crit_edge, label %for.body.i14.i.for.body.i14.i_crit_edge

for.body.i14.i.for.body.i14.i_crit_edge:          ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i

for.body.i14.i.vli_mod_sub.exit_crit_edge:        ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_sub.exit

vli_mod_sub.exit:                                 ; preds = %for.body.i14.i.vli_mod_sub.exit_crit_edge, %vli_sub.exit.i.vli_mod_sub.exit_crit_edge, %vli_set.exit186.vli_mod_sub.exit_crit_edge
  call fastcc void @xycz_add(ptr noundef nonnull %tx, ptr noundef nonnull %ty, ptr noundef %3, ptr noundef %5, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %z, ptr noundef nonnull %z, ptr noundef nonnull %tz, ptr noundef %curve)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tz) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ty) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %tx) #16
  br label %for.inc

for.inc:                                          ; preds = %vli_mod_sub.exit, %for.body.for.inc_crit_edge
  %dec62 = add i32 %i.0204, -1
  %cmp28 = icmp sgt i32 %dec62, -1
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %vli_clear.exit.for.end_crit_edge
  %p65 = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 2
  %127 = ptrtoint ptr %p65 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %p65, align 4
  call void @vli_mod_inv(ptr noundef nonnull %z, ptr noundef nonnull %z, ptr noundef %128, i32 noundef %conv)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %t1.i194) #16
  %129 = call ptr @memset(ptr %t1.i194, i32 255, i32 64)
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t1.i194, ptr noundef nonnull %z, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef %3, ptr noundef %3, ptr noundef nonnull %t1.i194, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %t1.i194, ptr noundef nonnull %t1.i194, ptr noundef nonnull %z, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef %5, ptr noundef %5, ptr noundef nonnull %t1.i194, ptr noundef %curve) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %t1.i194) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %points) #16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sum) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sump) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %z) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ecc_point_double_jacobian(ptr noundef %x1, ptr noundef %y1, ptr noundef %z1, ptr nocapture noundef readonly %curve) unnamed_addr #1 align 64 {
entry:
  %t4 = alloca [8 x i64], align 8
  %t5 = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %t4) #16
  %0 = call ptr @memset(ptr %t4, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %t5) #16
  %1 = call ptr @memset(ptr %t5, i32 255, i32 64)
  %p = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 2
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %ndigits1 = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %ndigits1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ndigits1, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp3.not.i = icmp eq i8 %5, 0
  br i1 %cmp3.not.i, label %entry.cleanup_crit_edge, label %for.body.i.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i.preheader:                             ; preds = %entry
  %6 = ptrtoint ptr %z1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %z1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not.i396 = icmp eq i64 %7, 0
  br i1 %tobool.not.i396, label %for.body.i.preheader.for.cond.i_crit_edge, label %for.body.i.preheader.for.body.i.i.preheader_crit_edge

for.body.i.preheader.for.body.i.i.preheader_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.preheader

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %i.04.i397 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %for.body.i.preheader.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.04.i397, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv)
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %for.cond.i.vli_is_zero.exit_crit_edge, label %for.body.i

for.cond.i.vli_is_zero.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_is_zero.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i64, ptr %z1, i32 %inc.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq i64 %9, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.vli_is_zero.exit_crit_edge

for.body.i.vli_is_zero.exit_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_is_zero.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

vli_is_zero.exit:                                 ; preds = %for.body.i.vli_is_zero.exit_crit_edge, %for.cond.i.vli_is_zero.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv)
  %cmp.i.le = icmp ult i32 %inc.i, %conv
  br i1 %cmp.i.le, label %vli_is_zero.exit.for.body.i.i.preheader_crit_edge, label %vli_is_zero.exit.cleanup_crit_edge

vli_is_zero.exit.cleanup_crit_edge:               ; preds = %vli_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

vli_is_zero.exit.for.body.i.i.preheader_crit_edge: ; preds = %vli_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %vli_is_zero.exit.for.body.i.i.preheader_crit_edge, %for.body.i.preheader.for.body.i.i.preheader_crit_edge
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t4, ptr noundef %y1, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %t5, ptr noundef %x1, ptr noundef nonnull %t4, ptr noundef %curve)
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t4, ptr noundef nonnull %t4, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef %y1, ptr noundef %y1, ptr noundef %z1, ptr noundef %curve)
  call fastcc void @vli_mod_square_fast(ptr noundef %z1, ptr noundef %z1, ptr noundef %curve)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.022.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %carry.021.i.i = phi i64 [ %carry.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr i64, ptr %x1, i32 %i.022.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.i.i, align 8
  %arrayidx1.i.i = getelementptr i64, ptr %z1, i32 %i.022.i.i
  %12 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx1.i.i, align 8
  %add.i.i = add i64 %11, %carry.021.i.i
  %add2.i.i = add i64 %add.i.i, %13
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %11)
  %cmp4.not.i.i = icmp eq i64 %add2.i.i, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %11)
  %cmp6.i.i = icmp ult i64 %add2.i.i, %11
  %14 = zext i1 %cmp6.i.i to i64
  %carry.1.i.i = select i1 %cmp4.not.i.i, i64 %carry.021.i.i, i64 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %add2.i.i, ptr %arrayidx.i.i, align 8
  %inc.i.i = add nuw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv
  br i1 %exitcond.not.i.i, label %vli_add.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

vli_add.exit.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.1.i.i)
  %tobool.not.i99 = icmp eq i64 %carry.1.i.i, 0
  br i1 %tobool.not.i99, label %vli_add.exit.i.for.cond.i.i_crit_edge, label %vli_add.exit.i.for.body.i21.i.preheader_crit_edge

vli_add.exit.i.for.body.i21.i.preheader_crit_edge: ; preds = %vli_add.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i.preheader

vli_add.exit.i.for.cond.i.i_crit_edge:            ; preds = %vli_add.exit.i
  br label %for.cond.i.i

for.body.i21.i.preheader:                         ; preds = %for.body.i11.i.for.body.i21.i.preheader_crit_edge, %for.cond.i.i.for.body.i21.i.preheader_crit_edge, %vli_add.exit.i.for.body.i21.i.preheader_crit_edge
  br label %for.body.i21.i

for.cond.i.i:                                     ; preds = %if.else.i.i.for.cond.i.i_crit_edge, %vli_add.exit.i.for.cond.i.i_crit_edge
  %i.0.in.i.i = phi i32 [ %i.0.i.i, %if.else.i.i.for.cond.i.i_crit_edge ], [ %conv, %vli_add.exit.i.for.cond.i.i_crit_edge ]
  %i.0.i.i = add nsw i32 %i.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i)
  %cmp.i.i = icmp sgt i32 %i.0.in.i.i, 0
  br i1 %cmp.i.i, label %for.body.i11.i, label %for.cond.i.i.for.body.i21.i.preheader_crit_edge

for.cond.i.i.for.body.i21.i.preheader_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i.preheader

for.body.i11.i:                                   ; preds = %for.cond.i.i
  %arrayidx.i9.i = getelementptr i64, ptr %x1, i32 %i.0.i.i
  %16 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.i9.i, align 8
  %arrayidx1.i10.i = getelementptr i64, ptr %3, i32 %i.0.i.i
  %18 = ptrtoint ptr %arrayidx1.i10.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx1.i10.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %17, i64 %19)
  %cmp2.i.i = icmp ugt i64 %17, %19
  br i1 %cmp2.i.i, label %for.body.i11.i.for.body.i21.i.preheader_crit_edge, label %if.else.i.i

for.body.i11.i.for.body.i21.i.preheader_crit_edge: ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i.preheader

if.else.i.i:                                      ; preds = %for.body.i11.i
  %cmp5.i.i = icmp ult i64 %17, %19
  br i1 %cmp5.i.i, label %if.else.i.i.for.body.i.i113.preheader_crit_edge, label %if.else.i.i.for.cond.i.i_crit_edge

if.else.i.i.for.cond.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

if.else.i.i.for.body.i.i113.preheader_crit_edge:  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i113.preheader

for.body.i21.i:                                   ; preds = %for.body.i21.i.for.body.i21.i_crit_edge, %for.body.i21.i.preheader
  %i.022.i13.i = phi i32 [ %inc.i19.i, %for.body.i21.i.for.body.i21.i_crit_edge ], [ 0, %for.body.i21.i.preheader ]
  %borrow.021.i.i = phi i64 [ %borrow.1.i.i, %for.body.i21.i.for.body.i21.i_crit_edge ], [ 0, %for.body.i21.i.preheader ]
  %arrayidx.i14.i = getelementptr i64, ptr %x1, i32 %i.022.i13.i
  %20 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i14.i, align 8
  %arrayidx1.i15.i = getelementptr i64, ptr %3, i32 %i.022.i13.i
  %22 = ptrtoint ptr %arrayidx1.i15.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx1.i15.i, align 8
  %24 = add i64 %23, %borrow.021.i.i
  %sub2.i.i = sub i64 %21, %24
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %cmp4.not.i16.i = icmp eq i64 %24, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %24)
  %cmp6.i17.i = icmp ult i64 %21, %24
  %25 = zext i1 %cmp6.i17.i to i64
  %borrow.1.i.i = select i1 %cmp4.not.i16.i, i64 %borrow.021.i.i, i64 %25
  %26 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %sub2.i.i, ptr %arrayidx.i14.i, align 8
  %inc.i19.i = add nuw nsw i32 %i.022.i13.i, 1
  %exitcond.not.i20.i = icmp eq i32 %inc.i19.i, %conv
  br i1 %exitcond.not.i20.i, label %for.body.i21.i.for.body.i.i113.preheader_crit_edge, label %for.body.i21.i.for.body.i21.i_crit_edge

for.body.i21.i.for.body.i21.i_crit_edge:          ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i

for.body.i21.i.for.body.i.i113.preheader_crit_edge: ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i113.preheader

for.body.i.i113.preheader:                        ; preds = %for.body.i21.i.for.body.i.i113.preheader_crit_edge, %if.else.i.i.for.body.i.i113.preheader_crit_edge
  br label %for.body.i.i113

for.body.i.i113:                                  ; preds = %for.body.i.i113.for.body.i.i113_crit_edge, %for.body.i.i113.preheader
  %i.022.i.i101 = phi i32 [ %inc.i.i111, %for.body.i.i113.for.body.i.i113_crit_edge ], [ 0, %for.body.i.i113.preheader ]
  %carry.021.i.i102 = phi i64 [ %carry.1.i.i109, %for.body.i.i113.for.body.i.i113_crit_edge ], [ 0, %for.body.i.i113.preheader ]
  %arrayidx.i.i103 = getelementptr i64, ptr %z1, i32 %i.022.i.i101
  %27 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx.i.i103, align 8
  %reass.add = shl i64 %28, 1
  %add2.i.i106 = add i64 %reass.add, %carry.021.i.i102
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i106, i64 %28)
  %cmp4.not.i.i107 = icmp eq i64 %add2.i.i106, %28
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i106, i64 %28)
  %cmp6.i.i108 = icmp ult i64 %add2.i.i106, %28
  %29 = zext i1 %cmp6.i.i108 to i64
  %carry.1.i.i109 = select i1 %cmp4.not.i.i107, i64 %carry.021.i.i102, i64 %29
  %30 = ptrtoint ptr %arrayidx.i.i103 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add2.i.i106, ptr %arrayidx.i.i103, align 8
  %inc.i.i111 = add nuw nsw i32 %i.022.i.i101, 1
  %exitcond.not.i.i112 = icmp eq i32 %inc.i.i111, %conv
  br i1 %exitcond.not.i.i112, label %vli_add.exit.i115, label %for.body.i.i113.for.body.i.i113_crit_edge

for.body.i.i113.for.body.i.i113_crit_edge:        ; preds = %for.body.i.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i113

vli_add.exit.i115:                                ; preds = %for.body.i.i113
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.1.i.i109)
  %tobool.not.i114 = icmp eq i64 %carry.1.i.i109, 0
  br i1 %tobool.not.i114, label %vli_add.exit.i115.for.cond.i.i120_crit_edge, label %vli_add.exit.i115.for.body.i21.i138.preheader_crit_edge

vli_add.exit.i115.for.body.i21.i138.preheader_crit_edge: ; preds = %vli_add.exit.i115
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i138.preheader

vli_add.exit.i115.for.cond.i.i120_crit_edge:      ; preds = %vli_add.exit.i115
  br label %for.cond.i.i120

for.body.i21.i138.preheader:                      ; preds = %for.body.i11.i124.for.body.i21.i138.preheader_crit_edge, %for.cond.i.i120.for.body.i21.i138.preheader_crit_edge, %vli_add.exit.i115.for.body.i21.i138.preheader_crit_edge
  br label %for.body.i21.i138

for.cond.i.i120:                                  ; preds = %if.else.i.i126.for.cond.i.i120_crit_edge, %vli_add.exit.i115.for.cond.i.i120_crit_edge
  %i.0.in.i.i117 = phi i32 [ %i.0.i.i118, %if.else.i.i126.for.cond.i.i120_crit_edge ], [ %conv, %vli_add.exit.i115.for.cond.i.i120_crit_edge ]
  %i.0.i.i118 = add nsw i32 %i.0.in.i.i117, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i117)
  %cmp.i.i119 = icmp sgt i32 %i.0.in.i.i117, 0
  br i1 %cmp.i.i119, label %for.body.i11.i124, label %for.cond.i.i120.for.body.i21.i138.preheader_crit_edge

for.cond.i.i120.for.body.i21.i138.preheader_crit_edge: ; preds = %for.cond.i.i120
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i138.preheader

for.body.i11.i124:                                ; preds = %for.cond.i.i120
  %arrayidx.i9.i121 = getelementptr i64, ptr %z1, i32 %i.0.i.i118
  %31 = ptrtoint ptr %arrayidx.i9.i121 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i9.i121, align 8
  %arrayidx1.i10.i122 = getelementptr i64, ptr %3, i32 %i.0.i.i118
  %33 = ptrtoint ptr %arrayidx1.i10.i122 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx1.i10.i122, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %34)
  %cmp2.i.i123 = icmp ugt i64 %32, %34
  br i1 %cmp2.i.i123, label %for.body.i11.i124.for.body.i21.i138.preheader_crit_edge, label %if.else.i.i126

for.body.i11.i124.for.body.i21.i138.preheader_crit_edge: ; preds = %for.body.i11.i124
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i138.preheader

if.else.i.i126:                                   ; preds = %for.body.i11.i124
  %cmp5.i.i125 = icmp ult i64 %32, %34
  br i1 %cmp5.i.i125, label %if.else.i.i126.for.body.i.i152.preheader_crit_edge, label %if.else.i.i126.for.cond.i.i120_crit_edge

if.else.i.i126.for.cond.i.i120_crit_edge:         ; preds = %if.else.i.i126
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i120

if.else.i.i126.for.body.i.i152.preheader_crit_edge: ; preds = %if.else.i.i126
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i152.preheader

for.body.i21.i138:                                ; preds = %for.body.i21.i138.for.body.i21.i138_crit_edge, %for.body.i21.i138.preheader
  %i.022.i13.i128 = phi i32 [ %inc.i19.i136, %for.body.i21.i138.for.body.i21.i138_crit_edge ], [ 0, %for.body.i21.i138.preheader ]
  %borrow.021.i.i129 = phi i64 [ %borrow.1.i.i135, %for.body.i21.i138.for.body.i21.i138_crit_edge ], [ 0, %for.body.i21.i138.preheader ]
  %arrayidx.i14.i130 = getelementptr i64, ptr %z1, i32 %i.022.i13.i128
  %35 = ptrtoint ptr %arrayidx.i14.i130 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx.i14.i130, align 8
  %arrayidx1.i15.i131 = getelementptr i64, ptr %3, i32 %i.022.i13.i128
  %37 = ptrtoint ptr %arrayidx1.i15.i131 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx1.i15.i131, align 8
  %39 = add i64 %38, %borrow.021.i.i129
  %sub2.i.i132 = sub i64 %36, %39
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %39)
  %cmp4.not.i16.i133 = icmp eq i64 %39, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %36, i64 %39)
  %cmp6.i17.i134 = icmp ult i64 %36, %39
  %40 = zext i1 %cmp6.i17.i134 to i64
  %borrow.1.i.i135 = select i1 %cmp4.not.i16.i133, i64 %borrow.021.i.i129, i64 %40
  %41 = ptrtoint ptr %arrayidx.i14.i130 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %sub2.i.i132, ptr %arrayidx.i14.i130, align 8
  %inc.i19.i136 = add nuw nsw i32 %i.022.i13.i128, 1
  %exitcond.not.i20.i137 = icmp eq i32 %inc.i19.i136, %conv
  br i1 %exitcond.not.i20.i137, label %for.body.i21.i138.for.body.i.i152.preheader_crit_edge, label %for.body.i21.i138.for.body.i21.i138_crit_edge

for.body.i21.i138.for.body.i21.i138_crit_edge:    ; preds = %for.body.i21.i138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i138

for.body.i21.i138.for.body.i.i152.preheader_crit_edge: ; preds = %for.body.i21.i138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i152.preheader

for.body.i.i152.preheader:                        ; preds = %for.body.i21.i138.for.body.i.i152.preheader_crit_edge, %if.else.i.i126.for.body.i.i152.preheader_crit_edge
  br label %for.body.i.i152

for.body.i.i152:                                  ; preds = %for.body.i.i152.for.body.i.i152_crit_edge, %for.body.i.i152.preheader
  %i.022.i.i141 = phi i32 [ %inc.i.i150, %for.body.i.i152.for.body.i.i152_crit_edge ], [ 0, %for.body.i.i152.preheader ]
  %borrow.021.i.i142 = phi i64 [ %borrow.1.i.i148, %for.body.i.i152.for.body.i.i152_crit_edge ], [ 0, %for.body.i.i152.preheader ]
  %arrayidx.i.i143 = getelementptr i64, ptr %x1, i32 %i.022.i.i141
  %42 = ptrtoint ptr %arrayidx.i.i143 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %arrayidx.i.i143, align 8
  %arrayidx1.i.i144 = getelementptr i64, ptr %z1, i32 %i.022.i.i141
  %44 = ptrtoint ptr %arrayidx1.i.i144 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx1.i.i144, align 8
  %46 = add i64 %45, %borrow.021.i.i142
  %sub2.i.i145 = sub i64 %43, %46
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %cmp4.not.i.i146 = icmp eq i64 %46, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %43, i64 %46)
  %cmp6.i.i147 = icmp ult i64 %43, %46
  %47 = zext i1 %cmp6.i.i147 to i64
  %borrow.1.i.i148 = select i1 %cmp4.not.i.i146, i64 %borrow.021.i.i142, i64 %47
  %48 = ptrtoint ptr %arrayidx1.i.i144 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %sub2.i.i145, ptr %arrayidx1.i.i144, align 8
  %inc.i.i150 = add nuw nsw i32 %i.022.i.i141, 1
  %exitcond.not.i.i151 = icmp eq i32 %inc.i.i150, %conv
  br i1 %exitcond.not.i.i151, label %vli_sub.exit.i, label %for.body.i.i152.for.body.i.i152_crit_edge

for.body.i.i152.for.body.i.i152_crit_edge:        ; preds = %for.body.i.i152
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i152

vli_sub.exit.i:                                   ; preds = %for.body.i.i152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i148)
  %tobool.not.i153 = icmp eq i64 %borrow.1.i.i148, 0
  br i1 %tobool.not.i153, label %vli_sub.exit.i.for.body.i.i171.preheader_crit_edge, label %vli_sub.exit.i.for.body.i14.i_crit_edge

vli_sub.exit.i.for.body.i14.i_crit_edge:          ; preds = %vli_sub.exit.i
  br label %for.body.i14.i

vli_sub.exit.i.for.body.i.i171.preheader_crit_edge: ; preds = %vli_sub.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i171.preheader

for.body.i14.i:                                   ; preds = %for.body.i14.i.for.body.i14.i_crit_edge, %vli_sub.exit.i.for.body.i14.i_crit_edge
  %i.022.i6.i = phi i32 [ %inc.i12.i, %for.body.i14.i.for.body.i14.i_crit_edge ], [ 0, %vli_sub.exit.i.for.body.i14.i_crit_edge ]
  %carry.021.i.i154 = phi i64 [ %carry.1.i.i157, %for.body.i14.i.for.body.i14.i_crit_edge ], [ 0, %vli_sub.exit.i.for.body.i14.i_crit_edge ]
  %arrayidx.i7.i = getelementptr i64, ptr %z1, i32 %i.022.i6.i
  %49 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx.i7.i, align 8
  %arrayidx1.i8.i = getelementptr i64, ptr %3, i32 %i.022.i6.i
  %51 = ptrtoint ptr %arrayidx1.i8.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx1.i8.i, align 8
  %add.i.i155 = add i64 %50, %carry.021.i.i154
  %add2.i.i156 = add i64 %add.i.i155, %52
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i156, i64 %50)
  %cmp4.not.i9.i = icmp eq i64 %add2.i.i156, %50
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i156, i64 %50)
  %cmp6.i10.i = icmp ult i64 %add2.i.i156, %50
  %53 = zext i1 %cmp6.i10.i to i64
  %carry.1.i.i157 = select i1 %cmp4.not.i9.i, i64 %carry.021.i.i154, i64 %53
  %54 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %add2.i.i156, ptr %arrayidx.i7.i, align 8
  %inc.i12.i = add nuw nsw i32 %i.022.i6.i, 1
  %exitcond.not.i13.i = icmp eq i32 %inc.i12.i, %conv
  br i1 %exitcond.not.i13.i, label %for.body.i14.i.for.body.i.i171.preheader_crit_edge, label %for.body.i14.i.for.body.i14.i_crit_edge

for.body.i14.i.for.body.i14.i_crit_edge:          ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i

for.body.i14.i.for.body.i.i171.preheader_crit_edge: ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i171.preheader

for.body.i.i171.preheader:                        ; preds = %for.body.i14.i.for.body.i.i171.preheader_crit_edge, %vli_sub.exit.i.for.body.i.i171.preheader_crit_edge
  call fastcc void @vli_mod_mult_fast(ptr noundef %x1, ptr noundef %x1, ptr noundef %z1, ptr noundef %curve)
  br label %for.body.i.i171

for.body.i.i171:                                  ; preds = %for.body.i.i171.for.body.i.i171_crit_edge, %for.body.i.i171.preheader
  %i.022.i.i159 = phi i32 [ %inc.i.i169, %for.body.i.i171.for.body.i.i171_crit_edge ], [ 0, %for.body.i.i171.preheader ]
  %carry.021.i.i160 = phi i64 [ %carry.1.i.i167, %for.body.i.i171.for.body.i.i171_crit_edge ], [ 0, %for.body.i.i171.preheader ]
  %arrayidx.i.i161 = getelementptr i64, ptr %x1, i32 %i.022.i.i159
  %55 = ptrtoint ptr %arrayidx.i.i161 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx.i.i161, align 8
  %reass.add391 = shl i64 %56, 1
  %add2.i.i164 = add i64 %reass.add391, %carry.021.i.i160
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i164, i64 %56)
  %cmp4.not.i.i165 = icmp eq i64 %add2.i.i164, %56
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i164, i64 %56)
  %cmp6.i.i166 = icmp ult i64 %add2.i.i164, %56
  %57 = zext i1 %cmp6.i.i166 to i64
  %carry.1.i.i167 = select i1 %cmp4.not.i.i165, i64 %carry.021.i.i160, i64 %57
  %arrayidx8.i.i168 = getelementptr i64, ptr %z1, i32 %i.022.i.i159
  %58 = ptrtoint ptr %arrayidx8.i.i168 to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %add2.i.i164, ptr %arrayidx8.i.i168, align 8
  %inc.i.i169 = add nuw nsw i32 %i.022.i.i159, 1
  %exitcond.not.i.i170 = icmp eq i32 %inc.i.i169, %conv
  br i1 %exitcond.not.i.i170, label %vli_add.exit.i173, label %for.body.i.i171.for.body.i.i171_crit_edge

for.body.i.i171.for.body.i.i171_crit_edge:        ; preds = %for.body.i.i171
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i171

vli_add.exit.i173:                                ; preds = %for.body.i.i171
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.1.i.i167)
  %tobool.not.i172 = icmp eq i64 %carry.1.i.i167, 0
  br i1 %tobool.not.i172, label %vli_add.exit.i173.for.cond.i.i178_crit_edge, label %vli_add.exit.i173.for.body.i21.i196.preheader_crit_edge

vli_add.exit.i173.for.body.i21.i196.preheader_crit_edge: ; preds = %vli_add.exit.i173
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i196.preheader

vli_add.exit.i173.for.cond.i.i178_crit_edge:      ; preds = %vli_add.exit.i173
  br label %for.cond.i.i178

for.body.i21.i196.preheader:                      ; preds = %for.body.i11.i182.for.body.i21.i196.preheader_crit_edge, %for.cond.i.i178.for.body.i21.i196.preheader_crit_edge, %vli_add.exit.i173.for.body.i21.i196.preheader_crit_edge
  br label %for.body.i21.i196

for.cond.i.i178:                                  ; preds = %if.else.i.i184.for.cond.i.i178_crit_edge, %vli_add.exit.i173.for.cond.i.i178_crit_edge
  %i.0.in.i.i175 = phi i32 [ %i.0.i.i176, %if.else.i.i184.for.cond.i.i178_crit_edge ], [ %conv, %vli_add.exit.i173.for.cond.i.i178_crit_edge ]
  %i.0.i.i176 = add nsw i32 %i.0.in.i.i175, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i175)
  %cmp.i.i177 = icmp sgt i32 %i.0.in.i.i175, 0
  br i1 %cmp.i.i177, label %for.body.i11.i182, label %for.cond.i.i178.for.body.i21.i196.preheader_crit_edge

for.cond.i.i178.for.body.i21.i196.preheader_crit_edge: ; preds = %for.cond.i.i178
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i196.preheader

for.body.i11.i182:                                ; preds = %for.cond.i.i178
  %arrayidx.i9.i179 = getelementptr i64, ptr %z1, i32 %i.0.i.i176
  %59 = ptrtoint ptr %arrayidx.i9.i179 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx.i9.i179, align 8
  %arrayidx1.i10.i180 = getelementptr i64, ptr %3, i32 %i.0.i.i176
  %61 = ptrtoint ptr %arrayidx1.i10.i180 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx1.i10.i180, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %60, i64 %62)
  %cmp2.i.i181 = icmp ugt i64 %60, %62
  br i1 %cmp2.i.i181, label %for.body.i11.i182.for.body.i21.i196.preheader_crit_edge, label %if.else.i.i184

for.body.i11.i182.for.body.i21.i196.preheader_crit_edge: ; preds = %for.body.i11.i182
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i196.preheader

if.else.i.i184:                                   ; preds = %for.body.i11.i182
  %cmp5.i.i183 = icmp ult i64 %60, %62
  br i1 %cmp5.i.i183, label %if.else.i.i184.for.body.i.i211.preheader_crit_edge, label %if.else.i.i184.for.cond.i.i178_crit_edge

if.else.i.i184.for.cond.i.i178_crit_edge:         ; preds = %if.else.i.i184
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i178

if.else.i.i184.for.body.i.i211.preheader_crit_edge: ; preds = %if.else.i.i184
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i211.preheader

for.body.i21.i196:                                ; preds = %for.body.i21.i196.for.body.i21.i196_crit_edge, %for.body.i21.i196.preheader
  %i.022.i13.i186 = phi i32 [ %inc.i19.i194, %for.body.i21.i196.for.body.i21.i196_crit_edge ], [ 0, %for.body.i21.i196.preheader ]
  %borrow.021.i.i187 = phi i64 [ %borrow.1.i.i193, %for.body.i21.i196.for.body.i21.i196_crit_edge ], [ 0, %for.body.i21.i196.preheader ]
  %arrayidx.i14.i188 = getelementptr i64, ptr %z1, i32 %i.022.i13.i186
  %63 = ptrtoint ptr %arrayidx.i14.i188 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx.i14.i188, align 8
  %arrayidx1.i15.i189 = getelementptr i64, ptr %3, i32 %i.022.i13.i186
  %65 = ptrtoint ptr %arrayidx1.i15.i189 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx1.i15.i189, align 8
  %67 = add i64 %66, %borrow.021.i.i187
  %sub2.i.i190 = sub i64 %64, %67
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %cmp4.not.i16.i191 = icmp eq i64 %67, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %64, i64 %67)
  %cmp6.i17.i192 = icmp ult i64 %64, %67
  %68 = zext i1 %cmp6.i17.i192 to i64
  %borrow.1.i.i193 = select i1 %cmp4.not.i16.i191, i64 %borrow.021.i.i187, i64 %68
  %69 = ptrtoint ptr %arrayidx.i14.i188 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %sub2.i.i190, ptr %arrayidx.i14.i188, align 8
  %inc.i19.i194 = add nuw nsw i32 %i.022.i13.i186, 1
  %exitcond.not.i20.i195 = icmp eq i32 %inc.i19.i194, %conv
  br i1 %exitcond.not.i20.i195, label %for.body.i21.i196.for.body.i.i211.preheader_crit_edge, label %for.body.i21.i196.for.body.i21.i196_crit_edge

for.body.i21.i196.for.body.i21.i196_crit_edge:    ; preds = %for.body.i21.i196
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i196

for.body.i21.i196.for.body.i.i211.preheader_crit_edge: ; preds = %for.body.i21.i196
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i211.preheader

for.body.i.i211.preheader:                        ; preds = %for.body.i21.i196.for.body.i.i211.preheader_crit_edge, %if.else.i.i184.for.body.i.i211.preheader_crit_edge
  br label %for.body.i.i211

for.body.i.i211:                                  ; preds = %for.body.i.i211.for.body.i.i211_crit_edge, %for.body.i.i211.preheader
  %i.022.i.i199 = phi i32 [ %inc.i.i209, %for.body.i.i211.for.body.i.i211_crit_edge ], [ 0, %for.body.i.i211.preheader ]
  %carry.021.i.i200 = phi i64 [ %carry.1.i.i207, %for.body.i.i211.for.body.i.i211_crit_edge ], [ 0, %for.body.i.i211.preheader ]
  %arrayidx.i.i201 = getelementptr i64, ptr %x1, i32 %i.022.i.i199
  %70 = ptrtoint ptr %arrayidx.i.i201 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx.i.i201, align 8
  %arrayidx1.i.i202 = getelementptr i64, ptr %z1, i32 %i.022.i.i199
  %72 = ptrtoint ptr %arrayidx1.i.i202 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx1.i.i202, align 8
  %add.i.i203 = add i64 %71, %carry.021.i.i200
  %add2.i.i204 = add i64 %add.i.i203, %73
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i204, i64 %71)
  %cmp4.not.i.i205 = icmp eq i64 %add2.i.i204, %71
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i204, i64 %71)
  %cmp6.i.i206 = icmp ult i64 %add2.i.i204, %71
  %74 = zext i1 %cmp6.i.i206 to i64
  %carry.1.i.i207 = select i1 %cmp4.not.i.i205, i64 %carry.021.i.i200, i64 %74
  %75 = ptrtoint ptr %arrayidx.i.i201 to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 %add2.i.i204, ptr %arrayidx.i.i201, align 8
  %inc.i.i209 = add nuw nsw i32 %i.022.i.i199, 1
  %exitcond.not.i.i210 = icmp eq i32 %inc.i.i209, %conv
  br i1 %exitcond.not.i.i210, label %vli_add.exit.i213, label %for.body.i.i211.for.body.i.i211_crit_edge

for.body.i.i211.for.body.i.i211_crit_edge:        ; preds = %for.body.i.i211
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i211

vli_add.exit.i213:                                ; preds = %for.body.i.i211
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.1.i.i207)
  %tobool.not.i212 = icmp eq i64 %carry.1.i.i207, 0
  br i1 %tobool.not.i212, label %vli_add.exit.i213.for.cond.i.i218_crit_edge, label %vli_add.exit.i213.for.body.i21.i236.preheader_crit_edge

vli_add.exit.i213.for.body.i21.i236.preheader_crit_edge: ; preds = %vli_add.exit.i213
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i236.preheader

vli_add.exit.i213.for.cond.i.i218_crit_edge:      ; preds = %vli_add.exit.i213
  br label %for.cond.i.i218

for.body.i21.i236.preheader:                      ; preds = %for.body.i11.i222.for.body.i21.i236.preheader_crit_edge, %for.cond.i.i218.for.body.i21.i236.preheader_crit_edge, %vli_add.exit.i213.for.body.i21.i236.preheader_crit_edge
  br label %for.body.i21.i236

for.cond.i.i218:                                  ; preds = %if.else.i.i224.for.cond.i.i218_crit_edge, %vli_add.exit.i213.for.cond.i.i218_crit_edge
  %i.0.in.i.i215 = phi i32 [ %i.0.i.i216, %if.else.i.i224.for.cond.i.i218_crit_edge ], [ %conv, %vli_add.exit.i213.for.cond.i.i218_crit_edge ]
  %i.0.i.i216 = add nsw i32 %i.0.in.i.i215, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i215)
  %cmp.i.i217 = icmp sgt i32 %i.0.in.i.i215, 0
  br i1 %cmp.i.i217, label %for.body.i11.i222, label %for.cond.i.i218.for.body.i21.i236.preheader_crit_edge

for.cond.i.i218.for.body.i21.i236.preheader_crit_edge: ; preds = %for.cond.i.i218
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i236.preheader

for.body.i11.i222:                                ; preds = %for.cond.i.i218
  %arrayidx.i9.i219 = getelementptr i64, ptr %x1, i32 %i.0.i.i216
  %76 = ptrtoint ptr %arrayidx.i9.i219 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx.i9.i219, align 8
  %arrayidx1.i10.i220 = getelementptr i64, ptr %3, i32 %i.0.i.i216
  %78 = ptrtoint ptr %arrayidx1.i10.i220 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx1.i10.i220, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %77, i64 %79)
  %cmp2.i.i221 = icmp ugt i64 %77, %79
  br i1 %cmp2.i.i221, label %for.body.i11.i222.for.body.i21.i236.preheader_crit_edge, label %if.else.i.i224

for.body.i11.i222.for.body.i21.i236.preheader_crit_edge: ; preds = %for.body.i11.i222
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i236.preheader

if.else.i.i224:                                   ; preds = %for.body.i11.i222
  %cmp5.i.i223 = icmp ult i64 %77, %79
  br i1 %cmp5.i.i223, label %if.else.i.i224.vli_mod_add.exit237_crit_edge, label %if.else.i.i224.for.cond.i.i218_crit_edge

if.else.i.i224.for.cond.i.i218_crit_edge:         ; preds = %if.else.i.i224
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i218

if.else.i.i224.vli_mod_add.exit237_crit_edge:     ; preds = %if.else.i.i224
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_add.exit237

for.body.i21.i236:                                ; preds = %for.body.i21.i236.for.body.i21.i236_crit_edge, %for.body.i21.i236.preheader
  %i.022.i13.i226 = phi i32 [ %inc.i19.i234, %for.body.i21.i236.for.body.i21.i236_crit_edge ], [ 0, %for.body.i21.i236.preheader ]
  %borrow.021.i.i227 = phi i64 [ %borrow.1.i.i233, %for.body.i21.i236.for.body.i21.i236_crit_edge ], [ 0, %for.body.i21.i236.preheader ]
  %arrayidx.i14.i228 = getelementptr i64, ptr %x1, i32 %i.022.i13.i226
  %80 = ptrtoint ptr %arrayidx.i14.i228 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx.i14.i228, align 8
  %arrayidx1.i15.i229 = getelementptr i64, ptr %3, i32 %i.022.i13.i226
  %82 = ptrtoint ptr %arrayidx1.i15.i229 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx1.i15.i229, align 8
  %84 = add i64 %83, %borrow.021.i.i227
  %sub2.i.i230 = sub i64 %81, %84
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %cmp4.not.i16.i231 = icmp eq i64 %84, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %84)
  %cmp6.i17.i232 = icmp ult i64 %81, %84
  %85 = zext i1 %cmp6.i17.i232 to i64
  %borrow.1.i.i233 = select i1 %cmp4.not.i16.i231, i64 %borrow.021.i.i227, i64 %85
  %86 = ptrtoint ptr %arrayidx.i14.i228 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %sub2.i.i230, ptr %arrayidx.i14.i228, align 8
  %inc.i19.i234 = add nuw nsw i32 %i.022.i13.i226, 1
  %exitcond.not.i20.i235 = icmp eq i32 %inc.i19.i234, %conv
  br i1 %exitcond.not.i20.i235, label %for.body.i21.i236.vli_mod_add.exit237_crit_edge, label %for.body.i21.i236.for.body.i21.i236_crit_edge

for.body.i21.i236.for.body.i21.i236_crit_edge:    ; preds = %for.body.i21.i236
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i236

for.body.i21.i236.vli_mod_add.exit237_crit_edge:  ; preds = %for.body.i21.i236
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_add.exit237

vli_mod_add.exit237:                              ; preds = %for.body.i21.i236.vli_mod_add.exit237_crit_edge, %if.else.i.i224.vli_mod_add.exit237_crit_edge
  %87 = ptrtoint ptr %x1 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %x1, align 8
  %and.i = and i64 %88, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not = icmp eq i64 %and.i, 0
  br i1 %tobool.not, label %if.else, label %vli_mod_add.exit237.for.body.i241_crit_edge

vli_mod_add.exit237.for.body.i241_crit_edge:      ; preds = %vli_mod_add.exit237
  br label %for.body.i241

for.body.i241:                                    ; preds = %for.body.i241.for.body.i241_crit_edge, %vli_mod_add.exit237.for.body.i241_crit_edge
  %i.022.i = phi i32 [ %inc.i239, %for.body.i241.for.body.i241_crit_edge ], [ 0, %vli_mod_add.exit237.for.body.i241_crit_edge ]
  %carry.021.i = phi i64 [ %carry.1.i, %for.body.i241.for.body.i241_crit_edge ], [ 0, %vli_mod_add.exit237.for.body.i241_crit_edge ]
  %arrayidx.i238 = getelementptr i64, ptr %x1, i32 %i.022.i
  %89 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx.i238, align 8
  %arrayidx1.i = getelementptr i64, ptr %3, i32 %i.022.i
  %91 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %arrayidx1.i, align 8
  %add.i = add i64 %90, %carry.021.i
  %add2.i = add i64 %add.i, %92
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i, i64 %90)
  %cmp4.not.i = icmp eq i64 %add2.i, %90
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i, i64 %90)
  %cmp6.i = icmp ult i64 %add2.i, %90
  %93 = zext i1 %cmp6.i to i64
  %carry.1.i = select i1 %cmp4.not.i, i64 %carry.021.i, i64 %93
  %94 = ptrtoint ptr %arrayidx.i238 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %add2.i, ptr %arrayidx.i238, align 8
  %inc.i239 = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i240 = icmp eq i32 %inc.i239, %conv
  br i1 %exitcond.not.i240, label %vli_add.exit, label %for.body.i241.for.body.i241_crit_edge

for.body.i241.for.body.i241_crit_edge:            ; preds = %for.body.i241
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i241

vli_add.exit:                                     ; preds = %for.body.i241
  %add.ptr.i = getelementptr i64, ptr %x1, i32 %conv
  %cmp6.i242 = icmp ugt ptr %add.ptr.i, %x1
  br i1 %cmp6.i242, label %vli_add.exit.while.body.i_crit_edge, label %vli_add.exit.vli_rshift1.exit_crit_edge

vli_add.exit.vli_rshift1.exit_crit_edge:          ; preds = %vli_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit

vli_add.exit.while.body.i_crit_edge:              ; preds = %vli_add.exit
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %vli_add.exit.while.body.i_crit_edge
  %vli.addr.08.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %add.ptr.i, %vli_add.exit.while.body.i_crit_edge ]
  %carry.07.i = phi i64 [ %shl.i, %while.body.i.while.body.i_crit_edge ], [ 0, %vli_add.exit.while.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i64, ptr %vli.addr.08.i, i32 -1
  %95 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %incdec.ptr.i, align 8
  %shr.i = lshr i64 %96, 1
  %or.i = or i64 %shr.i, %carry.07.i
  store i64 %or.i, ptr %incdec.ptr.i, align 8
  %shl.i = shl i64 %96, 63
  %cmp.i243 = icmp ugt ptr %incdec.ptr.i, %x1
  br i1 %cmp.i243, label %while.body.i.while.body.i_crit_edge, label %while.body.i.vli_rshift1.exit_crit_edge

while.body.i.vli_rshift1.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_rshift1.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

vli_rshift1.exit:                                 ; preds = %while.body.i.vli_rshift1.exit_crit_edge, %vli_add.exit.vli_rshift1.exit_crit_edge
  %shl = shl i64 %carry.1.i, 63
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr i64, ptr %x1, i32 %sub
  %97 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %97)
  %98 = load i64, ptr %arrayidx, align 8
  %or = or i64 %98, %shl
  store i64 %or, ptr %arrayidx, align 8
  br label %for.body.i.i267.preheader

if.else:                                          ; preds = %vli_mod_add.exit237
  %add.ptr.i244 = getelementptr i64, ptr %x1, i32 %conv
  %cmp6.i245 = icmp ugt ptr %add.ptr.i244, %x1
  br i1 %cmp6.i245, label %if.else.while.body.i253_crit_edge, label %if.else.for.body.i.i267.preheader_crit_edge

if.else.for.body.i.i267.preheader_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i267.preheader

if.else.while.body.i253_crit_edge:                ; preds = %if.else
  br label %while.body.i253

while.body.i253:                                  ; preds = %while.body.i253.while.body.i253_crit_edge, %if.else.while.body.i253_crit_edge
  %vli.addr.08.i246 = phi ptr [ %incdec.ptr.i248, %while.body.i253.while.body.i253_crit_edge ], [ %add.ptr.i244, %if.else.while.body.i253_crit_edge ]
  %carry.07.i247 = phi i64 [ %shl.i251, %while.body.i253.while.body.i253_crit_edge ], [ 0, %if.else.while.body.i253_crit_edge ]
  %incdec.ptr.i248 = getelementptr i64, ptr %vli.addr.08.i246, i32 -1
  %99 = ptrtoint ptr %incdec.ptr.i248 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %incdec.ptr.i248, align 8
  %shr.i249 = lshr i64 %100, 1
  %or.i250 = or i64 %shr.i249, %carry.07.i247
  store i64 %or.i250, ptr %incdec.ptr.i248, align 8
  %shl.i251 = shl i64 %100, 63
  %cmp.i252 = icmp ugt ptr %incdec.ptr.i248, %x1
  br i1 %cmp.i252, label %while.body.i253.while.body.i253_crit_edge, label %while.body.i253.for.body.i.i267.preheader_crit_edge

while.body.i253.for.body.i.i267.preheader_crit_edge: ; preds = %while.body.i253
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i267.preheader

while.body.i253.while.body.i253_crit_edge:        ; preds = %while.body.i253
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i253

for.body.i.i267.preheader:                        ; preds = %while.body.i253.for.body.i.i267.preheader_crit_edge, %if.else.for.body.i.i267.preheader_crit_edge, %vli_rshift1.exit
  call fastcc void @vli_mod_square_fast(ptr noundef %z1, ptr noundef %x1, ptr noundef %curve)
  br label %for.body.i.i267

for.body.i.i267:                                  ; preds = %for.body.i.i267.for.body.i.i267_crit_edge, %for.body.i.i267.preheader
  %i.022.i.i256 = phi i32 [ %inc.i.i265, %for.body.i.i267.for.body.i.i267_crit_edge ], [ 0, %for.body.i.i267.preheader ]
  %borrow.021.i.i257 = phi i64 [ %borrow.1.i.i263, %for.body.i.i267.for.body.i.i267_crit_edge ], [ 0, %for.body.i.i267.preheader ]
  %arrayidx.i.i258 = getelementptr i64, ptr %z1, i32 %i.022.i.i256
  %101 = ptrtoint ptr %arrayidx.i.i258 to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx.i.i258, align 8
  %arrayidx1.i.i259 = getelementptr i64, ptr %t5, i32 %i.022.i.i256
  %103 = ptrtoint ptr %arrayidx1.i.i259 to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx1.i.i259, align 8
  %105 = add i64 %104, %borrow.021.i.i257
  %sub2.i.i260 = sub i64 %102, %105
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %105)
  %cmp4.not.i.i261 = icmp eq i64 %105, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %102, i64 %105)
  %cmp6.i.i262 = icmp ult i64 %102, %105
  %106 = zext i1 %cmp6.i.i262 to i64
  %borrow.1.i.i263 = select i1 %cmp4.not.i.i261, i64 %borrow.021.i.i257, i64 %106
  %107 = ptrtoint ptr %arrayidx.i.i258 to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 %sub2.i.i260, ptr %arrayidx.i.i258, align 8
  %inc.i.i265 = add nuw nsw i32 %i.022.i.i256, 1
  %exitcond.not.i.i266 = icmp eq i32 %inc.i.i265, %conv
  br i1 %exitcond.not.i.i266, label %vli_sub.exit.i269, label %for.body.i.i267.for.body.i.i267_crit_edge

for.body.i.i267.for.body.i.i267_crit_edge:        ; preds = %for.body.i.i267
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i267

vli_sub.exit.i269:                                ; preds = %for.body.i.i267
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i263)
  %tobool.not.i268 = icmp eq i64 %borrow.1.i.i263, 0
  br i1 %tobool.not.i268, label %vli_sub.exit.i269.for.body.i.i295.preheader_crit_edge, label %vli_sub.exit.i269.for.body.i14.i281_crit_edge

vli_sub.exit.i269.for.body.i14.i281_crit_edge:    ; preds = %vli_sub.exit.i269
  br label %for.body.i14.i281

vli_sub.exit.i269.for.body.i.i295.preheader_crit_edge: ; preds = %vli_sub.exit.i269
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i295.preheader

for.body.i14.i281:                                ; preds = %for.body.i14.i281.for.body.i14.i281_crit_edge, %vli_sub.exit.i269.for.body.i14.i281_crit_edge
  %i.022.i6.i270 = phi i32 [ %inc.i12.i279, %for.body.i14.i281.for.body.i14.i281_crit_edge ], [ 0, %vli_sub.exit.i269.for.body.i14.i281_crit_edge ]
  %carry.021.i.i271 = phi i64 [ %carry.1.i.i278, %for.body.i14.i281.for.body.i14.i281_crit_edge ], [ 0, %vli_sub.exit.i269.for.body.i14.i281_crit_edge ]
  %arrayidx.i7.i272 = getelementptr i64, ptr %z1, i32 %i.022.i6.i270
  %108 = ptrtoint ptr %arrayidx.i7.i272 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx.i7.i272, align 8
  %arrayidx1.i8.i273 = getelementptr i64, ptr %3, i32 %i.022.i6.i270
  %110 = ptrtoint ptr %arrayidx1.i8.i273 to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %arrayidx1.i8.i273, align 8
  %add.i.i274 = add i64 %109, %carry.021.i.i271
  %add2.i.i275 = add i64 %add.i.i274, %111
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i275, i64 %109)
  %cmp4.not.i9.i276 = icmp eq i64 %add2.i.i275, %109
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i275, i64 %109)
  %cmp6.i10.i277 = icmp ult i64 %add2.i.i275, %109
  %112 = zext i1 %cmp6.i10.i277 to i64
  %carry.1.i.i278 = select i1 %cmp4.not.i9.i276, i64 %carry.021.i.i271, i64 %112
  %113 = ptrtoint ptr %arrayidx.i7.i272 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %add2.i.i275, ptr %arrayidx.i7.i272, align 8
  %inc.i12.i279 = add nuw nsw i32 %i.022.i6.i270, 1
  %exitcond.not.i13.i280 = icmp eq i32 %inc.i12.i279, %conv
  br i1 %exitcond.not.i13.i280, label %for.body.i14.i281.for.body.i.i295.preheader_crit_edge, label %for.body.i14.i281.for.body.i14.i281_crit_edge

for.body.i14.i281.for.body.i14.i281_crit_edge:    ; preds = %for.body.i14.i281
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i281

for.body.i14.i281.for.body.i.i295.preheader_crit_edge: ; preds = %for.body.i14.i281
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i295.preheader

for.body.i.i295.preheader:                        ; preds = %for.body.i14.i281.for.body.i.i295.preheader_crit_edge, %vli_sub.exit.i269.for.body.i.i295.preheader_crit_edge
  br label %for.body.i.i295

for.body.i.i295:                                  ; preds = %for.body.i.i295.for.body.i.i295_crit_edge, %for.body.i.i295.preheader
  %i.022.i.i284 = phi i32 [ %inc.i.i293, %for.body.i.i295.for.body.i.i295_crit_edge ], [ 0, %for.body.i.i295.preheader ]
  %borrow.021.i.i285 = phi i64 [ %borrow.1.i.i291, %for.body.i.i295.for.body.i.i295_crit_edge ], [ 0, %for.body.i.i295.preheader ]
  %arrayidx.i.i286 = getelementptr i64, ptr %z1, i32 %i.022.i.i284
  %114 = ptrtoint ptr %arrayidx.i.i286 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx.i.i286, align 8
  %arrayidx1.i.i287 = getelementptr i64, ptr %t5, i32 %i.022.i.i284
  %116 = ptrtoint ptr %arrayidx1.i.i287 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %arrayidx1.i.i287, align 8
  %118 = add i64 %117, %borrow.021.i.i285
  %sub2.i.i288 = sub i64 %115, %118
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %118)
  %cmp4.not.i.i289 = icmp eq i64 %118, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %115, i64 %118)
  %cmp6.i.i290 = icmp ult i64 %115, %118
  %119 = zext i1 %cmp6.i.i290 to i64
  %borrow.1.i.i291 = select i1 %cmp4.not.i.i289, i64 %borrow.021.i.i285, i64 %119
  %120 = ptrtoint ptr %arrayidx.i.i286 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %sub2.i.i288, ptr %arrayidx.i.i286, align 8
  %inc.i.i293 = add nuw nsw i32 %i.022.i.i284, 1
  %exitcond.not.i.i294 = icmp eq i32 %inc.i.i293, %conv
  br i1 %exitcond.not.i.i294, label %vli_sub.exit.i297, label %for.body.i.i295.for.body.i.i295_crit_edge

for.body.i.i295.for.body.i.i295_crit_edge:        ; preds = %for.body.i.i295
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i295

vli_sub.exit.i297:                                ; preds = %for.body.i.i295
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i291)
  %tobool.not.i296 = icmp eq i64 %borrow.1.i.i291, 0
  br i1 %tobool.not.i296, label %vli_sub.exit.i297.for.body.i.i323.preheader_crit_edge, label %vli_sub.exit.i297.for.body.i14.i309_crit_edge

vli_sub.exit.i297.for.body.i14.i309_crit_edge:    ; preds = %vli_sub.exit.i297
  br label %for.body.i14.i309

vli_sub.exit.i297.for.body.i.i323.preheader_crit_edge: ; preds = %vli_sub.exit.i297
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i323.preheader

for.body.i14.i309:                                ; preds = %for.body.i14.i309.for.body.i14.i309_crit_edge, %vli_sub.exit.i297.for.body.i14.i309_crit_edge
  %i.022.i6.i298 = phi i32 [ %inc.i12.i307, %for.body.i14.i309.for.body.i14.i309_crit_edge ], [ 0, %vli_sub.exit.i297.for.body.i14.i309_crit_edge ]
  %carry.021.i.i299 = phi i64 [ %carry.1.i.i306, %for.body.i14.i309.for.body.i14.i309_crit_edge ], [ 0, %vli_sub.exit.i297.for.body.i14.i309_crit_edge ]
  %arrayidx.i7.i300 = getelementptr i64, ptr %z1, i32 %i.022.i6.i298
  %121 = ptrtoint ptr %arrayidx.i7.i300 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx.i7.i300, align 8
  %arrayidx1.i8.i301 = getelementptr i64, ptr %3, i32 %i.022.i6.i298
  %123 = ptrtoint ptr %arrayidx1.i8.i301 to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %arrayidx1.i8.i301, align 8
  %add.i.i302 = add i64 %122, %carry.021.i.i299
  %add2.i.i303 = add i64 %add.i.i302, %124
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i303, i64 %122)
  %cmp4.not.i9.i304 = icmp eq i64 %add2.i.i303, %122
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i303, i64 %122)
  %cmp6.i10.i305 = icmp ult i64 %add2.i.i303, %122
  %125 = zext i1 %cmp6.i10.i305 to i64
  %carry.1.i.i306 = select i1 %cmp4.not.i9.i304, i64 %carry.021.i.i299, i64 %125
  %126 = ptrtoint ptr %arrayidx.i7.i300 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %add2.i.i303, ptr %arrayidx.i7.i300, align 8
  %inc.i12.i307 = add nuw nsw i32 %i.022.i6.i298, 1
  %exitcond.not.i13.i308 = icmp eq i32 %inc.i12.i307, %conv
  br i1 %exitcond.not.i13.i308, label %for.body.i14.i309.for.body.i.i323.preheader_crit_edge, label %for.body.i14.i309.for.body.i14.i309_crit_edge

for.body.i14.i309.for.body.i14.i309_crit_edge:    ; preds = %for.body.i14.i309
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i309

for.body.i14.i309.for.body.i.i323.preheader_crit_edge: ; preds = %for.body.i14.i309
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i323.preheader

for.body.i.i323.preheader:                        ; preds = %for.body.i14.i309.for.body.i.i323.preheader_crit_edge, %vli_sub.exit.i297.for.body.i.i323.preheader_crit_edge
  br label %for.body.i.i323

for.body.i.i323:                                  ; preds = %for.body.i.i323.for.body.i.i323_crit_edge, %for.body.i.i323.preheader
  %i.022.i.i312 = phi i32 [ %inc.i.i321, %for.body.i.i323.for.body.i.i323_crit_edge ], [ 0, %for.body.i.i323.preheader ]
  %borrow.021.i.i313 = phi i64 [ %borrow.1.i.i319, %for.body.i.i323.for.body.i.i323_crit_edge ], [ 0, %for.body.i.i323.preheader ]
  %arrayidx.i.i314 = getelementptr i64, ptr %t5, i32 %i.022.i.i312
  %127 = ptrtoint ptr %arrayidx.i.i314 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %arrayidx.i.i314, align 8
  %arrayidx1.i.i315 = getelementptr i64, ptr %z1, i32 %i.022.i.i312
  %129 = ptrtoint ptr %arrayidx1.i.i315 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %arrayidx1.i.i315, align 8
  %131 = add i64 %130, %borrow.021.i.i313
  %sub2.i.i316 = sub i64 %128, %131
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %131)
  %cmp4.not.i.i317 = icmp eq i64 %131, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %128, i64 %131)
  %cmp6.i.i318 = icmp ult i64 %128, %131
  %132 = zext i1 %cmp6.i.i318 to i64
  %borrow.1.i.i319 = select i1 %cmp4.not.i.i317, i64 %borrow.021.i.i313, i64 %132
  %133 = ptrtoint ptr %arrayidx.i.i314 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %sub2.i.i316, ptr %arrayidx.i.i314, align 8
  %inc.i.i321 = add nuw nsw i32 %i.022.i.i312, 1
  %exitcond.not.i.i322 = icmp eq i32 %inc.i.i321, %conv
  br i1 %exitcond.not.i.i322, label %vli_sub.exit.i325, label %for.body.i.i323.for.body.i.i323_crit_edge

for.body.i.i323.for.body.i.i323_crit_edge:        ; preds = %for.body.i.i323
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i323

vli_sub.exit.i325:                                ; preds = %for.body.i.i323
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i319)
  %tobool.not.i324 = icmp eq i64 %borrow.1.i.i319, 0
  br i1 %tobool.not.i324, label %vli_sub.exit.i325.for.body.i.i351.preheader_crit_edge, label %vli_sub.exit.i325.for.body.i14.i337_crit_edge

vli_sub.exit.i325.for.body.i14.i337_crit_edge:    ; preds = %vli_sub.exit.i325
  br label %for.body.i14.i337

vli_sub.exit.i325.for.body.i.i351.preheader_crit_edge: ; preds = %vli_sub.exit.i325
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i351.preheader

for.body.i14.i337:                                ; preds = %for.body.i14.i337.for.body.i14.i337_crit_edge, %vli_sub.exit.i325.for.body.i14.i337_crit_edge
  %i.022.i6.i326 = phi i32 [ %inc.i12.i335, %for.body.i14.i337.for.body.i14.i337_crit_edge ], [ 0, %vli_sub.exit.i325.for.body.i14.i337_crit_edge ]
  %carry.021.i.i327 = phi i64 [ %carry.1.i.i334, %for.body.i14.i337.for.body.i14.i337_crit_edge ], [ 0, %vli_sub.exit.i325.for.body.i14.i337_crit_edge ]
  %arrayidx.i7.i328 = getelementptr i64, ptr %t5, i32 %i.022.i6.i326
  %134 = ptrtoint ptr %arrayidx.i7.i328 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %arrayidx.i7.i328, align 8
  %arrayidx1.i8.i329 = getelementptr i64, ptr %3, i32 %i.022.i6.i326
  %136 = ptrtoint ptr %arrayidx1.i8.i329 to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %arrayidx1.i8.i329, align 8
  %add.i.i330 = add i64 %135, %carry.021.i.i327
  %add2.i.i331 = add i64 %add.i.i330, %137
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i331, i64 %135)
  %cmp4.not.i9.i332 = icmp eq i64 %add2.i.i331, %135
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i331, i64 %135)
  %cmp6.i10.i333 = icmp ult i64 %add2.i.i331, %135
  %138 = zext i1 %cmp6.i10.i333 to i64
  %carry.1.i.i334 = select i1 %cmp4.not.i9.i332, i64 %carry.021.i.i327, i64 %138
  %139 = ptrtoint ptr %arrayidx.i7.i328 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %add2.i.i331, ptr %arrayidx.i7.i328, align 8
  %inc.i12.i335 = add nuw nsw i32 %i.022.i6.i326, 1
  %exitcond.not.i13.i336 = icmp eq i32 %inc.i12.i335, %conv
  br i1 %exitcond.not.i13.i336, label %for.body.i14.i337.for.body.i.i351.preheader_crit_edge, label %for.body.i14.i337.for.body.i14.i337_crit_edge

for.body.i14.i337.for.body.i14.i337_crit_edge:    ; preds = %for.body.i14.i337
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i337

for.body.i14.i337.for.body.i.i351.preheader_crit_edge: ; preds = %for.body.i14.i337
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i351.preheader

for.body.i.i351.preheader:                        ; preds = %for.body.i14.i337.for.body.i.i351.preheader_crit_edge, %vli_sub.exit.i325.for.body.i.i351.preheader_crit_edge
  call fastcc void @vli_mod_mult_fast(ptr noundef %x1, ptr noundef %x1, ptr noundef nonnull %t5, ptr noundef %curve)
  br label %for.body.i.i351

for.body.i.i351:                                  ; preds = %for.body.i.i351.for.body.i.i351_crit_edge, %for.body.i.i351.preheader
  %i.022.i.i340 = phi i32 [ %inc.i.i349, %for.body.i.i351.for.body.i.i351_crit_edge ], [ 0, %for.body.i.i351.preheader ]
  %borrow.021.i.i341 = phi i64 [ %borrow.1.i.i347, %for.body.i.i351.for.body.i.i351_crit_edge ], [ 0, %for.body.i.i351.preheader ]
  %arrayidx.i.i342 = getelementptr i64, ptr %x1, i32 %i.022.i.i340
  %140 = ptrtoint ptr %arrayidx.i.i342 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %arrayidx.i.i342, align 8
  %arrayidx1.i.i343 = getelementptr i64, ptr %t4, i32 %i.022.i.i340
  %142 = ptrtoint ptr %arrayidx1.i.i343 to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %arrayidx1.i.i343, align 8
  %144 = add i64 %143, %borrow.021.i.i341
  %sub2.i.i344 = sub i64 %141, %144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %144)
  %cmp4.not.i.i345 = icmp eq i64 %144, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %141, i64 %144)
  %cmp6.i.i346 = icmp ult i64 %141, %144
  %145 = zext i1 %cmp6.i.i346 to i64
  %borrow.1.i.i347 = select i1 %cmp4.not.i.i345, i64 %borrow.021.i.i341, i64 %145
  %146 = ptrtoint ptr %arrayidx1.i.i343 to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %sub2.i.i344, ptr %arrayidx1.i.i343, align 8
  %inc.i.i349 = add nuw nsw i32 %i.022.i.i340, 1
  %exitcond.not.i.i350 = icmp eq i32 %inc.i.i349, %conv
  br i1 %exitcond.not.i.i350, label %vli_sub.exit.i353, label %for.body.i.i351.for.body.i.i351_crit_edge

for.body.i.i351.for.body.i.i351_crit_edge:        ; preds = %for.body.i.i351
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i351

vli_sub.exit.i353:                                ; preds = %for.body.i.i351
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i347)
  %tobool.not.i352 = icmp eq i64 %borrow.1.i.i347, 0
  br i1 %tobool.not.i352, label %vli_sub.exit.i353.for.body.i371.preheader_crit_edge, label %vli_sub.exit.i353.for.body.i14.i365_crit_edge

vli_sub.exit.i353.for.body.i14.i365_crit_edge:    ; preds = %vli_sub.exit.i353
  br label %for.body.i14.i365

vli_sub.exit.i353.for.body.i371.preheader_crit_edge: ; preds = %vli_sub.exit.i353
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i371.preheader

for.body.i14.i365:                                ; preds = %for.body.i14.i365.for.body.i14.i365_crit_edge, %vli_sub.exit.i353.for.body.i14.i365_crit_edge
  %i.022.i6.i354 = phi i32 [ %inc.i12.i363, %for.body.i14.i365.for.body.i14.i365_crit_edge ], [ 0, %vli_sub.exit.i353.for.body.i14.i365_crit_edge ]
  %carry.021.i.i355 = phi i64 [ %carry.1.i.i362, %for.body.i14.i365.for.body.i14.i365_crit_edge ], [ 0, %vli_sub.exit.i353.for.body.i14.i365_crit_edge ]
  %arrayidx.i7.i356 = getelementptr i64, ptr %t4, i32 %i.022.i6.i354
  %147 = ptrtoint ptr %arrayidx.i7.i356 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %arrayidx.i7.i356, align 8
  %arrayidx1.i8.i357 = getelementptr i64, ptr %3, i32 %i.022.i6.i354
  %149 = ptrtoint ptr %arrayidx1.i8.i357 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx1.i8.i357, align 8
  %add.i.i358 = add i64 %148, %carry.021.i.i355
  %add2.i.i359 = add i64 %add.i.i358, %150
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i359, i64 %148)
  %cmp4.not.i9.i360 = icmp eq i64 %add2.i.i359, %148
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i359, i64 %148)
  %cmp6.i10.i361 = icmp ult i64 %add2.i.i359, %148
  %151 = zext i1 %cmp6.i10.i361 to i64
  %carry.1.i.i362 = select i1 %cmp4.not.i9.i360, i64 %carry.021.i.i355, i64 %151
  %152 = ptrtoint ptr %arrayidx.i7.i356 to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %add2.i.i359, ptr %arrayidx.i7.i356, align 8
  %inc.i12.i363 = add nuw nsw i32 %i.022.i6.i354, 1
  %exitcond.not.i13.i364 = icmp eq i32 %inc.i12.i363, %conv
  br i1 %exitcond.not.i13.i364, label %for.body.i14.i365.for.body.i371.preheader_crit_edge, label %for.body.i14.i365.for.body.i14.i365_crit_edge

for.body.i14.i365.for.body.i14.i365_crit_edge:    ; preds = %for.body.i14.i365
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i365

for.body.i14.i365.for.body.i371.preheader_crit_edge: ; preds = %for.body.i14.i365
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i371.preheader

for.body.i371.preheader:                          ; preds = %for.body.i14.i365.for.body.i371.preheader_crit_edge, %vli_sub.exit.i353.for.body.i371.preheader_crit_edge
  br label %for.body.i371

for.body.i371:                                    ; preds = %for.body.i371.for.body.i371_crit_edge, %for.body.i371.preheader
  %i.06.i = phi i32 [ %inc.i369, %for.body.i371.for.body.i371_crit_edge ], [ 0, %for.body.i371.preheader ]
  %arrayidx.i367 = getelementptr i64, ptr %z1, i32 %i.06.i
  %153 = ptrtoint ptr %arrayidx.i367 to i32
  call void @__asan_load8_noabort(i32 %153)
  %154 = load i64, ptr %arrayidx.i367, align 8
  %arrayidx1.i368 = getelementptr i64, ptr %x1, i32 %i.06.i
  %155 = ptrtoint ptr %arrayidx1.i368 to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %154, ptr %arrayidx1.i368, align 8
  %inc.i369 = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i370 = icmp eq i32 %inc.i369, %conv
  br i1 %exitcond.not.i370, label %for.body.i371.for.body.i378_crit_edge, label %for.body.i371.for.body.i371_crit_edge

for.body.i371.for.body.i371_crit_edge:            ; preds = %for.body.i371
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i371

for.body.i371.for.body.i378_crit_edge:            ; preds = %for.body.i371
  br label %for.body.i378

for.body.i378:                                    ; preds = %for.body.i378.for.body.i378_crit_edge, %for.body.i371.for.body.i378_crit_edge
  %i.06.i373 = phi i32 [ %inc.i376, %for.body.i378.for.body.i378_crit_edge ], [ 0, %for.body.i371.for.body.i378_crit_edge ]
  %arrayidx.i374 = getelementptr i64, ptr %y1, i32 %i.06.i373
  %156 = ptrtoint ptr %arrayidx.i374 to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx.i374, align 8
  %arrayidx1.i375 = getelementptr i64, ptr %z1, i32 %i.06.i373
  %158 = ptrtoint ptr %arrayidx1.i375 to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 %157, ptr %arrayidx1.i375, align 8
  %inc.i376 = add nuw nsw i32 %i.06.i373, 1
  %exitcond.not.i377 = icmp eq i32 %inc.i376, %conv
  br i1 %exitcond.not.i377, label %for.body.i386.preheader, label %for.body.i378.for.body.i378_crit_edge

for.body.i378.for.body.i378_crit_edge:            ; preds = %for.body.i378
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i378

for.body.i386.preheader:                          ; preds = %for.body.i378
  call void @__sanitizer_cov_trace_pc() #18
  %159 = shl nuw nsw i32 %conv, 3
  %160 = call ptr @memcpy(ptr %y1, ptr %t4, i32 %159)
  br label %cleanup

cleanup:                                          ; preds = %for.body.i386.preheader, %vli_is_zero.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %t5) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %t4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xycz_add(ptr noundef %x1, ptr noundef %y1, ptr noundef %x2, ptr noundef %y2, ptr nocapture noundef readonly %curve) unnamed_addr #1 align 64 {
entry:
  %t5 = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %t5) #16
  %0 = call ptr @memset(ptr %t5, i32 255, i32 64)
  %p = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 2
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %p, align 4
  %ndigits1 = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %ndigits1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ndigits1, align 4
  %conv = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp20.not.i.i = icmp eq i8 %4, 0
  br i1 %cmp20.not.i.i, label %vli_mod_sub.exit195.thread, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.022.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %borrow.021.i.i = phi i64 [ %borrow.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i64, ptr %x2, i32 %i.022.i.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx.i.i, align 8
  %arrayidx1.i.i = getelementptr i64, ptr %x1, i32 %i.022.i.i
  %7 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx1.i.i, align 8
  %9 = add i64 %8, %borrow.021.i.i
  %sub2.i.i = sub i64 %6, %9
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %cmp4.not.i.i = icmp eq i64 %9, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %6, i64 %9)
  %cmp6.i.i = icmp ult i64 %6, %9
  %10 = zext i1 %cmp6.i.i to i64
  %borrow.1.i.i = select i1 %cmp4.not.i.i, i64 %borrow.021.i.i, i64 %10
  %arrayidx8.i.i = getelementptr i64, ptr %t5, i32 %i.022.i.i
  %11 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %sub2.i.i, ptr %arrayidx8.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv
  br i1 %exitcond.not.i.i, label %vli_sub.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

vli_sub.exit.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i)
  %tobool.not.i = icmp eq i64 %borrow.1.i.i, 0
  br i1 %tobool.not.i, label %vli_sub.exit.i.for.body.i.i68.preheader_crit_edge, label %vli_sub.exit.i.for.body.i14.i_crit_edge

vli_sub.exit.i.for.body.i14.i_crit_edge:          ; preds = %vli_sub.exit.i
  br label %for.body.i14.i

vli_sub.exit.i.for.body.i.i68.preheader_crit_edge: ; preds = %vli_sub.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i68.preheader

for.body.i14.i:                                   ; preds = %for.body.i14.i.for.body.i14.i_crit_edge, %vli_sub.exit.i.for.body.i14.i_crit_edge
  %i.022.i6.i = phi i32 [ %inc.i12.i, %for.body.i14.i.for.body.i14.i_crit_edge ], [ 0, %vli_sub.exit.i.for.body.i14.i_crit_edge ]
  %carry.021.i.i = phi i64 [ %carry.1.i.i, %for.body.i14.i.for.body.i14.i_crit_edge ], [ 0, %vli_sub.exit.i.for.body.i14.i_crit_edge ]
  %arrayidx.i7.i = getelementptr i64, ptr %t5, i32 %i.022.i6.i
  %12 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i7.i, align 8
  %arrayidx1.i8.i = getelementptr i64, ptr %2, i32 %i.022.i6.i
  %14 = ptrtoint ptr %arrayidx1.i8.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx1.i8.i, align 8
  %add.i.i = add i64 %13, %carry.021.i.i
  %add2.i.i = add i64 %add.i.i, %15
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %13)
  %cmp4.not.i9.i = icmp eq i64 %add2.i.i, %13
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %13)
  %cmp6.i10.i = icmp ult i64 %add2.i.i, %13
  %16 = zext i1 %cmp6.i10.i to i64
  %carry.1.i.i = select i1 %cmp4.not.i9.i, i64 %carry.021.i.i, i64 %16
  %17 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %add2.i.i, ptr %arrayidx.i7.i, align 8
  %inc.i12.i = add nuw nsw i32 %i.022.i6.i, 1
  %exitcond.not.i13.i = icmp eq i32 %inc.i12.i, %conv
  br i1 %exitcond.not.i13.i, label %for.body.i14.i.for.body.i.i68.preheader_crit_edge, label %for.body.i14.i.for.body.i14.i_crit_edge

for.body.i14.i.for.body.i14.i_crit_edge:          ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i

for.body.i14.i.for.body.i.i68.preheader_crit_edge: ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i68.preheader

for.body.i.i68.preheader:                         ; preds = %for.body.i14.i.for.body.i.i68.preheader_crit_edge, %vli_sub.exit.i.for.body.i.i68.preheader_crit_edge
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t5, ptr noundef nonnull %t5, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef %x1, ptr noundef %x1, ptr noundef nonnull %t5, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef %x2, ptr noundef %x2, ptr noundef nonnull %t5, ptr noundef %curve)
  br label %for.body.i.i68

for.body.i.i68:                                   ; preds = %for.body.i.i68.for.body.i.i68_crit_edge, %for.body.i.i68.preheader
  %i.022.i.i57 = phi i32 [ %inc.i.i66, %for.body.i.i68.for.body.i.i68_crit_edge ], [ 0, %for.body.i.i68.preheader ]
  %borrow.021.i.i58 = phi i64 [ %borrow.1.i.i64, %for.body.i.i68.for.body.i.i68_crit_edge ], [ 0, %for.body.i.i68.preheader ]
  %arrayidx.i.i59 = getelementptr i64, ptr %y2, i32 %i.022.i.i57
  %18 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i.i59, align 8
  %arrayidx1.i.i60 = getelementptr i64, ptr %y1, i32 %i.022.i.i57
  %20 = ptrtoint ptr %arrayidx1.i.i60 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx1.i.i60, align 8
  %22 = add i64 %21, %borrow.021.i.i58
  %sub2.i.i61 = sub i64 %19, %22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp4.not.i.i62 = icmp eq i64 %22, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %19, i64 %22)
  %cmp6.i.i63 = icmp ult i64 %19, %22
  %23 = zext i1 %cmp6.i.i63 to i64
  %borrow.1.i.i64 = select i1 %cmp4.not.i.i62, i64 %borrow.021.i.i58, i64 %23
  %24 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %sub2.i.i61, ptr %arrayidx.i.i59, align 8
  %inc.i.i66 = add nuw nsw i32 %i.022.i.i57, 1
  %exitcond.not.i.i67 = icmp eq i32 %inc.i.i66, %conv
  br i1 %exitcond.not.i.i67, label %vli_sub.exit.i70, label %for.body.i.i68.for.body.i.i68_crit_edge

for.body.i.i68.for.body.i.i68_crit_edge:          ; preds = %for.body.i.i68
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i68

vli_sub.exit.i70:                                 ; preds = %for.body.i.i68
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i64)
  %tobool.not.i69 = icmp eq i64 %borrow.1.i.i64, 0
  br i1 %tobool.not.i69, label %vli_sub.exit.i70.for.body.i.i96.preheader_crit_edge, label %vli_sub.exit.i70.for.body.i14.i82_crit_edge

vli_sub.exit.i70.for.body.i14.i82_crit_edge:      ; preds = %vli_sub.exit.i70
  br label %for.body.i14.i82

vli_sub.exit.i70.for.body.i.i96.preheader_crit_edge: ; preds = %vli_sub.exit.i70
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i96.preheader

for.body.i14.i82:                                 ; preds = %for.body.i14.i82.for.body.i14.i82_crit_edge, %vli_sub.exit.i70.for.body.i14.i82_crit_edge
  %i.022.i6.i71 = phi i32 [ %inc.i12.i80, %for.body.i14.i82.for.body.i14.i82_crit_edge ], [ 0, %vli_sub.exit.i70.for.body.i14.i82_crit_edge ]
  %carry.021.i.i72 = phi i64 [ %carry.1.i.i79, %for.body.i14.i82.for.body.i14.i82_crit_edge ], [ 0, %vli_sub.exit.i70.for.body.i14.i82_crit_edge ]
  %arrayidx.i7.i73 = getelementptr i64, ptr %y2, i32 %i.022.i6.i71
  %25 = ptrtoint ptr %arrayidx.i7.i73 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i7.i73, align 8
  %arrayidx1.i8.i74 = getelementptr i64, ptr %2, i32 %i.022.i6.i71
  %27 = ptrtoint ptr %arrayidx1.i8.i74 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx1.i8.i74, align 8
  %add.i.i75 = add i64 %26, %carry.021.i.i72
  %add2.i.i76 = add i64 %add.i.i75, %28
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i76, i64 %26)
  %cmp4.not.i9.i77 = icmp eq i64 %add2.i.i76, %26
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i76, i64 %26)
  %cmp6.i10.i78 = icmp ult i64 %add2.i.i76, %26
  %29 = zext i1 %cmp6.i10.i78 to i64
  %carry.1.i.i79 = select i1 %cmp4.not.i9.i77, i64 %carry.021.i.i72, i64 %29
  %30 = ptrtoint ptr %arrayidx.i7.i73 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add2.i.i76, ptr %arrayidx.i7.i73, align 8
  %inc.i12.i80 = add nuw nsw i32 %i.022.i6.i71, 1
  %exitcond.not.i13.i81 = icmp eq i32 %inc.i12.i80, %conv
  br i1 %exitcond.not.i13.i81, label %for.body.i14.i82.for.body.i.i96.preheader_crit_edge, label %for.body.i14.i82.for.body.i14.i82_crit_edge

for.body.i14.i82.for.body.i14.i82_crit_edge:      ; preds = %for.body.i14.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i82

for.body.i14.i82.for.body.i.i96.preheader_crit_edge: ; preds = %for.body.i14.i82
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i96.preheader

for.body.i.i96.preheader:                         ; preds = %for.body.i14.i82.for.body.i.i96.preheader_crit_edge, %vli_sub.exit.i70.for.body.i.i96.preheader_crit_edge
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t5, ptr noundef %y2, ptr noundef %curve)
  br label %for.body.i.i96

for.body.i.i96:                                   ; preds = %for.body.i.i96.for.body.i.i96_crit_edge, %for.body.i.i96.preheader
  %i.022.i.i85 = phi i32 [ %inc.i.i94, %for.body.i.i96.for.body.i.i96_crit_edge ], [ 0, %for.body.i.i96.preheader ]
  %borrow.021.i.i86 = phi i64 [ %borrow.1.i.i92, %for.body.i.i96.for.body.i.i96_crit_edge ], [ 0, %for.body.i.i96.preheader ]
  %arrayidx.i.i87 = getelementptr i64, ptr %t5, i32 %i.022.i.i85
  %31 = ptrtoint ptr %arrayidx.i.i87 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i.i87, align 8
  %arrayidx1.i.i88 = getelementptr i64, ptr %x1, i32 %i.022.i.i85
  %33 = ptrtoint ptr %arrayidx1.i.i88 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx1.i.i88, align 8
  %35 = add i64 %34, %borrow.021.i.i86
  %sub2.i.i89 = sub i64 %32, %35
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %cmp4.not.i.i90 = icmp eq i64 %35, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %35)
  %cmp6.i.i91 = icmp ult i64 %32, %35
  %36 = zext i1 %cmp6.i.i91 to i64
  %borrow.1.i.i92 = select i1 %cmp4.not.i.i90, i64 %borrow.021.i.i86, i64 %36
  %37 = ptrtoint ptr %arrayidx.i.i87 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %sub2.i.i89, ptr %arrayidx.i.i87, align 8
  %inc.i.i94 = add nuw nsw i32 %i.022.i.i85, 1
  %exitcond.not.i.i95 = icmp eq i32 %inc.i.i94, %conv
  br i1 %exitcond.not.i.i95, label %vli_sub.exit.i98, label %for.body.i.i96.for.body.i.i96_crit_edge

for.body.i.i96.for.body.i.i96_crit_edge:          ; preds = %for.body.i.i96
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i96

vli_sub.exit.i98:                                 ; preds = %for.body.i.i96
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i92)
  %tobool.not.i97 = icmp eq i64 %borrow.1.i.i92, 0
  br i1 %tobool.not.i97, label %vli_sub.exit.i98.for.body.i.i124.preheader_crit_edge, label %vli_sub.exit.i98.for.body.i14.i110_crit_edge

vli_sub.exit.i98.for.body.i14.i110_crit_edge:     ; preds = %vli_sub.exit.i98
  br label %for.body.i14.i110

vli_sub.exit.i98.for.body.i.i124.preheader_crit_edge: ; preds = %vli_sub.exit.i98
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i124.preheader

for.body.i14.i110:                                ; preds = %for.body.i14.i110.for.body.i14.i110_crit_edge, %vli_sub.exit.i98.for.body.i14.i110_crit_edge
  %i.022.i6.i99 = phi i32 [ %inc.i12.i108, %for.body.i14.i110.for.body.i14.i110_crit_edge ], [ 0, %vli_sub.exit.i98.for.body.i14.i110_crit_edge ]
  %carry.021.i.i100 = phi i64 [ %carry.1.i.i107, %for.body.i14.i110.for.body.i14.i110_crit_edge ], [ 0, %vli_sub.exit.i98.for.body.i14.i110_crit_edge ]
  %arrayidx.i7.i101 = getelementptr i64, ptr %t5, i32 %i.022.i6.i99
  %38 = ptrtoint ptr %arrayidx.i7.i101 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx.i7.i101, align 8
  %arrayidx1.i8.i102 = getelementptr i64, ptr %2, i32 %i.022.i6.i99
  %40 = ptrtoint ptr %arrayidx1.i8.i102 to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %arrayidx1.i8.i102, align 8
  %add.i.i103 = add i64 %39, %carry.021.i.i100
  %add2.i.i104 = add i64 %add.i.i103, %41
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i104, i64 %39)
  %cmp4.not.i9.i105 = icmp eq i64 %add2.i.i104, %39
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i104, i64 %39)
  %cmp6.i10.i106 = icmp ult i64 %add2.i.i104, %39
  %42 = zext i1 %cmp6.i10.i106 to i64
  %carry.1.i.i107 = select i1 %cmp4.not.i9.i105, i64 %carry.021.i.i100, i64 %42
  %43 = ptrtoint ptr %arrayidx.i7.i101 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %add2.i.i104, ptr %arrayidx.i7.i101, align 8
  %inc.i12.i108 = add nuw nsw i32 %i.022.i6.i99, 1
  %exitcond.not.i13.i109 = icmp eq i32 %inc.i12.i108, %conv
  br i1 %exitcond.not.i13.i109, label %for.body.i14.i110.for.body.i.i124.preheader_crit_edge, label %for.body.i14.i110.for.body.i14.i110_crit_edge

for.body.i14.i110.for.body.i14.i110_crit_edge:    ; preds = %for.body.i14.i110
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i110

for.body.i14.i110.for.body.i.i124.preheader_crit_edge: ; preds = %for.body.i14.i110
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i124.preheader

for.body.i.i124.preheader:                        ; preds = %for.body.i14.i110.for.body.i.i124.preheader_crit_edge, %vli_sub.exit.i98.for.body.i.i124.preheader_crit_edge
  br label %for.body.i.i124

for.body.i.i124:                                  ; preds = %for.body.i.i124.for.body.i.i124_crit_edge, %for.body.i.i124.preheader
  %i.022.i.i113 = phi i32 [ %inc.i.i122, %for.body.i.i124.for.body.i.i124_crit_edge ], [ 0, %for.body.i.i124.preheader ]
  %borrow.021.i.i114 = phi i64 [ %borrow.1.i.i120, %for.body.i.i124.for.body.i.i124_crit_edge ], [ 0, %for.body.i.i124.preheader ]
  %arrayidx.i.i115 = getelementptr i64, ptr %t5, i32 %i.022.i.i113
  %44 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx.i.i115, align 8
  %arrayidx1.i.i116 = getelementptr i64, ptr %x2, i32 %i.022.i.i113
  %46 = ptrtoint ptr %arrayidx1.i.i116 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx1.i.i116, align 8
  %48 = add i64 %47, %borrow.021.i.i114
  %sub2.i.i117 = sub i64 %45, %48
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %48)
  %cmp4.not.i.i118 = icmp eq i64 %48, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %45, i64 %48)
  %cmp6.i.i119 = icmp ult i64 %45, %48
  %49 = zext i1 %cmp6.i.i119 to i64
  %borrow.1.i.i120 = select i1 %cmp4.not.i.i118, i64 %borrow.021.i.i114, i64 %49
  %50 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %sub2.i.i117, ptr %arrayidx.i.i115, align 8
  %inc.i.i122 = add nuw nsw i32 %i.022.i.i113, 1
  %exitcond.not.i.i123 = icmp eq i32 %inc.i.i122, %conv
  br i1 %exitcond.not.i.i123, label %vli_sub.exit.i126, label %for.body.i.i124.for.body.i.i124_crit_edge

for.body.i.i124.for.body.i.i124_crit_edge:        ; preds = %for.body.i.i124
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i124

vli_sub.exit.i126:                                ; preds = %for.body.i.i124
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i120)
  %tobool.not.i125 = icmp eq i64 %borrow.1.i.i120, 0
  br i1 %tobool.not.i125, label %vli_sub.exit.i126.for.body.i.i152.preheader_crit_edge, label %vli_sub.exit.i126.for.body.i14.i138_crit_edge

vli_sub.exit.i126.for.body.i14.i138_crit_edge:    ; preds = %vli_sub.exit.i126
  br label %for.body.i14.i138

vli_sub.exit.i126.for.body.i.i152.preheader_crit_edge: ; preds = %vli_sub.exit.i126
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i152.preheader

for.body.i14.i138:                                ; preds = %for.body.i14.i138.for.body.i14.i138_crit_edge, %vli_sub.exit.i126.for.body.i14.i138_crit_edge
  %i.022.i6.i127 = phi i32 [ %inc.i12.i136, %for.body.i14.i138.for.body.i14.i138_crit_edge ], [ 0, %vli_sub.exit.i126.for.body.i14.i138_crit_edge ]
  %carry.021.i.i128 = phi i64 [ %carry.1.i.i135, %for.body.i14.i138.for.body.i14.i138_crit_edge ], [ 0, %vli_sub.exit.i126.for.body.i14.i138_crit_edge ]
  %arrayidx.i7.i129 = getelementptr i64, ptr %t5, i32 %i.022.i6.i127
  %51 = ptrtoint ptr %arrayidx.i7.i129 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx.i7.i129, align 8
  %arrayidx1.i8.i130 = getelementptr i64, ptr %2, i32 %i.022.i6.i127
  %53 = ptrtoint ptr %arrayidx1.i8.i130 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx1.i8.i130, align 8
  %add.i.i131 = add i64 %52, %carry.021.i.i128
  %add2.i.i132 = add i64 %add.i.i131, %54
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i132, i64 %52)
  %cmp4.not.i9.i133 = icmp eq i64 %add2.i.i132, %52
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i132, i64 %52)
  %cmp6.i10.i134 = icmp ult i64 %add2.i.i132, %52
  %55 = zext i1 %cmp6.i10.i134 to i64
  %carry.1.i.i135 = select i1 %cmp4.not.i9.i133, i64 %carry.021.i.i128, i64 %55
  %56 = ptrtoint ptr %arrayidx.i7.i129 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add2.i.i132, ptr %arrayidx.i7.i129, align 8
  %inc.i12.i136 = add nuw nsw i32 %i.022.i6.i127, 1
  %exitcond.not.i13.i137 = icmp eq i32 %inc.i12.i136, %conv
  br i1 %exitcond.not.i13.i137, label %for.body.i14.i138.for.body.i.i152.preheader_crit_edge, label %for.body.i14.i138.for.body.i14.i138_crit_edge

for.body.i14.i138.for.body.i14.i138_crit_edge:    ; preds = %for.body.i14.i138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i138

for.body.i14.i138.for.body.i.i152.preheader_crit_edge: ; preds = %for.body.i14.i138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i152.preheader

for.body.i.i152.preheader:                        ; preds = %for.body.i14.i138.for.body.i.i152.preheader_crit_edge, %vli_sub.exit.i126.for.body.i.i152.preheader_crit_edge
  br label %for.body.i.i152

for.body.i.i152:                                  ; preds = %for.body.i.i152.for.body.i.i152_crit_edge, %for.body.i.i152.preheader
  %i.022.i.i141 = phi i32 [ %inc.i.i150, %for.body.i.i152.for.body.i.i152_crit_edge ], [ 0, %for.body.i.i152.preheader ]
  %borrow.021.i.i142 = phi i64 [ %borrow.1.i.i148, %for.body.i.i152.for.body.i.i152_crit_edge ], [ 0, %for.body.i.i152.preheader ]
  %arrayidx.i.i143 = getelementptr i64, ptr %x2, i32 %i.022.i.i141
  %57 = ptrtoint ptr %arrayidx.i.i143 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx.i.i143, align 8
  %arrayidx1.i.i144 = getelementptr i64, ptr %x1, i32 %i.022.i.i141
  %59 = ptrtoint ptr %arrayidx1.i.i144 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx1.i.i144, align 8
  %61 = add i64 %60, %borrow.021.i.i142
  %sub2.i.i145 = sub i64 %58, %61
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %cmp4.not.i.i146 = icmp eq i64 %61, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %58, i64 %61)
  %cmp6.i.i147 = icmp ult i64 %58, %61
  %62 = zext i1 %cmp6.i.i147 to i64
  %borrow.1.i.i148 = select i1 %cmp4.not.i.i146, i64 %borrow.021.i.i142, i64 %62
  %63 = ptrtoint ptr %arrayidx.i.i143 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %sub2.i.i145, ptr %arrayidx.i.i143, align 8
  %inc.i.i150 = add nuw nsw i32 %i.022.i.i141, 1
  %exitcond.not.i.i151 = icmp eq i32 %inc.i.i150, %conv
  br i1 %exitcond.not.i.i151, label %vli_sub.exit.i154, label %for.body.i.i152.for.body.i.i152_crit_edge

for.body.i.i152.for.body.i.i152_crit_edge:        ; preds = %for.body.i.i152
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i152

vli_sub.exit.i154:                                ; preds = %for.body.i.i152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i148)
  %tobool.not.i153 = icmp eq i64 %borrow.1.i.i148, 0
  br i1 %tobool.not.i153, label %vli_sub.exit.i154.for.body.i.i180.preheader_crit_edge, label %vli_sub.exit.i154.for.body.i14.i166_crit_edge

vli_sub.exit.i154.for.body.i14.i166_crit_edge:    ; preds = %vli_sub.exit.i154
  br label %for.body.i14.i166

vli_sub.exit.i154.for.body.i.i180.preheader_crit_edge: ; preds = %vli_sub.exit.i154
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i180.preheader

for.body.i14.i166:                                ; preds = %for.body.i14.i166.for.body.i14.i166_crit_edge, %vli_sub.exit.i154.for.body.i14.i166_crit_edge
  %i.022.i6.i155 = phi i32 [ %inc.i12.i164, %for.body.i14.i166.for.body.i14.i166_crit_edge ], [ 0, %vli_sub.exit.i154.for.body.i14.i166_crit_edge ]
  %carry.021.i.i156 = phi i64 [ %carry.1.i.i163, %for.body.i14.i166.for.body.i14.i166_crit_edge ], [ 0, %vli_sub.exit.i154.for.body.i14.i166_crit_edge ]
  %arrayidx.i7.i157 = getelementptr i64, ptr %x2, i32 %i.022.i6.i155
  %64 = ptrtoint ptr %arrayidx.i7.i157 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx.i7.i157, align 8
  %arrayidx1.i8.i158 = getelementptr i64, ptr %2, i32 %i.022.i6.i155
  %66 = ptrtoint ptr %arrayidx1.i8.i158 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx1.i8.i158, align 8
  %add.i.i159 = add i64 %65, %carry.021.i.i156
  %add2.i.i160 = add i64 %add.i.i159, %67
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i160, i64 %65)
  %cmp4.not.i9.i161 = icmp eq i64 %add2.i.i160, %65
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i160, i64 %65)
  %cmp6.i10.i162 = icmp ult i64 %add2.i.i160, %65
  %68 = zext i1 %cmp6.i10.i162 to i64
  %carry.1.i.i163 = select i1 %cmp4.not.i9.i161, i64 %carry.021.i.i156, i64 %68
  %69 = ptrtoint ptr %arrayidx.i7.i157 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %add2.i.i160, ptr %arrayidx.i7.i157, align 8
  %inc.i12.i164 = add nuw nsw i32 %i.022.i6.i155, 1
  %exitcond.not.i13.i165 = icmp eq i32 %inc.i12.i164, %conv
  br i1 %exitcond.not.i13.i165, label %for.body.i14.i166.for.body.i.i180.preheader_crit_edge, label %for.body.i14.i166.for.body.i14.i166_crit_edge

for.body.i14.i166.for.body.i14.i166_crit_edge:    ; preds = %for.body.i14.i166
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i166

for.body.i14.i166.for.body.i.i180.preheader_crit_edge: ; preds = %for.body.i14.i166
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i180.preheader

for.body.i.i180.preheader:                        ; preds = %for.body.i14.i166.for.body.i.i180.preheader_crit_edge, %vli_sub.exit.i154.for.body.i.i180.preheader_crit_edge
  call fastcc void @vli_mod_mult_fast(ptr noundef %y1, ptr noundef %y1, ptr noundef %x2, ptr noundef %curve)
  br label %for.body.i.i180

for.body.i.i180:                                  ; preds = %for.body.i.i180.for.body.i.i180_crit_edge, %for.body.i.i180.preheader
  %i.022.i.i169 = phi i32 [ %inc.i.i178, %for.body.i.i180.for.body.i.i180_crit_edge ], [ 0, %for.body.i.i180.preheader ]
  %borrow.021.i.i170 = phi i64 [ %borrow.1.i.i176, %for.body.i.i180.for.body.i.i180_crit_edge ], [ 0, %for.body.i.i180.preheader ]
  %arrayidx.i.i171 = getelementptr i64, ptr %x1, i32 %i.022.i.i169
  %70 = ptrtoint ptr %arrayidx.i.i171 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx.i.i171, align 8
  %arrayidx1.i.i172 = getelementptr i64, ptr %t5, i32 %i.022.i.i169
  %72 = ptrtoint ptr %arrayidx1.i.i172 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx1.i.i172, align 8
  %74 = add i64 %73, %borrow.021.i.i170
  %sub2.i.i173 = sub i64 %71, %74
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %74)
  %cmp4.not.i.i174 = icmp eq i64 %74, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %71, i64 %74)
  %cmp6.i.i175 = icmp ult i64 %71, %74
  %75 = zext i1 %cmp6.i.i175 to i64
  %borrow.1.i.i176 = select i1 %cmp4.not.i.i174, i64 %borrow.021.i.i170, i64 %75
  %arrayidx8.i.i177 = getelementptr i64, ptr %x2, i32 %i.022.i.i169
  %76 = ptrtoint ptr %arrayidx8.i.i177 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %sub2.i.i173, ptr %arrayidx8.i.i177, align 8
  %inc.i.i178 = add nuw nsw i32 %i.022.i.i169, 1
  %exitcond.not.i.i179 = icmp eq i32 %inc.i.i178, %conv
  br i1 %exitcond.not.i.i179, label %vli_sub.exit.i182, label %for.body.i.i180.for.body.i.i180_crit_edge

for.body.i.i180.for.body.i.i180_crit_edge:        ; preds = %for.body.i.i180
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i180

vli_sub.exit.i182:                                ; preds = %for.body.i.i180
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i176)
  %tobool.not.i181 = icmp eq i64 %borrow.1.i.i176, 0
  br i1 %tobool.not.i181, label %vli_sub.exit.i182.for.body.i.i208.preheader_crit_edge, label %vli_sub.exit.i182.for.body.i14.i194_crit_edge

vli_sub.exit.i182.for.body.i14.i194_crit_edge:    ; preds = %vli_sub.exit.i182
  br label %for.body.i14.i194

vli_sub.exit.i182.for.body.i.i208.preheader_crit_edge: ; preds = %vli_sub.exit.i182
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i208.preheader

for.body.i14.i194:                                ; preds = %for.body.i14.i194.for.body.i14.i194_crit_edge, %vli_sub.exit.i182.for.body.i14.i194_crit_edge
  %i.022.i6.i183 = phi i32 [ %inc.i12.i192, %for.body.i14.i194.for.body.i14.i194_crit_edge ], [ 0, %vli_sub.exit.i182.for.body.i14.i194_crit_edge ]
  %carry.021.i.i184 = phi i64 [ %carry.1.i.i191, %for.body.i14.i194.for.body.i14.i194_crit_edge ], [ 0, %vli_sub.exit.i182.for.body.i14.i194_crit_edge ]
  %arrayidx.i7.i185 = getelementptr i64, ptr %x2, i32 %i.022.i6.i183
  %77 = ptrtoint ptr %arrayidx.i7.i185 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx.i7.i185, align 8
  %arrayidx1.i8.i186 = getelementptr i64, ptr %2, i32 %i.022.i6.i183
  %79 = ptrtoint ptr %arrayidx1.i8.i186 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx1.i8.i186, align 8
  %add.i.i187 = add i64 %78, %carry.021.i.i184
  %add2.i.i188 = add i64 %add.i.i187, %80
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i188, i64 %78)
  %cmp4.not.i9.i189 = icmp eq i64 %add2.i.i188, %78
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i188, i64 %78)
  %cmp6.i10.i190 = icmp ult i64 %add2.i.i188, %78
  %81 = zext i1 %cmp6.i10.i190 to i64
  %carry.1.i.i191 = select i1 %cmp4.not.i9.i189, i64 %carry.021.i.i184, i64 %81
  %82 = ptrtoint ptr %arrayidx.i7.i185 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %add2.i.i188, ptr %arrayidx.i7.i185, align 8
  %inc.i12.i192 = add nuw nsw i32 %i.022.i6.i183, 1
  %exitcond.not.i13.i193 = icmp eq i32 %inc.i12.i192, %conv
  br i1 %exitcond.not.i13.i193, label %for.body.i14.i194.for.body.i.i208.preheader_crit_edge, label %for.body.i14.i194.for.body.i14.i194_crit_edge

for.body.i14.i194.for.body.i14.i194_crit_edge:    ; preds = %for.body.i14.i194
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i194

for.body.i14.i194.for.body.i.i208.preheader_crit_edge: ; preds = %for.body.i14.i194
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i208.preheader

vli_mod_sub.exit195.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t5, ptr noundef nonnull %t5, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef %x1, ptr noundef %x1, ptr noundef nonnull %t5, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef %x2, ptr noundef %x2, ptr noundef nonnull %t5, ptr noundef %curve)
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t5, ptr noundef %y2, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef %y1, ptr noundef %y1, ptr noundef %x2, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef %y2, ptr noundef %y2, ptr noundef %x2, ptr noundef %curve)
  br label %vli_set.exit

for.body.i.i208.preheader:                        ; preds = %for.body.i14.i194.for.body.i.i208.preheader_crit_edge, %vli_sub.exit.i182.for.body.i.i208.preheader_crit_edge
  call fastcc void @vli_mod_mult_fast(ptr noundef %y2, ptr noundef %y2, ptr noundef %x2, ptr noundef %curve)
  br label %for.body.i.i208

for.body.i.i208:                                  ; preds = %for.body.i.i208.for.body.i.i208_crit_edge, %for.body.i.i208.preheader
  %i.022.i.i197 = phi i32 [ %inc.i.i206, %for.body.i.i208.for.body.i.i208_crit_edge ], [ 0, %for.body.i.i208.preheader ]
  %borrow.021.i.i198 = phi i64 [ %borrow.1.i.i204, %for.body.i.i208.for.body.i.i208_crit_edge ], [ 0, %for.body.i.i208.preheader ]
  %arrayidx.i.i199 = getelementptr i64, ptr %y2, i32 %i.022.i.i197
  %83 = ptrtoint ptr %arrayidx.i.i199 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx.i.i199, align 8
  %arrayidx1.i.i200 = getelementptr i64, ptr %y1, i32 %i.022.i.i197
  %85 = ptrtoint ptr %arrayidx1.i.i200 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx1.i.i200, align 8
  %87 = add i64 %86, %borrow.021.i.i198
  %sub2.i.i201 = sub i64 %84, %87
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %87)
  %cmp4.not.i.i202 = icmp eq i64 %87, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %84, i64 %87)
  %cmp6.i.i203 = icmp ult i64 %84, %87
  %88 = zext i1 %cmp6.i.i203 to i64
  %borrow.1.i.i204 = select i1 %cmp4.not.i.i202, i64 %borrow.021.i.i198, i64 %88
  %89 = ptrtoint ptr %arrayidx.i.i199 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %sub2.i.i201, ptr %arrayidx.i.i199, align 8
  %inc.i.i206 = add nuw nsw i32 %i.022.i.i197, 1
  %exitcond.not.i.i207 = icmp eq i32 %inc.i.i206, %conv
  br i1 %exitcond.not.i.i207, label %vli_sub.exit.i210, label %for.body.i.i208.for.body.i.i208_crit_edge

for.body.i.i208.for.body.i.i208_crit_edge:        ; preds = %for.body.i.i208
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i208

vli_sub.exit.i210:                                ; preds = %for.body.i.i208
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i204)
  %tobool.not.i209 = icmp eq i64 %borrow.1.i.i204, 0
  br i1 %tobool.not.i209, label %vli_sub.exit.i210.for.body.i.preheader_crit_edge, label %vli_sub.exit.i210.for.body.i14.i222_crit_edge

vli_sub.exit.i210.for.body.i14.i222_crit_edge:    ; preds = %vli_sub.exit.i210
  br label %for.body.i14.i222

vli_sub.exit.i210.for.body.i.preheader_crit_edge: ; preds = %vli_sub.exit.i210
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.preheader

for.body.i14.i222:                                ; preds = %for.body.i14.i222.for.body.i14.i222_crit_edge, %vli_sub.exit.i210.for.body.i14.i222_crit_edge
  %i.022.i6.i211 = phi i32 [ %inc.i12.i220, %for.body.i14.i222.for.body.i14.i222_crit_edge ], [ 0, %vli_sub.exit.i210.for.body.i14.i222_crit_edge ]
  %carry.021.i.i212 = phi i64 [ %carry.1.i.i219, %for.body.i14.i222.for.body.i14.i222_crit_edge ], [ 0, %vli_sub.exit.i210.for.body.i14.i222_crit_edge ]
  %arrayidx.i7.i213 = getelementptr i64, ptr %y2, i32 %i.022.i6.i211
  %90 = ptrtoint ptr %arrayidx.i7.i213 to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %arrayidx.i7.i213, align 8
  %arrayidx1.i8.i214 = getelementptr i64, ptr %2, i32 %i.022.i6.i211
  %92 = ptrtoint ptr %arrayidx1.i8.i214 to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %arrayidx1.i8.i214, align 8
  %add.i.i215 = add i64 %91, %carry.021.i.i212
  %add2.i.i216 = add i64 %add.i.i215, %93
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i216, i64 %91)
  %cmp4.not.i9.i217 = icmp eq i64 %add2.i.i216, %91
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i216, i64 %91)
  %cmp6.i10.i218 = icmp ult i64 %add2.i.i216, %91
  %94 = zext i1 %cmp6.i10.i218 to i64
  %carry.1.i.i219 = select i1 %cmp4.not.i9.i217, i64 %carry.021.i.i212, i64 %94
  %95 = ptrtoint ptr %arrayidx.i7.i213 to i32
  call void @__asan_store8_noabort(i32 %95)
  store i64 %add2.i.i216, ptr %arrayidx.i7.i213, align 8
  %inc.i12.i220 = add nuw nsw i32 %i.022.i6.i211, 1
  %exitcond.not.i13.i221 = icmp eq i32 %inc.i12.i220, %conv
  br i1 %exitcond.not.i13.i221, label %for.body.i14.i222.for.body.i.preheader_crit_edge, label %for.body.i14.i222.for.body.i14.i222_crit_edge

for.body.i14.i222.for.body.i14.i222_crit_edge:    ; preds = %for.body.i14.i222
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i222

for.body.i14.i222.for.body.i.preheader_crit_edge: ; preds = %for.body.i14.i222
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body.i14.i222.for.body.i.preheader_crit_edge, %vli_sub.exit.i210.for.body.i.preheader_crit_edge
  %96 = shl nuw nsw i32 %conv, 3
  %97 = call ptr @memcpy(ptr %x2, ptr %t5, i32 %96)
  br label %vli_set.exit

vli_set.exit:                                     ; preds = %for.body.i.preheader, %vli_mod_sub.exit195.thread
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %t5) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vli_mod_mult_fast(ptr noundef %result, ptr nocapture noundef readonly %left, ptr nocapture noundef readonly %right, ptr nocapture noundef readonly %curve) unnamed_addr #1 align 64 {
entry:
  %product = alloca [16 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %product) #16
  %0 = call ptr @memset(ptr %product, i32 255, i32 128)
  %ndigits = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ndigits, align 4
  %conv = zext i8 %2 to i32
  %mul.i = shl nuw nsw i32 %conv, 1
  %sub.i = add nsw i32 %mul.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %entry
  %r01.sroa.0.064.i = phi i64 [ 0, %entry ], [ %r01.sroa.8.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %r01.sroa.8.063.i = phi i64 [ 0, %entry ], [ %r2.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %k.061.i = phi i32 [ 0, %entry ], [ %add.i, %for.end.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.061.i, i32 %conv)
  %cmp1.i = icmp ult i32 %k.061.i, %conv
  %add.i = add nuw i32 %k.061.i, 1
  %sub2.i = sub i32 %add.i, %conv
  %min.0.i = select i1 %cmp1.i, i32 0, i32 %sub2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %k.061.i, i32 %min.0.i)
  %cmp4.not52.i = icmp uge i32 %k.061.i, %min.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %min.0.i, i32 %conv)
  %cmp553.i = icmp ult i32 %min.0.i, %conv
  %or.cond54.i = and i1 %cmp4.not52.i, %cmp553.i
  br i1 %or.cond54.i, label %for.body.i.for.body6.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i.for.body6.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %for.body.i.for.body6.i_crit_edge
  %r01.sroa.0.158.i = phi i64 [ %add.i49.i, %for.body6.i.for.body6.i_crit_edge ], [ %r01.sroa.0.064.i, %for.body.i.for.body6.i_crit_edge ]
  %r01.sroa.8.157.i = phi i64 [ %add8.i51.i, %for.body6.i.for.body6.i_crit_edge ], [ %r01.sroa.8.063.i, %for.body.i.for.body6.i_crit_edge ]
  %i.056.i = phi i32 [ %inc.i, %for.body6.i.for.body6.i_crit_edge ], [ %min.0.i, %for.body.i.for.body6.i_crit_edge ]
  %r2.155.i = phi i64 [ %add13.i, %for.body6.i.for.body6.i_crit_edge ], [ 0, %for.body.i.for.body6.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %left, i32 %i.056.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx.i, align 8
  %sub7.i = sub i32 %k.061.i, %i.056.i
  %arrayidx8.i = getelementptr i64, ptr %right, i32 %sub7.i
  %5 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx8.i, align 8
  %and.i.i = and i64 %4, 4294967295
  %shr.i.i = lshr i64 %4, 32
  %and1.i.i = and i64 %6, 4294967295
  %shr2.i.i = lshr i64 %6, 32
  %mul.i.i = mul nuw i64 %and1.i.i, %and.i.i
  %mul3.i.i = mul nuw i64 %shr2.i.i, %and.i.i
  %mul4.i.i = mul nuw i64 %and1.i.i, %shr.i.i
  %mul5.i.i = mul nuw i64 %shr2.i.i, %shr.i.i
  %shr6.i.i = lshr i64 %mul.i.i, 32
  %add.i.i = add i64 %mul3.i.i, %mul4.i.i
  %add7.i.i = add i64 %add.i.i, %shr6.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add7.i.i, i64 %mul3.i.i)
  %cmp.i.i = icmp ult i64 %add7.i.i, %mul3.i.i
  %add8.i.i = add nuw i64 %mul5.i.i, 4294967296
  %spec.select.i.i = select i1 %cmp.i.i, i64 %add8.i.i, i64 %mul5.i.i
  %and9.i.i = and i64 %mul.i.i, 4294967295
  %shl.i.i = shl i64 %add7.i.i, 32
  %shr10.i.i = lshr i64 %add7.i.i, 32
  %add11.i.i = add i64 %spec.select.i.i, %shr10.i.i
  %or.i.i = add i64 %and9.i.i, %r01.sroa.0.158.i
  %add.i49.i = add i64 %or.i.i, %shl.i.i
  %add4.i.i = add i64 %add11.i.i, %r01.sroa.8.157.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i49.i, i64 %r01.sroa.0.158.i)
  %cmp.i50.i = icmp ult i64 %add.i49.i, %r01.sroa.0.158.i
  %7 = zext i1 %cmp.i50.i to i64
  %add8.i51.i = add i64 %add4.i.i, %7
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i51.i, i64 %add11.i.i)
  %cmp11.i = icmp ult i64 %add8.i51.i, %add11.i.i
  %8 = zext i1 %cmp11.i to i64
  %add13.i = add i64 %r2.155.i, %8
  %inc.i = add nuw nsw i32 %i.056.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %k.061.i, i32 %i.056.i)
  %cmp4.not.i = icmp ugt i32 %k.061.i, %i.056.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv)
  %cmp5.i = icmp ult i32 %inc.i, %conv
  %or.cond.i = and i1 %cmp4.not.i, %cmp5.i
  br i1 %or.cond.i, label %for.body6.i.for.body6.i_crit_edge, label %for.body6.i.for.end.i_crit_edge

for.body6.i.for.end.i_crit_edge:                  ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body6.i

for.end.i:                                        ; preds = %for.body6.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %r2.1.lcssa.i = phi i64 [ 0, %for.body.i.for.end.i_crit_edge ], [ %add13.i, %for.body6.i.for.end.i_crit_edge ]
  %r01.sroa.8.1.lcssa.i = phi i64 [ %r01.sroa.8.063.i, %for.body.i.for.end.i_crit_edge ], [ %add8.i51.i, %for.body6.i.for.end.i_crit_edge ]
  %r01.sroa.0.1.lcssa.i = phi i64 [ %r01.sroa.0.064.i, %for.body.i.for.end.i_crit_edge ], [ %add.i49.i, %for.body6.i.for.end.i_crit_edge ]
  %arrayidx14.i = getelementptr i64, ptr %product, i32 %k.061.i
  %9 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %r01.sroa.0.1.lcssa.i, ptr %arrayidx14.i, align 8
  %exitcond.not.i = icmp eq i32 %add.i, %sub.i
  br i1 %exitcond.not.i, label %vli_mult.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

vli_mult.exit:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx24.i = getelementptr i64, ptr %product, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %r01.sroa.8.1.lcssa.i, ptr %arrayidx24.i, align 8
  call fastcc void @vli_mmod_fast(ptr noundef %result, ptr noundef nonnull %product, ptr noundef %curve)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %product) #16
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecc_is_key_valid(i32 noundef %curve_id, i32 noundef %ndigits, ptr noundef readonly %private_key, i32 noundef %private_key_len) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %curve_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.ecc_get_curve.exit_crit_edge

entry.ecc_get_curve.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_get_curve.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ecc_is_key_valid, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %ecc_get_curve.exit

ecc_get_curve.exit:                               ; preds = %switch.lookup, %entry.ecc_get_curve.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %entry.ecc_get_curve.exit_crit_edge ]
  %shl = shl i32 %ndigits, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %private_key_len)
  %cmp.not = icmp eq i32 %shl, %private_key_len
  br i1 %cmp.not, label %if.end, label %ecc_get_curve.exit.cleanup_crit_edge

ecc_get_curve.exit.cleanup_crit_edge:             ; preds = %ecc_get_curve.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %ecc_get_curve.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call fastcc i32 @__ecc_is_key_valid(ptr noundef %retval.0.i, ptr noundef %private_key, i32 noundef %ndigits)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ecc_get_curve.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %ecc_get_curve.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ecc_is_key_valid(ptr nocapture noundef readonly %curve, ptr noundef readonly %private_key, i32 noundef %ndigits) unnamed_addr #10 align 64 {
entry:
  %one = alloca [8 x i64], align 8
  %res = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %one) #16
  %0 = getelementptr inbounds i8, ptr %one, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %one to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 1, ptr %one, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %res) #16
  %3 = call ptr @memset(ptr %res, i32 255, i32 64)
  %tobool.not = icmp eq ptr %private_key, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %ndigits1 = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %ndigits1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ndigits1, align 4
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %ndigits)
  %cmp.not = icmp eq i32 %conv, %ndigits
  br i1 %cmp.not, label %if.end.for.cond.i_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.for.cond.i_crit_edge:                      ; preds = %if.end
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.else.i.for.cond.i_crit_edge, %if.end.for.cond.i_crit_edge
  %i.0.in.i = phi i32 [ %i.0.i, %if.else.i.for.cond.i_crit_edge ], [ %ndigits, %if.end.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i)
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i64, ptr %one, i32 %i.0.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i, align 8
  %arrayidx1.i = getelementptr i64, ptr %private_key, i32 %i.0.i
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp2.i = icmp ugt i64 %7, %9
  br i1 %cmp2.i, label %for.body.i.cleanup_crit_edge, label %if.else.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i:                                        ; preds = %for.body.i
  %cmp5.i = icmp ult i64 %7, %9
  br i1 %cmp5.i, label %if.end8, label %if.else.i.for.cond.i_crit_edge

if.else.i.for.cond.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.end8:                                          ; preds = %if.else.i
  %n = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 3
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndigits)
  %cmp20.not.i = icmp eq i32 %ndigits, 0
  br i1 %cmp20.not.i, label %if.end8.for.cond.i51.preheader_crit_edge, label %if.end8.for.body.i32_crit_edge

if.end8.for.body.i32_crit_edge:                   ; preds = %if.end8
  br label %for.body.i32

if.end8.for.cond.i51.preheader_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i51.preheader

for.body.i32:                                     ; preds = %for.body.i32.for.body.i32_crit_edge, %if.end8.for.body.i32_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.body.i32.for.body.i32_crit_edge ], [ 0, %if.end8.for.body.i32_crit_edge ]
  %borrow.021.i = phi i64 [ %borrow.1.i, %for.body.i32.for.body.i32_crit_edge ], [ 0, %if.end8.for.body.i32_crit_edge ]
  %arrayidx.i30 = getelementptr i64, ptr %11, i32 %i.022.i
  %12 = ptrtoint ptr %arrayidx.i30 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i30, align 8
  %arrayidx1.i31 = getelementptr i64, ptr %one, i32 %i.022.i
  %14 = ptrtoint ptr %arrayidx1.i31 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx1.i31, align 8
  %16 = add i64 %15, %borrow.021.i
  %sub2.i = sub i64 %13, %16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %cmp4.not.i = icmp eq i64 %16, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %16)
  %cmp6.i = icmp ult i64 %13, %16
  %17 = zext i1 %cmp6.i to i64
  %borrow.1.i = select i1 %cmp4.not.i, i64 %borrow.021.i, i64 %17
  %arrayidx8.i = getelementptr i64, ptr %res, i32 %i.022.i
  %18 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %sub2.i, ptr %arrayidx8.i, align 8
  %inc.i = add nuw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %ndigits
  br i1 %exitcond.not.i, label %for.body.i32.for.body.i45_crit_edge, label %for.body.i32.for.body.i32_crit_edge

for.body.i32.for.body.i32_crit_edge:              ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i32

for.body.i32.for.body.i45_crit_edge:              ; preds = %for.body.i32
  br label %for.body.i45

for.body.i45:                                     ; preds = %for.body.i45.for.body.i45_crit_edge, %for.body.i32.for.body.i45_crit_edge
  %i.022.i34 = phi i32 [ %inc.i43, %for.body.i45.for.body.i45_crit_edge ], [ 0, %for.body.i32.for.body.i45_crit_edge ]
  %borrow.021.i35 = phi i64 [ %borrow.1.i41, %for.body.i45.for.body.i45_crit_edge ], [ 0, %for.body.i32.for.body.i45_crit_edge ]
  %arrayidx.i36 = getelementptr i64, ptr %res, i32 %i.022.i34
  %19 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx.i36, align 8
  %arrayidx1.i37 = getelementptr i64, ptr %one, i32 %i.022.i34
  %21 = ptrtoint ptr %arrayidx1.i37 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx1.i37, align 8
  %23 = add i64 %22, %borrow.021.i35
  %sub2.i38 = sub i64 %20, %23
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %23)
  %cmp4.not.i39 = icmp eq i64 %23, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %23)
  %cmp6.i40 = icmp ult i64 %20, %23
  %24 = zext i1 %cmp6.i40 to i64
  %borrow.1.i41 = select i1 %cmp4.not.i39, i64 %borrow.021.i35, i64 %24
  %25 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %sub2.i38, ptr %arrayidx.i36, align 8
  %inc.i43 = add nuw i32 %i.022.i34, 1
  %exitcond.not.i44 = icmp eq i32 %inc.i43, %ndigits
  br i1 %exitcond.not.i44, label %for.body.i45.for.cond.i51.preheader_crit_edge, label %for.body.i45.for.body.i45_crit_edge

for.body.i45.for.body.i45_crit_edge:              ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i45

for.body.i45.for.cond.i51.preheader_crit_edge:    ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i51.preheader

for.cond.i51.preheader:                           ; preds = %for.body.i45.for.cond.i51.preheader_crit_edge, %if.end8.for.cond.i51.preheader_crit_edge
  br label %for.cond.i51

for.cond.i51:                                     ; preds = %if.else.i57.for.cond.i51_crit_edge, %for.cond.i51.preheader
  %i.0.in.i48 = phi i32 [ %i.0.i49, %if.else.i57.for.cond.i51_crit_edge ], [ %ndigits, %for.cond.i51.preheader ]
  %i.0.i49 = add i32 %i.0.in.i48, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i49)
  %cmp.i50 = icmp sgt i32 %i.0.i49, -1
  br i1 %cmp.i50, label %for.body.i55, label %for.cond.i51.cleanup_crit_edge

for.cond.i51.cleanup_crit_edge:                   ; preds = %for.cond.i51
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i55:                                     ; preds = %for.cond.i51
  %arrayidx.i52 = getelementptr i64, ptr %res, i32 %i.0.i49
  %26 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i52, align 8
  %arrayidx1.i53 = getelementptr i64, ptr %private_key, i32 %i.0.i49
  %28 = ptrtoint ptr %arrayidx1.i53 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx1.i53, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp2.i54 = icmp ugt i64 %27, %29
  br i1 %cmp2.i54, label %for.body.i55.cleanup_crit_edge, label %if.else.i57

for.body.i55.cleanup_crit_edge:                   ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i57:                                      ; preds = %for.body.i55
  %cmp5.i56 = icmp ult i64 %27, %29
  br i1 %cmp5.i56, label %if.else.i57.cleanup_crit_edge, label %if.else.i57.for.cond.i51_crit_edge

if.else.i57.for.cond.i51_crit_edge:               ; preds = %if.else.i57
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i51

if.else.i57.cleanup_crit_edge:                    ; preds = %if.else.i57
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %if.else.i57.cleanup_crit_edge, %for.body.i55.cleanup_crit_edge, %for.cond.i51.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.cond.i51.cleanup_crit_edge ], [ -22, %if.else.i57.cleanup_crit_edge ], [ 0, %for.body.i55.cleanup_crit_edge ], [ -22, %for.body.i.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %res) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %one) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecc_gen_privkey(i32 noundef %curve_id, i32 noundef %ndigits, ptr nocapture noundef writeonly %privkey) #1 align 64 {
entry:
  %priv = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %curve_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.ecc_get_curve.exit_crit_edge

entry.ecc_get_curve.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_get_curve.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ecc_gen_privkey, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %ecc_get_curve.exit

ecc_get_curve.exit:                               ; preds = %switch.lookup, %entry.ecc_get_curve.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ null, %entry.ecc_get_curve.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %priv) #16
  %2 = call ptr @memset(ptr %priv, i32 255, i32 64)
  %shl = shl i32 %ndigits, 3
  %n = getelementptr inbounds %struct.ecc_curve, ptr %retval.0.i, i32 0, i32 3
  %3 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %n, align 4
  %5 = add i32 %ndigits, -1
  %smin.i.i = tail call i32 @llvm.smin.i32(i32 %5, i32 -1) #16
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.rhs.i.i.for.cond.i.i_crit_edge, %ecc_get_curve.exit
  %i.0.in.i.i = phi i32 [ %ndigits, %ecc_get_curve.exit ], [ %i.0.i.i, %land.rhs.i.i.for.cond.i.i_crit_edge ]
  %i.0.i.i = add i32 %i.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i.i)
  %cmp.i.i = icmp sgt i32 %i.0.i.i, -1
  br i1 %cmp.i.i, label %land.rhs.i.i, label %vli_num_digits.exit.i

land.rhs.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr i64, ptr %4, i32 %i.0.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i.i, align 8
  %cmp1.i.i = icmp eq i64 %7, 0
  br i1 %cmp1.i.i, label %land.rhs.i.i.for.cond.i.i_crit_edge, label %land.rhs.i.i.if.end.i_crit_edge

land.rhs.i.i.if.end.i_crit_edge:                  ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

land.rhs.i.i.for.cond.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

vli_num_digits.exit.i:                            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483647, i32 %ndigits)
  %cmp.i = icmp ult i32 %ndigits, -2147483647
  br i1 %cmp.i, label %vli_num_digits.exit.i.cleanup_crit_edge, label %vli_num_digits.exit.i.if.end.i_crit_edge

vli_num_digits.exit.i.if.end.i_crit_edge:         ; preds = %vli_num_digits.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

vli_num_digits.exit.i.cleanup_crit_edge:          ; preds = %vli_num_digits.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i:                                         ; preds = %vli_num_digits.exit.i.if.end.i_crit_edge, %land.rhs.i.i.if.end.i_crit_edge
  %sub.pre-phi.i = phi i32 [ %smin.i.i, %vli_num_digits.exit.i.if.end.i_crit_edge ], [ %i.0.i.i, %land.rhs.i.i.if.end.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %4, i32 %sub.pre-phi.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool.not13.i = icmp eq i64 %9, 0
  br i1 %tobool.not13.i, label %if.end.i.vli_num_bits.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.vli_num_bits.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_num_bits.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %digit.015.i = phi i64 [ %shr.i, %for.body.i.for.body.i_crit_edge ], [ %9, %if.end.i.for.body.i_crit_edge ]
  %i.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %shr.i = lshr i64 %digit.015.i, 1
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %tobool.not.i = icmp ult i64 %digit.015.i, 2
  br i1 %tobool.not.i, label %for.body.i.vli_num_bits.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i.vli_num_bits.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_num_bits.exit

vli_num_bits.exit:                                ; preds = %for.body.i.vli_num_bits.exit_crit_edge, %if.end.i.vli_num_bits.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.i.vli_num_bits.exit_crit_edge ], [ %inc.i, %for.body.i.vli_num_bits.exit_crit_edge ]
  %mul.i = shl i32 %sub.pre-phi.i, 6
  %add.i = add i32 %i.0.lcssa.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %add.i)
  %cmp = icmp ult i32 %add.i, 160
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ndigits)
  %cmp2 = icmp ugt i32 %ndigits, 8
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %vli_num_bits.exit.cleanup_crit_edge, label %if.end

vli_num_bits.exit.cleanup_crit_edge:              ; preds = %vli_num_bits.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %vli_num_bits.exit
  %call3 = tail call i32 @crypto_get_default_rng() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crypto_default_rng to i32))
  %10 = load ptr, ptr @crypto_default_rng, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i, align 4
  tail call void @crypto_stats_get(ptr noundef %12) #16
  %13 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 -128
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call1.i.i = call i32 %16(ptr noundef %10, ptr noundef null, i32 noundef 0, ptr noundef nonnull %priv, i32 noundef %shl) #16
  call void @crypto_stats_rng_generate(ptr noundef %12, i32 noundef %shl, i32 noundef %call1.i.i) #16
  call void @crypto_put_default_rng() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool7.not = icmp eq i32 %call1.i.i, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call11 = call fastcc i32 @__ecc_is_key_valid(ptr noundef %retval.0.i, ptr noundef nonnull %priv, i32 noundef %ndigits)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndigits)
  %cmp7.not.i = icmp eq i32 %ndigits, 0
  br i1 %cmp7.not.i, label %if.end14.cleanup_crit_edge, label %for.body.i29

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i29:                                     ; preds = %if.end14
  %sub1.i = add i32 %ndigits, -1
  %arrayidx.i27 = getelementptr i64, ptr %priv, i32 %sub1.i
  %17 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i27, align 8
  %19 = ptrtoint ptr %privkey to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %privkey, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ndigits)
  %exitcond.not.i = icmp eq i32 %ndigits, 1
  br i1 %exitcond.not.i, label %for.body.i29.cleanup_crit_edge, label %for.body.i29.1

for.body.i29.cleanup_crit_edge:                   ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i29.1:                                   ; preds = %for.body.i29
  %sub1.i.1 = add i32 %ndigits, -2
  %arrayidx.i27.1 = getelementptr i64, ptr %priv, i32 %sub1.i.1
  %20 = ptrtoint ptr %arrayidx.i27.1 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i27.1, align 8
  %arrayidx2.i.1 = getelementptr i64, ptr %privkey, i32 1
  %22 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %arrayidx2.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ndigits)
  %exitcond.not.i.1 = icmp eq i32 %ndigits, 2
  br i1 %exitcond.not.i.1, label %for.body.i29.1.cleanup_crit_edge, label %for.body.i29.2

for.body.i29.1.cleanup_crit_edge:                 ; preds = %for.body.i29.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i29.2:                                   ; preds = %for.body.i29.1
  %sub1.i.2 = add i32 %ndigits, -3
  %arrayidx.i27.2 = getelementptr i64, ptr %priv, i32 %sub1.i.2
  %23 = ptrtoint ptr %arrayidx.i27.2 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx.i27.2, align 8
  %arrayidx2.i.2 = getelementptr i64, ptr %privkey, i32 2
  %25 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %arrayidx2.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ndigits)
  %exitcond.not.i.2 = icmp eq i32 %ndigits, 3
  br i1 %exitcond.not.i.2, label %for.body.i29.2.cleanup_crit_edge, label %for.body.i29.3

for.body.i29.2.cleanup_crit_edge:                 ; preds = %for.body.i29.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i29.3:                                   ; preds = %for.body.i29.2
  %sub1.i.3 = add i32 %ndigits, -4
  %arrayidx.i27.3 = getelementptr i64, ptr %priv, i32 %sub1.i.3
  %26 = ptrtoint ptr %arrayidx.i27.3 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i27.3, align 8
  %arrayidx2.i.3 = getelementptr i64, ptr %privkey, i32 3
  %28 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %arrayidx2.i.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ndigits)
  %exitcond.not.i.3 = icmp eq i32 %ndigits, 4
  br i1 %exitcond.not.i.3, label %for.body.i29.3.cleanup_crit_edge, label %for.body.i29.4

for.body.i29.3.cleanup_crit_edge:                 ; preds = %for.body.i29.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i29.4:                                   ; preds = %for.body.i29.3
  %sub1.i.4 = add i32 %ndigits, -5
  %arrayidx.i27.4 = getelementptr i64, ptr %priv, i32 %sub1.i.4
  %29 = ptrtoint ptr %arrayidx.i27.4 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.i27.4, align 8
  %arrayidx2.i.4 = getelementptr i64, ptr %privkey, i32 4
  %31 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx2.i.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ndigits)
  %exitcond.not.i.4 = icmp eq i32 %ndigits, 5
  br i1 %exitcond.not.i.4, label %for.body.i29.4.cleanup_crit_edge, label %for.body.i29.5

for.body.i29.4.cleanup_crit_edge:                 ; preds = %for.body.i29.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i29.5:                                   ; preds = %for.body.i29.4
  %sub1.i.5 = add i32 %ndigits, -6
  %arrayidx.i27.5 = getelementptr i64, ptr %priv, i32 %sub1.i.5
  %32 = ptrtoint ptr %arrayidx.i27.5 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx.i27.5, align 8
  %arrayidx2.i.5 = getelementptr i64, ptr %privkey, i32 5
  %34 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %arrayidx2.i.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %ndigits)
  %exitcond.not.i.5 = icmp eq i32 %ndigits, 6
  br i1 %exitcond.not.i.5, label %for.body.i29.5.cleanup_crit_edge, label %for.body.i29.6

for.body.i29.5.cleanup_crit_edge:                 ; preds = %for.body.i29.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i29.6:                                   ; preds = %for.body.i29.5
  %sub1.i.6 = add i32 %ndigits, -7
  %arrayidx.i27.6 = getelementptr i64, ptr %priv, i32 %sub1.i.6
  %35 = ptrtoint ptr %arrayidx.i27.6 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx.i27.6, align 8
  %arrayidx2.i.6 = getelementptr i64, ptr %privkey, i32 6
  %37 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx2.i.6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ndigits)
  %exitcond.not.i.6 = icmp eq i32 %ndigits, 7
  br i1 %exitcond.not.i.6, label %for.body.i29.6.cleanup_crit_edge, label %for.body.i29.7

for.body.i29.6.cleanup_crit_edge:                 ; preds = %for.body.i29.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i29.7:                                   ; preds = %for.body.i29.6
  call void @__sanitizer_cov_trace_pc() #18
  %sub1.i.7 = add i32 %ndigits, -8
  %arrayidx.i27.7 = getelementptr i64, ptr %priv, i32 %sub1.i.7
  %38 = ptrtoint ptr %arrayidx.i27.7 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %arrayidx.i27.7, align 8
  %arrayidx2.i.7 = getelementptr i64, ptr %privkey, i32 7
  %40 = ptrtoint ptr %arrayidx2.i.7 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %arrayidx2.i.7, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.body.i29.7, %for.body.i29.6.cleanup_crit_edge, %for.body.i29.5.cleanup_crit_edge, %for.body.i29.4.cleanup_crit_edge, %for.body.i29.3.cleanup_crit_edge, %for.body.i29.2.cleanup_crit_edge, %for.body.i29.1.cleanup_crit_edge, %for.body.i29.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %vli_num_bits.exit.cleanup_crit_edge, %vli_num_digits.exit.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vli_num_bits.exit.cleanup_crit_edge ], [ -14, %if.end.cleanup_crit_edge ], [ %call1.i.i, %if.end5.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ -22, %vli_num_digits.exit.i.cleanup_crit_edge ], [ 0, %for.body.i29.7 ], [ 0, %for.body.i29.6.cleanup_crit_edge ], [ 0, %for.body.i29.5.cleanup_crit_edge ], [ 0, %for.body.i29.4.cleanup_crit_edge ], [ 0, %for.body.i29.3.cleanup_crit_edge ], [ 0, %for.body.i29.2.cleanup_crit_edge ], [ 0, %for.body.i29.1.cleanup_crit_edge ], [ 0, %for.body.i29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %priv) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_get_default_rng() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_put_default_rng() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecc_make_pub_key(i32 noundef %curve_id, i32 noundef %ndigits, ptr noundef readonly %private_key, ptr nocapture noundef writeonly %public_key) #1 align 64 {
entry:
  %priv = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %priv) #16
  %0 = call ptr @memset(ptr %priv, i32 255, i32 64)
  %switch.tableidx = add i32 %curve_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 3
  br i1 %1, label %switch.lookup, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.ecc_make_pub_key, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %tobool.not = icmp eq ptr %private_key, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ndigits)
  %cmp = icmp ugt i32 %ndigits, 8
  %or.cond28 = or i1 %cmp, %tobool.not
  br i1 %or.cond28, label %switch.lookup.out_crit_edge, label %if.end

switch.lookup.out_crit_edge:                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndigits)
  %cmp7.not.i = icmp eq i32 %ndigits, 0
  br i1 %cmp7.not.i, label %if.end.ecc_swap_digits.exit_crit_edge, label %for.body.i

if.end.ecc_swap_digits.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_swap_digits.exit

for.body.i:                                       ; preds = %if.end
  %sub1.i = add i32 %ndigits, -1
  %arrayidx.i = getelementptr i64, ptr %private_key, i32 %sub1.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %arrayidx.i, align 1
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ndigits)
  %exitcond.not.i = icmp eq i32 %ndigits, 1
  br i1 %exitcond.not.i, label %for.body.i.ecc_swap_digits.exit_crit_edge, label %for.body.i.1

for.body.i.ecc_swap_digits.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_swap_digits.exit

for.body.i.1:                                     ; preds = %for.body.i
  %sub1.i.1 = add i32 %ndigits, -2
  %arrayidx.i.1 = getelementptr i64, ptr %private_key, i32 %sub1.i.1
  %6 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %arrayidx.i.1, align 1
  %arrayidx2.i.1 = getelementptr inbounds i64, ptr %priv, i32 1
  %8 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %arrayidx2.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ndigits)
  %exitcond.not.i.1 = icmp eq i32 %ndigits, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.ecc_swap_digits.exit_crit_edge, label %for.body.i.2

for.body.i.1.ecc_swap_digits.exit_crit_edge:      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_swap_digits.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %sub1.i.2 = add i32 %ndigits, -3
  %arrayidx.i.2 = getelementptr i64, ptr %private_key, i32 %sub1.i.2
  %9 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %arrayidx.i.2, align 1
  %arrayidx2.i.2 = getelementptr inbounds i64, ptr %priv, i32 2
  %11 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx2.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ndigits)
  %exitcond.not.i.2 = icmp eq i32 %ndigits, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.ecc_swap_digits.exit_crit_edge, label %for.body.i.3

for.body.i.2.ecc_swap_digits.exit_crit_edge:      ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_swap_digits.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %sub1.i.3 = add i32 %ndigits, -4
  %arrayidx.i.3 = getelementptr i64, ptr %private_key, i32 %sub1.i.3
  %12 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %arrayidx.i.3, align 1
  %arrayidx2.i.3 = getelementptr inbounds i64, ptr %priv, i32 3
  %14 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx2.i.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ndigits)
  %exitcond.not.i.3 = icmp eq i32 %ndigits, 4
  br i1 %exitcond.not.i.3, label %for.body.i.3.ecc_swap_digits.exit_crit_edge, label %for.body.i.4

for.body.i.3.ecc_swap_digits.exit_crit_edge:      ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_swap_digits.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %sub1.i.4 = add i32 %ndigits, -5
  %arrayidx.i.4 = getelementptr i64, ptr %private_key, i32 %sub1.i.4
  %15 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %arrayidx.i.4, align 1
  %arrayidx2.i.4 = getelementptr inbounds i64, ptr %priv, i32 4
  %17 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx2.i.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ndigits)
  %exitcond.not.i.4 = icmp eq i32 %ndigits, 5
  br i1 %exitcond.not.i.4, label %for.body.i.4.ecc_swap_digits.exit_crit_edge, label %for.body.i.5

for.body.i.4.ecc_swap_digits.exit_crit_edge:      ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_swap_digits.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  %sub1.i.5 = add i32 %ndigits, -6
  %arrayidx.i.5 = getelementptr i64, ptr %private_key, i32 %sub1.i.5
  %18 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %arrayidx.i.5, align 1
  %arrayidx2.i.5 = getelementptr inbounds i64, ptr %priv, i32 5
  %20 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx2.i.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %ndigits)
  %exitcond.not.i.5 = icmp eq i32 %ndigits, 6
  br i1 %exitcond.not.i.5, label %for.body.i.5.ecc_swap_digits.exit_crit_edge, label %for.body.i.6

for.body.i.5.ecc_swap_digits.exit_crit_edge:      ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_swap_digits.exit

for.body.i.6:                                     ; preds = %for.body.i.5
  %sub1.i.6 = add i32 %ndigits, -7
  %arrayidx.i.6 = getelementptr i64, ptr %private_key, i32 %sub1.i.6
  %21 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %arrayidx.i.6, align 1
  %arrayidx2.i.6 = getelementptr inbounds i64, ptr %priv, i32 6
  %23 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx2.i.6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ndigits)
  %exitcond.not.i.6 = icmp eq i32 %ndigits, 7
  br i1 %exitcond.not.i.6, label %for.body.i.6.ecc_swap_digits.exit_crit_edge, label %for.body.i.7

for.body.i.6.ecc_swap_digits.exit_crit_edge:      ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_swap_digits.exit

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #18
  %sub1.i.7 = add i32 %ndigits, -8
  %arrayidx.i.7 = getelementptr i64, ptr %private_key, i32 %sub1.i.7
  %24 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %arrayidx.i.7, align 1
  %arrayidx2.i.7 = getelementptr inbounds i64, ptr %priv, i32 7
  %26 = ptrtoint ptr %arrayidx2.i.7 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx2.i.7, align 8
  br label %ecc_swap_digits.exit

ecc_swap_digits.exit:                             ; preds = %for.body.i.7, %for.body.i.6.ecc_swap_digits.exit_crit_edge, %for.body.i.5.ecc_swap_digits.exit_crit_edge, %for.body.i.4.ecc_swap_digits.exit_crit_edge, %for.body.i.3.ecc_swap_digits.exit_crit_edge, %for.body.i.2.ecc_swap_digits.exit_crit_edge, %for.body.i.1.ecc_swap_digits.exit_crit_edge, %for.body.i.ecc_swap_digits.exit_crit_edge, %if.end.ecc_swap_digits.exit_crit_edge
  %call3 = tail call ptr @ecc_alloc_point(i32 noundef %ndigits)
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %ecc_swap_digits.exit.out_crit_edge, label %if.end6

ecc_swap_digits.exit.out_crit_edge:               ; preds = %ecc_swap_digits.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end6:                                          ; preds = %ecc_swap_digits.exit
  %g = getelementptr inbounds %struct.ecc_curve, ptr %switch.load, i32 0, i32 1
  call fastcc void @ecc_point_mult(ptr noundef nonnull %call3, ptr noundef %g, ptr noundef nonnull %priv, ptr noundef null, ptr noundef nonnull %switch.load, i32 noundef %ndigits)
  %call8 = tail call i32 @ecc_is_pubkey_valid_full(ptr noundef nonnull %switch.load, ptr noundef nonnull %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.ecc_free_point.exit_crit_edge

if.end6.ecc_free_point.exit_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit

if.end11:                                         ; preds = %if.end6
  %27 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call3, align 4
  br i1 %cmp7.not.i, label %if.end11.ecc_free_point.exit_crit_edge, label %if.end11.for.body.i36_crit_edge

if.end11.for.body.i36_crit_edge:                  ; preds = %if.end11
  br label %for.body.i36

if.end11.ecc_free_point.exit_crit_edge:           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit

for.body.i36:                                     ; preds = %for.body.i36.for.body.i36_crit_edge, %if.end11.for.body.i36_crit_edge
  %i.08.i30 = phi i32 [ %inc.i34, %for.body.i36.for.body.i36_crit_edge ], [ 0, %if.end11.for.body.i36_crit_edge ]
  %29 = xor i32 %i.08.i30, -1
  %sub1.i31 = add i32 %29, %ndigits
  %arrayidx.i32 = getelementptr i64, ptr %28, i32 %sub1.i31
  %30 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %31 = load i64, ptr %arrayidx.i32, align 1
  %arrayidx2.i33 = getelementptr i64, ptr %public_key, i32 %i.08.i30
  %32 = ptrtoint ptr %arrayidx2.i33 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %arrayidx2.i33, align 8
  %inc.i34 = add nuw i32 %i.08.i30, 1
  %exitcond.not.i35 = icmp eq i32 %inc.i34, %ndigits
  br i1 %exitcond.not.i35, label %for.body.i45.preheader, label %for.body.i36.for.body.i36_crit_edge

for.body.i36.for.body.i36_crit_edge:              ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i36

for.body.i45.preheader:                           ; preds = %for.body.i36
  %y = getelementptr inbounds %struct.ecc_point, ptr %call3, i32 0, i32 1
  %33 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %y, align 4
  %arrayidx = getelementptr i64, ptr %public_key, i32 %ndigits
  br label %for.body.i45

for.body.i45:                                     ; preds = %for.body.i45.for.body.i45_crit_edge, %for.body.i45.preheader
  %i.08.i39 = phi i32 [ %inc.i43, %for.body.i45.for.body.i45_crit_edge ], [ 0, %for.body.i45.preheader ]
  %35 = xor i32 %i.08.i39, -1
  %sub1.i40 = add i32 %35, %ndigits
  %arrayidx.i41 = getelementptr i64, ptr %34, i32 %sub1.i40
  %36 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %37 = load i64, ptr %arrayidx.i41, align 1
  %arrayidx2.i42 = getelementptr i64, ptr %arrayidx, i32 %i.08.i39
  %38 = ptrtoint ptr %arrayidx2.i42 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %arrayidx2.i42, align 8
  %inc.i43 = add nuw i32 %i.08.i39, 1
  %exitcond.not.i44 = icmp eq i32 %inc.i43, %ndigits
  br i1 %exitcond.not.i44, label %for.body.i45.ecc_free_point.exit_crit_edge, label %for.body.i45.for.body.i45_crit_edge

for.body.i45.for.body.i45_crit_edge:              ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i45

for.body.i45.ecc_free_point.exit_crit_edge:       ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit

ecc_free_point.exit:                              ; preds = %for.body.i45.ecc_free_point.exit_crit_edge, %if.end11.ecc_free_point.exit_crit_edge, %if.end6.ecc_free_point.exit_crit_edge
  %ret.0 = phi i32 [ -11, %if.end6.ecc_free_point.exit_crit_edge ], [ 0, %if.end11.ecc_free_point.exit_crit_edge ], [ 0, %for.body.i45.ecc_free_point.exit_crit_edge ]
  %39 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call3, align 4
  tail call void @kfree_sensitive(ptr noundef %40) #16
  %y.i = getelementptr inbounds %struct.ecc_point, ptr %call3, i32 0, i32 1
  %41 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %y.i, align 4
  tail call void @kfree_sensitive(ptr noundef %42) #16
  tail call void @kfree_sensitive(ptr noundef nonnull %call3) #16
  br label %out

out:                                              ; preds = %ecc_free_point.exit, %ecc_swap_digits.exit.out_crit_edge, %switch.lookup.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.0, %ecc_free_point.exit ], [ -22, %switch.lookup.out_crit_edge ], [ -12, %ecc_swap_digits.exit.out_crit_edge ], [ -22, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %priv) #16
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ecc_point_mult(ptr nocapture noundef readonly %result, ptr nocapture noundef readonly %point, ptr nocapture noundef readonly %scalar, ptr noundef readonly %initial_z, ptr noundef readonly %curve, i32 noundef %ndigits) unnamed_addr #1 align 64 {
entry:
  %t1.i = alloca [8 x i64], align 8
  %t1.i35.i = alloca [8 x i64], align 8
  %t1.i.i = alloca [8 x i64], align 8
  %z.i = alloca [8 x i64], align 8
  %rx = alloca [2 x [8 x i64]], align 8
  %ry = alloca [2 x [8 x i64]], align 8
  %z = alloca [8 x i64], align 8
  %sk = alloca [2 x [8 x i64]], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %rx) #16
  %0 = call ptr @memset(ptr %rx, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %ry) #16
  %1 = call ptr @memset(ptr %ry, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %z) #16
  %2 = call ptr @memset(ptr %z, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sk) #16
  %3 = call ptr @memset(ptr %sk, i32 255, i32 128)
  %p = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 2
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p, align 4
  %n = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 3
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndigits)
  %cmp20.not.i = icmp eq i32 %ndigits, 0
  br i1 %cmp20.not.i, label %vli_set.exit.thread, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %carry.021.i = phi i64 [ %carry.1.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i64, ptr %scalar, i32 %i.022.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i, align 8
  %arrayidx1.i = getelementptr i64, ptr %7, i32 %i.022.i
  %10 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx1.i, align 8
  %add.i = add i64 %9, %carry.021.i
  %add2.i = add i64 %add.i, %11
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i, i64 %9)
  %cmp4.not.i = icmp eq i64 %add2.i, %9
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i, i64 %9)
  %cmp6.i = icmp ult i64 %add2.i, %9
  %12 = zext i1 %cmp6.i to i64
  %carry.1.i = select i1 %cmp4.not.i, i64 %carry.021.i, i64 %12
  %arrayidx8.i = getelementptr i64, ptr %sk, i32 %i.022.i
  %13 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %add2.i, ptr %arrayidx8.i, align 8
  %inc.i = add nuw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %ndigits
  br i1 %exitcond.not.i, label %for.body.i166.preheader, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.body.i166.preheader:                          ; preds = %for.body.i
  %conv = trunc i64 %carry.1.i to i32
  %arrayidx1 = getelementptr inbounds [2 x [8 x i64]], ptr %sk, i32 0, i32 1
  br label %for.body.i166

for.body.i166:                                    ; preds = %for.body.i166.for.body.i166_crit_edge, %for.body.i166.preheader
  %i.022.i154 = phi i32 [ %inc.i164, %for.body.i166.for.body.i166_crit_edge ], [ 0, %for.body.i166.preheader ]
  %carry.021.i155 = phi i64 [ %carry.1.i162, %for.body.i166.for.body.i166_crit_edge ], [ 0, %for.body.i166.preheader ]
  %arrayidx.i156 = getelementptr i64, ptr %sk, i32 %i.022.i154
  %14 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i156, align 8
  %arrayidx1.i157 = getelementptr i64, ptr %7, i32 %i.022.i154
  %16 = ptrtoint ptr %arrayidx1.i157 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx1.i157, align 8
  %add.i158 = add i64 %15, %carry.021.i155
  %add2.i159 = add i64 %add.i158, %17
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i159, i64 %15)
  %cmp4.not.i160 = icmp eq i64 %add2.i159, %15
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i159, i64 %15)
  %cmp6.i161 = icmp ult i64 %add2.i159, %15
  %18 = zext i1 %cmp6.i161 to i64
  %carry.1.i162 = select i1 %cmp4.not.i160, i64 %carry.021.i155, i64 %18
  %arrayidx8.i163 = getelementptr i64, ptr %arrayidx1, i32 %i.022.i154
  %19 = ptrtoint ptr %arrayidx8.i163 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add2.i159, ptr %arrayidx8.i163, align 8
  %inc.i164 = add nuw i32 %i.022.i154, 1
  %exitcond.not.i165 = icmp eq i32 %inc.i164, %ndigits
  br i1 %exitcond.not.i165, label %for.body.i173.preheader, label %for.body.i166.for.body.i166_crit_edge

for.body.i166.for.body.i166_crit_edge:            ; preds = %for.body.i166
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i166

for.body.i173.preheader:                          ; preds = %for.body.i166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not = icmp eq i32 %conv, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %arrayidx7 = getelementptr [2 x [8 x i64]], ptr %sk, i32 0, i32 %lnot.ext
  %mul9 = shl i32 %ndigits, 6
  %arrayidx10 = getelementptr inbounds [2 x [8 x i64]], ptr %rx, i32 0, i32 1
  %20 = ptrtoint ptr %point to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %point, align 4
  br label %for.body.i173

for.body.i173:                                    ; preds = %for.body.i173.for.body.i173_crit_edge, %for.body.i173.preheader
  %i.06.i = phi i32 [ %inc.i171, %for.body.i173.for.body.i173_crit_edge ], [ 0, %for.body.i173.preheader ]
  %arrayidx.i169 = getelementptr i64, ptr %21, i32 %i.06.i
  %22 = ptrtoint ptr %arrayidx.i169 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i169, align 8
  %arrayidx1.i170 = getelementptr i64, ptr %arrayidx10, i32 %i.06.i
  %24 = ptrtoint ptr %arrayidx1.i170 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %arrayidx1.i170, align 8
  %inc.i171 = add nuw i32 %i.06.i, 1
  %exitcond.not.i172 = icmp eq i32 %inc.i171, %ndigits
  br i1 %exitcond.not.i172, label %for.body.i180.preheader, label %for.body.i173.for.body.i173_crit_edge

for.body.i173.for.body.i173_crit_edge:            ; preds = %for.body.i173
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i173

vli_set.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx7213 = getelementptr inbounds [2 x [8 x i64]], ptr %sk, i32 0, i32 1
  %arrayidx10215 = getelementptr inbounds [2 x [8 x i64]], ptr %rx, i32 0, i32 1
  %arrayidx12223 = getelementptr inbounds [2 x [8 x i64]], ptr %ry, i32 0, i32 1
  %y224 = getelementptr inbounds %struct.ecc_point, ptr %point, i32 0, i32 1
  br label %vli_set.exit181

for.body.i180.preheader:                          ; preds = %for.body.i173
  %arrayidx12 = getelementptr inbounds [2 x [8 x i64]], ptr %ry, i32 0, i32 1
  %y = getelementptr inbounds %struct.ecc_point, ptr %point, i32 0, i32 1
  %25 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %y, align 4
  br label %for.body.i180

for.body.i180:                                    ; preds = %for.body.i180.for.body.i180_crit_edge, %for.body.i180.preheader
  %i.06.i175 = phi i32 [ %inc.i178, %for.body.i180.for.body.i180_crit_edge ], [ 0, %for.body.i180.preheader ]
  %arrayidx.i176 = getelementptr i64, ptr %26, i32 %i.06.i175
  %27 = ptrtoint ptr %arrayidx.i176 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx.i176, align 8
  %arrayidx1.i177 = getelementptr i64, ptr %arrayidx12, i32 %i.06.i175
  %29 = ptrtoint ptr %arrayidx1.i177 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx1.i177, align 8
  %inc.i178 = add nuw i32 %i.06.i175, 1
  %exitcond.not.i179 = icmp eq i32 %inc.i178, %ndigits
  br i1 %exitcond.not.i179, label %vli_set.exit181.loopexit, label %for.body.i180.for.body.i180_crit_edge

for.body.i180.for.body.i180_crit_edge:            ; preds = %for.body.i180
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i180

vli_set.exit181.loopexit:                         ; preds = %for.body.i180
  call void @__sanitizer_cov_trace_pc() #18
  %phi.bo = add i32 %mul9, -1
  br label %vli_set.exit181

vli_set.exit181:                                  ; preds = %vli_set.exit181.loopexit, %vli_set.exit.thread
  %y230 = phi ptr [ %y224, %vli_set.exit.thread ], [ %y, %vli_set.exit181.loopexit ]
  %arrayidx12228 = phi ptr [ %arrayidx12223, %vli_set.exit.thread ], [ %arrayidx12, %vli_set.exit181.loopexit ]
  %arrayidx7216227 = phi ptr [ %arrayidx7213, %vli_set.exit.thread ], [ %arrayidx7, %vli_set.exit181.loopexit ]
  %mul9217226 = phi i32 [ -1, %vli_set.exit.thread ], [ %phi.bo, %vli_set.exit181.loopexit ]
  %arrayidx10218225 = phi ptr [ %arrayidx10215, %vli_set.exit.thread ], [ %arrayidx10, %vli_set.exit181.loopexit ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %z.i) #16
  %30 = call ptr @memset(ptr %z.i, i32 255, i32 64)
  %ndigits1.i = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 1, i32 2
  %31 = ptrtoint ptr %ndigits1.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ndigits1.i, align 4
  %conv.i = zext i8 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp5.not.i.i = icmp eq i8 %32, 0
  br i1 %cmp5.not.i.i, label %vli_clear.exit.thread.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %vli_set.exit181
  %33 = getelementptr inbounds [2 x [8 x i64]], ptr %rx, i32 0, i32 1
  br label %for.body.i.i

vli_clear.exit.thread.i:                          ; preds = %vli_set.exit181
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %z.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 1, ptr %z.i, align 8
  br label %xycz_initial_double.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.i.preheader
  %i.06.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.i.preheader ]
  %arrayidx.i.i = getelementptr i64, ptr %33, i32 %i.06.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx.i.i, align 8
  %arrayidx1.i.i = getelementptr i64, ptr %rx, i32 %i.06.i.i
  %37 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %arrayidx1.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i
  br i1 %exitcond.not.i.i, label %for.body.i25.i.preheader, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.body.i25.i.preheader:                         ; preds = %for.body.i.i
  %38 = getelementptr inbounds [2 x [8 x i64]], ptr %ry, i32 0, i32 1
  %39 = shl nuw nsw i32 %conv.i, 3
  %40 = call ptr @memmove(ptr %ry, ptr %38, i32 %39)
  %41 = call ptr @memset(ptr %z.i, i32 0, i32 %39)
  %42 = ptrtoint ptr %z.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1, ptr %z.i, align 8
  %tobool.not.i = icmp eq ptr %initial_z, null
  br i1 %tobool.not.i, label %for.body.i25.i.preheader.xycz_initial_double.exit_crit_edge, label %for.body.i33.preheader.i

for.body.i25.i.preheader.xycz_initial_double.exit_crit_edge: ; preds = %for.body.i25.i.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %xycz_initial_double.exit

for.body.i33.preheader.i:                         ; preds = %for.body.i25.i.preheader
  call void @__sanitizer_cov_trace_pc() #18
  %43 = call ptr @memcpy(ptr %z.i, ptr %initial_z, i32 %39)
  br label %xycz_initial_double.exit

xycz_initial_double.exit:                         ; preds = %for.body.i33.preheader.i, %for.body.i25.i.preheader.xycz_initial_double.exit_crit_edge, %vli_clear.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %t1.i.i) #16
  %44 = call ptr @memset(ptr %t1.i.i, i32 255, i32 64)
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %z.i, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef %arrayidx10218225, ptr noundef %arrayidx10218225, ptr noundef nonnull %t1.i.i, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %t1.i.i, ptr noundef nonnull %t1.i.i, ptr noundef nonnull %z.i, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef %arrayidx12228, ptr noundef %arrayidx12228, ptr noundef nonnull %t1.i.i, ptr noundef %curve) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %t1.i.i) #16
  call fastcc void @ecc_point_double_jacobian(ptr noundef %arrayidx10218225, ptr noundef %arrayidx12228, ptr noundef nonnull %z.i, ptr noundef %curve) #16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %t1.i35.i) #16
  %45 = call ptr @memset(ptr %t1.i35.i, i32 255, i32 64)
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t1.i35.i, ptr noundef nonnull %z.i, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %rx, ptr noundef nonnull %rx, ptr noundef nonnull %t1.i35.i, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %t1.i35.i, ptr noundef nonnull %t1.i35.i, ptr noundef nonnull %z.i, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %ry, ptr noundef nonnull %ry, ptr noundef nonnull %t1.i35.i, ptr noundef %curve) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %t1.i35.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %z.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul9217226)
  %cmp233 = icmp sgt i32 %mul9217226, 0
  br i1 %cmp233, label %xycz_initial_double.exit.for.body_crit_edge, label %xycz_initial_double.exit.for.end_crit_edge

xycz_initial_double.exit.for.end_crit_edge:       ; preds = %xycz_initial_double.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

xycz_initial_double.exit.for.body_crit_edge:      ; preds = %xycz_initial_double.exit
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %xycz_initial_double.exit.for.body_crit_edge
  %i.0234 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %mul9217226, %xycz_initial_double.exit.for.body_crit_edge ]
  %div2.i = lshr i32 %i.0234, 6
  %arrayidx.i182 = getelementptr i64, ptr %arrayidx7216227, i32 %div2.i
  %46 = ptrtoint ptr %arrayidx.i182 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx.i182, align 8
  %rem.i = and i32 %i.0234, 63
  %sh_prom.i = zext i32 %rem.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and.i = and i64 %47, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool24.not = icmp eq i64 %and.i, 0
  %lnot.ext26 = zext i1 %tobool24.not to i32
  %not.tobool24.not = xor i1 %tobool24.not, true
  %sub27 = zext i1 %not.tobool24.not to i32
  %arrayidx28 = getelementptr [2 x [8 x i64]], ptr %rx, i32 0, i32 %sub27
  %arrayidx31 = getelementptr [2 x [8 x i64]], ptr %ry, i32 0, i32 %sub27
  %arrayidx33 = getelementptr [2 x [8 x i64]], ptr %rx, i32 0, i32 %lnot.ext26
  %arrayidx35 = getelementptr [2 x [8 x i64]], ptr %ry, i32 0, i32 %lnot.ext26
  call fastcc void @xycz_add_c(ptr noundef %arrayidx28, ptr noundef %arrayidx31, ptr noundef %arrayidx33, ptr noundef %arrayidx35, ptr noundef %curve)
  call fastcc void @xycz_add(ptr noundef %arrayidx33, ptr noundef %arrayidx35, ptr noundef %arrayidx28, ptr noundef %arrayidx31, ptr noundef %curve)
  %i.0 = add nsw i32 %i.0234, -1
  %cmp = icmp ugt i32 %i.0234, 1
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %xycz_initial_double.exit.for.end_crit_edge
  %48 = ptrtoint ptr %arrayidx7216227 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %arrayidx7216227, align 8
  %50 = trunc i64 %49 to i32
  %51 = and i32 %50, 1
  %52 = xor i32 %51, 1
  %arrayidx52 = getelementptr [2 x [8 x i64]], ptr %rx, i32 0, i32 %51
  %arrayidx55 = getelementptr [2 x [8 x i64]], ptr %ry, i32 0, i32 %51
  %arrayidx57 = getelementptr [2 x [8 x i64]], ptr %rx, i32 0, i32 %52
  %arrayidx59 = getelementptr [2 x [8 x i64]], ptr %ry, i32 0, i32 %52
  call fastcc void @xycz_add_c(ptr noundef %arrayidx52, ptr noundef %arrayidx55, ptr noundef %arrayidx57, ptr noundef %arrayidx59, ptr noundef %curve)
  br i1 %cmp20.not.i, label %for.end.vli_mod_sub.exit_crit_edge, label %for.body.i.i188.preheader

for.end.vli_mod_sub.exit_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_sub.exit

for.body.i.i188.preheader:                        ; preds = %for.end
  %53 = getelementptr inbounds [2 x [8 x i64]], ptr %rx, i32 0, i32 1
  br label %for.body.i.i188

for.body.i.i188:                                  ; preds = %for.body.i.i188.for.body.i.i188_crit_edge, %for.body.i.i188.preheader
  %i.022.i.i = phi i32 [ %inc.i.i186, %for.body.i.i188.for.body.i.i188_crit_edge ], [ 0, %for.body.i.i188.preheader ]
  %borrow.021.i.i = phi i64 [ %borrow.1.i.i, %for.body.i.i188.for.body.i.i188_crit_edge ], [ 0, %for.body.i.i188.preheader ]
  %arrayidx.i.i184 = getelementptr i64, ptr %53, i32 %i.022.i.i
  %54 = ptrtoint ptr %arrayidx.i.i184 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %arrayidx.i.i184, align 8
  %arrayidx1.i.i185 = getelementptr i64, ptr %rx, i32 %i.022.i.i
  %56 = ptrtoint ptr %arrayidx1.i.i185 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %arrayidx1.i.i185, align 8
  %58 = add i64 %57, %borrow.021.i.i
  %sub2.i.i = sub i64 %55, %58
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %58)
  %cmp4.not.i.i = icmp eq i64 %58, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %58)
  %cmp6.i.i = icmp ult i64 %55, %58
  %59 = zext i1 %cmp6.i.i to i64
  %borrow.1.i.i = select i1 %cmp4.not.i.i, i64 %borrow.021.i.i, i64 %59
  %arrayidx8.i.i = getelementptr i64, ptr %z, i32 %i.022.i.i
  %60 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %sub2.i.i, ptr %arrayidx8.i.i, align 8
  %inc.i.i186 = add nuw i32 %i.022.i.i, 1
  %exitcond.not.i.i187 = icmp eq i32 %inc.i.i186, %ndigits
  br i1 %exitcond.not.i.i187, label %vli_sub.exit.i, label %for.body.i.i188.for.body.i.i188_crit_edge

for.body.i.i188.for.body.i.i188_crit_edge:        ; preds = %for.body.i.i188
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i188

vli_sub.exit.i:                                   ; preds = %for.body.i.i188
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i)
  %tobool.not.i189 = icmp eq i64 %borrow.1.i.i, 0
  br i1 %tobool.not.i189, label %vli_sub.exit.i.vli_mod_sub.exit_crit_edge, label %vli_sub.exit.i.for.body.i14.i_crit_edge

vli_sub.exit.i.for.body.i14.i_crit_edge:          ; preds = %vli_sub.exit.i
  br label %for.body.i14.i

vli_sub.exit.i.vli_mod_sub.exit_crit_edge:        ; preds = %vli_sub.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_sub.exit

for.body.i14.i:                                   ; preds = %for.body.i14.i.for.body.i14.i_crit_edge, %vli_sub.exit.i.for.body.i14.i_crit_edge
  %i.022.i6.i = phi i32 [ %inc.i12.i, %for.body.i14.i.for.body.i14.i_crit_edge ], [ 0, %vli_sub.exit.i.for.body.i14.i_crit_edge ]
  %carry.021.i.i = phi i64 [ %carry.1.i.i, %for.body.i14.i.for.body.i14.i_crit_edge ], [ 0, %vli_sub.exit.i.for.body.i14.i_crit_edge ]
  %arrayidx.i7.i = getelementptr i64, ptr %z, i32 %i.022.i6.i
  %61 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx.i7.i, align 8
  %arrayidx1.i8.i = getelementptr i64, ptr %5, i32 %i.022.i6.i
  %63 = ptrtoint ptr %arrayidx1.i8.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx1.i8.i, align 8
  %add.i.i = add i64 %62, %carry.021.i.i
  %add2.i.i = add i64 %add.i.i, %64
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %62)
  %cmp4.not.i9.i = icmp eq i64 %add2.i.i, %62
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %62)
  %cmp6.i10.i = icmp ult i64 %add2.i.i, %62
  %65 = zext i1 %cmp6.i10.i to i64
  %carry.1.i.i = select i1 %cmp4.not.i9.i, i64 %carry.021.i.i, i64 %65
  %66 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add2.i.i, ptr %arrayidx.i7.i, align 8
  %inc.i12.i = add nuw i32 %i.022.i6.i, 1
  %exitcond.not.i13.i = icmp eq i32 %inc.i12.i, %ndigits
  br i1 %exitcond.not.i13.i, label %for.body.i14.i.vli_mod_sub.exit_crit_edge, label %for.body.i14.i.for.body.i14.i_crit_edge

for.body.i14.i.for.body.i14.i_crit_edge:          ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i

for.body.i14.i.vli_mod_sub.exit_crit_edge:        ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_sub.exit

vli_mod_sub.exit:                                 ; preds = %for.body.i14.i.vli_mod_sub.exit_crit_edge, %vli_sub.exit.i.vli_mod_sub.exit_crit_edge, %for.end.vli_mod_sub.exit_crit_edge
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %z, ptr noundef nonnull %z, ptr noundef %arrayidx55, ptr noundef %curve)
  %67 = ptrtoint ptr %point to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %point, align 4
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %z, ptr noundef nonnull %z, ptr noundef %68, ptr noundef %curve)
  %ndigits76 = getelementptr inbounds %struct.ecc_point, ptr %point, i32 0, i32 2
  %69 = ptrtoint ptr %ndigits76 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %ndigits76, align 4
  %conv77 = zext i8 %70 to i32
  call void @vli_mod_inv(ptr noundef nonnull %z, ptr noundef nonnull %z, ptr noundef %5, i32 noundef %conv77)
  %71 = ptrtoint ptr %y230 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %y230, align 4
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %z, ptr noundef nonnull %z, ptr noundef %72, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %z, ptr noundef nonnull %z, ptr noundef %arrayidx52, ptr noundef %curve)
  call fastcc void @xycz_add(ptr noundef %arrayidx57, ptr noundef %arrayidx59, ptr noundef %arrayidx52, ptr noundef %arrayidx55, ptr noundef %curve)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %t1.i) #16
  %73 = call ptr @memset(ptr %t1.i, i32 255, i32 64)
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t1.i, ptr noundef nonnull %z, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %rx, ptr noundef nonnull %rx, ptr noundef nonnull %t1.i, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %t1.i, ptr noundef nonnull %t1.i, ptr noundef nonnull %z, ptr noundef %curve) #16
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %ry, ptr noundef nonnull %ry, ptr noundef nonnull %t1.i, ptr noundef %curve) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %t1.i) #16
  %74 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %result, align 4
  br i1 %cmp20.not.i, label %vli_mod_sub.exit.vli_set.exit205_crit_edge, label %vli_mod_sub.exit.for.body.i196_crit_edge

vli_mod_sub.exit.for.body.i196_crit_edge:         ; preds = %vli_mod_sub.exit
  br label %for.body.i196

vli_mod_sub.exit.vli_set.exit205_crit_edge:       ; preds = %vli_mod_sub.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_set.exit205

for.body.i196:                                    ; preds = %for.body.i196.for.body.i196_crit_edge, %vli_mod_sub.exit.for.body.i196_crit_edge
  %i.06.i191 = phi i32 [ %inc.i194, %for.body.i196.for.body.i196_crit_edge ], [ 0, %vli_mod_sub.exit.for.body.i196_crit_edge ]
  %arrayidx.i192 = getelementptr i64, ptr %rx, i32 %i.06.i191
  %76 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx.i192, align 8
  %arrayidx1.i193 = getelementptr i64, ptr %75, i32 %i.06.i191
  %78 = ptrtoint ptr %arrayidx1.i193 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %arrayidx1.i193, align 8
  %inc.i194 = add nuw i32 %i.06.i191, 1
  %exitcond.not.i195 = icmp eq i32 %inc.i194, %ndigits
  br i1 %exitcond.not.i195, label %for.body.i204.preheader, label %for.body.i196.for.body.i196_crit_edge

for.body.i196.for.body.i196_crit_edge:            ; preds = %for.body.i196
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i196

for.body.i204.preheader:                          ; preds = %for.body.i196
  %y104 = getelementptr inbounds %struct.ecc_point, ptr %result, i32 0, i32 1
  %79 = ptrtoint ptr %y104 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %y104, align 4
  br label %for.body.i204

for.body.i204:                                    ; preds = %for.body.i204.for.body.i204_crit_edge, %for.body.i204.preheader
  %i.06.i199 = phi i32 [ %inc.i202, %for.body.i204.for.body.i204_crit_edge ], [ 0, %for.body.i204.preheader ]
  %arrayidx.i200 = getelementptr i64, ptr %ry, i32 %i.06.i199
  %81 = ptrtoint ptr %arrayidx.i200 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx.i200, align 8
  %arrayidx1.i201 = getelementptr i64, ptr %80, i32 %i.06.i199
  %83 = ptrtoint ptr %arrayidx1.i201 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %82, ptr %arrayidx1.i201, align 8
  %inc.i202 = add nuw i32 %i.06.i199, 1
  %exitcond.not.i203 = icmp eq i32 %inc.i202, %ndigits
  br i1 %exitcond.not.i203, label %for.body.i204.vli_set.exit205_crit_edge, label %for.body.i204.for.body.i204_crit_edge

for.body.i204.for.body.i204_crit_edge:            ; preds = %for.body.i204
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i204

for.body.i204.vli_set.exit205_crit_edge:          ; preds = %for.body.i204
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_set.exit205

vli_set.exit205:                                  ; preds = %for.body.i204.vli_set.exit205_crit_edge, %vli_mod_sub.exit.vli_set.exit205_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sk) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %z) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %ry) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %rx) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecc_is_pubkey_valid_full(ptr noundef %curve, ptr nocapture noundef readonly %pk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ecc_is_pubkey_valid_partial(ptr noundef %curve, ptr noundef %pk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %ndigits = getelementptr inbounds %struct.ecc_point, ptr %pk, i32 0, i32 2
  %0 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ndigits, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call ptr @ecc_alloc_point(i32 noundef %conv)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %n = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 3
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %n, align 4
  %4 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ndigits, align 4
  %conv6 = zext i8 %5 to i32
  tail call fastcc void @ecc_point_mult(ptr noundef nonnull %call1, ptr noundef %pk, ptr noundef %3, ptr noundef null, ptr noundef %curve, i32 noundef %conv6)
  %6 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call1, align 4
  %ndigits.i = getelementptr inbounds %struct.ecc_point, ptr %call1, i32 0, i32 2
  %8 = ptrtoint ptr %ndigits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ndigits.i, align 4
  %conv.i = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp3.not.i.i = icmp eq i8 %9, 0
  br i1 %cmp3.not.i.i, label %if.end4.ecc_point_is_zero.exit.thread22_crit_edge, label %for.body.i.preheader.i

if.end4.ecc_point_is_zero.exit.thread22_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_point_is_zero.exit.thread22

for.body.i.preheader.i:                           ; preds = %if.end4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %7, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not.i23.i = icmp eq i64 %11, 0
  br i1 %tobool.not.i23.i, label %for.body.i.preheader.i.for.cond.i.i_crit_edge, label %for.body.i.preheader.i.ecc_free_point.exit_crit_edge

for.body.i.preheader.i.ecc_free_point.exit_crit_edge: ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit

for.body.i.preheader.i.for.cond.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.preheader.i.for.cond.i.i_crit_edge
  %i.04.i24.i = phi i32 [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.cond.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.04.i24.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.body.i18.preheader.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.body.i18.preheader.i_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i18.preheader.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr i64, ptr %7, i32 %inc.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %13, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %vli_is_zero.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

vli_is_zero.exit.i:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv.i)
  %cmp.i.le.i = icmp ult i32 %inc.i.i, %conv.i
  br i1 %cmp.i.le.i, label %vli_is_zero.exit.i.ecc_free_point.exit_crit_edge, label %vli_is_zero.exit.i.for.body.i18.preheader.i_crit_edge

vli_is_zero.exit.i.for.body.i18.preheader.i_crit_edge: ; preds = %vli_is_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i18.preheader.i

vli_is_zero.exit.i.ecc_free_point.exit_crit_edge: ; preds = %vli_is_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit

for.body.i18.preheader.i:                         ; preds = %vli_is_zero.exit.i.for.body.i18.preheader.i_crit_edge, %for.cond.i.i.for.body.i18.preheader.i_crit_edge
  %y.i = getelementptr inbounds %struct.ecc_point, ptr %call1, i32 0, i32 1
  %14 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %y.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool.not.i1726.i = icmp eq i64 %17, 0
  br i1 %tobool.not.i1726.i, label %for.body.i18.preheader.i.for.cond.i13.i_crit_edge, label %for.body.i18.preheader.i.ecc_free_point.exit_crit_edge

for.body.i18.preheader.i.ecc_free_point.exit_crit_edge: ; preds = %for.body.i18.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit

for.body.i18.preheader.i.for.cond.i13.i_crit_edge: ; preds = %for.body.i18.preheader.i
  br label %for.cond.i13.i

for.cond.i13.i:                                   ; preds = %for.body.i18.i.for.cond.i13.i_crit_edge, %for.body.i18.preheader.i.for.cond.i13.i_crit_edge
  %i.04.i1527.i = phi i32 [ %inc.i10.i, %for.body.i18.i.for.cond.i13.i_crit_edge ], [ 0, %for.body.i18.preheader.i.for.cond.i13.i_crit_edge ]
  %inc.i10.i = add nuw nsw i32 %i.04.i1527.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i10.i, i32 %conv.i)
  %exitcond.not.i12.i = icmp eq i32 %inc.i10.i, %conv.i
  br i1 %exitcond.not.i12.i, label %for.cond.i13.i.ecc_point_is_zero.exit.thread22_crit_edge, label %for.body.i18.i

for.cond.i13.i.ecc_point_is_zero.exit.thread22_crit_edge: ; preds = %for.cond.i13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_point_is_zero.exit.thread22

for.body.i18.i:                                   ; preds = %for.cond.i13.i
  %arrayidx.i16.i = getelementptr i64, ptr %15, i32 %inc.i10.i
  %18 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i16.i, align 8
  %tobool.not.i17.i = icmp eq i64 %19, 0
  br i1 %tobool.not.i17.i, label %for.body.i18.i.for.cond.i13.i_crit_edge, label %ecc_point_is_zero.exit

for.body.i18.i.for.cond.i13.i_crit_edge:          ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i13.i

ecc_point_is_zero.exit:                           ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i10.i, i32 %conv.i)
  %cmp.i11.le.i.not = icmp ult i32 %inc.i10.i, %conv.i
  br i1 %cmp.i11.le.i.not, label %ecc_point_is_zero.exit.ecc_free_point.exit_crit_edge, label %ecc_point_is_zero.exit.ecc_point_is_zero.exit.thread22_crit_edge

ecc_point_is_zero.exit.ecc_point_is_zero.exit.thread22_crit_edge: ; preds = %ecc_point_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_point_is_zero.exit.thread22

ecc_point_is_zero.exit.ecc_free_point.exit_crit_edge: ; preds = %ecc_point_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit

ecc_point_is_zero.exit.thread22:                  ; preds = %ecc_point_is_zero.exit.ecc_point_is_zero.exit.thread22_crit_edge, %for.cond.i13.i.ecc_point_is_zero.exit.thread22_crit_edge, %if.end4.ecc_point_is_zero.exit.thread22_crit_edge
  br label %ecc_free_point.exit

ecc_free_point.exit:                              ; preds = %ecc_point_is_zero.exit.thread22, %ecc_point_is_zero.exit.ecc_free_point.exit_crit_edge, %for.body.i18.preheader.i.ecc_free_point.exit_crit_edge, %vli_is_zero.exit.i.ecc_free_point.exit_crit_edge, %for.body.i.preheader.i.ecc_free_point.exit_crit_edge
  %20 = phi i32 [ 0, %ecc_point_is_zero.exit.thread22 ], [ -22, %ecc_point_is_zero.exit.ecc_free_point.exit_crit_edge ], [ -22, %vli_is_zero.exit.i.ecc_free_point.exit_crit_edge ], [ -22, %for.body.i.preheader.i.ecc_free_point.exit_crit_edge ], [ -22, %for.body.i18.preheader.i.ecc_free_point.exit_crit_edge ]
  tail call void @kfree_sensitive(ptr noundef %7) #16
  %y.i21 = getelementptr inbounds %struct.ecc_point, ptr %call1, i32 0, i32 1
  %21 = ptrtoint ptr %y.i21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %y.i21, align 4
  tail call void @kfree_sensitive(ptr noundef %22) #16
  tail call void @kfree_sensitive(ptr noundef nonnull %call1) #16
  br label %cleanup

cleanup:                                          ; preds = %ecc_free_point.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %ecc_free_point.exit ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecc_is_pubkey_valid_partial(ptr nocapture noundef readonly %curve, ptr nocapture noundef readonly %pk) #1 align 64 {
entry:
  %yy = alloca [8 x i64], align 8
  %xxx = alloca [8 x i64], align 8
  %w = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %yy) #16
  %0 = call ptr @memset(ptr %yy, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %xxx) #16
  %1 = call ptr @memset(ptr %xxx, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %w) #16
  %2 = call ptr @memset(ptr %w, i32 255, i32 64)
  %ndigits = getelementptr inbounds %struct.ecc_point, ptr %pk, i32 0, i32 2
  %3 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ndigits, align 4
  %ndigits1 = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %ndigits1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ndigits1, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp.not = icmp eq i8 %4, %6
  br i1 %cmp.not, label %if.end24, label %do.end, !prof !121

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1553, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end24:                                         ; preds = %entry
  %7 = ptrtoint ptr %pk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pk, align 4
  %conv.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp3.not.i.i = icmp eq i8 %4, 0
  br i1 %cmp3.not.i.i, label %if.end24.cleanup_crit_edge, label %for.body.i.preheader.i

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i.preheader.i:                           ; preds = %if.end24
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %8, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not.i23.i = icmp eq i64 %10, 0
  br i1 %tobool.not.i23.i, label %for.body.i.preheader.i.for.cond.i.i_crit_edge, label %for.body.i.preheader.i.if.end26_crit_edge

for.body.i.preheader.i.if.end26_crit_edge:        ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

for.body.i.preheader.i.for.cond.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.preheader.i.for.cond.i.i_crit_edge
  %i.04.i24.i = phi i32 [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.cond.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.04.i24.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.body.i18.preheader.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.body.i18.preheader.i_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i18.preheader.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr i64, ptr %8, i32 %inc.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %12, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %vli_is_zero.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

vli_is_zero.exit.i:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv.i)
  %cmp.i.le.i = icmp ult i32 %inc.i.i, %conv.i
  br i1 %cmp.i.le.i, label %vli_is_zero.exit.i.if.end26_crit_edge, label %vli_is_zero.exit.i.for.body.i18.preheader.i_crit_edge

vli_is_zero.exit.i.for.body.i18.preheader.i_crit_edge: ; preds = %vli_is_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i18.preheader.i

vli_is_zero.exit.i.if.end26_crit_edge:            ; preds = %vli_is_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

for.body.i18.preheader.i:                         ; preds = %vli_is_zero.exit.i.for.body.i18.preheader.i_crit_edge, %for.cond.i.i.for.body.i18.preheader.i_crit_edge
  %y.i = getelementptr inbounds %struct.ecc_point, ptr %pk, i32 0, i32 1
  %13 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %y.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %14, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not.i1726.i = icmp eq i64 %16, 0
  br i1 %tobool.not.i1726.i, label %for.body.i18.preheader.i.for.cond.i13.i_crit_edge, label %for.body.i18.preheader.i.if.end26_crit_edge

for.body.i18.preheader.i.if.end26_crit_edge:      ; preds = %for.body.i18.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

for.body.i18.preheader.i.for.cond.i13.i_crit_edge: ; preds = %for.body.i18.preheader.i
  br label %for.cond.i13.i

for.cond.i13.i:                                   ; preds = %for.body.i18.i.for.cond.i13.i_crit_edge, %for.body.i18.preheader.i.for.cond.i13.i_crit_edge
  %i.04.i1527.i = phi i32 [ %inc.i10.i, %for.body.i18.i.for.cond.i13.i_crit_edge ], [ 0, %for.body.i18.preheader.i.for.cond.i13.i_crit_edge ]
  %inc.i10.i = add nuw nsw i32 %i.04.i1527.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i10.i, i32 %conv.i)
  %exitcond.not.i12.i = icmp eq i32 %inc.i10.i, %conv.i
  br i1 %exitcond.not.i12.i, label %for.cond.i13.i.cleanup_crit_edge, label %for.body.i18.i

for.cond.i13.i.cleanup_crit_edge:                 ; preds = %for.cond.i13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i18.i:                                   ; preds = %for.cond.i13.i
  %arrayidx.i16.i = getelementptr i64, ptr %14, i32 %inc.i10.i
  %17 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arrayidx.i16.i, align 8
  %tobool.not.i17.i = icmp eq i64 %18, 0
  br i1 %tobool.not.i17.i, label %for.body.i18.i.for.cond.i13.i_crit_edge, label %ecc_point_is_zero.exit

for.body.i18.i.for.cond.i13.i_crit_edge:          ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i13.i

ecc_point_is_zero.exit:                           ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i10.i, i32 %conv.i)
  %cmp.i11.le.i.not = icmp ult i32 %inc.i10.i, %conv.i
  br i1 %cmp.i11.le.i.not, label %ecc_point_is_zero.exit.if.end26_crit_edge, label %ecc_point_is_zero.exit.cleanup_crit_edge

ecc_point_is_zero.exit.cleanup_crit_edge:         ; preds = %ecc_point_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

ecc_point_is_zero.exit.if.end26_crit_edge:        ; preds = %ecc_point_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.end26:                                         ; preds = %ecc_point_is_zero.exit.if.end26_crit_edge, %for.body.i18.preheader.i.if.end26_crit_edge, %vli_is_zero.exit.i.if.end26_crit_edge, %for.body.i.preheader.i.if.end26_crit_edge
  %p = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 2
  %19 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.else.i.for.cond.i_crit_edge, %if.end26
  %i.0.in.i = phi i32 [ %conv.i, %if.end26 ], [ %i.0.i, %if.else.i.for.cond.i_crit_edge ]
  %i.0.i = add nsw i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i)
  %cmp.i = icmp sgt i32 %i.0.in.i, 0
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i64, ptr %20, i32 %i.0.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx.i, align 8
  %arrayidx1.i = getelementptr i64, ptr %8, i32 %i.0.i
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %24)
  %cmp2.i = icmp ugt i64 %22, %24
  br i1 %cmp2.i, label %if.end33, label %if.else.i

if.else.i:                                        ; preds = %for.body.i
  %cmp5.i = icmp ult i64 %22, %24
  br i1 %cmp5.i, label %if.else.i.cleanup_crit_edge, label %if.else.i.for.cond.i_crit_edge

if.else.i.for.cond.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end33:                                         ; preds = %for.body.i
  %y = getelementptr inbounds %struct.ecc_point, ptr %pk, i32 0, i32 1
  %25 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %y, align 4
  br label %for.cond.i98

for.cond.i98:                                     ; preds = %if.else.i104.for.cond.i98_crit_edge, %if.end33
  %i.0.in.i95 = phi i32 [ %conv.i, %if.end33 ], [ %i.0.i96, %if.else.i104.for.cond.i98_crit_edge ]
  %i.0.i96 = add nsw i32 %i.0.in.i95, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i95)
  %cmp.i97 = icmp sgt i32 %i.0.in.i95, 0
  br i1 %cmp.i97, label %for.body.i102, label %for.cond.i98.cleanup_crit_edge

for.cond.i98.cleanup_crit_edge:                   ; preds = %for.cond.i98
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i102:                                    ; preds = %for.cond.i98
  %arrayidx.i99 = getelementptr i64, ptr %20, i32 %i.0.i96
  %27 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx.i99, align 8
  %arrayidx1.i100 = getelementptr i64, ptr %26, i32 %i.0.i96
  %29 = ptrtoint ptr %arrayidx1.i100 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx1.i100, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %28, i64 %30)
  %cmp2.i101 = icmp ugt i64 %28, %30
  br i1 %cmp2.i101, label %if.end41, label %if.else.i104

if.else.i104:                                     ; preds = %for.body.i102
  %cmp5.i103 = icmp ult i64 %28, %30
  br i1 %cmp5.i103, label %if.else.i104.cleanup_crit_edge, label %if.else.i104.for.cond.i98_crit_edge

if.else.i104.for.cond.i98_crit_edge:              ; preds = %if.else.i104
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i98

if.else.i104.cleanup_crit_edge:                   ; preds = %if.else.i104
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end41:                                         ; preds = %for.body.i102
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %yy, ptr noundef %26, ptr noundef %curve)
  %31 = ptrtoint ptr %pk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pk, align 4
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %xxx, ptr noundef %32, ptr noundef %curve)
  %33 = ptrtoint ptr %pk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pk, align 4
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %xxx, ptr noundef nonnull %xxx, ptr noundef %34, ptr noundef %curve)
  %a = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 4
  %35 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %a, align 4
  %37 = ptrtoint ptr %pk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pk, align 4
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %w, ptr noundef %36, ptr noundef %38, ptr noundef %curve)
  %b = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 5
  %39 = ptrtoint ptr %b to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %b, align 4
  %41 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p, align 4
  %43 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %ndigits, align 4
  %conv54 = zext i8 %44 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp20.not.i.i = icmp eq i8 %44, 0
  br i1 %cmp20.not.i.i, label %if.end41.for.cond.i.i111.preheader_crit_edge, label %if.end41.for.body.i.i110_crit_edge

if.end41.for.body.i.i110_crit_edge:               ; preds = %if.end41
  br label %for.body.i.i110

if.end41.for.cond.i.i111.preheader_crit_edge:     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i111.preheader

for.body.i.i110:                                  ; preds = %for.body.i.i110.for.body.i.i110_crit_edge, %if.end41.for.body.i.i110_crit_edge
  %i.022.i.i = phi i32 [ %inc.i.i108, %for.body.i.i110.for.body.i.i110_crit_edge ], [ 0, %if.end41.for.body.i.i110_crit_edge ]
  %carry.021.i.i = phi i64 [ %carry.1.i.i, %for.body.i.i110.for.body.i.i110_crit_edge ], [ 0, %if.end41.for.body.i.i110_crit_edge ]
  %arrayidx.i.i107 = getelementptr i64, ptr %w, i32 %i.022.i.i
  %45 = ptrtoint ptr %arrayidx.i.i107 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx.i.i107, align 8
  %arrayidx1.i.i = getelementptr i64, ptr %40, i32 %i.022.i.i
  %47 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx1.i.i, align 8
  %add.i.i = add i64 %46, %carry.021.i.i
  %add2.i.i = add i64 %add.i.i, %48
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %46)
  %cmp4.not.i.i = icmp eq i64 %add2.i.i, %46
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %46)
  %cmp6.i.i = icmp ult i64 %add2.i.i, %46
  %49 = zext i1 %cmp6.i.i to i64
  %carry.1.i.i = select i1 %cmp4.not.i.i, i64 %carry.021.i.i, i64 %49
  %50 = ptrtoint ptr %arrayidx.i.i107 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %add2.i.i, ptr %arrayidx.i.i107, align 8
  %inc.i.i108 = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i109 = icmp eq i32 %inc.i.i108, %conv54
  br i1 %exitcond.not.i.i109, label %vli_add.exit.i, label %for.body.i.i110.for.body.i.i110_crit_edge

for.body.i.i110.for.body.i.i110_crit_edge:        ; preds = %for.body.i.i110
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i110

vli_add.exit.i:                                   ; preds = %for.body.i.i110
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.1.i.i)
  %tobool.not.i = icmp eq i64 %carry.1.i.i, 0
  br i1 %tobool.not.i, label %vli_add.exit.i.for.cond.i.i111.preheader_crit_edge, label %vli_add.exit.i.if.then.i_crit_edge

vli_add.exit.i.if.then.i_crit_edge:               ; preds = %vli_add.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

vli_add.exit.i.for.cond.i.i111.preheader_crit_edge: ; preds = %vli_add.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i111.preheader

for.cond.i.i111.preheader:                        ; preds = %vli_add.exit.i.for.cond.i.i111.preheader_crit_edge, %if.end41.for.cond.i.i111.preheader_crit_edge
  br label %for.cond.i.i111

for.cond.i.i111:                                  ; preds = %if.else.i.i.for.cond.i.i111_crit_edge, %for.cond.i.i111.preheader
  %i.0.in.i.i = phi i32 [ %i.0.i.i, %if.else.i.i.for.cond.i.i111_crit_edge ], [ %conv54, %for.cond.i.i111.preheader ]
  %i.0.i.i = add nsw i32 %i.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i)
  %cmp.i.i = icmp sgt i32 %i.0.in.i.i, 0
  br i1 %cmp.i.i, label %for.body.i11.i, label %for.cond.i.i111.if.then.i_crit_edge

for.cond.i.i111.if.then.i_crit_edge:              ; preds = %for.cond.i.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

for.body.i11.i:                                   ; preds = %for.cond.i.i111
  %arrayidx.i9.i = getelementptr i64, ptr %w, i32 %i.0.i.i
  %51 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx.i9.i, align 8
  %arrayidx1.i10.i = getelementptr i64, ptr %42, i32 %i.0.i.i
  %53 = ptrtoint ptr %arrayidx1.i10.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx1.i10.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %52, i64 %54)
  %cmp2.i.i = icmp ugt i64 %52, %54
  br i1 %cmp2.i.i, label %for.body.i11.i.if.then.i_crit_edge, label %if.else.i.i

for.body.i11.i.if.then.i_crit_edge:               ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.else.i.i:                                      ; preds = %for.body.i11.i
  %cmp5.i.i = icmp ult i64 %52, %54
  br i1 %cmp5.i.i, label %if.else.i.i.vli_mod_add.exit_crit_edge, label %if.else.i.i.for.cond.i.i111_crit_edge

if.else.i.i.for.cond.i.i111_crit_edge:            ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i111

if.else.i.i.vli_mod_add.exit_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_add.exit

if.then.i:                                        ; preds = %for.body.i11.i.if.then.i_crit_edge, %for.cond.i.i111.if.then.i_crit_edge, %vli_add.exit.i.if.then.i_crit_edge
  br i1 %cmp20.not.i.i, label %if.then.i.for.cond.i.i132.preheader_crit_edge, label %if.then.i.for.body.i21.i_crit_edge

if.then.i.for.body.i21.i_crit_edge:               ; preds = %if.then.i
  br label %for.body.i21.i

if.then.i.for.cond.i.i132.preheader_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i132.preheader

for.body.i21.i:                                   ; preds = %for.body.i21.i.for.body.i21.i_crit_edge, %if.then.i.for.body.i21.i_crit_edge
  %i.022.i13.i = phi i32 [ %inc.i19.i, %for.body.i21.i.for.body.i21.i_crit_edge ], [ 0, %if.then.i.for.body.i21.i_crit_edge ]
  %borrow.021.i.i = phi i64 [ %borrow.1.i.i, %for.body.i21.i.for.body.i21.i_crit_edge ], [ 0, %if.then.i.for.body.i21.i_crit_edge ]
  %arrayidx.i14.i = getelementptr i64, ptr %w, i32 %i.022.i13.i
  %55 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx.i14.i, align 8
  %arrayidx1.i15.i = getelementptr i64, ptr %42, i32 %i.022.i13.i
  %57 = ptrtoint ptr %arrayidx1.i15.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx1.i15.i, align 8
  %59 = add i64 %58, %borrow.021.i.i
  %sub2.i.i = sub i64 %56, %59
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %59)
  %cmp4.not.i16.i = icmp eq i64 %59, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %59)
  %cmp6.i17.i = icmp ult i64 %56, %59
  %60 = zext i1 %cmp6.i17.i to i64
  %borrow.1.i.i = select i1 %cmp4.not.i16.i, i64 %borrow.021.i.i, i64 %60
  %61 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %sub2.i.i, ptr %arrayidx.i14.i, align 8
  %inc.i19.i = add nuw nsw i32 %i.022.i13.i, 1
  %exitcond.not.i20.i = icmp eq i32 %inc.i19.i, %conv54
  br i1 %exitcond.not.i20.i, label %for.body.i21.i.vli_mod_add.exit_crit_edge, label %for.body.i21.i.for.body.i21.i_crit_edge

for.body.i21.i.for.body.i21.i_crit_edge:          ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i

for.body.i21.i.vli_mod_add.exit_crit_edge:        ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_add.exit

vli_mod_add.exit:                                 ; preds = %for.body.i21.i.vli_mod_add.exit_crit_edge, %if.else.i.i.vli_mod_add.exit_crit_edge
  br i1 %cmp20.not.i.i, label %vli_mod_add.exit.for.cond.i.i132.preheader_crit_edge, label %vli_mod_add.exit.for.body.i.i125_crit_edge

vli_mod_add.exit.for.body.i.i125_crit_edge:       ; preds = %vli_mod_add.exit
  br label %for.body.i.i125

vli_mod_add.exit.for.cond.i.i132.preheader_crit_edge: ; preds = %vli_mod_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i132.preheader

for.body.i.i125:                                  ; preds = %for.body.i.i125.for.body.i.i125_crit_edge, %vli_mod_add.exit.for.body.i.i125_crit_edge
  %i.022.i.i113 = phi i32 [ %inc.i.i123, %for.body.i.i125.for.body.i.i125_crit_edge ], [ 0, %vli_mod_add.exit.for.body.i.i125_crit_edge ]
  %carry.021.i.i114 = phi i64 [ %carry.1.i.i121, %for.body.i.i125.for.body.i.i125_crit_edge ], [ 0, %vli_mod_add.exit.for.body.i.i125_crit_edge ]
  %arrayidx.i.i115 = getelementptr i64, ptr %w, i32 %i.022.i.i113
  %62 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %arrayidx.i.i115, align 8
  %arrayidx1.i.i116 = getelementptr i64, ptr %xxx, i32 %i.022.i.i113
  %64 = ptrtoint ptr %arrayidx1.i.i116 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %arrayidx1.i.i116, align 8
  %add.i.i117 = add i64 %63, %carry.021.i.i114
  %add2.i.i118 = add i64 %add.i.i117, %65
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i118, i64 %63)
  %cmp4.not.i.i119 = icmp eq i64 %add2.i.i118, %63
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i118, i64 %63)
  %cmp6.i.i120 = icmp ult i64 %add2.i.i118, %63
  %66 = zext i1 %cmp6.i.i120 to i64
  %carry.1.i.i121 = select i1 %cmp4.not.i.i119, i64 %carry.021.i.i114, i64 %66
  %67 = ptrtoint ptr %arrayidx.i.i115 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %add2.i.i118, ptr %arrayidx.i.i115, align 8
  %inc.i.i123 = add nuw nsw i32 %i.022.i.i113, 1
  %exitcond.not.i.i124 = icmp eq i32 %inc.i.i123, %conv54
  br i1 %exitcond.not.i.i124, label %vli_add.exit.i127, label %for.body.i.i125.for.body.i.i125_crit_edge

for.body.i.i125.for.body.i.i125_crit_edge:        ; preds = %for.body.i.i125
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i125

vli_add.exit.i127:                                ; preds = %for.body.i.i125
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.1.i.i121)
  %tobool.not.i126 = icmp eq i64 %carry.1.i.i121, 0
  br i1 %tobool.not.i126, label %vli_add.exit.i127.for.cond.i.i132.preheader_crit_edge, label %vli_add.exit.i127.if.then.i139_crit_edge

vli_add.exit.i127.if.then.i139_crit_edge:         ; preds = %vli_add.exit.i127
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i139

vli_add.exit.i127.for.cond.i.i132.preheader_crit_edge: ; preds = %vli_add.exit.i127
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i132.preheader

for.cond.i.i132.preheader:                        ; preds = %vli_add.exit.i127.for.cond.i.i132.preheader_crit_edge, %vli_mod_add.exit.for.cond.i.i132.preheader_crit_edge, %if.then.i.for.cond.i.i132.preheader_crit_edge
  br label %for.cond.i.i132

for.cond.i.i132:                                  ; preds = %if.else.i.i138.for.cond.i.i132_crit_edge, %for.cond.i.i132.preheader
  %i.0.in.i.i129 = phi i32 [ %i.0.i.i130, %if.else.i.i138.for.cond.i.i132_crit_edge ], [ %conv54, %for.cond.i.i132.preheader ]
  %i.0.i.i130 = add nsw i32 %i.0.in.i.i129, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i129)
  %cmp.i.i131 = icmp sgt i32 %i.0.in.i.i129, 0
  br i1 %cmp.i.i131, label %for.body.i11.i136, label %for.cond.i.i132.if.then.i139_crit_edge

for.cond.i.i132.if.then.i139_crit_edge:           ; preds = %for.cond.i.i132
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i139

for.body.i11.i136:                                ; preds = %for.cond.i.i132
  %arrayidx.i9.i133 = getelementptr i64, ptr %w, i32 %i.0.i.i130
  %68 = ptrtoint ptr %arrayidx.i9.i133 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx.i9.i133, align 8
  %arrayidx1.i10.i134 = getelementptr i64, ptr %42, i32 %i.0.i.i130
  %70 = ptrtoint ptr %arrayidx1.i10.i134 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %arrayidx1.i10.i134, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %69, i64 %71)
  %cmp2.i.i135 = icmp ugt i64 %69, %71
  br i1 %cmp2.i.i135, label %for.body.i11.i136.if.then.i139_crit_edge, label %if.else.i.i138

for.body.i11.i136.if.then.i139_crit_edge:         ; preds = %for.body.i11.i136
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i139

if.else.i.i138:                                   ; preds = %for.body.i11.i136
  %cmp5.i.i137 = icmp ult i64 %69, %71
  br i1 %cmp5.i.i137, label %if.else.i.i138.for.cond.i155.preheader_crit_edge, label %if.else.i.i138.for.cond.i.i132_crit_edge

if.else.i.i138.for.cond.i.i132_crit_edge:         ; preds = %if.else.i.i138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i132

if.else.i.i138.for.cond.i155.preheader_crit_edge: ; preds = %if.else.i.i138
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i155.preheader

if.then.i139:                                     ; preds = %for.body.i11.i136.if.then.i139_crit_edge, %for.cond.i.i132.if.then.i139_crit_edge, %vli_add.exit.i127.if.then.i139_crit_edge
  br i1 %cmp20.not.i.i, label %if.then.i139.for.cond.i155.preheader_crit_edge, label %if.then.i139.for.body.i21.i150_crit_edge

if.then.i139.for.body.i21.i150_crit_edge:         ; preds = %if.then.i139
  br label %for.body.i21.i150

if.then.i139.for.cond.i155.preheader_crit_edge:   ; preds = %if.then.i139
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i155.preheader

for.body.i21.i150:                                ; preds = %for.body.i21.i150.for.body.i21.i150_crit_edge, %if.then.i139.for.body.i21.i150_crit_edge
  %i.022.i13.i140 = phi i32 [ %inc.i19.i148, %for.body.i21.i150.for.body.i21.i150_crit_edge ], [ 0, %if.then.i139.for.body.i21.i150_crit_edge ]
  %borrow.021.i.i141 = phi i64 [ %borrow.1.i.i147, %for.body.i21.i150.for.body.i21.i150_crit_edge ], [ 0, %if.then.i139.for.body.i21.i150_crit_edge ]
  %arrayidx.i14.i142 = getelementptr i64, ptr %w, i32 %i.022.i13.i140
  %72 = ptrtoint ptr %arrayidx.i14.i142 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %arrayidx.i14.i142, align 8
  %arrayidx1.i15.i143 = getelementptr i64, ptr %42, i32 %i.022.i13.i140
  %74 = ptrtoint ptr %arrayidx1.i15.i143 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx1.i15.i143, align 8
  %76 = add i64 %75, %borrow.021.i.i141
  %sub2.i.i144 = sub i64 %73, %76
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %76)
  %cmp4.not.i16.i145 = icmp eq i64 %76, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %73, i64 %76)
  %cmp6.i17.i146 = icmp ult i64 %73, %76
  %77 = zext i1 %cmp6.i17.i146 to i64
  %borrow.1.i.i147 = select i1 %cmp4.not.i16.i145, i64 %borrow.021.i.i141, i64 %77
  %78 = ptrtoint ptr %arrayidx.i14.i142 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %sub2.i.i144, ptr %arrayidx.i14.i142, align 8
  %inc.i19.i148 = add nuw nsw i32 %i.022.i13.i140, 1
  %exitcond.not.i20.i149 = icmp eq i32 %inc.i19.i148, %conv54
  br i1 %exitcond.not.i20.i149, label %for.body.i21.i150.for.cond.i155.preheader_crit_edge, label %for.body.i21.i150.for.body.i21.i150_crit_edge

for.body.i21.i150.for.body.i21.i150_crit_edge:    ; preds = %for.body.i21.i150
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i150

for.body.i21.i150.for.cond.i155.preheader_crit_edge: ; preds = %for.body.i21.i150
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i155.preheader

for.cond.i155.preheader:                          ; preds = %for.body.i21.i150.for.cond.i155.preheader_crit_edge, %if.then.i139.for.cond.i155.preheader_crit_edge, %if.else.i.i138.for.cond.i155.preheader_crit_edge
  br label %for.cond.i155

for.cond.i155:                                    ; preds = %for.body.i159.for.cond.i155_crit_edge, %for.cond.i155.preheader
  %i.0.in.i152 = phi i32 [ %i.0.i153, %for.body.i159.for.cond.i155_crit_edge ], [ %conv54, %for.cond.i155.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i152)
  %cmp.i154 = icmp sgt i32 %i.0.in.i152, 0
  br i1 %cmp.i154, label %for.body.i159, label %for.cond.i155.cleanup_crit_edge

for.cond.i155.cleanup_crit_edge:                  ; preds = %for.cond.i155
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i159:                                    ; preds = %for.cond.i155
  %i.0.i153 = add nsw i32 %i.0.in.i152, -1
  %arrayidx.i156 = getelementptr i64, ptr %yy, i32 %i.0.i153
  %79 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx.i156, align 8
  %arrayidx1.i157 = getelementptr i64, ptr %w, i32 %i.0.i153
  %81 = ptrtoint ptr %arrayidx1.i157 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx1.i157, align 8
  %.not = icmp eq i64 %80, %82
  br i1 %.not, label %for.body.i159.for.cond.i155_crit_edge, label %for.body.i159.cleanup_crit_edge

for.body.i159.cleanup_crit_edge:                  ; preds = %for.body.i159
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i159.for.cond.i155_crit_edge:            ; preds = %for.body.i159
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i155

cleanup:                                          ; preds = %for.body.i159.cleanup_crit_edge, %for.cond.i155.cleanup_crit_edge, %if.else.i104.cleanup_crit_edge, %for.cond.i98.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %ecc_point_is_zero.exit.cleanup_crit_edge, %for.cond.i13.i.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %ecc_point_is_zero.exit.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %for.body.i159.cleanup_crit_edge ], [ 0, %for.cond.i155.cleanup_crit_edge ], [ -22, %if.else.i104.cleanup_crit_edge ], [ -22, %for.cond.i98.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ], [ -22, %for.cond.i13.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %w) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %xxx) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %yy) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vli_mod_square_fast(ptr noundef %result, ptr nocapture noundef readonly %left, ptr nocapture noundef readonly %curve) unnamed_addr #1 align 64 {
entry:
  %product = alloca [16 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %product) #16
  %0 = call ptr @memset(ptr %product, i32 255, i32 128)
  %ndigits = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 1, i32 2
  %1 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %ndigits, align 4
  %conv = zext i8 %2 to i32
  %mul.i = shl nuw nsw i32 %conv, 1
  %sub.i = add nsw i32 %mul.i, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %entry
  %k.086.i = phi i32 [ 0, %entry ], [ %add.i, %for.end.i.for.body.i_crit_edge ]
  %r01.sroa.8.085.i = phi i64 [ 0, %entry ], [ %r2.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  %r01.sroa.0.084.i = phi i64 [ 0, %entry ], [ %r01.sroa.8.1.lcssa.i, %for.end.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.086.i, i32 %conv)
  %cmp1.i = icmp ult i32 %k.086.i, %conv
  %add.i = add nuw i32 %k.086.i, 1
  %sub2.i = sub i32 %add.i, %conv
  %min.0.i = select i1 %cmp1.i, i32 0, i32 %sub2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %k.086.i, i32 %min.0.i)
  %cmp4.not74.i = icmp slt i32 %k.086.i, %min.0.i
  br i1 %cmp4.not74.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.land.rhs.i_crit_edge

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  br label %land.rhs.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

land.rhs.i:                                       ; preds = %if.end19.i.land.rhs.i_crit_edge, %for.body.i.land.rhs.i_crit_edge
  %i.078.i = phi i32 [ %inc.i, %if.end19.i.land.rhs.i_crit_edge ], [ %min.0.i, %for.body.i.land.rhs.i_crit_edge ]
  %r2.177.i = phi i64 [ %add25.i, %if.end19.i.land.rhs.i_crit_edge ], [ 0, %for.body.i.land.rhs.i_crit_edge ]
  %r01.sroa.8.176.i = phi i64 [ %add8.i73.i, %if.end19.i.land.rhs.i_crit_edge ], [ %r01.sroa.8.085.i, %for.body.i.land.rhs.i_crit_edge ]
  %r01.sroa.0.175.i = phi i64 [ %add.i71.i, %if.end19.i.land.rhs.i_crit_edge ], [ %r01.sroa.0.084.i, %for.body.i.land.rhs.i_crit_edge ]
  %sub5.i = sub i32 %k.086.i, %i.078.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.078.i, i32 %sub5.i)
  %cmp6.not.i = icmp sgt i32 %i.078.i, %sub5.i
  br i1 %cmp6.not.i, label %land.rhs.i.for.end.i_crit_edge, label %for.body7.i

land.rhs.i.for.end.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body7.i:                                      ; preds = %land.rhs.i
  %arrayidx.i = getelementptr i64, ptr %left, i32 %i.078.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx.i, align 8
  %arrayidx9.i = getelementptr i64, ptr %left, i32 %sub5.i
  %5 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx9.i, align 8
  %and.i.i = and i64 %4, 4294967295
  %shr.i.i = lshr i64 %4, 32
  %and1.i.i = and i64 %6, 4294967295
  %shr2.i.i = lshr i64 %6, 32
  %mul.i.i = mul nuw i64 %and1.i.i, %and.i.i
  %mul3.i.i = mul nuw i64 %shr2.i.i, %and.i.i
  %mul4.i.i = mul nuw i64 %and1.i.i, %shr.i.i
  %mul5.i.i = mul nuw i64 %shr2.i.i, %shr.i.i
  %shr6.i.i = lshr i64 %mul.i.i, 32
  %add.i.i = add i64 %mul3.i.i, %mul4.i.i
  %add7.i.i = add i64 %add.i.i, %shr6.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add7.i.i, i64 %mul3.i.i)
  %cmp.i.i = icmp ult i64 %add7.i.i, %mul3.i.i
  %add8.i.i = add nuw i64 %mul5.i.i, 4294967296
  %spec.select.i.i = select i1 %cmp.i.i, i64 %add8.i.i, i64 %mul5.i.i
  %and9.i.i = and i64 %mul.i.i, 4294967295
  %shl.i.i = shl i64 %add7.i.i, 32
  %or.i.i = or i64 %shl.i.i, %and9.i.i
  %shr10.i.i = lshr i64 %add7.i.i, 32
  %add11.i.i = add i64 %spec.select.i.i, %shr10.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.078.i, i32 %sub5.i)
  %cmp11.i = icmp slt i32 %i.078.i, %sub5.i
  br i1 %cmp11.i, label %if.then12.i, label %for.body7.i.if.end19.i_crit_edge

for.body7.i.if.end19.i_crit_edge:                 ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.i

if.then12.i:                                      ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #18
  %shr.i = lshr i64 %add11.i.i, 63
  %add13.i = add i64 %shr.i, %r2.177.i
  %or.i = tail call i64 @llvm.fshl.i64(i64 %add11.i.i, i64 %shl.i.i, i64 1) #16
  %shl18.i = shl i64 %or.i.i, 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then12.i, %for.body7.i.if.end19.i_crit_edge
  %r2.2.i = phi i64 [ %add13.i, %if.then12.i ], [ %r2.177.i, %for.body7.i.if.end19.i_crit_edge ]
  %product.sroa.8.0.i = phi i64 [ %or.i, %if.then12.i ], [ %add11.i.i, %for.body7.i.if.end19.i_crit_edge ]
  %product.sroa.0.0.i = phi i64 [ %shl18.i, %if.then12.i ], [ %or.i.i, %for.body7.i.if.end19.i_crit_edge ]
  %add.i71.i = add i64 %product.sroa.0.0.i, %r01.sroa.0.175.i
  %add4.i.i = add i64 %product.sroa.8.0.i, %r01.sroa.8.176.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i71.i, i64 %r01.sroa.0.175.i)
  %cmp.i72.i = icmp ult i64 %add.i71.i, %r01.sroa.0.175.i
  %7 = zext i1 %cmp.i72.i to i64
  %add8.i73.i = add i64 %add4.i.i, %7
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i73.i, i64 %product.sroa.8.0.i)
  %cmp23.i = icmp ult i64 %add8.i73.i, %product.sroa.8.0.i
  %8 = zext i1 %cmp23.i to i64
  %add25.i = add i64 %r2.2.i, %8
  %inc.i = add i32 %i.078.i, 1
  %cmp4.not.i = icmp slt i32 %k.086.i, %inc.i
  br i1 %cmp4.not.i, label %if.end19.i.for.end.i_crit_edge, label %if.end19.i.land.rhs.i_crit_edge

if.end19.i.land.rhs.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i

if.end19.i.for.end.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.end.i:                                        ; preds = %if.end19.i.for.end.i_crit_edge, %land.rhs.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %r01.sroa.0.1.lcssa.i = phi i64 [ %r01.sroa.0.084.i, %for.body.i.for.end.i_crit_edge ], [ %r01.sroa.0.175.i, %land.rhs.i.for.end.i_crit_edge ], [ %add.i71.i, %if.end19.i.for.end.i_crit_edge ]
  %r01.sroa.8.1.lcssa.i = phi i64 [ %r01.sroa.8.085.i, %for.body.i.for.end.i_crit_edge ], [ %r01.sroa.8.176.i, %land.rhs.i.for.end.i_crit_edge ], [ %add8.i73.i, %if.end19.i.for.end.i_crit_edge ]
  %r2.1.lcssa.i = phi i64 [ 0, %for.body.i.for.end.i_crit_edge ], [ %r2.177.i, %land.rhs.i.for.end.i_crit_edge ], [ %add25.i, %if.end19.i.for.end.i_crit_edge ]
  %arrayidx27.i = getelementptr i64, ptr %product, i32 %k.086.i
  %9 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %r01.sroa.0.1.lcssa.i, ptr %arrayidx27.i, align 8
  %exitcond.not.i = icmp eq i32 %add.i, %sub.i
  br i1 %exitcond.not.i, label %vli_square.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

vli_square.exit:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx37.i = getelementptr i64, ptr %product, i32 %sub.i
  %10 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %r01.sroa.8.1.lcssa.i, ptr %arrayidx37.i, align 8
  call fastcc void @vli_mmod_fast(ptr noundef %result, ptr noundef nonnull %product, ptr noundef %curve)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %product) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_ecdh_shared_secret(i32 noundef %curve_id, i32 noundef %ndigits, ptr noundef readonly %private_key, ptr noundef readonly %public_key, ptr nocapture noundef writeonly %secret) #1 align 64 {
entry:
  %priv = alloca [8 x i64], align 8
  %rand_z = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %priv) #16
  %0 = call ptr @memset(ptr %priv, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rand_z) #16
  %1 = call ptr @memset(ptr %rand_z, i32 255, i32 64)
  %switch.tableidx = add i32 %curve_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 3
  br i1 %2, label %switch.lookup, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.crypto_ecdh_shared_secret, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %tobool.not = icmp eq ptr %private_key, null
  %tobool1.not = icmp eq ptr %public_key, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %ndigits)
  %cmp = icmp ugt i32 %ndigits, 8
  %or.cond54 = or i1 %cmp, %or.cond
  br i1 %or.cond54, label %switch.lookup.out_crit_edge, label %if.end

switch.lookup.out_crit_edge:                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %switch.lookup
  %shl = shl nuw nsw i32 %ndigits, 3
  call void @get_random_bytes(ptr noundef nonnull %rand_z, i32 noundef %shl) #16
  %call7 = call ptr @ecc_alloc_point(i32 noundef %ndigits)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end.out_crit_edge, label %if.end10

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end10:                                         ; preds = %if.end
  %4 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ndigits)
  %cmp7.not.i = icmp eq i32 %ndigits, 0
  br i1 %cmp7.not.i, label %ecc_swap_digits.exit63.thread, label %for.body.i

for.body.i:                                       ; preds = %if.end10
  %sub1.i = add i32 %ndigits, -1
  %arrayidx.i = getelementptr i64, ptr %public_key, i32 %sub1.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %arrayidx.i, align 1
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ndigits)
  %exitcond.not.i = icmp eq i32 %ndigits, 1
  br i1 %exitcond.not.i, label %for.body.i.for.body.i62.preheader_crit_edge, label %for.body.i.1

for.body.i.for.body.i62.preheader_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i62.preheader

for.body.i.1:                                     ; preds = %for.body.i
  %sub1.i.1 = add i32 %ndigits, -2
  %arrayidx.i.1 = getelementptr i64, ptr %public_key, i32 %sub1.i.1
  %9 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %arrayidx.i.1, align 1
  %arrayidx2.i.1 = getelementptr i64, ptr %5, i32 1
  %11 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx2.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ndigits)
  %exitcond.not.i.1 = icmp eq i32 %ndigits, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.for.body.i62.preheader_crit_edge, label %for.body.i.2

for.body.i.1.for.body.i62.preheader_crit_edge:    ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i62.preheader

for.body.i.2:                                     ; preds = %for.body.i.1
  %sub1.i.2 = add i32 %ndigits, -3
  %arrayidx.i.2 = getelementptr i64, ptr %public_key, i32 %sub1.i.2
  %12 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %arrayidx.i.2, align 1
  %arrayidx2.i.2 = getelementptr i64, ptr %5, i32 2
  %14 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %arrayidx2.i.2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ndigits)
  %exitcond.not.i.2 = icmp eq i32 %ndigits, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.for.body.i62.preheader_crit_edge, label %for.body.i.3

for.body.i.2.for.body.i62.preheader_crit_edge:    ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i62.preheader

for.body.i.3:                                     ; preds = %for.body.i.2
  %sub1.i.3 = add i32 %ndigits, -4
  %arrayidx.i.3 = getelementptr i64, ptr %public_key, i32 %sub1.i.3
  %15 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %arrayidx.i.3, align 1
  %arrayidx2.i.3 = getelementptr i64, ptr %5, i32 3
  %17 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %arrayidx2.i.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %ndigits)
  %exitcond.not.i.3 = icmp eq i32 %ndigits, 4
  br i1 %exitcond.not.i.3, label %for.body.i.3.for.body.i62.preheader_crit_edge, label %for.body.i.4

for.body.i.3.for.body.i62.preheader_crit_edge:    ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i62.preheader

for.body.i.4:                                     ; preds = %for.body.i.3
  %sub1.i.4 = add i32 %ndigits, -5
  %arrayidx.i.4 = getelementptr i64, ptr %public_key, i32 %sub1.i.4
  %18 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %arrayidx.i.4, align 1
  %arrayidx2.i.4 = getelementptr i64, ptr %5, i32 4
  %20 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %arrayidx2.i.4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %ndigits)
  %exitcond.not.i.4 = icmp eq i32 %ndigits, 5
  br i1 %exitcond.not.i.4, label %for.body.i.4.for.body.i62.preheader_crit_edge, label %for.body.i.5

for.body.i.4.for.body.i62.preheader_crit_edge:    ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i62.preheader

for.body.i.5:                                     ; preds = %for.body.i.4
  %sub1.i.5 = add i32 %ndigits, -6
  %arrayidx.i.5 = getelementptr i64, ptr %public_key, i32 %sub1.i.5
  %21 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %arrayidx.i.5, align 1
  %arrayidx2.i.5 = getelementptr i64, ptr %5, i32 5
  %23 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arrayidx2.i.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %ndigits)
  %exitcond.not.i.5 = icmp eq i32 %ndigits, 6
  br i1 %exitcond.not.i.5, label %for.body.i.5.for.body.i62.preheader_crit_edge, label %for.body.i.6

for.body.i.5.for.body.i62.preheader_crit_edge:    ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i62.preheader

for.body.i.6:                                     ; preds = %for.body.i.5
  %sub1.i.6 = add i32 %ndigits, -7
  %arrayidx.i.6 = getelementptr i64, ptr %public_key, i32 %sub1.i.6
  %24 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %arrayidx.i.6, align 1
  %arrayidx2.i.6 = getelementptr i64, ptr %5, i32 6
  %26 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %arrayidx2.i.6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %ndigits)
  %exitcond.not.i.6 = icmp eq i32 %ndigits, 7
  br i1 %exitcond.not.i.6, label %for.body.i.6.for.body.i62.preheader_crit_edge, label %for.body.i.7

for.body.i.6.for.body.i62.preheader_crit_edge:    ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i62.preheader

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #18
  %sub1.i.7 = add i32 %ndigits, -8
  %arrayidx.i.7 = getelementptr i64, ptr %public_key, i32 %sub1.i.7
  %27 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %28 = load i64, ptr %arrayidx.i.7, align 1
  %arrayidx2.i.7 = getelementptr i64, ptr %5, i32 7
  %29 = ptrtoint ptr %arrayidx2.i.7 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %arrayidx2.i.7, align 8
  br label %for.body.i62.preheader

for.body.i62.preheader:                           ; preds = %for.body.i.7, %for.body.i.6.for.body.i62.preheader_crit_edge, %for.body.i.5.for.body.i62.preheader_crit_edge, %for.body.i.4.for.body.i62.preheader_crit_edge, %for.body.i.3.for.body.i62.preheader_crit_edge, %for.body.i.2.for.body.i62.preheader_crit_edge, %for.body.i.1.for.body.i62.preheader_crit_edge, %for.body.i.for.body.i62.preheader_crit_edge
  %arrayidx = getelementptr i64, ptr %public_key, i32 %ndigits
  %y = getelementptr inbounds %struct.ecc_point, ptr %call7, i32 0, i32 1
  %30 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %y, align 4
  br label %for.body.i62

for.body.i62:                                     ; preds = %for.body.i62.for.body.i62_crit_edge, %for.body.i62.preheader
  %i.08.i56 = phi i32 [ %inc.i60, %for.body.i62.for.body.i62_crit_edge ], [ 0, %for.body.i62.preheader ]
  %32 = xor i32 %i.08.i56, -1
  %sub1.i57 = add i32 %32, %ndigits
  %arrayidx.i58 = getelementptr i64, ptr %arrayidx, i32 %sub1.i57
  %33 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %arrayidx.i58, align 1
  %arrayidx2.i59 = getelementptr i64, ptr %31, i32 %i.08.i56
  %35 = ptrtoint ptr %arrayidx2.i59 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %arrayidx2.i59, align 8
  %inc.i60 = add nuw nsw i32 %i.08.i56, 1
  %exitcond.not.i61 = icmp eq i32 %inc.i60, %ndigits
  br i1 %exitcond.not.i61, label %ecc_swap_digits.exit63, label %for.body.i62.for.body.i62_crit_edge

for.body.i62.for.body.i62_crit_edge:              ; preds = %for.body.i62
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i62

ecc_swap_digits.exit63:                           ; preds = %for.body.i62
  %call11 = call i32 @ecc_is_pubkey_valid_partial(ptr noundef nonnull %switch.load, ptr noundef nonnull %call7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %ecc_swap_digits.exit63.ecc_free_point.exit86_crit_edge

ecc_swap_digits.exit63.ecc_free_point.exit86_crit_edge: ; preds = %ecc_swap_digits.exit63
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit86

ecc_swap_digits.exit63.thread:                    ; preds = %if.end10
  %y88 = getelementptr inbounds %struct.ecc_point, ptr %call7, i32 0, i32 1
  %call11100 = call i32 @ecc_is_pubkey_valid_partial(ptr noundef nonnull %switch.load, ptr noundef nonnull %call7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11100)
  %tobool12.not101 = icmp eq i32 %call11100, 0
  br i1 %tobool12.not101, label %ecc_swap_digits.exit63.thread.ecc_swap_digits.exit72_crit_edge, label %ecc_swap_digits.exit63.thread.ecc_free_point.exit86_crit_edge

ecc_swap_digits.exit63.thread.ecc_free_point.exit86_crit_edge: ; preds = %ecc_swap_digits.exit63.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit86

ecc_swap_digits.exit63.thread.ecc_swap_digits.exit72_crit_edge: ; preds = %ecc_swap_digits.exit63.thread
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_swap_digits.exit72

if.end14:                                         ; preds = %ecc_swap_digits.exit63
  br i1 %cmp7.not.i, label %if.end14.ecc_swap_digits.exit72_crit_edge, label %if.end14.for.body.i71_crit_edge

if.end14.for.body.i71_crit_edge:                  ; preds = %if.end14
  br label %for.body.i71

if.end14.ecc_swap_digits.exit72_crit_edge:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_swap_digits.exit72

for.body.i71:                                     ; preds = %for.body.i71.for.body.i71_crit_edge, %if.end14.for.body.i71_crit_edge
  %i.08.i65 = phi i32 [ %inc.i69, %for.body.i71.for.body.i71_crit_edge ], [ 0, %if.end14.for.body.i71_crit_edge ]
  %36 = xor i32 %i.08.i65, -1
  %sub1.i66 = add i32 %36, %ndigits
  %arrayidx.i67 = getelementptr i64, ptr %private_key, i32 %sub1.i66
  %37 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %arrayidx.i67, align 1
  %arrayidx2.i68 = getelementptr i64, ptr %priv, i32 %i.08.i65
  %39 = ptrtoint ptr %arrayidx2.i68 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %arrayidx2.i68, align 8
  %inc.i69 = add nuw i32 %i.08.i65, 1
  %exitcond.not.i70 = icmp eq i32 %inc.i69, %ndigits
  br i1 %exitcond.not.i70, label %for.body.i71.ecc_swap_digits.exit72_crit_edge, label %for.body.i71.for.body.i71_crit_edge

for.body.i71.for.body.i71_crit_edge:              ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i71

for.body.i71.ecc_swap_digits.exit72_crit_edge:    ; preds = %for.body.i71
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_swap_digits.exit72

ecc_swap_digits.exit72:                           ; preds = %for.body.i71.ecc_swap_digits.exit72_crit_edge, %if.end14.ecc_swap_digits.exit72_crit_edge, %ecc_swap_digits.exit63.thread.ecc_swap_digits.exit72_crit_edge
  %y89103105 = phi ptr [ %y, %if.end14.ecc_swap_digits.exit72_crit_edge ], [ %y88, %ecc_swap_digits.exit63.thread.ecc_swap_digits.exit72_crit_edge ], [ %y, %for.body.i71.ecc_swap_digits.exit72_crit_edge ]
  %call16 = call ptr @ecc_alloc_point(i32 noundef %ndigits)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %ecc_swap_digits.exit72.ecc_free_point.exit86_crit_edge, label %if.end19

ecc_swap_digits.exit72.ecc_free_point.exit86_crit_edge: ; preds = %ecc_swap_digits.exit72
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit86

if.end19:                                         ; preds = %ecc_swap_digits.exit72
  call fastcc void @ecc_point_mult(ptr noundef nonnull %call16, ptr noundef nonnull %call7, ptr noundef nonnull %priv, ptr noundef nonnull %rand_z, ptr noundef nonnull %switch.load, i32 noundef %ndigits)
  %40 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call16, align 4
  %ndigits.i = getelementptr inbounds %struct.ecc_point, ptr %call16, i32 0, i32 2
  %42 = ptrtoint ptr %ndigits.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ndigits.i, align 4
  %conv.i = zext i8 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp3.not.i.i = icmp eq i8 %43, 0
  br i1 %cmp3.not.i.i, label %if.end19.ecc_free_point.exit_crit_edge, label %for.body.i.preheader.i

if.end19.ecc_free_point.exit_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit

for.body.i.preheader.i:                           ; preds = %if.end19
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %41, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool.not.i23.i = icmp eq i64 %45, 0
  br i1 %tobool.not.i23.i, label %for.body.i.preheader.i.for.cond.i.i_crit_edge, label %for.body.i.preheader.i.if.end24_crit_edge

for.body.i.preheader.i.if.end24_crit_edge:        ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

for.body.i.preheader.i.for.cond.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.preheader.i.for.cond.i.i_crit_edge
  %i.04.i24.i = phi i32 [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.cond.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.04.i24.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv.i)
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i
  br i1 %exitcond.not.i.i, label %for.cond.i.i.for.body.i18.preheader.i_crit_edge, label %for.body.i.i

for.cond.i.i.for.body.i18.preheader.i_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i18.preheader.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr i64, ptr %41, i32 %inc.i.i
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx.i.i, align 8
  %tobool.not.i.i = icmp eq i64 %47, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %vli_is_zero.exit.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

vli_is_zero.exit.i:                               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv.i)
  %cmp.i.le.i = icmp ult i32 %inc.i.i, %conv.i
  br i1 %cmp.i.le.i, label %vli_is_zero.exit.i.if.end24_crit_edge, label %vli_is_zero.exit.i.for.body.i18.preheader.i_crit_edge

vli_is_zero.exit.i.for.body.i18.preheader.i_crit_edge: ; preds = %vli_is_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i18.preheader.i

vli_is_zero.exit.i.if.end24_crit_edge:            ; preds = %vli_is_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

for.body.i18.preheader.i:                         ; preds = %vli_is_zero.exit.i.for.body.i18.preheader.i_crit_edge, %for.cond.i.i.for.body.i18.preheader.i_crit_edge
  %y.i = getelementptr inbounds %struct.ecc_point, ptr %call16, i32 0, i32 1
  %48 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %y.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %49, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %51)
  %tobool.not.i1726.i = icmp eq i64 %51, 0
  br i1 %tobool.not.i1726.i, label %for.body.i18.preheader.i.for.cond.i13.i_crit_edge, label %for.body.i18.preheader.i.if.end24_crit_edge

for.body.i18.preheader.i.if.end24_crit_edge:      ; preds = %for.body.i18.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

for.body.i18.preheader.i.for.cond.i13.i_crit_edge: ; preds = %for.body.i18.preheader.i
  br label %for.cond.i13.i

for.cond.i13.i:                                   ; preds = %for.body.i18.i.for.cond.i13.i_crit_edge, %for.body.i18.preheader.i.for.cond.i13.i_crit_edge
  %i.04.i1527.i = phi i32 [ %inc.i10.i, %for.body.i18.i.for.cond.i13.i_crit_edge ], [ 0, %for.body.i18.preheader.i.for.cond.i13.i_crit_edge ]
  %inc.i10.i = add nuw nsw i32 %i.04.i1527.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i10.i, i32 %conv.i)
  %exitcond.not.i12.i = icmp eq i32 %inc.i10.i, %conv.i
  br i1 %exitcond.not.i12.i, label %for.cond.i13.i.ecc_free_point.exit_crit_edge, label %for.body.i18.i

for.cond.i13.i.ecc_free_point.exit_crit_edge:     ; preds = %for.cond.i13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit

for.body.i18.i:                                   ; preds = %for.cond.i13.i
  %arrayidx.i16.i = getelementptr i64, ptr %49, i32 %inc.i10.i
  %52 = ptrtoint ptr %arrayidx.i16.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx.i16.i, align 8
  %tobool.not.i17.i = icmp eq i64 %53, 0
  br i1 %tobool.not.i17.i, label %for.body.i18.i.for.cond.i13.i_crit_edge, label %ecc_point_is_zero.exit

for.body.i18.i.for.cond.i13.i_crit_edge:          ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i13.i

ecc_point_is_zero.exit:                           ; preds = %for.body.i18.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i10.i, i32 %conv.i)
  %cmp.i11.le.i = icmp uge i32 %inc.i10.i, %conv.i
  %brmerge = or i1 %cmp7.not.i, %cmp.i11.le.i
  %.mux = select i1 %cmp.i11.le.i, i32 -14, i32 0
  br i1 %brmerge, label %ecc_point_is_zero.exit.ecc_free_point.exit_crit_edge, label %ecc_point_is_zero.exit.for.body.i80.preheader_crit_edge

ecc_point_is_zero.exit.for.body.i80.preheader_crit_edge: ; preds = %ecc_point_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i80.preheader

ecc_point_is_zero.exit.ecc_free_point.exit_crit_edge: ; preds = %ecc_point_is_zero.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit

if.end24:                                         ; preds = %for.body.i18.preheader.i.if.end24_crit_edge, %vli_is_zero.exit.i.if.end24_crit_edge, %for.body.i.preheader.i.if.end24_crit_edge
  br i1 %cmp7.not.i, label %if.end24.ecc_free_point.exit_crit_edge, label %if.end24.for.body.i80.preheader_crit_edge

if.end24.for.body.i80.preheader_crit_edge:        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i80.preheader

if.end24.ecc_free_point.exit_crit_edge:           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit

for.body.i80.preheader:                           ; preds = %if.end24.for.body.i80.preheader_crit_edge, %ecc_point_is_zero.exit.for.body.i80.preheader_crit_edge
  br label %for.body.i80

for.body.i80:                                     ; preds = %for.body.i80.for.body.i80_crit_edge, %for.body.i80.preheader
  %i.08.i74 = phi i32 [ %inc.i78, %for.body.i80.for.body.i80_crit_edge ], [ 0, %for.body.i80.preheader ]
  %54 = xor i32 %i.08.i74, -1
  %sub1.i75 = add i32 %54, %ndigits
  %arrayidx.i76 = getelementptr i64, ptr %41, i32 %sub1.i75
  %55 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %arrayidx.i76, align 1
  %arrayidx2.i77 = getelementptr i64, ptr %secret, i32 %i.08.i74
  %57 = ptrtoint ptr %arrayidx2.i77 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 %56, ptr %arrayidx2.i77, align 8
  %inc.i78 = add nuw i32 %i.08.i74, 1
  %exitcond.not.i79 = icmp eq i32 %inc.i78, %ndigits
  br i1 %exitcond.not.i79, label %for.body.i80.ecc_free_point.exit_crit_edge, label %for.body.i80.for.body.i80_crit_edge

for.body.i80.for.body.i80_crit_edge:              ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i80

for.body.i80.ecc_free_point.exit_crit_edge:       ; preds = %for.body.i80
  call void @__sanitizer_cov_trace_pc() #18
  br label %ecc_free_point.exit

ecc_free_point.exit:                              ; preds = %for.body.i80.ecc_free_point.exit_crit_edge, %if.end24.ecc_free_point.exit_crit_edge, %ecc_point_is_zero.exit.ecc_free_point.exit_crit_edge, %for.cond.i13.i.ecc_free_point.exit_crit_edge, %if.end19.ecc_free_point.exit_crit_edge
  %ret.0 = phi i32 [ %.mux, %ecc_point_is_zero.exit.ecc_free_point.exit_crit_edge ], [ 0, %if.end24.ecc_free_point.exit_crit_edge ], [ -14, %if.end19.ecc_free_point.exit_crit_edge ], [ 0, %for.body.i80.ecc_free_point.exit_crit_edge ], [ -14, %for.cond.i13.i.ecc_free_point.exit_crit_edge ]
  %58 = call ptr @memset(ptr %priv, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %priv) #16, !srcloc !122
  %59 = call ptr @memset(ptr %rand_z, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %rand_z) #16, !srcloc !122
  %60 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call16, align 4
  call void @kfree_sensitive(ptr noundef %61) #16
  %y.i82 = getelementptr inbounds %struct.ecc_point, ptr %call16, i32 0, i32 1
  %62 = ptrtoint ptr %y.i82 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %y.i82, align 4
  call void @kfree_sensitive(ptr noundef %63) #16
  call void @kfree_sensitive(ptr noundef nonnull %call16) #16
  br label %ecc_free_point.exit86

ecc_free_point.exit86:                            ; preds = %ecc_free_point.exit, %ecc_swap_digits.exit72.ecc_free_point.exit86_crit_edge, %ecc_swap_digits.exit63.thread.ecc_free_point.exit86_crit_edge, %ecc_swap_digits.exit63.ecc_free_point.exit86_crit_edge
  %y89102 = phi ptr [ %y, %ecc_swap_digits.exit63.ecc_free_point.exit86_crit_edge ], [ %y89103105, %ecc_free_point.exit ], [ %y89103105, %ecc_swap_digits.exit72.ecc_free_point.exit86_crit_edge ], [ %y88, %ecc_swap_digits.exit63.thread.ecc_free_point.exit86_crit_edge ]
  %ret.1 = phi i32 [ %call11, %ecc_swap_digits.exit63.ecc_free_point.exit86_crit_edge ], [ %ret.0, %ecc_free_point.exit ], [ -12, %ecc_swap_digits.exit72.ecc_free_point.exit86_crit_edge ], [ %call11100, %ecc_swap_digits.exit63.thread.ecc_free_point.exit86_crit_edge ]
  %64 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call7, align 4
  call void @kfree_sensitive(ptr noundef %65) #16
  %66 = ptrtoint ptr %y89102 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %y89102, align 4
  call void @kfree_sensitive(ptr noundef %67) #16
  call void @kfree_sensitive(ptr noundef nonnull %call7) #16
  br label %out

out:                                              ; preds = %ecc_free_point.exit86, %if.end.out_crit_edge, %switch.lookup.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi i32 [ %ret.1, %ecc_free_point.exit86 ], [ -22, %switch.lookup.out_crit_edge ], [ -12, %if.end.out_crit_edge ], [ -22, %entry.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rand_z) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %priv) #16
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vli_mmod_fast(ptr noundef %result, ptr noundef readonly %product, ptr nocapture noundef readonly %curve) unnamed_addr #1 align 64 {
entry:
  %q.i40 = alloca [16 x i64], align 8
  %r.i41 = alloca [16 x i64], align 8
  %q.i = alloca [8 x i64], align 8
  %r.i1 = alloca [16 x i64], align 8
  %m.i = alloca [16 x i64], align 8
  %qc.i = alloca [16 x i64], align 8
  %t.i = alloca [16 x i64], align 8
  %r.i = alloca [16 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %p = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 2
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %ndigits1 = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %ndigits1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ndigits1, align 4
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curve, align 4
  %call = tail call i32 @strncmp(ptr noundef %5, ptr noundef nonnull dereferenceable(6) @.str.5, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end16, label %if.then

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr i64, ptr %1, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i64 %7, label %if.then.if.end15_crit_edge [
    i64 -1, label %if.then5
    i64 -9223372036854775808, label %land.lhs.true
  ]

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then5:                                         ; preds = %if.then
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %t.i) #16
  %10 = call ptr @memset(ptr %t.i, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %r.i) #16
  %11 = call ptr @memset(ptr %r.i, i32 255, i32 128)
  %mul.i = shl nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5.not.i.i = icmp eq i8 %3, 0
  br i1 %cmp5.not.i.i, label %if.then5.for.cond.i73.i.preheader_crit_edge, label %for.body.i46.preheader.lr.ph.i

if.then5.for.cond.i73.i.preheader_crit_edge:      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i73.i.preheader

for.body.i46.preheader.lr.ph.i:                   ; preds = %if.then5
  %12 = shl nuw nsw i32 %conv, 4
  %13 = call ptr @memcpy(ptr %r.i, ptr %product, i32 %12)
  %add.ptr.i = getelementptr i64, ptr %r.i, i32 %conv
  %14 = trunc i64 %9 to i32
  %conv.i = sub i32 0, %14
  %conv.i.i = zext i32 %conv.i to i64
  %arrayidx6.i.i = getelementptr i64, ptr %t.i, i32 %conv
  %k.140.i.i = add nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %k.140.i.i, i32 %mul.i)
  %cmp941.i.i = icmp ult i32 %k.140.i.i, %mul.i
  %15 = shl nuw nsw i32 %conv, 3
  %16 = add nuw nsw i32 %15, 8
  %uglygep.i.i = getelementptr i8, ptr %t.i, i32 %16
  %17 = xor i32 %conv, -1
  %18 = add nsw i32 %mul.i, %17
  %19 = shl nuw nsw i32 %18, 3
  br label %for.body.i46.preheader.i

for.body.i46.preheader.i:                         ; preds = %for.body.i57.i.for.body.i46.preheader.i_crit_edge, %for.body.i46.preheader.lr.ph.i
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool.not.i105.i = icmp eq i64 %21, 0
  br i1 %tobool.not.i105.i, label %for.body.i46.preheader.i.for.cond.i.i_crit_edge, label %for.body.i46.preheader.i.for.body.i50.i.preheader_crit_edge

for.body.i46.preheader.i.for.body.i50.i.preheader_crit_edge: ; preds = %for.body.i46.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i50.i.preheader

for.body.i46.preheader.i.for.cond.i.i_crit_edge:  ; preds = %for.body.i46.preheader.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i46.i.for.cond.i.i_crit_edge, %for.body.i46.preheader.i.for.cond.i.i_crit_edge
  %i.04.i106.i = phi i32 [ %inc.i43.i, %for.body.i46.i.for.cond.i.i_crit_edge ], [ 0, %for.body.i46.preheader.i.for.cond.i.i_crit_edge ]
  %inc.i43.i = add nuw nsw i32 %i.04.i106.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i43.i, i32 %conv)
  %exitcond.not.i44.i = icmp eq i32 %inc.i43.i, %conv
  br i1 %exitcond.not.i44.i, label %for.cond.i.i.for.body.preheader.i69.i_crit_edge, label %for.body.i46.i

for.cond.i.i.for.body.preheader.i69.i_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.preheader.i69.i

for.body.i46.i:                                   ; preds = %for.cond.i.i
  %arrayidx.i45.i = getelementptr i64, ptr %add.ptr.i, i32 %inc.i43.i
  %22 = ptrtoint ptr %arrayidx.i45.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx.i45.i, align 8
  %tobool.not.i.i = icmp eq i64 %23, 0
  br i1 %tobool.not.i.i, label %for.body.i46.i.for.cond.i.i_crit_edge, label %vli_is_zero.exit.i

for.body.i46.i.for.cond.i.i_crit_edge:            ; preds = %for.body.i46.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

vli_is_zero.exit.i:                               ; preds = %for.body.i46.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i43.i, i32 %conv)
  %cmp.i.le.i = icmp ult i32 %inc.i43.i, %conv
  br i1 %cmp.i.le.i, label %vli_is_zero.exit.i.for.body.i50.i.preheader_crit_edge, label %vli_is_zero.exit.i.for.body.preheader.i69.i_crit_edge

vli_is_zero.exit.i.for.body.preheader.i69.i_crit_edge: ; preds = %vli_is_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.preheader.i69.i

vli_is_zero.exit.i.for.body.i50.i.preheader_crit_edge: ; preds = %vli_is_zero.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i50.i.preheader

for.body.i50.i.preheader:                         ; preds = %vli_is_zero.exit.i.for.body.i50.i.preheader_crit_edge, %for.body.i46.preheader.i.for.body.i50.i.preheader_crit_edge
  br label %for.body.i50.i

for.body.i50.i:                                   ; preds = %for.body.i50.i.for.body.i50.i_crit_edge, %for.body.i50.i.preheader
  %r01.sroa.0.038.i.i = phi i64 [ %add8.i35.i.i, %for.body.i50.i.for.body.i50.i_crit_edge ], [ 0, %for.body.i50.i.preheader ]
  %k.037.i.i = phi i32 [ %inc.i48.i, %for.body.i50.i.for.body.i50.i_crit_edge ], [ 0, %for.body.i50.i.preheader ]
  %arrayidx.i47.i = getelementptr i64, ptr %add.ptr.i, i32 %k.037.i.i
  %24 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx.i47.i, align 8
  %and.i.i.i = and i64 %25, 4294967295
  %shr.i.i.i = lshr i64 %25, 32
  %mul.i.i.i = mul nuw i64 %and.i.i.i, %conv.i.i
  %mul4.i.i.i = mul nuw i64 %shr.i.i.i, %conv.i.i
  %shr6.i.i.i = lshr i64 %mul.i.i.i, 32
  %add7.i.i.i = add nuw i64 %shr6.i.i.i, %mul4.i.i.i
  %and9.i.i.i = and i64 %mul.i.i.i, 4294967295
  %shl.i.i.i = shl i64 %add7.i.i.i, 32
  %shr10.i.i.i = lshr i64 %add7.i.i.i, 32
  %or.i.i.i = add nuw nsw i64 %and9.i.i.i, %r01.sroa.0.038.i.i
  %add.i33.i.i = add i64 %or.i.i.i, %shl.i.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i33.i.i, i64 %r01.sroa.0.038.i.i)
  %cmp.i34.i.i = icmp ult i64 %add.i33.i.i, %r01.sroa.0.038.i.i
  %26 = zext i1 %cmp.i34.i.i to i64
  %add8.i35.i.i = add nuw nsw i64 %shr10.i.i.i, %26
  %arrayidx2.i.i = getelementptr i64, ptr %t.i, i32 %k.037.i.i
  %27 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add.i33.i.i, ptr %arrayidx2.i.i, align 8
  %inc.i48.i = add nuw nsw i32 %k.037.i.i, 1
  %exitcond.not.i49.i = icmp eq i32 %inc.i48.i, %conv
  br i1 %exitcond.not.i49.i, label %for.end.i.i, label %for.body.i50.i.for.body.i50.i_crit_edge

for.body.i50.i.for.body.i50.i_crit_edge:          ; preds = %for.body.i50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i50.i

for.end.i.i:                                      ; preds = %for.body.i50.i
  %28 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add8.i35.i.i, ptr %arrayidx6.i.i, align 8
  br i1 %cmp941.i.i, label %for.body11.preheader.i.i, label %for.end.i.i.for.body.i57.i.preheader_crit_edge

for.end.i.i.for.body.i57.i.preheader_crit_edge:   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i57.i.preheader

for.body11.preheader.i.i:                         ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %29 = call ptr @memset(ptr %uglygep.i.i, i32 0, i32 %19)
  br label %for.body.i57.i.preheader

for.body.i57.i.preheader:                         ; preds = %for.body11.preheader.i.i, %for.end.i.i.for.body.i57.i.preheader_crit_edge
  %30 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %15)
  br label %for.body.i57.i

for.body.i57.i:                                   ; preds = %for.body.i57.i.for.body.i57.i_crit_edge, %for.body.i57.i.preheader
  %i.022.i.i = phi i32 [ %inc.i55.i, %for.body.i57.i.for.body.i57.i_crit_edge ], [ 0, %for.body.i57.i.preheader ]
  %carry.021.i.i = phi i64 [ %carry.1.i.i, %for.body.i57.i.for.body.i57.i_crit_edge ], [ 0, %for.body.i57.i.preheader ]
  %arrayidx.i53.i = getelementptr i64, ptr %r.i, i32 %i.022.i.i
  %31 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx.i53.i, align 8
  %arrayidx1.i54.i = getelementptr i64, ptr %t.i, i32 %i.022.i.i
  %33 = ptrtoint ptr %arrayidx1.i54.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx1.i54.i, align 8
  %add.i.i = add i64 %32, %carry.021.i.i
  %add2.i.i = add i64 %add.i.i, %34
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %32)
  %cmp4.not.i.i = icmp eq i64 %add2.i.i, %32
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %32)
  %cmp6.i.i = icmp ult i64 %add2.i.i, %32
  %35 = zext i1 %cmp6.i.i to i64
  %carry.1.i.i = select i1 %cmp4.not.i.i, i64 %carry.021.i.i, i64 %35
  %36 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %add2.i.i, ptr %arrayidx.i53.i, align 8
  %inc.i55.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i56.i = icmp eq i32 %inc.i55.i, %mul.i
  br i1 %exitcond.not.i56.i, label %for.body.i57.i.for.body.i46.preheader.i_crit_edge, label %for.body.i57.i.for.body.i57.i_crit_edge

for.body.i57.i.for.body.i57.i_crit_edge:          ; preds = %for.body.i57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i57.i

for.body.i57.i.for.body.i46.preheader.i_crit_edge: ; preds = %for.body.i57.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i46.preheader.i

for.body.preheader.i69.i:                         ; preds = %vli_is_zero.exit.i.for.body.preheader.i69.i_crit_edge, %for.cond.i.i.for.body.preheader.i69.i_crit_edge
  %37 = call ptr @memcpy(ptr %t.i, ptr %1, i32 %15)
  %38 = call ptr @memset(ptr %arrayidx6.i.i, i32 0, i32 %15)
  br label %for.cond.i73.i.preheader

for.cond.i73.i.preheader:                         ; preds = %for.body.preheader.i69.i, %if.then5.for.cond.i73.i.preheader_crit_edge
  br label %for.cond.i73.i

for.cond.i73.i:                                   ; preds = %for.cond.i73.i.backedge, %for.cond.i73.i.preheader
  %i.0.in.i.i = phi i32 [ %mul.i, %for.cond.i73.i.preheader ], [ %i.0.in.i.i.be, %for.cond.i73.i.backedge ]
  %i.0.i.i = add nsw i32 %i.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i)
  %cmp.i72.i = icmp sgt i32 %i.0.in.i.i, 0
  br i1 %cmp.i72.i, label %for.body.i76.i, label %for.cond.i73.i.while.body21.i_crit_edge

for.cond.i73.i.while.body21.i_crit_edge:          ; preds = %for.cond.i73.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body21.i

for.body.i76.i:                                   ; preds = %for.cond.i73.i
  %arrayidx.i74.i = getelementptr i64, ptr %r.i, i32 %i.0.i.i
  %39 = ptrtoint ptr %arrayidx.i74.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx.i74.i, align 8
  %arrayidx1.i75.i = getelementptr i64, ptr %t.i, i32 %i.0.i.i
  %41 = ptrtoint ptr %arrayidx1.i75.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx1.i75.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %42)
  %cmp2.i.i = icmp ugt i64 %40, %42
  br i1 %cmp2.i.i, label %for.body.i76.i.while.body21.i_crit_edge, label %if.else.i.i

for.body.i76.i.while.body21.i_crit_edge:          ; preds = %for.body.i76.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body21.i

if.else.i.i:                                      ; preds = %for.body.i76.i
  call void @__sanitizer_cov_trace_cmp8(i64 %40, i64 %42)
  %cmp5.i77.i = icmp ult i64 %40, %42
  br i1 %cmp5.i77.i, label %while.end27.i, label %if.else.i.i.for.cond.i73.i.backedge_crit_edge

if.else.i.i.for.cond.i73.i.backedge_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i73.i.backedge

for.cond.i73.i.backedge:                          ; preds = %for.body.i87.i.for.cond.i73.i.backedge_crit_edge, %while.body21.i.for.cond.i73.i.backedge_crit_edge, %if.else.i.i.for.cond.i73.i.backedge_crit_edge
  %i.0.in.i.i.be = phi i32 [ %i.0.i.i, %if.else.i.i.for.cond.i73.i.backedge_crit_edge ], [ %mul.i, %while.body21.i.for.cond.i73.i.backedge_crit_edge ], [ %mul.i, %for.body.i87.i.for.cond.i73.i.backedge_crit_edge ]
  br label %for.cond.i73.i

while.body21.i:                                   ; preds = %for.body.i76.i.while.body21.i_crit_edge, %for.cond.i73.i.while.body21.i_crit_edge
  br i1 %cmp5.not.i.i, label %while.body21.i.for.cond.i73.i.backedge_crit_edge, label %while.body21.i.for.body.i87.i_crit_edge

while.body21.i.for.body.i87.i_crit_edge:          ; preds = %while.body21.i
  br label %for.body.i87.i

while.body21.i.for.cond.i73.i.backedge_crit_edge: ; preds = %while.body21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i73.i.backedge

for.body.i87.i:                                   ; preds = %for.body.i87.i.for.body.i87.i_crit_edge, %while.body21.i.for.body.i87.i_crit_edge
  %i.022.i79.i = phi i32 [ %inc.i85.i, %for.body.i87.i.for.body.i87.i_crit_edge ], [ 0, %while.body21.i.for.body.i87.i_crit_edge ]
  %borrow.021.i.i = phi i64 [ %borrow.1.i.i, %for.body.i87.i.for.body.i87.i_crit_edge ], [ 0, %while.body21.i.for.body.i87.i_crit_edge ]
  %arrayidx.i80.i = getelementptr i64, ptr %r.i, i32 %i.022.i79.i
  %43 = ptrtoint ptr %arrayidx.i80.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx.i80.i, align 8
  %arrayidx1.i81.i = getelementptr i64, ptr %t.i, i32 %i.022.i79.i
  %45 = ptrtoint ptr %arrayidx1.i81.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx1.i81.i, align 8
  %47 = add i64 %46, %borrow.021.i.i
  %sub2.i.i = sub i64 %44, %47
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %47)
  %cmp4.not.i82.i = icmp eq i64 %47, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %44, i64 %47)
  %cmp6.i83.i = icmp ult i64 %44, %47
  %48 = zext i1 %cmp6.i83.i to i64
  %borrow.1.i.i = select i1 %cmp4.not.i82.i, i64 %borrow.021.i.i, i64 %48
  %49 = ptrtoint ptr %arrayidx.i80.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %sub2.i.i, ptr %arrayidx.i80.i, align 8
  %inc.i85.i = add nuw nsw i32 %i.022.i79.i, 1
  %exitcond.not.i86.i = icmp eq i32 %inc.i85.i, %mul.i
  br i1 %exitcond.not.i86.i, label %for.body.i87.i.for.cond.i73.i.backedge_crit_edge, label %for.body.i87.i.for.body.i87.i_crit_edge

for.body.i87.i.for.body.i87.i_crit_edge:          ; preds = %for.body.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i87.i

for.body.i87.i.for.cond.i73.i.backedge_crit_edge: ; preds = %for.body.i87.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i73.i.backedge

while.end27.i:                                    ; preds = %if.else.i.i
  br i1 %cmp5.not.i.i, label %while.end27.i.vli_mmod_special.exit_crit_edge, label %for.body.i95.preheader.i

while.end27.i.vli_mmod_special.exit_crit_edge:    ; preds = %while.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mmod_special.exit

for.body.i95.preheader.i:                         ; preds = %while.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %50 = shl nuw nsw i32 %conv, 3
  %51 = call ptr @memcpy(ptr %result, ptr %r.i, i32 %50)
  br label %vli_mmod_special.exit

vli_mmod_special.exit:                            ; preds = %for.body.i95.preheader.i, %while.end27.i.vli_mmod_special.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %r.i) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %t.i) #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then
  %sub10 = add nsw i32 %conv, -2
  %arrayidx11 = getelementptr i64, ptr %1, i32 %sub10
  %52 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx11, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %53)
  %cmp12 = icmp eq i64 %53, 0
  br i1 %cmp12, label %if.then14, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %q.i) #16
  %56 = call ptr @memset(ptr %q.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %r.i1) #16
  %57 = call ptr @memset(ptr %r.i1, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %m.i) #16
  %58 = call ptr @memset(ptr %m.i, i32 255, i32 128)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5.not.i.i2 = icmp eq i8 %3, 0
  br i1 %cmp5.not.i.i2, label %if.then14.vli_clear.exit125.i_crit_edge, label %for.body.preheader.i124.i

if.then14.vli_clear.exit125.i_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_clear.exit125.i

for.body.preheader.i124.i:                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  %59 = shl nuw nsw i32 %conv, 3
  %60 = call ptr @memcpy(ptr %m.i, ptr %1, i32 %59)
  %add.ptr.i3 = getelementptr i64, ptr %m.i, i32 %conv
  %61 = call ptr @memset(ptr %add.ptr.i3, i32 0, i32 %59)
  %62 = call ptr @memcpy(ptr %r.i1, ptr %product, i32 %59)
  %add.ptr4.i = getelementptr i64, ptr %product, i32 %conv
  %63 = call ptr @memcpy(ptr %q.i, ptr %add.ptr4.i, i32 %59)
  %add.ptr6.i = getelementptr i64, ptr %r.i1, i32 %conv
  %64 = call ptr @memset(ptr %add.ptr6.i, i32 0, i32 %59)
  br label %vli_clear.exit125.i

vli_clear.exit125.i:                              ; preds = %for.body.preheader.i124.i, %if.then14.vli_clear.exit125.i_crit_edge
  %65 = add nuw nsw i32 %conv, 67108863
  %div2.i.i.i = and i32 %65, 67108863
  %arrayidx.i.i.i = getelementptr i64, ptr %r.i1, i32 %div2.i.i.i
  %66 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %arrayidx.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %67)
  %tobool.i.i = icmp slt i64 %67, 0
  br i1 %tobool.i.i, label %if.then.i, label %vli_clear.exit125.i.if.end.i_crit_edge

vli_clear.exit125.i.if.end.i_crit_edge:           ; preds = %vli_clear.exit125.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %vli_clear.exit125.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx8.i = getelementptr [16 x i64], ptr %r.i1, i32 0, i32 %sub
  %68 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %arrayidx8.i, align 8
  %and.i = and i64 %69, 9223372036854775807
  store i64 %and.i, ptr %arrayidx8.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %vli_clear.exit125.i.if.end.i_crit_edge
  %.tr.c105.i = trunc i64 %55 to i32
  %conv14.c106.i = shl i32 %.tr.c105.i, 1
  %conv.i141.i = zext i32 %conv14.c106.i to i64
  %arrayidx6.i164.i = getelementptr i64, ptr %qc.i, i32 %conv
  %mul.i165.i = shl nuw nsw i32 %conv, 1
  %k.140.i166.i = add nuw nsw i32 %conv, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %k.140.i166.i, i32 %mul.i165.i)
  %cmp941.i167.i = icmp ult i32 %k.140.i166.i, %mul.i165.i
  %70 = shl nuw nsw i32 %conv, 3
  %71 = add nuw nsw i32 %70, 8
  %uglygep.i169.i = getelementptr i8, ptr %qc.i, i32 %71
  %72 = xor i32 %conv, -1
  %73 = add nsw i32 %mul.i165.i, %72
  %74 = shl nuw nsw i32 %73, 3
  %arrayidx.i.i186.i = getelementptr i64, ptr %qc.i, i32 %div2.i.i.i
  %arrayidx34.i = getelementptr [16 x i64], ptr %qc.i, i32 0, i32 %sub
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end50.i, %if.end.i
  %carry.0.in.i = phi i1 [ %tobool.i.i, %if.end.i ], [ %tobool.i187.i, %if.end50.i ]
  %i.0.i = phi i32 [ 1, %if.end.i ], [ %inc.i, %if.end50.i ]
  br i1 %carry.0.in.i, label %if.then16.critedge.i, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %for.cond.i
  br i1 %cmp5.not.i.i2, label %lor.rhs.i.while.cond.preheader.i_crit_edge, label %for.body.i130.preheader.i

lor.rhs.i.while.cond.preheader.i_crit_edge:       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader.i

for.body.i130.preheader.i:                        ; preds = %lor.rhs.i
  %75 = ptrtoint ptr %q.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %q.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %76)
  %tobool.not.i268.i = icmp eq i64 %76, 0
  br i1 %tobool.not.i268.i, label %for.body.i130.preheader.i.for.cond.i.i4_crit_edge, label %for.body.lr.ph.i142.critedge.i

for.body.i130.preheader.i.for.cond.i.i4_crit_edge: ; preds = %for.body.i130.preheader.i
  br label %for.cond.i.i4

while.cond.preheader.i:                           ; preds = %vli_is_zero.exit.i7.while.cond.preheader.i_crit_edge, %for.cond.i.i4.while.cond.preheader.i_crit_edge, %lor.rhs.i.while.cond.preheader.i_crit_edge
  %77 = add nuw nsw i32 %mul.i165.i, 67108863
  %div2.i.i208.i = and i32 %77, 67108863
  %arrayidx.i.i209.i = getelementptr i64, ptr %r.i1, i32 %div2.i.i208.i
  %78 = ptrtoint ptr %arrayidx.i.i209.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %arrayidx.i.i209.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %79)
  %tobool.i210271.i = icmp slt i64 %79, 0
  br i1 %tobool.i210271.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.for.cond.i229.i.preheader_crit_edge

while.cond.preheader.i.for.cond.i229.i.preheader_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i229.i.preheader

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

for.cond.i.i4:                                    ; preds = %for.body.i130.i.for.cond.i.i4_crit_edge, %for.body.i130.preheader.i.for.cond.i.i4_crit_edge
  %i.04.i269.i = phi i32 [ %inc.i127.i, %for.body.i130.i.for.cond.i.i4_crit_edge ], [ 0, %for.body.i130.preheader.i.for.cond.i.i4_crit_edge ]
  %inc.i127.i = add nuw nsw i32 %i.04.i269.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i127.i, i32 %conv)
  %exitcond.not.i128.i = icmp eq i32 %inc.i127.i, %conv
  br i1 %exitcond.not.i128.i, label %for.cond.i.i4.while.cond.preheader.i_crit_edge, label %for.body.i130.i

for.cond.i.i4.while.cond.preheader.i_crit_edge:   ; preds = %for.cond.i.i4
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader.i

for.body.i130.i:                                  ; preds = %for.cond.i.i4
  %arrayidx.i129.i = getelementptr i64, ptr %q.i, i32 %inc.i127.i
  %80 = ptrtoint ptr %arrayidx.i129.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx.i129.i, align 8
  %tobool.not.i.i5 = icmp eq i64 %81, 0
  br i1 %tobool.not.i.i5, label %for.body.i130.i.for.cond.i.i4_crit_edge, label %vli_is_zero.exit.i7

for.body.i130.i.for.cond.i.i4_crit_edge:          ; preds = %for.body.i130.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i4

vli_is_zero.exit.i7:                              ; preds = %for.body.i130.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i127.i, i32 %conv)
  %cmp.i.le.i6 = icmp ult i32 %inc.i127.i, %conv
  br i1 %cmp.i.le.i6, label %if.end22.critedge.i, label %vli_is_zero.exit.i7.while.cond.preheader.i_crit_edge

vli_is_zero.exit.i7.while.cond.preheader.i_crit_edge: ; preds = %vli_is_zero.exit.i7
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.preheader.i

if.then16.critedge.i:                             ; preds = %for.cond.i
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %qc.i) #16
  %82 = call ptr @memset(ptr %qc.i, i32 255, i32 128)
  br i1 %cmp5.not.i.i2, label %if.then16.critedge.i.for.end.i.i24_crit_edge, label %if.then16.critedge.i.for.body.i134.i_crit_edge

if.then16.critedge.i.for.body.i134.i_crit_edge:   ; preds = %if.then16.critedge.i
  br label %for.body.i134.i

if.then16.critedge.i.for.end.i.i24_crit_edge:     ; preds = %if.then16.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i24

for.body.i134.i:                                  ; preds = %for.body.i134.i.for.body.i134.i_crit_edge, %if.then16.critedge.i.for.body.i134.i_crit_edge
  %r01.sroa.0.038.i.i8 = phi i64 [ %add8.i35.i.i22, %for.body.i134.i.for.body.i134.i_crit_edge ], [ 0, %if.then16.critedge.i.for.body.i134.i_crit_edge ]
  %k.037.i.i9 = phi i32 [ %inc.i132.i, %for.body.i134.i.for.body.i134.i_crit_edge ], [ 0, %if.then16.critedge.i.for.body.i134.i_crit_edge ]
  %arrayidx.i131.i = getelementptr i64, ptr %q.i, i32 %k.037.i.i9
  %83 = ptrtoint ptr %arrayidx.i131.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %arrayidx.i131.i, align 8
  %and.i.i.i10 = and i64 %84, 4294967295
  %shr.i.i.i11 = lshr i64 %84, 32
  %mul.i.i.i12 = mul nuw i64 %and.i.i.i10, %conv.i141.i
  %mul4.i.i.i13 = mul nuw i64 %shr.i.i.i11, %conv.i141.i
  %shr6.i.i.i14 = lshr i64 %mul.i.i.i12, 32
  %add7.i.i.i15 = add nuw i64 %shr6.i.i.i14, %mul4.i.i.i13
  %and9.i.i.i16 = and i64 %mul.i.i.i12, 4294967294
  %shl.i.i.i17 = shl i64 %add7.i.i.i15, 32
  %shr10.i.i.i18 = lshr i64 %add7.i.i.i15, 32
  %or.i.i.i19 = add nuw nsw i64 %and9.i.i.i16, %r01.sroa.0.038.i.i8
  %add.i33.i.i20 = add i64 %or.i.i.i19, %shl.i.i.i17
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i33.i.i20, i64 %r01.sroa.0.038.i.i8)
  %cmp.i34.i.i21 = icmp ult i64 %add.i33.i.i20, %r01.sroa.0.038.i.i8
  %85 = zext i1 %cmp.i34.i.i21 to i64
  %add8.i35.i.i22 = add nuw nsw i64 %shr10.i.i.i18, %85
  %arrayidx2.i.i23 = getelementptr i64, ptr %qc.i, i32 %k.037.i.i9
  %86 = ptrtoint ptr %arrayidx2.i.i23 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %add.i33.i.i20, ptr %arrayidx2.i.i23, align 8
  %inc.i132.i = add nuw nsw i32 %k.037.i.i9, 1
  %exitcond.not.i133.i = icmp eq i32 %inc.i132.i, %conv
  br i1 %exitcond.not.i133.i, label %for.body.i134.i.for.end.i.i24_crit_edge, label %for.body.i134.i.for.body.i134.i_crit_edge

for.body.i134.i.for.body.i134.i_crit_edge:        ; preds = %for.body.i134.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i134.i

for.body.i134.i.for.end.i.i24_crit_edge:          ; preds = %for.body.i134.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i24

for.end.i.i24:                                    ; preds = %for.body.i134.i.for.end.i.i24_crit_edge, %if.then16.critedge.i.for.end.i.i24_crit_edge
  %r01.sroa.0.0.lcssa.i.i = phi i64 [ 0, %if.then16.critedge.i.for.end.i.i24_crit_edge ], [ %add8.i35.i.i22, %for.body.i134.i.for.end.i.i24_crit_edge ]
  %87 = ptrtoint ptr %arrayidx6.i164.i to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %r01.sroa.0.0.lcssa.i.i, ptr %arrayidx6.i164.i, align 8
  br i1 %cmp941.i167.i, label %for.body11.preheader.i.i25, label %for.end.i.i24.vli_umult.exit.i_crit_edge

for.end.i.i24.vli_umult.exit.i_crit_edge:         ; preds = %for.end.i.i24
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_umult.exit.i

for.body11.preheader.i.i25:                       ; preds = %for.end.i.i24
  call void @__sanitizer_cov_trace_pc() #18
  %88 = call ptr @memset(ptr %uglygep.i169.i, i32 0, i32 %74)
  br label %vli_umult.exit.i

vli_umult.exit.i:                                 ; preds = %for.body11.preheader.i.i25, %for.end.i.i24.vli_umult.exit.i_crit_edge
  br i1 %cmp5.not.i.i2, label %vli_umult.exit.i.vli_clear.exit184.i_crit_edge, label %vli_umult.exit.i.for.body.i138.i_crit_edge

vli_umult.exit.i.for.body.i138.i_crit_edge:       ; preds = %vli_umult.exit.i
  br label %for.body.i138.i

vli_umult.exit.i.vli_clear.exit184.i_crit_edge:   ; preds = %vli_umult.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_clear.exit184.i

for.body.i138.i:                                  ; preds = %for.body.i138.i.for.body.i138.i_crit_edge, %vli_umult.exit.i.for.body.i138.i_crit_edge
  %i.03.i.i = phi i32 [ %inc.i136.i, %for.body.i138.i.for.body.i138.i_crit_edge ], [ 0, %vli_umult.exit.i.for.body.i138.i_crit_edge ]
  %carry.02.i.i = phi i64 [ %carry.1.i.i27, %for.body.i138.i.for.body.i138.i_crit_edge ], [ %55, %vli_umult.exit.i.for.body.i138.i_crit_edge ]
  %arrayidx.i135.i = getelementptr i64, ptr %qc.i, i32 %i.03.i.i
  %89 = ptrtoint ptr %arrayidx.i135.i to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx.i135.i, align 8
  %add.i.i26 = add i64 %90, %carry.02.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.02.i.i)
  %cmp2.not.i.i = icmp ne i64 %carry.02.i.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i26, i64 %90)
  %cmp4.i.i = icmp ult i64 %add.i.i26, %90
  %narrow.i.i = select i1 %cmp2.not.i.i, i1 %cmp4.i.i, i1 false
  %carry.1.i.i27 = zext i1 %narrow.i.i to i64
  %91 = ptrtoint ptr %arrayidx.i135.i to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %add.i.i26, ptr %arrayidx.i135.i, align 8
  %inc.i136.i = add nuw nsw i32 %i.03.i.i, 1
  %exitcond.not.i137.i = icmp eq i32 %inc.i136.i, %mul.i165.i
  br i1 %exitcond.not.i137.i, label %for.body.i138.i.if.end22.i_crit_edge, label %for.body.i138.i.for.body.i138.i_crit_edge

for.body.i138.i.for.body.i138.i_crit_edge:        ; preds = %for.body.i138.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i138.i

for.body.i138.i.if.end22.i_crit_edge:             ; preds = %for.body.i138.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i

if.end22.critedge.i:                              ; preds = %vli_is_zero.exit.i7
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %qc.i) #16
  br label %for.body.lr.ph.i142.i

for.body.lr.ph.i142.critedge.i:                   ; preds = %for.body.i130.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %qc.i) #16
  br label %for.body.lr.ph.i142.i

for.body.lr.ph.i142.i:                            ; preds = %for.body.lr.ph.i142.critedge.i, %if.end22.critedge.i
  %92 = call ptr @memset(ptr %qc.i, i32 255, i32 128)
  br label %for.body.i162.i

for.body.i162.i:                                  ; preds = %for.body.i162.i.for.body.i162.i_crit_edge, %for.body.lr.ph.i142.i
  %r01.sroa.0.038.i143.i = phi i64 [ 0, %for.body.lr.ph.i142.i ], [ %add8.i35.i158.i, %for.body.i162.i.for.body.i162.i_crit_edge ]
  %k.037.i144.i = phi i32 [ 0, %for.body.lr.ph.i142.i ], [ %inc.i160.i, %for.body.i162.i.for.body.i162.i_crit_edge ]
  %arrayidx.i145.i = getelementptr i64, ptr %q.i, i32 %k.037.i144.i
  %93 = ptrtoint ptr %arrayidx.i145.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx.i145.i, align 8
  %and.i.i146.i = and i64 %94, 4294967295
  %shr.i.i147.i = lshr i64 %94, 32
  %mul.i.i148.i = mul nuw i64 %and.i.i146.i, %conv.i141.i
  %mul4.i.i149.i = mul nuw i64 %shr.i.i147.i, %conv.i141.i
  %shr6.i.i150.i = lshr i64 %mul.i.i148.i, 32
  %add7.i.i151.i = add nuw i64 %shr6.i.i150.i, %mul4.i.i149.i
  %and9.i.i152.i = and i64 %mul.i.i148.i, 4294967294
  %shl.i.i153.i = shl i64 %add7.i.i151.i, 32
  %shr10.i.i154.i = lshr i64 %add7.i.i151.i, 32
  %or.i.i155.i = add nuw nsw i64 %and9.i.i152.i, %r01.sroa.0.038.i143.i
  %add.i33.i156.i = add i64 %or.i.i155.i, %shl.i.i153.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i33.i156.i, i64 %r01.sroa.0.038.i143.i)
  %cmp.i34.i157.i = icmp ult i64 %add.i33.i156.i, %r01.sroa.0.038.i143.i
  %95 = zext i1 %cmp.i34.i157.i to i64
  %add8.i35.i158.i = add nuw nsw i64 %shr10.i.i154.i, %95
  %arrayidx2.i159.i = getelementptr i64, ptr %qc.i, i32 %k.037.i144.i
  %96 = ptrtoint ptr %arrayidx2.i159.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %add.i33.i156.i, ptr %arrayidx2.i159.i, align 8
  %inc.i160.i = add nuw i32 %k.037.i144.i, 1
  %exitcond.not.i161.i = icmp eq i32 %inc.i160.i, %conv
  br i1 %exitcond.not.i161.i, label %for.end.i168.i, label %for.body.i162.i.for.body.i162.i_crit_edge

for.body.i162.i.for.body.i162.i_crit_edge:        ; preds = %for.body.i162.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i162.i

for.end.i168.i:                                   ; preds = %for.body.i162.i
  %97 = ptrtoint ptr %arrayidx6.i164.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %add8.i35.i158.i, ptr %arrayidx6.i164.i, align 8
  br i1 %cmp941.i167.i, label %for.body11.preheader.i170.i, label %for.end.i168.i.if.end22.i_crit_edge

for.end.i168.i.if.end22.i_crit_edge:              ; preds = %for.end.i168.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end22.i

for.body11.preheader.i170.i:                      ; preds = %for.end.i168.i
  call void @__sanitizer_cov_trace_pc() #18
  %98 = call ptr @memset(ptr %uglygep.i169.i, i32 0, i32 %74)
  br label %if.end22.i

if.end22.i:                                       ; preds = %for.body11.preheader.i170.i, %for.end.i168.i.if.end22.i_crit_edge, %for.body.i138.i.if.end22.i_crit_edge
  br i1 %cmp5.not.i.i2, label %if.end22.i.vli_clear.exit184.i_crit_edge, label %for.body.preheader.i182.i

if.end22.i.vli_clear.exit184.i_crit_edge:         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_clear.exit184.i

for.body.preheader.i182.i:                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #18
  %99 = call ptr @memcpy(ptr %q.i, ptr %arrayidx6.i164.i, i32 %70)
  %100 = call ptr @memset(ptr %arrayidx6.i164.i, i32 0, i32 %70)
  br label %vli_clear.exit184.i

vli_clear.exit184.i:                              ; preds = %for.body.preheader.i182.i, %if.end22.i.vli_clear.exit184.i_crit_edge, %vli_umult.exit.i.vli_clear.exit184.i_crit_edge
  %101 = ptrtoint ptr %arrayidx.i.i186.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %arrayidx.i.i186.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %102)
  %tobool.i187.i = icmp slt i64 %102, 0
  br i1 %tobool.i187.i, label %if.then32.i, label %vli_clear.exit184.i.if.end36.i_crit_edge

vli_clear.exit184.i.if.end36.i_crit_edge:         ; preds = %vli_clear.exit184.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36.i

if.then32.i:                                      ; preds = %vli_clear.exit184.i
  call void @__sanitizer_cov_trace_pc() #18
  %103 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %arrayidx34.i, align 8
  %and35.i = and i64 %104, 9223372036854775807
  store i64 %and35.i, ptr %arrayidx34.i, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then32.i, %vli_clear.exit184.i.if.end36.i_crit_edge
  %and37.i = and i32 %i.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.else.i, label %if.then39.i

if.then39.i:                                      ; preds = %if.end36.i
  br i1 %cmp5.not.i.i2, label %if.then39.i.if.end50.i_crit_edge, label %if.then39.i.for.body.i193.i_crit_edge

if.then39.i.for.body.i193.i_crit_edge:            ; preds = %if.then39.i
  br label %for.body.i193.i

if.then39.i.if.end50.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

for.body.i193.i:                                  ; preds = %for.body.i193.i.for.body.i193.i_crit_edge, %if.then39.i.for.body.i193.i_crit_edge
  %i.022.i.i28 = phi i32 [ %inc.i191.i, %for.body.i193.i.for.body.i193.i_crit_edge ], [ 0, %if.then39.i.for.body.i193.i_crit_edge ]
  %borrow.021.i.i29 = phi i64 [ %borrow.1.i.i33, %for.body.i193.i.for.body.i193.i_crit_edge ], [ 0, %if.then39.i.for.body.i193.i_crit_edge ]
  %arrayidx.i188.i = getelementptr i64, ptr %r.i1, i32 %i.022.i.i28
  %105 = ptrtoint ptr %arrayidx.i188.i to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %arrayidx.i188.i, align 8
  %arrayidx1.i189.i = getelementptr i64, ptr %qc.i, i32 %i.022.i.i28
  %107 = ptrtoint ptr %arrayidx1.i189.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %arrayidx1.i189.i, align 8
  %109 = add i64 %108, %borrow.021.i.i29
  %sub2.i.i30 = sub i64 %106, %109
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %109)
  %cmp4.not.i.i31 = icmp eq i64 %109, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %106, i64 %109)
  %cmp6.i.i32 = icmp ult i64 %106, %109
  %110 = zext i1 %cmp6.i.i32 to i64
  %borrow.1.i.i33 = select i1 %cmp4.not.i.i31, i64 %borrow.021.i.i29, i64 %110
  %111 = ptrtoint ptr %arrayidx.i188.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %sub2.i.i30, ptr %arrayidx.i188.i, align 8
  %inc.i191.i = add nuw nsw i32 %i.022.i.i28, 1
  %exitcond.not.i192.i = icmp eq i32 %inc.i191.i, %mul.i165.i
  br i1 %exitcond.not.i192.i, label %for.body.i193.i.if.end50.i_crit_edge, label %for.body.i193.i.for.body.i193.i_crit_edge

for.body.i193.i.for.body.i193.i_crit_edge:        ; preds = %for.body.i193.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i193.i

for.body.i193.i.if.end50.i_crit_edge:             ; preds = %for.body.i193.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

if.else.i:                                        ; preds = %if.end36.i
  br i1 %cmp5.not.i.i2, label %if.else.i.if.end50.i_crit_edge, label %if.else.i.for.body.i206.i_crit_edge

if.else.i.for.body.i206.i_crit_edge:              ; preds = %if.else.i
  br label %for.body.i206.i

if.else.i.if.end50.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

for.body.i206.i:                                  ; preds = %for.body.i206.i.for.body.i206.i_crit_edge, %if.else.i.for.body.i206.i_crit_edge
  %i.022.i196.i = phi i32 [ %inc.i204.i, %for.body.i206.i.for.body.i206.i_crit_edge ], [ 0, %if.else.i.for.body.i206.i_crit_edge ]
  %carry.021.i.i34 = phi i64 [ %carry.1.i202.i, %for.body.i206.i.for.body.i206.i_crit_edge ], [ 0, %if.else.i.for.body.i206.i_crit_edge ]
  %arrayidx.i197.i = getelementptr i64, ptr %r.i1, i32 %i.022.i196.i
  %112 = ptrtoint ptr %arrayidx.i197.i to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %arrayidx.i197.i, align 8
  %arrayidx1.i198.i = getelementptr i64, ptr %qc.i, i32 %i.022.i196.i
  %114 = ptrtoint ptr %arrayidx1.i198.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx1.i198.i, align 8
  %add.i199.i = add i64 %113, %carry.021.i.i34
  %add2.i.i35 = add i64 %add.i199.i, %115
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i35, i64 %113)
  %cmp4.not.i200.i = icmp eq i64 %add2.i.i35, %113
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i35, i64 %113)
  %cmp6.i201.i = icmp ult i64 %add2.i.i35, %113
  %116 = zext i1 %cmp6.i201.i to i64
  %carry.1.i202.i = select i1 %cmp4.not.i200.i, i64 %carry.021.i.i34, i64 %116
  %117 = ptrtoint ptr %arrayidx.i197.i to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %add2.i.i35, ptr %arrayidx.i197.i, align 8
  %inc.i204.i = add nuw nsw i32 %i.022.i196.i, 1
  %exitcond.not.i205.i = icmp eq i32 %inc.i204.i, %mul.i165.i
  br i1 %exitcond.not.i205.i, label %for.body.i206.i.if.end50.i_crit_edge, label %for.body.i206.i.for.body.i206.i_crit_edge

for.body.i206.i.for.body.i206.i_crit_edge:        ; preds = %for.body.i206.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i206.i

for.body.i206.i.if.end50.i_crit_edge:             ; preds = %for.body.i206.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end50.i

if.end50.i:                                       ; preds = %for.body.i206.i.if.end50.i_crit_edge, %if.else.i.if.end50.i_crit_edge, %for.body.i193.i.if.end50.i_crit_edge, %if.then39.i.if.end50.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %qc.i) #16
  %inc.i = add i32 %i.0.i, 1
  br label %for.cond.i

while.body.i:                                     ; preds = %vli_add.exit227.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  br i1 %cmp5.not.i.i2, label %while.body.i.vli_add.exit227.i_crit_edge, label %while.body.i.for.body.i224.i_crit_edge

while.body.i.for.body.i224.i_crit_edge:           ; preds = %while.body.i
  br label %for.body.i224.i

while.body.i.vli_add.exit227.i_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_add.exit227.i

for.body.i224.i:                                  ; preds = %for.body.i224.i.for.body.i224.i_crit_edge, %while.body.i.for.body.i224.i_crit_edge
  %i.022.i212.i = phi i32 [ %inc.i222.i, %for.body.i224.i.for.body.i224.i_crit_edge ], [ 0, %while.body.i.for.body.i224.i_crit_edge ]
  %carry.021.i213.i = phi i64 [ %carry.1.i220.i, %for.body.i224.i.for.body.i224.i_crit_edge ], [ 0, %while.body.i.for.body.i224.i_crit_edge ]
  %arrayidx.i214.i = getelementptr i64, ptr %r.i1, i32 %i.022.i212.i
  %118 = ptrtoint ptr %arrayidx.i214.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %arrayidx.i214.i, align 8
  %arrayidx1.i215.i = getelementptr i64, ptr %m.i, i32 %i.022.i212.i
  %120 = ptrtoint ptr %arrayidx1.i215.i to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %arrayidx1.i215.i, align 8
  %add.i216.i = add i64 %119, %carry.021.i213.i
  %add2.i217.i = add i64 %add.i216.i, %121
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i217.i, i64 %119)
  %cmp4.not.i218.i = icmp eq i64 %add2.i217.i, %119
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i217.i, i64 %119)
  %cmp6.i219.i = icmp ult i64 %add2.i217.i, %119
  %122 = zext i1 %cmp6.i219.i to i64
  %carry.1.i220.i = select i1 %cmp4.not.i218.i, i64 %carry.021.i213.i, i64 %122
  %123 = ptrtoint ptr %arrayidx.i214.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %add2.i217.i, ptr %arrayidx.i214.i, align 8
  %inc.i222.i = add nuw nsw i32 %i.022.i212.i, 1
  %exitcond.not.i223.i = icmp eq i32 %inc.i222.i, %mul.i165.i
  br i1 %exitcond.not.i223.i, label %for.body.i224.i.vli_add.exit227.i_crit_edge, label %for.body.i224.i.for.body.i224.i_crit_edge

for.body.i224.i.for.body.i224.i_crit_edge:        ; preds = %for.body.i224.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i224.i

for.body.i224.i.vli_add.exit227.i_crit_edge:      ; preds = %for.body.i224.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_add.exit227.i

vli_add.exit227.i:                                ; preds = %for.body.i224.i.vli_add.exit227.i_crit_edge, %while.body.i.vli_add.exit227.i_crit_edge
  %124 = ptrtoint ptr %arrayidx.i.i209.i to i32
  call void @__asan_load8_noabort(i32 %124)
  %125 = load i64, ptr %arrayidx.i.i209.i, align 8
  %tobool.i210.i = icmp slt i64 %125, 0
  br i1 %tobool.i210.i, label %vli_add.exit227.i.while.body.i_crit_edge, label %vli_add.exit227.i.for.cond.i229.i.preheader_crit_edge

vli_add.exit227.i.for.cond.i229.i.preheader_crit_edge: ; preds = %vli_add.exit227.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i229.i.preheader

vli_add.exit227.i.while.body.i_crit_edge:         ; preds = %vli_add.exit227.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

for.cond.i229.i.preheader:                        ; preds = %vli_add.exit227.i.for.cond.i229.i.preheader_crit_edge, %while.cond.preheader.i.for.cond.i229.i.preheader_crit_edge
  br label %for.cond.i229.i

for.cond.i229.i:                                  ; preds = %for.cond.i229.i.backedge, %for.cond.i229.i.preheader
  %i.0.in.i.i36 = phi i32 [ %mul.i165.i, %for.cond.i229.i.preheader ], [ %i.0.in.i.i36.be, %for.cond.i229.i.backedge ]
  %i.0.i.i37 = add nsw i32 %i.0.in.i.i36, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i36)
  %cmp.i228.i = icmp sgt i32 %i.0.in.i.i36, 0
  br i1 %cmp.i228.i, label %for.body.i232.i, label %for.cond.i229.i.while.body65.i_crit_edge

for.cond.i229.i.while.body65.i_crit_edge:         ; preds = %for.cond.i229.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body65.i

for.body.i232.i:                                  ; preds = %for.cond.i229.i
  %arrayidx.i230.i = getelementptr i64, ptr %r.i1, i32 %i.0.i.i37
  %126 = ptrtoint ptr %arrayidx.i230.i to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %arrayidx.i230.i, align 8
  %arrayidx1.i231.i = getelementptr i64, ptr %m.i, i32 %i.0.i.i37
  %128 = ptrtoint ptr %arrayidx1.i231.i to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx1.i231.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %127, i64 %129)
  %cmp2.i.i38 = icmp ugt i64 %127, %129
  br i1 %cmp2.i.i38, label %for.body.i232.i.while.body65.i_crit_edge, label %if.else.i.i39

for.body.i232.i.while.body65.i_crit_edge:         ; preds = %for.body.i232.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body65.i

if.else.i.i39:                                    ; preds = %for.body.i232.i
  call void @__sanitizer_cov_trace_cmp8(i64 %127, i64 %129)
  %cmp5.i233.i = icmp ult i64 %127, %129
  br i1 %cmp5.i233.i, label %while.end71.i, label %if.else.i.i39.for.cond.i229.i.backedge_crit_edge

if.else.i.i39.for.cond.i229.i.backedge_crit_edge: ; preds = %if.else.i.i39
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i229.i.backedge

for.cond.i229.i.backedge:                         ; preds = %for.body.i246.i.for.cond.i229.i.backedge_crit_edge, %while.body65.i.for.cond.i229.i.backedge_crit_edge, %if.else.i.i39.for.cond.i229.i.backedge_crit_edge
  %i.0.in.i.i36.be = phi i32 [ %i.0.i.i37, %if.else.i.i39.for.cond.i229.i.backedge_crit_edge ], [ %mul.i165.i, %while.body65.i.for.cond.i229.i.backedge_crit_edge ], [ %mul.i165.i, %for.body.i246.i.for.cond.i229.i.backedge_crit_edge ]
  br label %for.cond.i229.i

while.body65.i:                                   ; preds = %for.body.i232.i.while.body65.i_crit_edge, %for.cond.i229.i.while.body65.i_crit_edge
  br i1 %cmp5.not.i.i2, label %while.body65.i.for.cond.i229.i.backedge_crit_edge, label %while.body65.i.for.body.i246.i_crit_edge

while.body65.i.for.body.i246.i_crit_edge:         ; preds = %while.body65.i
  br label %for.body.i246.i

while.body65.i.for.cond.i229.i.backedge_crit_edge: ; preds = %while.body65.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i229.i.backedge

for.body.i246.i:                                  ; preds = %for.body.i246.i.for.body.i246.i_crit_edge, %while.body65.i.for.body.i246.i_crit_edge
  %i.022.i235.i = phi i32 [ %inc.i244.i, %for.body.i246.i.for.body.i246.i_crit_edge ], [ 0, %while.body65.i.for.body.i246.i_crit_edge ]
  %borrow.021.i236.i = phi i64 [ %borrow.1.i242.i, %for.body.i246.i.for.body.i246.i_crit_edge ], [ 0, %while.body65.i.for.body.i246.i_crit_edge ]
  %arrayidx.i237.i = getelementptr i64, ptr %r.i1, i32 %i.022.i235.i
  %130 = ptrtoint ptr %arrayidx.i237.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %arrayidx.i237.i, align 8
  %arrayidx1.i238.i = getelementptr i64, ptr %m.i, i32 %i.022.i235.i
  %132 = ptrtoint ptr %arrayidx1.i238.i to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %arrayidx1.i238.i, align 8
  %134 = add i64 %133, %borrow.021.i236.i
  %sub2.i239.i = sub i64 %131, %134
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %134)
  %cmp4.not.i240.i = icmp eq i64 %134, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %131, i64 %134)
  %cmp6.i241.i = icmp ult i64 %131, %134
  %135 = zext i1 %cmp6.i241.i to i64
  %borrow.1.i242.i = select i1 %cmp4.not.i240.i, i64 %borrow.021.i236.i, i64 %135
  %136 = ptrtoint ptr %arrayidx.i237.i to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %sub2.i239.i, ptr %arrayidx.i237.i, align 8
  %inc.i244.i = add nuw nsw i32 %i.022.i235.i, 1
  %exitcond.not.i245.i = icmp eq i32 %inc.i244.i, %mul.i165.i
  br i1 %exitcond.not.i245.i, label %for.body.i246.i.for.cond.i229.i.backedge_crit_edge, label %for.body.i246.i.for.body.i246.i_crit_edge

for.body.i246.i.for.body.i246.i_crit_edge:        ; preds = %for.body.i246.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i246.i

for.body.i246.i.for.cond.i229.i.backedge_crit_edge: ; preds = %for.body.i246.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i229.i.backedge

while.end71.i:                                    ; preds = %if.else.i.i39
  br i1 %cmp5.not.i.i2, label %while.end71.i.vli_mmod_special2.exit_crit_edge, label %for.body.i256.preheader.i

while.end71.i.vli_mmod_special2.exit_crit_edge:   ; preds = %while.end71.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mmod_special2.exit

for.body.i256.preheader.i:                        ; preds = %while.end71.i
  call void @__sanitizer_cov_trace_pc() #18
  %137 = call ptr @memcpy(ptr %result, ptr %r.i1, i32 %70)
  br label %vli_mmod_special2.exit

vli_mmod_special2.exit:                           ; preds = %for.body.i256.preheader.i, %while.end71.i.vli_mmod_special2.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %m.i) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %r.i1) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %q.i) #16
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.then.if.end15_crit_edge
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %q.i40) #16
  %138 = call ptr @memset(ptr %q.i40, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %r.i41) #16
  %139 = call ptr @memset(ptr %r.i41, i32 255, i32 128)
  %add.ptr.i42 = getelementptr i64, ptr %1, i32 %conv
  %add.ptr1.i = getelementptr i64, ptr %product, i32 %conv
  %mul.i.i = shl nuw nsw i32 %conv, 1
  %sub.i.i = add nsw i32 %mul.i.i, -1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.end.i.i56.for.body.i.i_crit_edge, %if.end15
  %r01.sroa.0.064.i.i = phi i64 [ 0, %if.end15 ], [ %r01.sroa.8.1.lcssa.i.i, %for.end.i.i56.for.body.i.i_crit_edge ]
  %r01.sroa.8.063.i.i = phi i64 [ 0, %if.end15 ], [ %r2.1.lcssa.i.i, %for.end.i.i56.for.body.i.i_crit_edge ]
  %k.061.i.i = phi i32 [ 0, %if.end15 ], [ %add.i.i43, %for.end.i.i56.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.061.i.i, i32 %conv)
  %cmp1.i.i = icmp ult i32 %k.061.i.i, %conv
  %add.i.i43 = add nuw i32 %k.061.i.i, 1
  %sub2.i.i44 = sub i32 %add.i.i43, %conv
  %min.0.i.i = select i1 %cmp1.i.i, i32 0, i32 %sub2.i.i44
  call void @__sanitizer_cov_trace_cmp4(i32 %k.061.i.i, i32 %min.0.i.i)
  %cmp4.not52.i.i = icmp uge i32 %k.061.i.i, %min.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %min.0.i.i, i32 %conv)
  %cmp553.i.i = icmp ult i32 %min.0.i.i, %conv
  %or.cond54.i.i = and i1 %cmp4.not52.i.i, %cmp553.i.i
  br i1 %or.cond54.i.i, label %for.body.i.i.for.body6.i.i_crit_edge, label %for.body.i.i.for.end.i.i56_crit_edge

for.body.i.i.for.end.i.i56_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i56

for.body.i.i.for.body6.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body6.i.i

for.body6.i.i:                                    ; preds = %for.body6.i.i.for.body6.i.i_crit_edge, %for.body.i.i.for.body6.i.i_crit_edge
  %r01.sroa.0.158.i.i = phi i64 [ %add.i49.i.i, %for.body6.i.i.for.body6.i.i_crit_edge ], [ %r01.sroa.0.064.i.i, %for.body.i.i.for.body6.i.i_crit_edge ]
  %r01.sroa.8.157.i.i = phi i64 [ %add8.i51.i.i, %for.body6.i.i.for.body6.i.i_crit_edge ], [ %r01.sroa.8.063.i.i, %for.body.i.i.for.body6.i.i_crit_edge ]
  %i.056.i.i = phi i32 [ %inc.i.i, %for.body6.i.i.for.body6.i.i_crit_edge ], [ %min.0.i.i, %for.body.i.i.for.body6.i.i_crit_edge ]
  %r2.155.i.i = phi i64 [ %add13.i.i, %for.body6.i.i.for.body6.i.i_crit_edge ], [ 0, %for.body.i.i.for.body6.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i64, ptr %add.ptr1.i, i32 %i.056.i.i
  %140 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %arrayidx.i.i, align 8
  %sub7.i.i = sub i32 %k.061.i.i, %i.056.i.i
  %arrayidx8.i.i = getelementptr i64, ptr %add.ptr.i42, i32 %sub7.i.i
  %142 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %arrayidx8.i.i, align 8
  %and.i.i.i45 = and i64 %141, 4294967295
  %shr.i.i.i46 = lshr i64 %141, 32
  %and1.i.i.i = and i64 %143, 4294967295
  %shr2.i.i.i = lshr i64 %143, 32
  %mul.i.i.i47 = mul nuw i64 %and1.i.i.i, %and.i.i.i45
  %mul3.i.i.i = mul nuw i64 %shr2.i.i.i, %and.i.i.i45
  %mul4.i.i.i48 = mul nuw i64 %and1.i.i.i, %shr.i.i.i46
  %mul5.i.i.i = mul nuw i64 %shr2.i.i.i, %shr.i.i.i46
  %shr6.i.i.i49 = lshr i64 %mul.i.i.i47, 32
  %add.i.i.i = add i64 %mul3.i.i.i, %mul4.i.i.i48
  %add7.i.i.i50 = add i64 %add.i.i.i, %shr6.i.i.i49
  call void @__sanitizer_cov_trace_cmp8(i64 %add7.i.i.i50, i64 %mul3.i.i.i)
  %cmp.i.i.i = icmp ult i64 %add7.i.i.i50, %mul3.i.i.i
  %add8.i.i.i = add nuw i64 %mul5.i.i.i, 4294967296
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i64 %add8.i.i.i, i64 %mul5.i.i.i
  %and9.i.i.i51 = and i64 %mul.i.i.i47, 4294967295
  %shl.i.i.i52 = shl i64 %add7.i.i.i50, 32
  %shr10.i.i.i53 = lshr i64 %add7.i.i.i50, 32
  %add11.i.i.i = add i64 %spec.select.i.i.i, %shr10.i.i.i53
  %or.i.i.i54 = add i64 %and9.i.i.i51, %r01.sroa.0.158.i.i
  %add.i49.i.i = add i64 %or.i.i.i54, %shl.i.i.i52
  %add4.i.i.i = add i64 %add11.i.i.i, %r01.sroa.8.157.i.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i49.i.i, i64 %r01.sroa.0.158.i.i)
  %cmp.i50.i.i = icmp ult i64 %add.i49.i.i, %r01.sroa.0.158.i.i
  %144 = zext i1 %cmp.i50.i.i to i64
  %add8.i51.i.i = add i64 %add4.i.i.i, %144
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i51.i.i, i64 %add11.i.i.i)
  %cmp11.i.i = icmp ult i64 %add8.i51.i.i, %add11.i.i.i
  %145 = zext i1 %cmp11.i.i to i64
  %add13.i.i = add i64 %r2.155.i.i, %145
  %inc.i.i = add nuw nsw i32 %i.056.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %k.061.i.i, i32 %i.056.i.i)
  %cmp4.not.i.i55 = icmp ugt i32 %k.061.i.i, %i.056.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %conv)
  %cmp5.i.i = icmp ult i32 %inc.i.i, %conv
  %or.cond.i.i = and i1 %cmp4.not.i.i55, %cmp5.i.i
  br i1 %or.cond.i.i, label %for.body6.i.i.for.body6.i.i_crit_edge, label %for.body6.i.i.for.end.i.i56_crit_edge

for.body6.i.i.for.end.i.i56_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i56

for.body6.i.i.for.body6.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body6.i.i

for.end.i.i56:                                    ; preds = %for.body6.i.i.for.end.i.i56_crit_edge, %for.body.i.i.for.end.i.i56_crit_edge
  %r2.1.lcssa.i.i = phi i64 [ 0, %for.body.i.i.for.end.i.i56_crit_edge ], [ %add13.i.i, %for.body6.i.i.for.end.i.i56_crit_edge ]
  %r01.sroa.8.1.lcssa.i.i = phi i64 [ %r01.sroa.8.063.i.i, %for.body.i.i.for.end.i.i56_crit_edge ], [ %add8.i51.i.i, %for.body6.i.i.for.end.i.i56_crit_edge ]
  %r01.sroa.0.1.lcssa.i.i = phi i64 [ %r01.sroa.0.064.i.i, %for.body.i.i.for.end.i.i56_crit_edge ], [ %add.i49.i.i, %for.body6.i.i.for.end.i.i56_crit_edge ]
  %arrayidx14.i.i = getelementptr i64, ptr %q.i40, i32 %k.061.i.i
  %146 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store8_noabort(i32 %146)
  store i64 %r01.sroa.0.1.lcssa.i.i, ptr %arrayidx14.i.i, align 8
  %exitcond.not.i.i = icmp eq i32 %add.i.i43, %sub.i.i
  br i1 %exitcond.not.i.i, label %vli_mult.exit.i, label %for.end.i.i56.for.body.i.i_crit_edge

for.end.i.i56.for.body.i.i_crit_edge:             ; preds = %for.end.i.i56
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

vli_mult.exit.i:                                  ; preds = %for.end.i.i56
  %arrayidx24.i.i = getelementptr i64, ptr %q.i40, i32 %sub.i.i
  %147 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %r01.sroa.8.1.lcssa.i.i, ptr %arrayidx24.i.i, align 8
  %arrayidx.i = getelementptr i64, ptr %add.ptr.i42, i32 %conv
  %148 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %149)
  %tobool.not.i = icmp eq i64 %149, 0
  br i1 %tobool.not.i, label %vli_mult.exit.i.if.end.i66_crit_edge, label %if.then.i57

vli_mult.exit.i.if.end.i66_crit_edge:             ; preds = %vli_mult.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i66

if.then.i57:                                      ; preds = %vli_mult.exit.i
  %add.ptr3.i = getelementptr i64, ptr %q.i40, i32 %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp20.not.i.i = icmp eq i8 %3, 0
  br i1 %cmp20.not.i.i, label %if.then.i57.if.end.i66_crit_edge, label %if.then.i57.for.body.i57.i65_crit_edge

if.then.i57.for.body.i57.i65_crit_edge:           ; preds = %if.then.i57
  br label %for.body.i57.i65

if.then.i57.if.end.i66_crit_edge:                 ; preds = %if.then.i57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i66

for.body.i57.i65:                                 ; preds = %for.body.i57.i65.for.body.i57.i65_crit_edge, %if.then.i57.for.body.i57.i65_crit_edge
  %i.022.i.i58 = phi i32 [ %inc.i55.i63, %for.body.i57.i65.for.body.i57.i65_crit_edge ], [ 0, %if.then.i57.for.body.i57.i65_crit_edge ]
  %carry.021.i.i59 = phi i64 [ %carry.1.i.i62, %for.body.i57.i65.for.body.i57.i65_crit_edge ], [ 0, %if.then.i57.for.body.i57.i65_crit_edge ]
  %arrayidx.i51.i = getelementptr i64, ptr %add.ptr3.i, i32 %i.022.i.i58
  %150 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %arrayidx.i51.i, align 8
  %arrayidx1.i.i = getelementptr i64, ptr %add.ptr1.i, i32 %i.022.i.i58
  %152 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx1.i.i, align 8
  %add.i52.i = add i64 %151, %carry.021.i.i59
  %add2.i.i60 = add i64 %add.i52.i, %153
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i60, i64 %151)
  %cmp4.not.i53.i = icmp eq i64 %add2.i.i60, %151
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i60, i64 %151)
  %cmp6.i.i61 = icmp ult i64 %add2.i.i60, %151
  %154 = zext i1 %cmp6.i.i61 to i64
  %carry.1.i.i62 = select i1 %cmp4.not.i53.i, i64 %carry.021.i.i59, i64 %154
  %155 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 %add2.i.i60, ptr %arrayidx.i51.i, align 8
  %inc.i55.i63 = add nuw nsw i32 %i.022.i.i58, 1
  %exitcond.not.i56.i64 = icmp eq i32 %inc.i55.i63, %conv
  br i1 %exitcond.not.i56.i64, label %for.body.i57.i65.if.end.i66_crit_edge, label %for.body.i57.i65.for.body.i57.i65_crit_edge

for.body.i57.i65.for.body.i57.i65_crit_edge:      ; preds = %for.body.i57.i65
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i57.i65

for.body.i57.i65.if.end.i66_crit_edge:            ; preds = %for.body.i57.i65
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i66

if.end.i66:                                       ; preds = %for.body.i57.i65.if.end.i66_crit_edge, %if.then.i57.if.end.i66_crit_edge, %vli_mult.exit.i.if.end.i66_crit_edge
  %add.ptr9.i = getelementptr i64, ptr %q.i40, i32 %conv
  br label %for.body.i71.i

for.body.i71.i:                                   ; preds = %for.end.i114.i.for.body.i71.i_crit_edge, %if.end.i66
  %r01.sroa.0.064.i61.i = phi i64 [ 0, %if.end.i66 ], [ %r01.sroa.8.1.lcssa.i110.i, %for.end.i114.i.for.body.i71.i_crit_edge ]
  %r01.sroa.8.063.i62.i = phi i64 [ 0, %if.end.i66 ], [ %r2.1.lcssa.i109.i, %for.end.i114.i.for.body.i71.i_crit_edge ]
  %k.061.i63.i = phi i32 [ 0, %if.end.i66 ], [ %add.i65.i, %for.end.i114.i.for.body.i71.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %k.061.i63.i, i32 %conv)
  %cmp1.i64.i = icmp ult i32 %k.061.i63.i, %conv
  %add.i65.i = add nuw i32 %k.061.i63.i, 1
  %sub2.i66.i = sub i32 %add.i65.i, %conv
  %min.0.i67.i = select i1 %cmp1.i64.i, i32 0, i32 %sub2.i66.i
  call void @__sanitizer_cov_trace_cmp4(i32 %k.061.i63.i, i32 %min.0.i67.i)
  %cmp4.not52.i68.i = icmp uge i32 %k.061.i63.i, %min.0.i67.i
  call void @__sanitizer_cov_trace_cmp4(i32 %min.0.i67.i, i32 %conv)
  %cmp553.i69.i = icmp ult i32 %min.0.i67.i, %conv
  %or.cond54.i70.i = and i1 %cmp4.not52.i68.i, %cmp553.i69.i
  br i1 %or.cond54.i70.i, label %for.body.i71.i.for.body6.i108.i_crit_edge, label %for.body.i71.i.for.end.i114.i_crit_edge

for.body.i71.i.for.end.i114.i_crit_edge:          ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i114.i

for.body.i71.i.for.body6.i108.i_crit_edge:        ; preds = %for.body.i71.i
  br label %for.body6.i108.i

for.body6.i108.i:                                 ; preds = %for.body6.i108.i.for.body6.i108.i_crit_edge, %for.body.i71.i.for.body6.i108.i_crit_edge
  %r01.sroa.0.158.i72.i = phi i64 [ %add.i49.i98.i, %for.body6.i108.i.for.body6.i108.i_crit_edge ], [ %r01.sroa.0.064.i61.i, %for.body.i71.i.for.body6.i108.i_crit_edge ]
  %r01.sroa.8.157.i73.i = phi i64 [ %add8.i51.i101.i, %for.body6.i108.i.for.body6.i108.i_crit_edge ], [ %r01.sroa.8.063.i62.i, %for.body.i71.i.for.body6.i108.i_crit_edge ]
  %i.056.i74.i = phi i32 [ %inc.i104.i, %for.body6.i108.i.for.body6.i108.i_crit_edge ], [ %min.0.i67.i, %for.body.i71.i.for.body6.i108.i_crit_edge ]
  %r2.155.i75.i = phi i64 [ %add13.i103.i, %for.body6.i108.i.for.body6.i108.i_crit_edge ], [ 0, %for.body.i71.i.for.body6.i108.i_crit_edge ]
  %arrayidx.i76.i = getelementptr i64, ptr %1, i32 %i.056.i74.i
  %156 = ptrtoint ptr %arrayidx.i76.i to i32
  call void @__asan_load8_noabort(i32 %156)
  %157 = load i64, ptr %arrayidx.i76.i, align 8
  %sub7.i77.i = sub i32 %k.061.i63.i, %i.056.i74.i
  %arrayidx8.i78.i = getelementptr i64, ptr %add.ptr9.i, i32 %sub7.i77.i
  %158 = ptrtoint ptr %arrayidx8.i78.i to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %arrayidx8.i78.i, align 8
  %and.i.i79.i = and i64 %157, 4294967295
  %shr.i.i80.i = lshr i64 %157, 32
  %and1.i.i81.i = and i64 %159, 4294967295
  %shr2.i.i82.i = lshr i64 %159, 32
  %mul.i.i83.i = mul nuw i64 %and1.i.i81.i, %and.i.i79.i
  %mul3.i.i84.i = mul nuw i64 %shr2.i.i82.i, %and.i.i79.i
  %mul4.i.i85.i = mul nuw i64 %and1.i.i81.i, %shr.i.i80.i
  %mul5.i.i86.i = mul nuw i64 %shr2.i.i82.i, %shr.i.i80.i
  %shr6.i.i87.i = lshr i64 %mul.i.i83.i, 32
  %add.i.i88.i = add i64 %mul3.i.i84.i, %mul4.i.i85.i
  %add7.i.i89.i = add i64 %add.i.i88.i, %shr6.i.i87.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add7.i.i89.i, i64 %mul3.i.i84.i)
  %cmp.i.i90.i = icmp ult i64 %add7.i.i89.i, %mul3.i.i84.i
  %add8.i.i91.i = add nuw i64 %mul5.i.i86.i, 4294967296
  %spec.select.i.i92.i = select i1 %cmp.i.i90.i, i64 %add8.i.i91.i, i64 %mul5.i.i86.i
  %and9.i.i93.i = and i64 %mul.i.i83.i, 4294967295
  %shl.i.i94.i = shl i64 %add7.i.i89.i, 32
  %shr10.i.i95.i = lshr i64 %add7.i.i89.i, 32
  %add11.i.i96.i = add i64 %spec.select.i.i92.i, %shr10.i.i95.i
  %or.i.i97.i = add i64 %and9.i.i93.i, %r01.sroa.0.158.i72.i
  %add.i49.i98.i = add i64 %or.i.i97.i, %shl.i.i94.i
  %add4.i.i99.i = add i64 %add11.i.i96.i, %r01.sroa.8.157.i73.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i49.i98.i, i64 %r01.sroa.0.158.i72.i)
  %cmp.i50.i100.i = icmp ult i64 %add.i49.i98.i, %r01.sroa.0.158.i72.i
  %160 = zext i1 %cmp.i50.i100.i to i64
  %add8.i51.i101.i = add i64 %add4.i.i99.i, %160
  call void @__sanitizer_cov_trace_cmp8(i64 %add8.i51.i101.i, i64 %add11.i.i96.i)
  %cmp11.i102.i = icmp ult i64 %add8.i51.i101.i, %add11.i.i96.i
  %161 = zext i1 %cmp11.i102.i to i64
  %add13.i103.i = add i64 %r2.155.i75.i, %161
  %inc.i104.i = add nuw nsw i32 %i.056.i74.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %k.061.i63.i, i32 %i.056.i74.i)
  %cmp4.not.i105.i = icmp ugt i32 %k.061.i63.i, %i.056.i74.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i104.i, i32 %conv)
  %cmp5.i106.i = icmp ult i32 %inc.i104.i, %conv
  %or.cond.i107.i = and i1 %cmp4.not.i105.i, %cmp5.i106.i
  br i1 %or.cond.i107.i, label %for.body6.i108.i.for.body6.i108.i_crit_edge, label %for.body6.i108.i.for.end.i114.i_crit_edge

for.body6.i108.i.for.end.i114.i_crit_edge:        ; preds = %for.body6.i108.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i114.i

for.body6.i108.i.for.body6.i108.i_crit_edge:      ; preds = %for.body6.i108.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body6.i108.i

for.end.i114.i:                                   ; preds = %for.body6.i108.i.for.end.i114.i_crit_edge, %for.body.i71.i.for.end.i114.i_crit_edge
  %r2.1.lcssa.i109.i = phi i64 [ 0, %for.body.i71.i.for.end.i114.i_crit_edge ], [ %add13.i103.i, %for.body6.i108.i.for.end.i114.i_crit_edge ]
  %r01.sroa.8.1.lcssa.i110.i = phi i64 [ %r01.sroa.8.063.i62.i, %for.body.i71.i.for.end.i114.i_crit_edge ], [ %add8.i51.i101.i, %for.body6.i108.i.for.end.i114.i_crit_edge ]
  %r01.sroa.0.1.lcssa.i111.i = phi i64 [ %r01.sroa.0.064.i61.i, %for.body.i71.i.for.end.i114.i_crit_edge ], [ %add.i49.i98.i, %for.body6.i108.i.for.end.i114.i_crit_edge ]
  %arrayidx14.i112.i = getelementptr i64, ptr %r.i41, i32 %k.061.i63.i
  %162 = ptrtoint ptr %arrayidx14.i112.i to i32
  call void @__asan_store8_noabort(i32 %162)
  store i64 %r01.sroa.0.1.lcssa.i111.i, ptr %arrayidx14.i112.i, align 8
  %exitcond.not.i113.i = icmp eq i32 %add.i65.i, %sub.i.i
  br i1 %exitcond.not.i113.i, label %vli_mult.exit116.i, label %for.end.i114.i.for.body.i71.i_crit_edge

for.end.i114.i.for.body.i71.i_crit_edge:          ; preds = %for.end.i114.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i71.i

vli_mult.exit116.i:                               ; preds = %for.end.i114.i
  %arrayidx24.i115.i = getelementptr i64, ptr %r.i41, i32 %sub.i.i
  %163 = ptrtoint ptr %arrayidx24.i115.i to i32
  call void @__asan_store8_noabort(i32 %163)
  store i64 %r01.sroa.8.1.lcssa.i110.i, ptr %arrayidx24.i115.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp20.not.i117.i = icmp eq i8 %3, 0
  br i1 %cmp20.not.i117.i, label %vli_mult.exit116.i.vli_sub.exit.i70_crit_edge, label %vli_mult.exit116.i.for.body.i127.i_crit_edge

vli_mult.exit116.i.for.body.i127.i_crit_edge:     ; preds = %vli_mult.exit116.i
  br label %for.body.i127.i

vli_mult.exit116.i.vli_sub.exit.i70_crit_edge:    ; preds = %vli_mult.exit116.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_sub.exit.i70

for.body.i127.i:                                  ; preds = %for.body.i127.i.for.body.i127.i_crit_edge, %vli_mult.exit116.i.for.body.i127.i_crit_edge
  %i.022.i118.i = phi i32 [ %inc.i125.i, %for.body.i127.i.for.body.i127.i_crit_edge ], [ 0, %vli_mult.exit116.i.for.body.i127.i_crit_edge ]
  %borrow.021.i.i67 = phi i64 [ %borrow.1.i.i68, %for.body.i127.i.for.body.i127.i_crit_edge ], [ 0, %vli_mult.exit116.i.for.body.i127.i_crit_edge ]
  %arrayidx.i119.i = getelementptr i64, ptr %product, i32 %i.022.i118.i
  %164 = ptrtoint ptr %arrayidx.i119.i to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %arrayidx.i119.i, align 8
  %arrayidx1.i120.i = getelementptr i64, ptr %r.i41, i32 %i.022.i118.i
  %166 = ptrtoint ptr %arrayidx1.i120.i to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %arrayidx1.i120.i, align 8
  %168 = add i64 %167, %borrow.021.i.i67
  %sub2.i121.i = sub i64 %165, %168
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %168)
  %cmp4.not.i122.i = icmp eq i64 %168, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %165, i64 %168)
  %cmp6.i123.i = icmp ult i64 %165, %168
  %169 = zext i1 %cmp6.i123.i to i64
  %borrow.1.i.i68 = select i1 %cmp4.not.i122.i, i64 %borrow.021.i.i67, i64 %169
  %170 = ptrtoint ptr %arrayidx1.i120.i to i32
  call void @__asan_store8_noabort(i32 %170)
  store i64 %sub2.i121.i, ptr %arrayidx1.i120.i, align 8
  %inc.i125.i = add nuw nsw i32 %i.022.i118.i, 1
  %exitcond.not.i126.i = icmp eq i32 %inc.i125.i, %mul.i.i
  br i1 %exitcond.not.i126.i, label %for.body.i127.i.vli_sub.exit.i70_crit_edge, label %for.body.i127.i.for.body.i127.i_crit_edge

for.body.i127.i.for.body.i127.i_crit_edge:        ; preds = %for.body.i127.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i127.i

for.body.i127.i.vli_sub.exit.i70_crit_edge:       ; preds = %for.body.i127.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_sub.exit.i70

vli_sub.exit.i70:                                 ; preds = %for.body.i127.i.vli_sub.exit.i70_crit_edge, %vli_mult.exit116.i.vli_sub.exit.i70_crit_edge
  %add.ptr14.i = getelementptr i64, ptr %r.i41, i32 %conv
  br label %while.cond.i

while.cond.i:                                     ; preds = %for.body.i161.i.while.cond.i_crit_edge, %vli_sub.exit.i70
  br i1 %cmp20.not.i117.i, label %while.cond.i.for.cond.i135.i.preheader_crit_edge, label %for.body.i133.preheader.i

while.cond.i.for.cond.i135.i.preheader_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i135.i.preheader

for.body.i133.preheader.i:                        ; preds = %while.cond.i
  %171 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %add.ptr14.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %172)
  %tobool.not.i174.i = icmp eq i64 %172, 0
  br i1 %tobool.not.i174.i, label %for.body.i133.preheader.i.for.cond.i.i71_crit_edge, label %for.body.i133.preheader.i.for.body.i152.i.preheader_crit_edge

for.body.i133.preheader.i.for.body.i152.i.preheader_crit_edge: ; preds = %for.body.i133.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i152.i.preheader

for.body.i133.preheader.i.for.cond.i.i71_crit_edge: ; preds = %for.body.i133.preheader.i
  br label %for.cond.i.i71

for.cond.i.i71:                                   ; preds = %for.body.i133.i.for.cond.i.i71_crit_edge, %for.body.i133.preheader.i.for.cond.i.i71_crit_edge
  %i.04.i175.i = phi i32 [ %inc.i129.i, %for.body.i133.i.for.cond.i.i71_crit_edge ], [ 0, %for.body.i133.preheader.i.for.cond.i.i71_crit_edge ]
  %inc.i129.i = add nuw nsw i32 %i.04.i175.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i129.i, i32 %conv)
  %exitcond.not.i130.i = icmp eq i32 %inc.i129.i, %conv
  br i1 %exitcond.not.i130.i, label %for.cond.i.i71.for.cond.i135.i.preheader_crit_edge, label %for.body.i133.i

for.cond.i.i71.for.cond.i135.i.preheader_crit_edge: ; preds = %for.cond.i.i71
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i135.i.preheader

for.body.i133.i:                                  ; preds = %for.cond.i.i71
  %arrayidx.i132.i = getelementptr i64, ptr %add.ptr14.i, i32 %inc.i129.i
  %173 = ptrtoint ptr %arrayidx.i132.i to i32
  call void @__asan_load8_noabort(i32 %173)
  %174 = load i64, ptr %arrayidx.i132.i, align 8
  %tobool.not.i.i72 = icmp eq i64 %174, 0
  br i1 %tobool.not.i.i72, label %for.body.i133.i.for.cond.i.i71_crit_edge, label %vli_is_zero.exit.i74

for.body.i133.i.for.cond.i.i71_crit_edge:         ; preds = %for.body.i133.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i71

vli_is_zero.exit.i74:                             ; preds = %for.body.i133.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i129.i, i32 %conv)
  %cmp.i.le.i73 = icmp uge i32 %inc.i129.i, %conv
  %brmerge = or i1 %cmp.i.le.i73, %cmp20.not.i117.i
  br i1 %brmerge, label %vli_is_zero.exit.i74.for.cond.i135.i.preheader_crit_edge, label %vli_is_zero.exit.i74.for.body.i152.i.preheader_crit_edge

vli_is_zero.exit.i74.for.body.i152.i.preheader_crit_edge: ; preds = %vli_is_zero.exit.i74
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i152.i.preheader

vli_is_zero.exit.i74.for.cond.i135.i.preheader_crit_edge: ; preds = %vli_is_zero.exit.i74
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i135.i.preheader

for.cond.i135.i.preheader:                        ; preds = %vli_sub.exit155.i.for.cond.i135.i.preheader_crit_edge, %vli_is_zero.exit.i74.for.cond.i135.i.preheader_crit_edge, %for.cond.i.i71.for.cond.i135.i.preheader_crit_edge, %while.cond.i.for.cond.i135.i.preheader_crit_edge
  br label %for.cond.i135.i

for.cond.i135.i:                                  ; preds = %for.cond.i135.i.backedge, %for.cond.i135.i.preheader
  %i.0.in.i.i76 = phi i32 [ %conv, %for.cond.i135.i.preheader ], [ %i.0.in.i.i76.be, %for.cond.i135.i.backedge ]
  %i.0.i.i77 = add nsw i32 %i.0.in.i.i76, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i76)
  %cmp.i134.i = icmp sgt i32 %i.0.in.i.i76, 0
  br i1 %cmp.i134.i, label %for.body.i138.i79, label %for.cond.i135.i.while.body.i81_crit_edge

for.cond.i135.i.while.body.i81_crit_edge:         ; preds = %for.cond.i135.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i81

for.body.i138.i79:                                ; preds = %for.cond.i135.i
  %arrayidx.i136.i = getelementptr i64, ptr %r.i41, i32 %i.0.i.i77
  %175 = ptrtoint ptr %arrayidx.i136.i to i32
  call void @__asan_load8_noabort(i32 %175)
  %176 = load i64, ptr %arrayidx.i136.i, align 8
  %arrayidx1.i137.i = getelementptr i64, ptr %1, i32 %i.0.i.i77
  %177 = ptrtoint ptr %arrayidx1.i137.i to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %arrayidx1.i137.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %176, i64 %178)
  %cmp2.i.i78 = icmp ugt i64 %176, %178
  br i1 %cmp2.i.i78, label %for.body.i138.i79.while.body.i81_crit_edge, label %if.else.i.i80

for.body.i138.i79.while.body.i81_crit_edge:       ; preds = %for.body.i138.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i81

if.else.i.i80:                                    ; preds = %for.body.i138.i79
  call void @__sanitizer_cov_trace_cmp8(i64 %176, i64 %178)
  %cmp5.i139.i = icmp ult i64 %176, %178
  br i1 %cmp5.i139.i, label %while.end.i, label %if.else.i.i80.for.cond.i135.i.backedge_crit_edge

if.else.i.i80.for.cond.i135.i.backedge_crit_edge: ; preds = %if.else.i.i80
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i135.i.backedge

for.cond.i135.i.backedge:                         ; preds = %while.body.i81.for.cond.i135.i.backedge_crit_edge, %if.else.i.i80.for.cond.i135.i.backedge_crit_edge
  %i.0.in.i.i76.be = phi i32 [ %i.0.i.i77, %if.else.i.i80.for.cond.i135.i.backedge_crit_edge ], [ %conv, %while.body.i81.for.cond.i135.i.backedge_crit_edge ]
  br label %for.cond.i135.i

while.body.i81:                                   ; preds = %for.body.i138.i79.while.body.i81_crit_edge, %for.cond.i135.i.while.body.i81_crit_edge
  br i1 %cmp20.not.i117.i, label %while.body.i81.for.cond.i135.i.backedge_crit_edge, label %while.body.i81.for.body.i152.i.preheader_crit_edge

while.body.i81.for.body.i152.i.preheader_crit_edge: ; preds = %while.body.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i152.i.preheader

while.body.i81.for.cond.i135.i.backedge_crit_edge: ; preds = %while.body.i81
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i135.i.backedge

for.body.i152.i.preheader:                        ; preds = %while.body.i81.for.body.i152.i.preheader_crit_edge, %vli_is_zero.exit.i74.for.body.i152.i.preheader_crit_edge, %for.body.i133.preheader.i.for.body.i152.i.preheader_crit_edge
  br label %for.body.i152.i

for.body.i152.i:                                  ; preds = %for.body.i152.i.for.body.i152.i_crit_edge, %for.body.i152.i.preheader
  %i.022.i141.i = phi i32 [ %inc.i150.i, %for.body.i152.i.for.body.i152.i_crit_edge ], [ 0, %for.body.i152.i.preheader ]
  %borrow.021.i142.i = phi i64 [ %borrow.1.i148.i, %for.body.i152.i.for.body.i152.i_crit_edge ], [ 0, %for.body.i152.i.preheader ]
  %arrayidx.i143.i = getelementptr i64, ptr %r.i41, i32 %i.022.i141.i
  %179 = ptrtoint ptr %arrayidx.i143.i to i32
  call void @__asan_load8_noabort(i32 %179)
  %180 = load i64, ptr %arrayidx.i143.i, align 8
  %arrayidx1.i144.i = getelementptr i64, ptr %1, i32 %i.022.i141.i
  %181 = ptrtoint ptr %arrayidx1.i144.i to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %arrayidx1.i144.i, align 8
  %183 = add i64 %182, %borrow.021.i142.i
  %sub2.i145.i = sub i64 %180, %183
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %183)
  %cmp4.not.i146.i = icmp eq i64 %183, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %180, i64 %183)
  %cmp6.i147.i = icmp ult i64 %180, %183
  %184 = zext i1 %cmp6.i147.i to i64
  %borrow.1.i148.i = select i1 %cmp4.not.i146.i, i64 %borrow.021.i142.i, i64 %184
  %185 = ptrtoint ptr %arrayidx.i143.i to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %sub2.i145.i, ptr %arrayidx.i143.i, align 8
  %inc.i150.i = add nuw i32 %i.022.i141.i, 1
  %exitcond.not.i151.i = icmp eq i32 %inc.i150.i, %conv
  br i1 %exitcond.not.i151.i, label %vli_sub.exit155.i, label %for.body.i152.i.for.body.i152.i_crit_edge

for.body.i152.i.for.body.i152.i_crit_edge:        ; preds = %for.body.i152.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i152.i

vli_sub.exit155.i:                                ; preds = %for.body.i152.i
  br i1 %cmp20.not.i117.i, label %vli_sub.exit155.i.for.cond.i135.i.preheader_crit_edge, label %vli_sub.exit155.i.for.body.i161.i_crit_edge

vli_sub.exit155.i.for.body.i161.i_crit_edge:      ; preds = %vli_sub.exit155.i
  br label %for.body.i161.i

vli_sub.exit155.i.for.cond.i135.i.preheader_crit_edge: ; preds = %vli_sub.exit155.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i135.i.preheader

for.body.i161.i:                                  ; preds = %for.body.i161.i.for.body.i161.i_crit_edge, %vli_sub.exit155.i.for.body.i161.i_crit_edge
  %i.03.i.i82 = phi i32 [ %inc.i159.i, %for.body.i161.i.for.body.i161.i_crit_edge ], [ 0, %vli_sub.exit155.i.for.body.i161.i_crit_edge ]
  %borrow.02.i.i = phi i64 [ %borrow.1.i158.i, %for.body.i161.i.for.body.i161.i_crit_edge ], [ %borrow.1.i148.i, %vli_sub.exit155.i.for.body.i161.i_crit_edge ]
  %arrayidx.i156.i = getelementptr i64, ptr %add.ptr14.i, i32 %i.03.i.i82
  %186 = ptrtoint ptr %arrayidx.i156.i to i32
  call void @__asan_load8_noabort(i32 %186)
  %187 = load i64, ptr %arrayidx.i156.i, align 8
  %sub.i157.i = sub i64 %187, %borrow.02.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.02.i.i)
  %cmp2.not.i.i83 = icmp ne i64 %borrow.02.i.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %187, i64 %borrow.02.i.i)
  %cmp4.i.i84 = icmp ult i64 %187, %borrow.02.i.i
  %narrow.i.i85 = select i1 %cmp2.not.i.i83, i1 %cmp4.i.i84, i1 false
  %borrow.1.i158.i = zext i1 %narrow.i.i85 to i64
  %188 = ptrtoint ptr %arrayidx.i156.i to i32
  call void @__asan_store8_noabort(i32 %188)
  store i64 %sub.i157.i, ptr %arrayidx.i156.i, align 8
  %inc.i159.i = add nuw nsw i32 %i.03.i.i82, 1
  %exitcond.not.i160.i = icmp eq i32 %inc.i159.i, %conv
  br i1 %exitcond.not.i160.i, label %for.body.i161.i.while.cond.i_crit_edge, label %for.body.i161.i.for.body.i161.i_crit_edge

for.body.i161.i.for.body.i161.i_crit_edge:        ; preds = %for.body.i161.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i161.i

for.body.i161.i.while.cond.i_crit_edge:           ; preds = %for.body.i161.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

while.end.i:                                      ; preds = %if.else.i.i80
  br i1 %cmp20.not.i117.i, label %while.end.i.vli_mmod_barrett.exit_crit_edge, label %for.body.i167.preheader.i

while.end.i.vli_mmod_barrett.exit_crit_edge:      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mmod_barrett.exit

for.body.i167.preheader.i:                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %189 = shl nuw nsw i32 %conv, 3
  %190 = call ptr @memcpy(ptr %result, ptr %r.i41, i32 %189)
  br label %vli_mmod_barrett.exit

vli_mmod_barrett.exit:                            ; preds = %for.body.i167.preheader.i, %while.end.i.vli_mmod_barrett.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %r.i41) #16
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %q.i40) #16
  br label %cleanup

if.end16:                                         ; preds = %entry
  %191 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %3, label %sw.default [
    i8 3, label %sw.bb
    i8 4, label %sw.bb17
    i8 6, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end16
  %192 = ptrtoint ptr %product to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %product, align 8
  %194 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %194)
  store i64 %193, ptr %result, align 8
  %arrayidx.i.1.i = getelementptr i64, ptr %product, i32 1
  %195 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %arrayidx.i.1.i, align 8
  %arrayidx1.i.1.i = getelementptr i64, ptr %result, i32 1
  %197 = ptrtoint ptr %arrayidx1.i.1.i to i32
  call void @__asan_store8_noabort(i32 %197)
  store i64 %196, ptr %arrayidx1.i.1.i, align 8
  %arrayidx.i.2.i = getelementptr i64, ptr %product, i32 2
  %198 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %arrayidx.i.2.i, align 8
  %arrayidx1.i.2.i = getelementptr i64, ptr %result, i32 2
  %200 = ptrtoint ptr %arrayidx1.i.2.i to i32
  call void @__asan_store8_noabort(i32 %200)
  store i64 %199, ptr %arrayidx1.i.2.i, align 8
  %arrayidx.i87 = getelementptr i64, ptr %product, i32 3
  %201 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load8_noabort(i32 %201)
  %202 = load i64, ptr %arrayidx.i87, align 8
  %arrayidx.i50.1.i = getelementptr i64, ptr %product, i32 4
  %203 = ptrtoint ptr %arrayidx.i50.1.i to i32
  call void @__asan_load8_noabort(i32 %203)
  %204 = load i64, ptr %arrayidx.i50.1.i, align 8
  %arrayidx.i50.2.i = getelementptr i64, ptr %product, i32 5
  %205 = ptrtoint ptr %arrayidx.i50.2.i to i32
  call void @__asan_load8_noabort(i32 %205)
  %206 = load i64, ptr %arrayidx.i50.2.i, align 8
  %add2.i.i88 = add i64 %202, %193
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %202)
  %cmp4.not.i.i89 = icmp ne i64 %202, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i88, i64 %193)
  %cmp6.i.i90 = icmp ult i64 %add2.i.i88, %193
  %narrow.i = select i1 %cmp4.not.i.i89, i1 %cmp6.i.i90, i1 false
  %carry.1.i.i91 = zext i1 %narrow.i to i64
  %207 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %207)
  store i64 %add2.i.i88, ptr %result, align 8
  %add.i.1.i = add i64 %204, %196
  %add2.i.1.i = add i64 %add.i.1.i, %carry.1.i.i91
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.1.i, i64 %196)
  %cmp4.not.i.1.i = icmp eq i64 %add2.i.1.i, %196
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.1.i, i64 %196)
  %cmp6.i.1.i = icmp ult i64 %add2.i.1.i, %196
  %208 = zext i1 %cmp6.i.1.i to i64
  %carry.1.i.1.i = select i1 %cmp4.not.i.1.i, i64 %carry.1.i.i91, i64 %208
  %209 = ptrtoint ptr %arrayidx1.i.1.i to i32
  call void @__asan_store8_noabort(i32 %209)
  store i64 %add2.i.1.i, ptr %arrayidx1.i.1.i, align 8
  %add.i.2.i = add i64 %206, %199
  %add2.i.2.i = add i64 %add.i.2.i, %carry.1.i.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.2.i, i64 %199)
  %cmp6.i.2.i = icmp ult i64 %add2.i.2.i, %199
  %210 = zext i1 %cmp6.i.2.i to i64
  %211 = ptrtoint ptr %arrayidx1.i.2.i to i32
  call void @__asan_store8_noabort(i32 %211)
  store i64 %add2.i.2.i, ptr %arrayidx1.i.2.i, align 8
  %212 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %arrayidx.i87, align 8
  %214 = ptrtoint ptr %arrayidx.i50.1.i to i32
  call void @__asan_load8_noabort(i32 %214)
  %215 = load i64, ptr %arrayidx.i50.1.i, align 8
  %add2.i66.1.i = add i64 %add2.i.1.i, %213
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %213)
  %cmp4.not.i67.1.i = icmp ne i64 %213, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i66.1.i, i64 %add2.i.1.i)
  %cmp6.i68.1.i = icmp ult i64 %add2.i66.1.i, %add2.i.1.i
  %narrow103.i = select i1 %cmp4.not.i67.1.i, i1 %cmp6.i68.1.i, i1 false
  %carry.1.i69.1.i = zext i1 %narrow103.i to i64
  %216 = ptrtoint ptr %arrayidx1.i.1.i to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %add2.i66.1.i, ptr %arrayidx1.i.1.i, align 8
  %add.i65.2.i = add i64 %215, %carry.1.i69.1.i
  %add2.i66.2.i = add i64 %add.i65.2.i, %add2.i.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i66.2.i, i64 %add2.i.2.i)
  %cmp6.i68.2.i = icmp ult i64 %add2.i66.2.i, %add2.i.2.i
  %217 = zext i1 %cmp6.i68.2.i to i64
  %218 = ptrtoint ptr %arrayidx1.i.2.i to i32
  call void @__asan_store8_noabort(i32 %218)
  store i64 %add2.i66.2.i, ptr %arrayidx1.i.2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.2.i, i64 %199)
  %cmp4.not.i.2.i = icmp eq i64 %add2.i.2.i, %199
  %carry.1.i.2.i = select i1 %cmp4.not.i.2.i, i64 %carry.1.i.1.i, i64 %210
  %219 = ptrtoint ptr %arrayidx.i50.2.i to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %arrayidx.i50.2.i, align 8
  %add2.i80.i = add i64 %220, %add2.i.i88
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %220)
  %cmp4.not.i81.i = icmp ne i64 %220, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i80.i, i64 %add2.i.i88)
  %cmp6.i82.i = icmp ult i64 %add2.i80.i, %add2.i.i88
  %narrow104.i = select i1 %cmp4.not.i81.i, i1 %cmp6.i82.i, i1 false
  %carry.1.i83.i = zext i1 %narrow104.i to i64
  %221 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %add2.i80.i, ptr %result, align 8
  %add.i79.1.i = add i64 %220, %add2.i66.1.i
  %add2.i80.1.i = add i64 %add.i79.1.i, %carry.1.i83.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i80.1.i, i64 %add2.i66.1.i)
  %cmp4.not.i81.1.i = icmp eq i64 %add2.i80.1.i, %add2.i66.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i80.1.i, i64 %add2.i66.1.i)
  %cmp6.i82.1.i = icmp ult i64 %add2.i80.1.i, %add2.i66.1.i
  %222 = zext i1 %cmp6.i82.1.i to i64
  %carry.1.i83.1.i = select i1 %cmp4.not.i81.1.i, i64 %carry.1.i83.i, i64 %222
  %223 = ptrtoint ptr %arrayidx1.i.1.i to i32
  call void @__asan_store8_noabort(i32 %223)
  store i64 %add2.i80.1.i, ptr %arrayidx1.i.1.i, align 8
  %add.i79.2.i = add i64 %carry.1.i83.1.i, %add2.i66.2.i
  %cmp4.not.i81.2.i = select i1 %cmp4.not.i81.1.i, i1 %narrow104.i, i1 %cmp6.i82.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i79.2.i, i64 %add2.i66.2.i)
  %cmp6.i82.2.i = icmp ult i64 %add.i79.2.i, %add2.i66.2.i
  %narrow370 = select i1 %cmp4.not.i81.2.i, i1 %cmp6.i82.2.i, i1 false
  %carry.1.i83.2.i = zext i1 %narrow370 to i64
  %224 = ptrtoint ptr %arrayidx1.i.2.i to i32
  call void @__asan_store8_noabort(i32 %224)
  store i64 %add.i79.2.i, ptr %arrayidx1.i.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i65.2.i)
  %cmp4.not.i67.2.i = icmp eq i64 %add.i65.2.i, 0
  %carry.1.i69.2.i = select i1 %cmp4.not.i67.2.i, i64 %carry.1.i69.1.i, i64 %217
  %add.i = add nuw nsw i64 %carry.1.i69.2.i, %carry.1.i.2.i
  %add15.i = add nuw nsw i64 %add.i, %carry.1.i83.2.i
  %conv16.i = trunc i64 %add15.i to i32
  %arrayidx.i89.i = getelementptr i64, ptr %1, i32 2
  %arrayidx.i89.1.i = getelementptr i64, ptr %1, i32 1
  br label %while.cond.i93

while.cond.i93:                                   ; preds = %while.body.i99, %sw.bb
  %carry.0.i = phi i32 [ %conv16.i, %sw.bb ], [ %conv21.i, %while.body.i99 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %carry.0.i)
  %tobool.not.i92 = icmp eq i32 %carry.0.i, 0
  br i1 %tobool.not.i92, label %for.cond.i.preheader.i, label %while.cond.i93.while.body.i99_crit_edge

while.cond.i93.while.body.i99_crit_edge:          ; preds = %while.cond.i93
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i99

for.cond.i.preheader.i:                           ; preds = %while.cond.i93
  %225 = ptrtoint ptr %arrayidx.i89.i to i32
  call void @__asan_load8_noabort(i32 %225)
  %226 = load i64, ptr %arrayidx.i89.i, align 8
  %227 = ptrtoint ptr %arrayidx1.i.2.i to i32
  call void @__asan_load8_noabort(i32 %227)
  %228 = load i64, ptr %arrayidx1.i.2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %226, i64 %228)
  %cmp2.i.i94 = icmp ugt i64 %226, %228
  br i1 %cmp2.i.i94, label %for.cond.i.preheader.i.cleanup_crit_edge, label %if.else.i.i96

for.cond.i.preheader.i.cleanup_crit_edge:         ; preds = %for.cond.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i.i96:                                    ; preds = %for.cond.i.preheader.i
  call void @__sanitizer_cov_trace_cmp8(i64 %226, i64 %228)
  %cmp5.i.i95 = icmp ult i64 %226, %228
  br i1 %cmp5.i.i95, label %if.else.i.i96.while.body.i99_crit_edge, label %for.cond.i.1.i

if.else.i.i96.while.body.i99_crit_edge:           ; preds = %if.else.i.i96
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i99

for.cond.i.1.i:                                   ; preds = %if.else.i.i96
  %229 = ptrtoint ptr %arrayidx.i89.1.i to i32
  call void @__asan_load8_noabort(i32 %229)
  %230 = load i64, ptr %arrayidx.i89.1.i, align 8
  %231 = ptrtoint ptr %arrayidx1.i.1.i to i32
  call void @__asan_load8_noabort(i32 %231)
  %232 = load i64, ptr %arrayidx1.i.1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %230, i64 %232)
  %cmp2.i.1.i = icmp ugt i64 %230, %232
  br i1 %cmp2.i.1.i, label %for.cond.i.1.i.cleanup_crit_edge, label %if.else.i.1.i

for.cond.i.1.i.cleanup_crit_edge:                 ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i.1.i:                                    ; preds = %for.cond.i.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %230, i64 %232)
  %cmp5.i.1.i = icmp ult i64 %230, %232
  br i1 %cmp5.i.1.i, label %if.else.i.1.i.while.body.i99_crit_edge, label %for.cond.i.2.i

if.else.i.1.i.while.body.i99_crit_edge:           ; preds = %if.else.i.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i99

for.cond.i.2.i:                                   ; preds = %if.else.i.1.i
  %233 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %233)
  %234 = load i64, ptr %1, align 8
  %235 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %result, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %234, i64 %236)
  %cmp2.i.2.i = icmp ugt i64 %234, %236
  br i1 %cmp2.i.2.i, label %for.cond.i.2.i.cleanup_crit_edge, label %for.cond.i.2.i.while.body.i99_crit_edge

for.cond.i.2.i.while.body.i99_crit_edge:          ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i99

for.cond.i.2.i.cleanup_crit_edge:                 ; preds = %for.cond.i.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.i99:                                   ; preds = %for.cond.i.2.i.while.body.i99_crit_edge, %if.else.i.1.i.while.body.i99_crit_edge, %if.else.i.i96.while.body.i99_crit_edge, %while.cond.i93.while.body.i99_crit_edge
  %237 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %result, align 8
  %239 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %1, align 8
  %sub2.i.i97 = sub i64 %238, %240
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %240)
  %cmp4.not.i95.i = icmp ne i64 %240, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %238, i64 %240)
  %cmp6.i96.i = icmp ult i64 %238, %240
  %narrow105.i = select i1 %cmp4.not.i95.i, i1 %cmp6.i96.i, i1 false
  %borrow.1.i.i98 = zext i1 %narrow105.i to i64
  %241 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %241)
  store i64 %sub2.i.i97, ptr %result, align 8
  %242 = ptrtoint ptr %arrayidx1.i.1.i to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %arrayidx1.i.1.i, align 8
  %244 = ptrtoint ptr %arrayidx.i89.1.i to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %arrayidx.i89.1.i, align 8
  %246 = add i64 %245, %borrow.1.i.i98
  %sub2.i.1.i = sub i64 %243, %246
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %246)
  %cmp4.not.i95.1.i = icmp eq i64 %246, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %243, i64 %246)
  %cmp6.i96.1.i = icmp ult i64 %243, %246
  %247 = zext i1 %cmp6.i96.1.i to i64
  %borrow.1.i.1.i = select i1 %cmp4.not.i95.1.i, i64 %borrow.1.i.i98, i64 %247
  %248 = ptrtoint ptr %arrayidx1.i.1.i to i32
  call void @__asan_store8_noabort(i32 %248)
  store i64 %sub2.i.1.i, ptr %arrayidx1.i.1.i, align 8
  %249 = ptrtoint ptr %arrayidx1.i.2.i to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %arrayidx1.i.2.i, align 8
  %251 = ptrtoint ptr %arrayidx.i89.i to i32
  call void @__asan_load8_noabort(i32 %251)
  %252 = load i64, ptr %arrayidx.i89.i, align 8
  %253 = add i64 %borrow.1.i.1.i, %252
  %sub2.i.2.i = sub i64 %250, %253
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %253)
  %cmp4.not.i95.2.i = icmp eq i64 %253, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %250, i64 %253)
  %cmp6.i96.2.i = icmp ult i64 %250, %253
  %254 = zext i1 %cmp6.i96.2.i to i64
  %borrow.1.i.2.i = select i1 %cmp4.not.i95.2.i, i64 %borrow.1.i.1.i, i64 %254
  %255 = ptrtoint ptr %arrayidx1.i.2.i to i32
  call void @__asan_store8_noabort(i32 %255)
  store i64 %sub2.i.2.i, ptr %arrayidx1.i.2.i, align 8
  %256 = trunc i64 %borrow.1.i.2.i to i32
  %conv21.i = sub i32 %carry.0.i, %256
  br label %while.cond.i93

sw.bb17:                                          ; preds = %if.end16
  %257 = ptrtoint ptr %product to i32
  call void @__asan_load8_noabort(i32 %257)
  %258 = load i64, ptr %product, align 8
  %259 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %259)
  store i64 %258, ptr %result, align 8
  %arrayidx.i.1.i101 = getelementptr i64, ptr %product, i32 1
  %260 = ptrtoint ptr %arrayidx.i.1.i101 to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %arrayidx.i.1.i101, align 8
  %arrayidx1.i.1.i102 = getelementptr i64, ptr %result, i32 1
  %262 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_store8_noabort(i32 %262)
  store i64 %261, ptr %arrayidx1.i.1.i102, align 8
  %arrayidx.i.2.i103 = getelementptr i64, ptr %product, i32 2
  %263 = ptrtoint ptr %arrayidx.i.2.i103 to i32
  call void @__asan_load8_noabort(i32 %263)
  %264 = load i64, ptr %arrayidx.i.2.i103, align 8
  %arrayidx1.i.2.i104 = getelementptr i64, ptr %result, i32 2
  %265 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_store8_noabort(i32 %265)
  store i64 %264, ptr %arrayidx1.i.2.i104, align 8
  %arrayidx.i.3.i = getelementptr i64, ptr %product, i32 3
  %266 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %arrayidx.i.3.i, align 8
  %arrayidx1.i.3.i = getelementptr i64, ptr %result, i32 3
  %268 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_store8_noabort(i32 %268)
  store i64 %267, ptr %arrayidx1.i.3.i, align 8
  %arrayidx1.i = getelementptr i64, ptr %product, i32 5
  %269 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %arrayidx1.i, align 8
  %arrayidx3.i = getelementptr i64, ptr %product, i32 6
  %271 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %271)
  %272 = load i64, ptr %arrayidx3.i, align 8
  %arrayidx5.i = getelementptr i64, ptr %product, i32 7
  %273 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %273)
  %274 = load i64, ptr %arrayidx5.i, align 8
  %and.i105 = shl i64 %270, 1
  %shl.i.1.i = and i64 %and.i105, -8589934592
  %or.i.2.i = tail call i64 @llvm.fshl.i64(i64 %272, i64 %270, i64 1) #16
  %or.i.3.i = tail call i64 @llvm.fshl.i64(i64 %274, i64 %272, i64 1) #16
  %add2.i.1.i107 = add i64 %shl.i.1.i, %261
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.1.i)
  %cmp4.not.i.1.i108 = icmp ne i64 %shl.i.1.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.1.i107, i64 %261)
  %cmp6.i.1.i109 = icmp ult i64 %add2.i.1.i107, %261
  %narrow.i110 = select i1 %cmp4.not.i.1.i108, i1 %cmp6.i.1.i109, i1 false
  %carry.1.i.1.i111 = zext i1 %narrow.i110 to i64
  %275 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_store8_noabort(i32 %275)
  store i64 %add2.i.1.i107, ptr %arrayidx1.i.1.i102, align 8
  %add.i.2.i112 = add i64 %or.i.2.i, %264
  %add2.i.2.i113 = add i64 %add.i.2.i112, %carry.1.i.1.i111
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.2.i113, i64 %264)
  %cmp4.not.i.2.i114 = icmp eq i64 %add2.i.2.i113, %264
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.2.i113, i64 %264)
  %cmp6.i.2.i115 = icmp ult i64 %add2.i.2.i113, %264
  %276 = zext i1 %cmp6.i.2.i115 to i64
  %carry.1.i.2.i116 = select i1 %cmp4.not.i.2.i114, i64 %carry.1.i.1.i111, i64 %276
  %277 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_store8_noabort(i32 %277)
  store i64 %add2.i.2.i113, ptr %arrayidx1.i.2.i104, align 8
  %add.i.3.i = add i64 %or.i.3.i, %267
  %add2.i.3.i = add i64 %add.i.3.i, %carry.1.i.2.i116
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.3.i, i64 %267)
  %cmp6.i.3.i = icmp ult i64 %add2.i.3.i, %267
  %278 = zext i1 %cmp6.i.3.i to i64
  %279 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_store8_noabort(i32 %279)
  store i64 %add2.i.3.i, ptr %arrayidx1.i.3.i, align 8
  %280 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %280)
  %281 = load i64, ptr %arrayidx3.i, align 8
  %shl.i = shl i64 %281, 32
  %282 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %282)
  %283 = load i64, ptr %arrayidx5.i, align 8
  %or.i = tail call i64 @llvm.fshl.i64(i64 %283, i64 %281, i64 32) #16
  %shr17.i = lshr i64 %283, 32
  %shl.i280.1.i = shl i64 %281, 33
  %or.i281.2.i = tail call i64 @llvm.fshl.i64(i64 %or.i, i64 %shl.i, i64 1) #16
  %or.i281.3.i = tail call i64 @llvm.fshl.i64(i64 %shr17.i, i64 %or.i, i64 1) #16
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.3.i, i64 %267)
  %cmp4.not.i.3.i = icmp eq i64 %add2.i.3.i, %267
  %carry.1.i.3.i = select i1 %cmp4.not.i.3.i, i64 %carry.1.i.2.i116, i64 %278
  %284 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %284)
  store i64 %258, ptr %result, align 8
  %add2.i293.1.i = add i64 %shl.i280.1.i, %add2.i.1.i107
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i280.1.i)
  %cmp4.not.i294.1.i = icmp ne i64 %shl.i280.1.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i293.1.i, i64 %add2.i.1.i107)
  %cmp6.i295.1.i = icmp ult i64 %add2.i293.1.i, %add2.i.1.i107
  %narrow366 = select i1 %cmp4.not.i294.1.i, i1 %cmp6.i295.1.i, i1 false
  %carry.1.i296.1.i = zext i1 %narrow366 to i64
  %285 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_store8_noabort(i32 %285)
  store i64 %add2.i293.1.i, ptr %arrayidx1.i.1.i102, align 8
  %add.i292.2.i = add i64 %or.i281.2.i, %add2.i.2.i113
  %add2.i293.2.i = add i64 %add.i292.2.i, %carry.1.i296.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i293.2.i, i64 %add2.i.2.i113)
  %cmp4.not.i294.2.i = icmp eq i64 %add2.i293.2.i, %add2.i.2.i113
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i293.2.i, i64 %add2.i.2.i113)
  %cmp6.i295.2.i = icmp ult i64 %add2.i293.2.i, %add2.i.2.i113
  %286 = zext i1 %cmp6.i295.2.i to i64
  %carry.1.i296.2.i = select i1 %cmp4.not.i294.2.i, i64 %carry.1.i296.1.i, i64 %286
  %287 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_store8_noabort(i32 %287)
  store i64 %add2.i293.2.i, ptr %arrayidx1.i.2.i104, align 8
  %add.i292.3.i = add i64 %add2.i.3.i, %or.i281.3.i
  %add2.i293.3.i = add i64 %add.i292.3.i, %carry.1.i296.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i293.3.i, i64 %add2.i.3.i)
  %cmp6.i295.3.i = icmp ult i64 %add2.i293.3.i, %add2.i.3.i
  %288 = zext i1 %cmp6.i295.3.i to i64
  %289 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_store8_noabort(i32 %289)
  store i64 %add2.i293.3.i, ptr %arrayidx1.i.3.i, align 8
  %arrayidx27.i = getelementptr i64, ptr %product, i32 4
  %290 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load8_noabort(i32 %290)
  %291 = load i64, ptr %arrayidx27.i, align 8
  %292 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %292)
  %293 = load i64, ptr %arrayidx1.i, align 8
  %and30.i = and i64 %293, 4294967295
  %294 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %arrayidx5.i, align 8
  %add2.i307.i = add i64 %291, %258
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %291)
  %cmp4.not.i308.i = icmp ne i64 %291, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i307.i, i64 %258)
  %cmp6.i309.i = icmp ult i64 %add2.i307.i, %258
  %narrow415.i = select i1 %cmp4.not.i308.i, i1 %cmp6.i309.i, i1 false
  %carry.1.i310.i = zext i1 %narrow415.i to i64
  %296 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %296)
  store i64 %add2.i307.i, ptr %result, align 8
  %add.i306.1.i = add i64 %and30.i, %add2.i293.1.i
  %add2.i307.1.i = add i64 %add.i306.1.i, %carry.1.i310.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i307.1.i, i64 %add2.i293.1.i)
  %cmp4.not.i308.1.i = icmp eq i64 %add2.i307.1.i, %add2.i293.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i307.1.i, i64 %add2.i293.1.i)
  %cmp6.i309.1.i = icmp ult i64 %add2.i307.1.i, %add2.i293.1.i
  %297 = zext i1 %cmp6.i309.1.i to i64
  %carry.1.i310.1.i = select i1 %cmp4.not.i308.1.i, i64 %carry.1.i310.i, i64 %297
  %298 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_store8_noabort(i32 %298)
  store i64 %add2.i307.1.i, ptr %arrayidx1.i.1.i102, align 8
  %add.i306.2.i = add i64 %carry.1.i310.1.i, %add2.i293.2.i
  %cmp4.not.i308.2.i = select i1 %cmp4.not.i308.1.i, i1 %narrow415.i, i1 %cmp6.i309.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i306.2.i, i64 %add2.i293.2.i)
  %cmp6.i309.2.i = icmp ult i64 %add.i306.2.i, %add2.i293.2.i
  %narrow367 = select i1 %cmp4.not.i308.2.i, i1 %cmp6.i309.2.i, i1 false
  %carry.1.i310.2.i = zext i1 %narrow367 to i64
  %299 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_store8_noabort(i32 %299)
  store i64 %add.i306.2.i, ptr %arrayidx1.i.2.i104, align 8
  %add.i306.3.i = add i64 %add2.i293.3.i, %295
  %add2.i307.3.i = add i64 %add.i306.3.i, %carry.1.i310.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i307.3.i, i64 %add2.i293.3.i)
  %cmp6.i309.3.i = icmp ult i64 %add2.i307.3.i, %add2.i293.3.i
  %300 = zext i1 %cmp6.i309.3.i to i64
  %301 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_store8_noabort(i32 %301)
  store i64 %add2.i307.3.i, ptr %arrayidx1.i.3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i293.3.i, i64 %add2.i.3.i)
  %cmp4.not.i294.3.i = icmp eq i64 %add2.i293.3.i, %add2.i.3.i
  %carry.1.i296.3.i = select i1 %cmp4.not.i294.3.i, i64 %carry.1.i296.2.i, i64 %288
  %302 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load8_noabort(i32 %302)
  %303 = load i64, ptr %arrayidx27.i, align 8
  %304 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %arrayidx1.i, align 8
  %or43.i = tail call i64 @llvm.fshl.i64(i64 %305, i64 %303, i64 32) #16
  %shr46.i = lshr i64 %305, 32
  %306 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %306)
  %307 = load i64, ptr %arrayidx3.i, align 8
  %and48.i = and i64 %307, -4294967296
  %or49.i = or i64 %and48.i, %shr46.i
  %308 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %arrayidx5.i, align 8
  %or57.i = tail call i64 @llvm.fshl.i64(i64 %303, i64 %307, i64 32) #16
  %add2.i321.i = add i64 %or43.i, %add2.i307.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or43.i)
  %cmp4.not.i322.i = icmp ne i64 %or43.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i321.i, i64 %add2.i307.i)
  %cmp6.i323.i = icmp ult i64 %add2.i321.i, %add2.i307.i
  %narrow416.i = select i1 %cmp4.not.i322.i, i1 %cmp6.i323.i, i1 false
  %carry.1.i324.i = zext i1 %narrow416.i to i64
  %310 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %310)
  store i64 %add2.i321.i, ptr %result, align 8
  %add.i320.1.i = add i64 %or49.i, %add2.i307.1.i
  %add2.i321.1.i = add i64 %add.i320.1.i, %carry.1.i324.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i321.1.i, i64 %add2.i307.1.i)
  %cmp4.not.i322.1.i = icmp eq i64 %add2.i321.1.i, %add2.i307.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i321.1.i, i64 %add2.i307.1.i)
  %cmp6.i323.1.i = icmp ult i64 %add2.i321.1.i, %add2.i307.1.i
  %311 = zext i1 %cmp6.i323.1.i to i64
  %carry.1.i324.1.i = select i1 %cmp4.not.i322.1.i, i64 %carry.1.i324.i, i64 %311
  %312 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_store8_noabort(i32 %312)
  store i64 %add2.i321.1.i, ptr %arrayidx1.i.1.i102, align 8
  %add.i320.2.i = add i64 %309, %add.i306.2.i
  %add2.i321.2.i = add i64 %add.i320.2.i, %carry.1.i324.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i321.2.i, i64 %add.i306.2.i)
  %cmp4.not.i322.2.i = icmp eq i64 %add2.i321.2.i, %add.i306.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i321.2.i, i64 %add.i306.2.i)
  %cmp6.i323.2.i = icmp ult i64 %add2.i321.2.i, %add.i306.2.i
  %313 = zext i1 %cmp6.i323.2.i to i64
  %carry.1.i324.2.i = select i1 %cmp4.not.i322.2.i, i64 %carry.1.i324.1.i, i64 %313
  %314 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_store8_noabort(i32 %314)
  store i64 %add2.i321.2.i, ptr %arrayidx1.i.2.i104, align 8
  %add.i320.3.i = add i64 %add2.i307.3.i, %or57.i
  %add2.i321.3.i = add i64 %add.i320.3.i, %carry.1.i324.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i321.3.i, i64 %add2.i307.3.i)
  %cmp6.i323.3.i = icmp ult i64 %add2.i321.3.i, %add2.i307.3.i
  %315 = zext i1 %cmp6.i323.3.i to i64
  %316 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_store8_noabort(i32 %316)
  store i64 %add2.i321.3.i, ptr %arrayidx1.i.3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i307.3.i, i64 %add2.i293.3.i)
  %cmp4.not.i308.3.i = icmp eq i64 %add2.i307.3.i, %add2.i293.3.i
  %carry.1.i310.3.i = select i1 %cmp4.not.i308.3.i, i64 %carry.1.i310.2.i, i64 %300
  %317 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %317)
  %318 = load i64, ptr %arrayidx1.i, align 8
  %319 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %319)
  %320 = load i64, ptr %arrayidx3.i, align 8
  %or67.i = tail call i64 @llvm.fshl.i64(i64 %320, i64 %318, i64 32) #16
  %shr70.i = lshr i64 %320, 32
  %321 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load8_noabort(i32 %321)
  %322 = load i64, ptr %arrayidx27.i, align 8
  %and74.i = and i64 %322, 4294967295
  %shl76.i = shl i64 %318, 32
  %or77.i = or i64 %and74.i, %shl76.i
  %sub2.i.i117 = sub i64 %add2.i321.i, %or67.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or67.i)
  %cmp4.not.i333.i = icmp ne i64 %or67.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i321.i, i64 %or67.i)
  %cmp6.i334.i = icmp ult i64 %add2.i321.i, %or67.i
  %narrow417.i = select i1 %cmp4.not.i333.i, i1 %cmp6.i334.i, i1 false
  %borrow.1.i.i118 = zext i1 %narrow417.i to i64
  %323 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %323)
  store i64 %sub2.i.i117, ptr %result, align 8
  %324 = add nuw nsw i64 %shr70.i, %borrow.1.i.i118
  %sub2.i.1.i119 = sub i64 %add2.i321.1.i, %324
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %324)
  %cmp4.not.i333.1.i = icmp eq i64 %324, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i321.1.i, i64 %324)
  %cmp6.i334.1.i = icmp ult i64 %add2.i321.1.i, %324
  %325 = zext i1 %cmp6.i334.1.i to i64
  %borrow.1.i.1.i120 = select i1 %cmp4.not.i333.1.i, i64 %borrow.1.i.i118, i64 %325
  %326 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_store8_noabort(i32 %326)
  store i64 %sub2.i.1.i119, ptr %arrayidx1.i.1.i102, align 8
  %sub2.i.2.i121 = sub i64 %add2.i321.2.i, %borrow.1.i.1.i120
  %cmp4.not.i333.2.i = select i1 %cmp4.not.i333.1.i, i1 %narrow417.i, i1 %cmp6.i334.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i321.2.i, i64 %borrow.1.i.1.i120)
  %cmp6.i334.2.i = icmp ult i64 %add2.i321.2.i, %borrow.1.i.1.i120
  %narrow368 = select i1 %cmp4.not.i333.2.i, i1 %cmp6.i334.2.i, i1 false
  %borrow.1.i.2.i122 = zext i1 %narrow368 to i64
  %327 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_store8_noabort(i32 %327)
  store i64 %sub2.i.2.i121, ptr %arrayidx1.i.2.i104, align 8
  %328 = add i64 %or77.i, %borrow.1.i.2.i122
  %sub2.i.3.i = sub i64 %add2.i321.3.i, %328
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i321.3.i, i64 %328)
  %cmp6.i334.3.i = icmp ult i64 %add2.i321.3.i, %328
  %329 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_store8_noabort(i32 %329)
  store i64 %sub2.i.3.i, ptr %arrayidx1.i.3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i321.3.i, i64 %add2.i307.3.i)
  %cmp4.not.i322.3.i = icmp eq i64 %add2.i321.3.i, %add2.i307.3.i
  %carry.1.i324.3.i = select i1 %cmp4.not.i322.3.i, i64 %carry.1.i324.2.i, i64 %315
  %330 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %330)
  %331 = load i64, ptr %arrayidx3.i, align 8
  %332 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %332)
  %333 = load i64, ptr %arrayidx5.i, align 8
  %334 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load8_noabort(i32 %334)
  %335 = load i64, ptr %arrayidx27.i, align 8
  %shr88.i = lshr i64 %335, 32
  %336 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %336)
  %337 = load i64, ptr %arrayidx1.i, align 8
  %and90.i = and i64 %337, -4294967296
  %or91.i = or i64 %and90.i, %shr88.i
  %sub2.i343.i = sub i64 %sub2.i.i117, %331
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %331)
  %cmp4.not.i344.i = icmp ne i64 %331, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i.i117, i64 %331)
  %cmp6.i345.i = icmp ult i64 %sub2.i.i117, %331
  %narrow418.i = select i1 %cmp4.not.i344.i, i1 %cmp6.i345.i, i1 false
  %borrow.1.i346.i = zext i1 %narrow418.i to i64
  %338 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %338)
  store i64 %sub2.i343.i, ptr %result, align 8
  %339 = add i64 %333, %borrow.1.i346.i
  %sub2.i343.1.i = sub i64 %sub2.i.1.i119, %339
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %339)
  %cmp4.not.i344.1.i = icmp eq i64 %339, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i.1.i119, i64 %339)
  %cmp6.i345.1.i = icmp ult i64 %sub2.i.1.i119, %339
  %340 = zext i1 %cmp6.i345.1.i to i64
  %borrow.1.i346.1.i = select i1 %cmp4.not.i344.1.i, i64 %borrow.1.i346.i, i64 %340
  %341 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_store8_noabort(i32 %341)
  store i64 %sub2.i343.1.i, ptr %arrayidx1.i.1.i102, align 8
  %sub2.i343.2.i = sub i64 %sub2.i.2.i121, %borrow.1.i346.1.i
  %cmp4.not.i344.2.i = select i1 %cmp4.not.i344.1.i, i1 %narrow418.i, i1 %cmp6.i345.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i.2.i121, i64 %borrow.1.i346.1.i)
  %cmp6.i345.2.i = icmp ult i64 %sub2.i.2.i121, %borrow.1.i346.1.i
  %narrow369 = select i1 %cmp4.not.i344.2.i, i1 %cmp6.i345.2.i, i1 false
  %borrow.1.i346.2.i = zext i1 %narrow369 to i64
  %342 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_store8_noabort(i32 %342)
  store i64 %sub2.i343.2.i, ptr %arrayidx1.i.2.i104, align 8
  %343 = add i64 %or91.i, %borrow.1.i346.2.i
  %sub2.i343.3.i = sub i64 %sub2.i.3.i, %343
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i.3.i, i64 %343)
  %cmp6.i345.3.i = icmp ult i64 %sub2.i.3.i, %343
  %344 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_store8_noabort(i32 %344)
  store i64 %sub2.i343.3.i, ptr %arrayidx1.i.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %328)
  %cmp4.not.i333.3.i = icmp eq i64 %328, 0
  %borrow.1.i.3.i.neg383.v = select i1 %cmp4.not.i333.3.i, i1 %narrow368, i1 %cmp6.i334.3.i
  %borrow.1.i.3.i.neg383 = sext i1 %borrow.1.i.3.i.neg383.v to i64
  %345 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %345)
  %346 = load i64, ptr %arrayidx3.i, align 8
  %347 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %347)
  %348 = load i64, ptr %arrayidx5.i, align 8
  %or101.i = tail call i64 @llvm.fshl.i64(i64 %348, i64 %346, i64 32) #16
  %349 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load8_noabort(i32 %349)
  %350 = load i64, ptr %arrayidx27.i, align 8
  %or107.i = tail call i64 @llvm.fshl.i64(i64 %350, i64 %348, i64 32) #16
  %351 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %351)
  %352 = load i64, ptr %arrayidx1.i, align 8
  %or113.i = tail call i64 @llvm.fshl.i64(i64 %352, i64 %350, i64 32) #16
  %shl116.i = shl i64 %346, 32
  %sub2.i356.i = sub i64 %sub2.i343.i, %or101.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or101.i)
  %cmp4.not.i357.i = icmp ne i64 %or101.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i343.i, i64 %or101.i)
  %cmp6.i358.i = icmp ult i64 %sub2.i343.i, %or101.i
  %narrow419.i = select i1 %cmp4.not.i357.i, i1 %cmp6.i358.i, i1 false
  %borrow.1.i359.i = zext i1 %narrow419.i to i64
  %353 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %353)
  store i64 %sub2.i356.i, ptr %result, align 8
  %354 = add i64 %or107.i, %borrow.1.i359.i
  %sub2.i356.1.i = sub i64 %sub2.i343.1.i, %354
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %354)
  %cmp4.not.i357.1.i = icmp eq i64 %354, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i343.1.i, i64 %354)
  %cmp6.i358.1.i = icmp ult i64 %sub2.i343.1.i, %354
  %355 = zext i1 %cmp6.i358.1.i to i64
  %borrow.1.i359.1.i = select i1 %cmp4.not.i357.1.i, i64 %borrow.1.i359.i, i64 %355
  %356 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_store8_noabort(i32 %356)
  store i64 %sub2.i356.1.i, ptr %arrayidx1.i.1.i102, align 8
  %357 = add i64 %borrow.1.i359.1.i, %or113.i
  %sub2.i356.2.i = sub i64 %sub2.i343.2.i, %357
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %357)
  %cmp4.not.i357.2.i = icmp eq i64 %357, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i343.2.i, i64 %357)
  %cmp6.i358.2.i = icmp ult i64 %sub2.i343.2.i, %357
  %358 = zext i1 %cmp6.i358.2.i to i64
  %borrow.1.i359.2.i = select i1 %cmp4.not.i357.2.i, i64 %borrow.1.i359.1.i, i64 %358
  %359 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_store8_noabort(i32 %359)
  store i64 %sub2.i356.2.i, ptr %arrayidx1.i.2.i104, align 8
  %360 = or i64 %borrow.1.i359.2.i, %shl116.i
  %sub2.i356.3.i = sub i64 %sub2.i343.3.i, %360
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i343.3.i, i64 %360)
  %cmp6.i358.3.i = icmp ult i64 %sub2.i343.3.i, %360
  %361 = zext i1 %cmp6.i358.3.i to i64
  %362 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_store8_noabort(i32 %362)
  store i64 %sub2.i356.3.i, ptr %arrayidx1.i.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %343)
  %cmp4.not.i344.3.i = icmp eq i64 %343, 0
  %borrow.1.i346.3.i.neg385.v = select i1 %cmp4.not.i344.3.i, i1 %narrow369, i1 %cmp6.i345.3.i
  %borrow.1.i346.3.i.neg385 = sext i1 %borrow.1.i346.3.i.neg385.v to i64
  %363 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %363)
  %364 = load i64, ptr %arrayidx5.i, align 8
  %365 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load8_noabort(i32 %365)
  %366 = load i64, ptr %arrayidx27.i, align 8
  %and125.i = and i64 %366, -4294967296
  %367 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %367)
  %368 = load i64, ptr %arrayidx1.i, align 8
  %369 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %369)
  %370 = load i64, ptr %arrayidx3.i, align 8
  %and130.i = and i64 %370, -4294967296
  %sub2.i369.i = sub i64 %sub2.i356.i, %364
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %364)
  %cmp4.not.i370.i = icmp ne i64 %364, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i356.i, i64 %364)
  %cmp6.i371.i = icmp ult i64 %sub2.i356.i, %364
  %narrow420.i = select i1 %cmp4.not.i370.i, i1 %cmp6.i371.i, i1 false
  %borrow.1.i372.i = zext i1 %narrow420.i to i64
  %371 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %371)
  store i64 %sub2.i369.i, ptr %result, align 8
  %372 = or i64 %and125.i, %borrow.1.i372.i
  %sub2.i369.1.i = sub i64 %sub2.i356.1.i, %372
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %372)
  %cmp4.not.i370.1.i = icmp eq i64 %372, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i356.1.i, i64 %372)
  %cmp6.i371.1.i = icmp ult i64 %sub2.i356.1.i, %372
  %373 = zext i1 %cmp6.i371.1.i to i64
  %borrow.1.i372.1.i = select i1 %cmp4.not.i370.1.i, i64 %borrow.1.i372.i, i64 %373
  %374 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_store8_noabort(i32 %374)
  store i64 %sub2.i369.1.i, ptr %arrayidx1.i.1.i102, align 8
  %375 = add i64 %borrow.1.i372.1.i, %368
  %sub2.i369.2.i = sub i64 %sub2.i356.2.i, %375
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %375)
  %cmp4.not.i370.2.i = icmp eq i64 %375, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i356.2.i, i64 %375)
  %cmp6.i371.2.i = icmp ult i64 %sub2.i356.2.i, %375
  %376 = zext i1 %cmp6.i371.2.i to i64
  %borrow.1.i372.2.i = select i1 %cmp4.not.i370.2.i, i64 %borrow.1.i372.1.i, i64 %376
  %377 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_store8_noabort(i32 %377)
  store i64 %sub2.i369.2.i, ptr %arrayidx1.i.2.i104, align 8
  %378 = or i64 %borrow.1.i372.2.i, %and130.i
  %sub2.i369.3.i = sub i64 %sub2.i356.3.i, %378
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %378)
  %cmp4.not.i370.3.i = icmp eq i64 %378, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i356.3.i, i64 %378)
  %cmp6.i371.3.i = icmp ult i64 %sub2.i356.3.i, %378
  %379 = zext i1 %cmp6.i371.3.i to i64
  %borrow.1.i372.3.i = select i1 %cmp4.not.i370.3.i, i64 %borrow.1.i372.2.i, i64 %379
  %380 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_store8_noabort(i32 %380)
  store i64 %sub2.i369.3.i, ptr %arrayidx1.i.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %360)
  %cmp4.not.i357.3.i = icmp eq i64 %360, 0
  %borrow.1.i359.3.i = select i1 %cmp4.not.i357.3.i, i64 %borrow.1.i359.2.i, i64 %361
  %shr.i.3.i = lshr i64 %274, 63
  %.neg372 = add nuw nsw i64 %carry.1.i.3.i, %shr.i.3.i
  %.neg373 = add nuw nsw i64 %.neg372, %carry.1.i296.3.i
  %.neg374 = add nuw nsw i64 %.neg373, %carry.1.i310.3.i
  %.neg.i = add nuw nsw i64 %.neg374, %carry.1.i324.3.i
  %.neg411.i = add nsw i64 %.neg.i, %borrow.1.i.3.i.neg383
  %add.i123 = add nsw i64 %.neg411.i, %borrow.1.i346.3.i.neg385
  %381 = add nuw nsw i64 %borrow.1.i359.3.i, %borrow.1.i372.3.i
  %sub134.i = sub nsw i64 %add.i123, %381
  %conv135.i = trunc i64 %sub134.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv135.i)
  %cmp.i = icmp slt i32 %conv135.i, 0
  br i1 %cmp.i, label %do.body.preheader.i, label %while.cond.preheader.i124

while.cond.preheader.i124:                        ; preds = %sw.bb17
  %arrayidx.i392.i = getelementptr i64, ptr %1, i32 3
  %arrayidx.i392.1.i = getelementptr i64, ptr %1, i32 2
  %arrayidx.i392.2.i = getelementptr i64, ptr %1, i32 1
  br label %while.cond.i127

do.body.preheader.i:                              ; preds = %sw.bb17
  %arrayidx1.i381.1.i = getelementptr i64, ptr %1, i32 1
  %arrayidx1.i381.2.i = getelementptr i64, ptr %1, i32 2
  %arrayidx1.i381.3.i = getelementptr i64, ptr %1, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %carry.0.i125 = phi i32 [ %conv140.i, %do.body.i.do.body.i_crit_edge ], [ %conv135.i, %do.body.preheader.i ]
  %382 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %382)
  %383 = load i64, ptr %result, align 8
  %384 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %384)
  %385 = load i64, ptr %1, align 8
  %add2.i383.i = add i64 %385, %383
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %385)
  %cmp4.not.i384.i = icmp ne i64 %385, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i383.i, i64 %383)
  %cmp6.i385.i = icmp ult i64 %add2.i383.i, %383
  %narrow422.i = select i1 %cmp4.not.i384.i, i1 %cmp6.i385.i, i1 false
  %carry.1.i386.i = zext i1 %narrow422.i to i64
  %386 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %386)
  store i64 %add2.i383.i, ptr %result, align 8
  %387 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_load8_noabort(i32 %387)
  %388 = load i64, ptr %arrayidx1.i.1.i102, align 8
  %389 = ptrtoint ptr %arrayidx1.i381.1.i to i32
  call void @__asan_load8_noabort(i32 %389)
  %390 = load i64, ptr %arrayidx1.i381.1.i, align 8
  %add.i382.1.i = add i64 %390, %388
  %add2.i383.1.i = add i64 %add.i382.1.i, %carry.1.i386.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i383.1.i, i64 %388)
  %cmp4.not.i384.1.i = icmp eq i64 %add2.i383.1.i, %388
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i383.1.i, i64 %388)
  %cmp6.i385.1.i = icmp ult i64 %add2.i383.1.i, %388
  %391 = zext i1 %cmp6.i385.1.i to i64
  %carry.1.i386.1.i = select i1 %cmp4.not.i384.1.i, i64 %carry.1.i386.i, i64 %391
  %392 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_store8_noabort(i32 %392)
  store i64 %add2.i383.1.i, ptr %arrayidx1.i.1.i102, align 8
  %393 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_load8_noabort(i32 %393)
  %394 = load i64, ptr %arrayidx1.i.2.i104, align 8
  %395 = ptrtoint ptr %arrayidx1.i381.2.i to i32
  call void @__asan_load8_noabort(i32 %395)
  %396 = load i64, ptr %arrayidx1.i381.2.i, align 8
  %add.i382.2.i = add i64 %396, %394
  %add2.i383.2.i = add i64 %add.i382.2.i, %carry.1.i386.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i383.2.i, i64 %394)
  %cmp4.not.i384.2.i = icmp eq i64 %add2.i383.2.i, %394
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i383.2.i, i64 %394)
  %cmp6.i385.2.i = icmp ult i64 %add2.i383.2.i, %394
  %397 = zext i1 %cmp6.i385.2.i to i64
  %carry.1.i386.2.i = select i1 %cmp4.not.i384.2.i, i64 %carry.1.i386.1.i, i64 %397
  %398 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_store8_noabort(i32 %398)
  store i64 %add2.i383.2.i, ptr %arrayidx1.i.2.i104, align 8
  %399 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_load8_noabort(i32 %399)
  %400 = load i64, ptr %arrayidx1.i.3.i, align 8
  %401 = ptrtoint ptr %arrayidx1.i381.3.i to i32
  call void @__asan_load8_noabort(i32 %401)
  %402 = load i64, ptr %arrayidx1.i381.3.i, align 8
  %add.i382.3.i = add i64 %402, %400
  %add2.i383.3.i = add i64 %add.i382.3.i, %carry.1.i386.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i383.3.i, i64 %400)
  %cmp4.not.i384.3.i = icmp eq i64 %add2.i383.3.i, %400
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i383.3.i, i64 %400)
  %cmp6.i385.3.i = icmp ult i64 %add2.i383.3.i, %400
  %403 = zext i1 %cmp6.i385.3.i to i64
  %carry.1.i386.3.i = select i1 %cmp4.not.i384.3.i, i64 %carry.1.i386.2.i, i64 %403
  %404 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_store8_noabort(i32 %404)
  store i64 %add2.i383.3.i, ptr %arrayidx1.i.3.i, align 8
  %405 = trunc i64 %carry.1.i386.3.i to i32
  %conv140.i = add nsw i32 %carry.0.i125, %405
  %cmp141.i = icmp slt i32 %conv140.i, 0
  br i1 %cmp141.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

while.cond.i127:                                  ; preds = %while.body.i138, %while.cond.preheader.i124
  %carry.1.i = phi i32 [ %conv149.i, %while.body.i138 ], [ %conv135.i, %while.cond.preheader.i124 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %carry.1.i)
  %tobool.not.i126 = icmp eq i32 %carry.1.i, 0
  br i1 %tobool.not.i126, label %for.cond.i.preheader.i129, label %while.cond.i127.while.body.i138_crit_edge

while.cond.i127.while.body.i138_crit_edge:        ; preds = %while.cond.i127
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i138

for.cond.i.preheader.i129:                        ; preds = %while.cond.i127
  %406 = ptrtoint ptr %arrayidx.i392.i to i32
  call void @__asan_load8_noabort(i32 %406)
  %407 = load i64, ptr %arrayidx.i392.i, align 8
  %408 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_load8_noabort(i32 %408)
  %409 = load i64, ptr %arrayidx1.i.3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %407, i64 %409)
  %cmp2.i.i128 = icmp ugt i64 %407, %409
  br i1 %cmp2.i.i128, label %for.cond.i.preheader.i129.cleanup_crit_edge, label %if.else.i.i131

for.cond.i.preheader.i129.cleanup_crit_edge:      ; preds = %for.cond.i.preheader.i129
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i.i131:                                   ; preds = %for.cond.i.preheader.i129
  call void @__sanitizer_cov_trace_cmp8(i64 %407, i64 %409)
  %cmp5.i.i130 = icmp ult i64 %407, %409
  br i1 %cmp5.i.i130, label %if.else.i.i131.while.body.i138_crit_edge, label %for.cond.i.1.i133

if.else.i.i131.while.body.i138_crit_edge:         ; preds = %if.else.i.i131
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i138

for.cond.i.1.i133:                                ; preds = %if.else.i.i131
  %410 = ptrtoint ptr %arrayidx.i392.1.i to i32
  call void @__asan_load8_noabort(i32 %410)
  %411 = load i64, ptr %arrayidx.i392.1.i, align 8
  %412 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_load8_noabort(i32 %412)
  %413 = load i64, ptr %arrayidx1.i.2.i104, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %411, i64 %413)
  %cmp2.i.1.i132 = icmp ugt i64 %411, %413
  br i1 %cmp2.i.1.i132, label %for.cond.i.1.i133.cleanup_crit_edge, label %if.else.i.1.i135

for.cond.i.1.i133.cleanup_crit_edge:              ; preds = %for.cond.i.1.i133
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i.1.i135:                                 ; preds = %for.cond.i.1.i133
  call void @__sanitizer_cov_trace_cmp8(i64 %411, i64 %413)
  %cmp5.i.1.i134 = icmp ult i64 %411, %413
  br i1 %cmp5.i.1.i134, label %if.else.i.1.i135.while.body.i138_crit_edge, label %for.cond.i.2.i137

if.else.i.1.i135.while.body.i138_crit_edge:       ; preds = %if.else.i.1.i135
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i138

for.cond.i.2.i137:                                ; preds = %if.else.i.1.i135
  %414 = ptrtoint ptr %arrayidx.i392.2.i to i32
  call void @__asan_load8_noabort(i32 %414)
  %415 = load i64, ptr %arrayidx.i392.2.i, align 8
  %416 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_load8_noabort(i32 %416)
  %417 = load i64, ptr %arrayidx1.i.1.i102, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %415, i64 %417)
  %cmp2.i.2.i136 = icmp ugt i64 %415, %417
  br i1 %cmp2.i.2.i136, label %for.cond.i.2.i137.cleanup_crit_edge, label %if.else.i.2.i

for.cond.i.2.i137.cleanup_crit_edge:              ; preds = %for.cond.i.2.i137
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i.2.i:                                    ; preds = %for.cond.i.2.i137
  call void @__sanitizer_cov_trace_cmp8(i64 %415, i64 %417)
  %cmp5.i.2.i = icmp ult i64 %415, %417
  br i1 %cmp5.i.2.i, label %if.else.i.2.i.while.body.i138_crit_edge, label %for.cond.i.3.i

if.else.i.2.i.while.body.i138_crit_edge:          ; preds = %if.else.i.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i138

for.cond.i.3.i:                                   ; preds = %if.else.i.2.i
  %418 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %418)
  %419 = load i64, ptr %1, align 8
  %420 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %420)
  %421 = load i64, ptr %result, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %419, i64 %421)
  %cmp2.i.3.i = icmp ugt i64 %419, %421
  br i1 %cmp2.i.3.i, label %for.cond.i.3.i.cleanup_crit_edge, label %for.cond.i.3.i.while.body.i138_crit_edge

for.cond.i.3.i.while.body.i138_crit_edge:         ; preds = %for.cond.i.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i138

for.cond.i.3.i.cleanup_crit_edge:                 ; preds = %for.cond.i.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.i138:                                  ; preds = %for.cond.i.3.i.while.body.i138_crit_edge, %if.else.i.2.i.while.body.i138_crit_edge, %if.else.i.1.i135.while.body.i138_crit_edge, %if.else.i.i131.while.body.i138_crit_edge, %while.cond.i127.while.body.i138_crit_edge
  %422 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %422)
  %423 = load i64, ptr %result, align 8
  %424 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %424)
  %425 = load i64, ptr %1, align 8
  %sub2.i399.i = sub i64 %423, %425
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %425)
  %cmp4.not.i400.i = icmp ne i64 %425, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %423, i64 %425)
  %cmp6.i401.i = icmp ult i64 %423, %425
  %narrow421.i = select i1 %cmp4.not.i400.i, i1 %cmp6.i401.i, i1 false
  %borrow.1.i402.i = zext i1 %narrow421.i to i64
  %426 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %426)
  store i64 %sub2.i399.i, ptr %result, align 8
  %427 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_load8_noabort(i32 %427)
  %428 = load i64, ptr %arrayidx1.i.1.i102, align 8
  %429 = ptrtoint ptr %arrayidx.i392.2.i to i32
  call void @__asan_load8_noabort(i32 %429)
  %430 = load i64, ptr %arrayidx.i392.2.i, align 8
  %431 = add i64 %430, %borrow.1.i402.i
  %sub2.i399.1.i = sub i64 %428, %431
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %431)
  %cmp4.not.i400.1.i = icmp eq i64 %431, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %428, i64 %431)
  %cmp6.i401.1.i = icmp ult i64 %428, %431
  %432 = zext i1 %cmp6.i401.1.i to i64
  %borrow.1.i402.1.i = select i1 %cmp4.not.i400.1.i, i64 %borrow.1.i402.i, i64 %432
  %433 = ptrtoint ptr %arrayidx1.i.1.i102 to i32
  call void @__asan_store8_noabort(i32 %433)
  store i64 %sub2.i399.1.i, ptr %arrayidx1.i.1.i102, align 8
  %434 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_load8_noabort(i32 %434)
  %435 = load i64, ptr %arrayidx1.i.2.i104, align 8
  %436 = ptrtoint ptr %arrayidx.i392.1.i to i32
  call void @__asan_load8_noabort(i32 %436)
  %437 = load i64, ptr %arrayidx.i392.1.i, align 8
  %438 = add i64 %borrow.1.i402.1.i, %437
  %sub2.i399.2.i = sub i64 %435, %438
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %438)
  %cmp4.not.i400.2.i = icmp eq i64 %438, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %435, i64 %438)
  %cmp6.i401.2.i = icmp ult i64 %435, %438
  %439 = zext i1 %cmp6.i401.2.i to i64
  %borrow.1.i402.2.i = select i1 %cmp4.not.i400.2.i, i64 %borrow.1.i402.1.i, i64 %439
  %440 = ptrtoint ptr %arrayidx1.i.2.i104 to i32
  call void @__asan_store8_noabort(i32 %440)
  store i64 %sub2.i399.2.i, ptr %arrayidx1.i.2.i104, align 8
  %441 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_load8_noabort(i32 %441)
  %442 = load i64, ptr %arrayidx1.i.3.i, align 8
  %443 = ptrtoint ptr %arrayidx.i392.i to i32
  call void @__asan_load8_noabort(i32 %443)
  %444 = load i64, ptr %arrayidx.i392.i, align 8
  %445 = add i64 %borrow.1.i402.2.i, %444
  %sub2.i399.3.i = sub i64 %442, %445
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %445)
  %cmp4.not.i400.3.i = icmp eq i64 %445, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %442, i64 %445)
  %cmp6.i401.3.i = icmp ult i64 %442, %445
  %446 = zext i1 %cmp6.i401.3.i to i64
  %borrow.1.i402.3.i = select i1 %cmp4.not.i400.3.i, i64 %borrow.1.i402.2.i, i64 %446
  %447 = ptrtoint ptr %arrayidx1.i.3.i to i32
  call void @__asan_store8_noabort(i32 %447)
  store i64 %sub2.i399.3.i, ptr %arrayidx1.i.3.i, align 8
  %448 = trunc i64 %borrow.1.i402.3.i to i32
  %conv149.i = sub i32 %carry.1.i, %448
  br label %while.cond.i127

sw.bb19:                                          ; preds = %if.end16
  %449 = ptrtoint ptr %product to i32
  call void @__asan_load8_noabort(i32 %449)
  %450 = load i64, ptr %product, align 8
  %451 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %451)
  store i64 %450, ptr %result, align 8
  %arrayidx.i.1.i140 = getelementptr i64, ptr %product, i32 1
  %452 = ptrtoint ptr %arrayidx.i.1.i140 to i32
  call void @__asan_load8_noabort(i32 %452)
  %453 = load i64, ptr %arrayidx.i.1.i140, align 8
  %arrayidx1.i.1.i141 = getelementptr i64, ptr %result, i32 1
  %454 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_store8_noabort(i32 %454)
  store i64 %453, ptr %arrayidx1.i.1.i141, align 8
  %arrayidx.i.2.i142 = getelementptr i64, ptr %product, i32 2
  %455 = ptrtoint ptr %arrayidx.i.2.i142 to i32
  call void @__asan_load8_noabort(i32 %455)
  %456 = load i64, ptr %arrayidx.i.2.i142, align 8
  %arrayidx1.i.2.i143 = getelementptr i64, ptr %result, i32 2
  %457 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_store8_noabort(i32 %457)
  store i64 %456, ptr %arrayidx1.i.2.i143, align 8
  %arrayidx.i.3.i144 = getelementptr i64, ptr %product, i32 3
  %458 = ptrtoint ptr %arrayidx.i.3.i144 to i32
  call void @__asan_load8_noabort(i32 %458)
  %459 = load i64, ptr %arrayidx.i.3.i144, align 8
  %arrayidx1.i.3.i145 = getelementptr i64, ptr %result, i32 3
  %460 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_store8_noabort(i32 %460)
  store i64 %459, ptr %arrayidx1.i.3.i145, align 8
  %arrayidx.i.4.i = getelementptr i64, ptr %product, i32 4
  %461 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load8_noabort(i32 %461)
  %462 = load i64, ptr %arrayidx.i.4.i, align 8
  %arrayidx1.i.4.i = getelementptr i64, ptr %result, i32 4
  %463 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_store8_noabort(i32 %463)
  store i64 %462, ptr %arrayidx1.i.4.i, align 8
  %arrayidx.i.5.i = getelementptr i64, ptr %product, i32 5
  %464 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load8_noabort(i32 %464)
  %465 = load i64, ptr %arrayidx.i.5.i, align 8
  %arrayidx1.i.5.i = getelementptr i64, ptr %result, i32 5
  %466 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_store8_noabort(i32 %466)
  store i64 %465, ptr %arrayidx1.i.5.i, align 8
  %arrayidx2.i147 = getelementptr i64, ptr %product, i32 11
  %467 = ptrtoint ptr %arrayidx2.i147 to i32
  call void @__asan_load8_noabort(i32 %467)
  %468 = load i64, ptr %arrayidx2.i147, align 8
  %arrayidx3.i148 = getelementptr i64, ptr %product, i32 10
  %469 = ptrtoint ptr %arrayidx3.i148 to i32
  call void @__asan_load8_noabort(i32 %469)
  %470 = load i64, ptr %arrayidx3.i148, align 8
  %or.i149 = tail call i64 @llvm.fshl.i64(i64 %468, i64 %470, i64 32) #16
  %shr6.i = lshr i64 %468, 32
  %shl.i.2.i = shl i64 %or.i149, 1
  %or.i.3.i153 = tail call i64 @llvm.fshl.i64(i64 %shr6.i, i64 %or.i149, i64 1) #16
  %471 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_store8_noabort(i32 %471)
  store i64 %453, ptr %arrayidx1.i.1.i141, align 8
  %add2.i.2.i160 = add i64 %shl.i.2.i, %456
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl.i.2.i)
  %cmp4.not.i.2.i161 = icmp ne i64 %shl.i.2.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.2.i160, i64 %456)
  %cmp6.i.2.i162 = icmp ult i64 %add2.i.2.i160, %456
  %narrow = select i1 %cmp4.not.i.2.i161, i1 %cmp6.i.2.i162, i1 false
  %carry.1.i.2.i163 = zext i1 %narrow to i64
  %472 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_store8_noabort(i32 %472)
  store i64 %add2.i.2.i160, ptr %arrayidx1.i.2.i143, align 8
  %add.i.3.i164 = add i64 %or.i.3.i153, %459
  %add2.i.3.i165 = add i64 %add.i.3.i164, %carry.1.i.2.i163
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.3.i165, i64 %459)
  %cmp4.not.i.3.i166 = icmp eq i64 %add2.i.3.i165, %459
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.3.i165, i64 %459)
  %cmp6.i.3.i167 = icmp ult i64 %add2.i.3.i165, %459
  %473 = zext i1 %cmp6.i.3.i167 to i64
  %carry.1.i.3.i168 = select i1 %cmp4.not.i.3.i166, i64 %carry.1.i.2.i163, i64 %473
  %474 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_store8_noabort(i32 %474)
  store i64 %add2.i.3.i165, ptr %arrayidx1.i.3.i145, align 8
  %add.i.4.i = add i64 %carry.1.i.3.i168, %462
  %cmp4.not.i.4.i = select i1 %cmp4.not.i.3.i166, i1 %narrow, i1 %cmp6.i.3.i167
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.4.i, i64 %462)
  %cmp6.i.4.i = icmp ult i64 %add.i.4.i, %462
  %narrow357 = select i1 %cmp4.not.i.4.i, i1 %cmp6.i.4.i, i1 false
  %carry.1.i.4.i = zext i1 %narrow357 to i64
  %475 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_store8_noabort(i32 %475)
  store i64 %add.i.4.i, ptr %arrayidx1.i.4.i, align 8
  %add.i.5.i = add i64 %465, %carry.1.i.4.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.5.i, i64 %465)
  %cmp6.i.5.i = icmp ult i64 %add.i.5.i, %465
  %476 = zext i1 %cmp6.i.5.i to i64
  %477 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_store8_noabort(i32 %477)
  store i64 %add.i.5.i, ptr %arrayidx1.i.5.i, align 8
  %arrayidx13.i = getelementptr i64, ptr %product, i32 6
  %478 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load8_noabort(i32 %478)
  %479 = load i64, ptr %arrayidx13.i, align 8
  %arrayidx15.i = getelementptr i64, ptr %product, i32 7
  %480 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %480)
  %481 = load i64, ptr %arrayidx15.i, align 8
  %arrayidx17.i = getelementptr i64, ptr %product, i32 8
  %482 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %482)
  %483 = load i64, ptr %arrayidx17.i, align 8
  %arrayidx19.i = getelementptr i64, ptr %product, i32 9
  %484 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %484)
  %485 = load i64, ptr %arrayidx19.i, align 8
  %486 = ptrtoint ptr %arrayidx3.i148 to i32
  call void @__asan_load8_noabort(i32 %486)
  %487 = load i64, ptr %arrayidx3.i148, align 8
  %488 = ptrtoint ptr %arrayidx2.i147 to i32
  call void @__asan_load8_noabort(i32 %488)
  %489 = load i64, ptr %arrayidx2.i147, align 8
  %add2.i368.i = add i64 %479, %450
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %479)
  %cmp4.not.i369.i = icmp ne i64 %479, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i368.i, i64 %450)
  %cmp6.i370.i = icmp ult i64 %add2.i368.i, %450
  %narrow503.i = select i1 %cmp4.not.i369.i, i1 %cmp6.i370.i, i1 false
  %carry.1.i371.i = zext i1 %narrow503.i to i64
  %490 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %490)
  store i64 %add2.i368.i, ptr %result, align 8
  %add.i367.1.i = add i64 %481, %453
  %add2.i368.1.i = add i64 %add.i367.1.i, %carry.1.i371.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i368.1.i, i64 %453)
  %cmp4.not.i369.1.i = icmp eq i64 %add2.i368.1.i, %453
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i368.1.i, i64 %453)
  %cmp6.i370.1.i = icmp ult i64 %add2.i368.1.i, %453
  %491 = zext i1 %cmp6.i370.1.i to i64
  %carry.1.i371.1.i = select i1 %cmp4.not.i369.1.i, i64 %carry.1.i371.i, i64 %491
  %492 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_store8_noabort(i32 %492)
  store i64 %add2.i368.1.i, ptr %arrayidx1.i.1.i141, align 8
  %add.i367.2.i = add i64 %483, %add2.i.2.i160
  %add2.i368.2.i = add i64 %add.i367.2.i, %carry.1.i371.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i368.2.i, i64 %add2.i.2.i160)
  %cmp4.not.i369.2.i = icmp eq i64 %add2.i368.2.i, %add2.i.2.i160
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i368.2.i, i64 %add2.i.2.i160)
  %cmp6.i370.2.i = icmp ult i64 %add2.i368.2.i, %add2.i.2.i160
  %493 = zext i1 %cmp6.i370.2.i to i64
  %carry.1.i371.2.i = select i1 %cmp4.not.i369.2.i, i64 %carry.1.i371.1.i, i64 %493
  %494 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_store8_noabort(i32 %494)
  store i64 %add2.i368.2.i, ptr %arrayidx1.i.2.i143, align 8
  %add.i367.3.i = add i64 %485, %add2.i.3.i165
  %add2.i368.3.i = add i64 %add.i367.3.i, %carry.1.i371.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i368.3.i, i64 %add2.i.3.i165)
  %cmp4.not.i369.3.i = icmp eq i64 %add2.i368.3.i, %add2.i.3.i165
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i368.3.i, i64 %add2.i.3.i165)
  %cmp6.i370.3.i = icmp ult i64 %add2.i368.3.i, %add2.i.3.i165
  %495 = zext i1 %cmp6.i370.3.i to i64
  %carry.1.i371.3.i = select i1 %cmp4.not.i369.3.i, i64 %carry.1.i371.2.i, i64 %495
  %496 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_store8_noabort(i32 %496)
  store i64 %add2.i368.3.i, ptr %arrayidx1.i.3.i145, align 8
  %add.i367.4.i = add i64 %add.i.4.i, %487
  %add2.i368.4.i = add i64 %add.i367.4.i, %carry.1.i371.3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i368.4.i, i64 %add.i.4.i)
  %cmp4.not.i369.4.i = icmp eq i64 %add2.i368.4.i, %add.i.4.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i368.4.i, i64 %add.i.4.i)
  %cmp6.i370.4.i = icmp ult i64 %add2.i368.4.i, %add.i.4.i
  %497 = zext i1 %cmp6.i370.4.i to i64
  %carry.1.i371.4.i = select i1 %cmp4.not.i369.4.i, i64 %carry.1.i371.3.i, i64 %497
  %498 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_store8_noabort(i32 %498)
  store i64 %add2.i368.4.i, ptr %arrayidx1.i.4.i, align 8
  %add.i367.5.i = add i64 %add.i.5.i, %489
  %add2.i368.5.i = add i64 %add.i367.5.i, %carry.1.i371.4.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i368.5.i, i64 %add.i.5.i)
  %cmp6.i370.5.i = icmp ult i64 %add2.i368.5.i, %add.i.5.i
  %499 = zext i1 %cmp6.i370.5.i to i64
  %500 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_store8_noabort(i32 %500)
  store i64 %add2.i368.5.i, ptr %arrayidx1.i.5.i, align 8
  %carry.1.i.5.i = select i1 %narrow357, i64 %476, i64 %carry.1.i.4.i
  %501 = ptrtoint ptr %arrayidx2.i147 to i32
  call void @__asan_load8_noabort(i32 %501)
  %502 = load i64, ptr %arrayidx2.i147, align 8
  %503 = ptrtoint ptr %arrayidx3.i148 to i32
  call void @__asan_load8_noabort(i32 %503)
  %504 = load i64, ptr %arrayidx3.i148, align 8
  %or33.i = tail call i64 @llvm.fshl.i64(i64 %502, i64 %504, i64 32) #16
  %505 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load8_noabort(i32 %505)
  %506 = load i64, ptr %arrayidx13.i, align 8
  %or39.i = tail call i64 @llvm.fshl.i64(i64 %506, i64 %502, i64 32) #16
  %507 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %507)
  %508 = load i64, ptr %arrayidx15.i, align 8
  %or45.i = tail call i64 @llvm.fshl.i64(i64 %508, i64 %506, i64 32) #16
  %509 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %509)
  %510 = load i64, ptr %arrayidx17.i, align 8
  %or51.i = tail call i64 @llvm.fshl.i64(i64 %510, i64 %508, i64 32) #16
  %511 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %511)
  %512 = load i64, ptr %arrayidx19.i, align 8
  %or57.i169 = tail call i64 @llvm.fshl.i64(i64 %512, i64 %510, i64 32) #16
  %or63.i = tail call i64 @llvm.fshl.i64(i64 %504, i64 %512, i64 32) #16
  %add2.i382.i = add i64 %or33.i, %add2.i368.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or33.i)
  %cmp4.not.i383.i = icmp ne i64 %or33.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i382.i, i64 %add2.i368.i)
  %cmp6.i384.i = icmp ult i64 %add2.i382.i, %add2.i368.i
  %narrow504.i = select i1 %cmp4.not.i383.i, i1 %cmp6.i384.i, i1 false
  %carry.1.i385.i = zext i1 %narrow504.i to i64
  %513 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %513)
  store i64 %add2.i382.i, ptr %result, align 8
  %add.i381.1.i = add i64 %or39.i, %add2.i368.1.i
  %add2.i382.1.i = add i64 %add.i381.1.i, %carry.1.i385.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i382.1.i, i64 %add2.i368.1.i)
  %cmp4.not.i383.1.i = icmp eq i64 %add2.i382.1.i, %add2.i368.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i382.1.i, i64 %add2.i368.1.i)
  %cmp6.i384.1.i = icmp ult i64 %add2.i382.1.i, %add2.i368.1.i
  %514 = zext i1 %cmp6.i384.1.i to i64
  %carry.1.i385.1.i = select i1 %cmp4.not.i383.1.i, i64 %carry.1.i385.i, i64 %514
  %515 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_store8_noabort(i32 %515)
  store i64 %add2.i382.1.i, ptr %arrayidx1.i.1.i141, align 8
  %add.i381.2.i = add i64 %or45.i, %add2.i368.2.i
  %add2.i382.2.i = add i64 %add.i381.2.i, %carry.1.i385.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i382.2.i, i64 %add2.i368.2.i)
  %cmp4.not.i383.2.i = icmp eq i64 %add2.i382.2.i, %add2.i368.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i382.2.i, i64 %add2.i368.2.i)
  %cmp6.i384.2.i = icmp ult i64 %add2.i382.2.i, %add2.i368.2.i
  %516 = zext i1 %cmp6.i384.2.i to i64
  %carry.1.i385.2.i = select i1 %cmp4.not.i383.2.i, i64 %carry.1.i385.1.i, i64 %516
  %517 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_store8_noabort(i32 %517)
  store i64 %add2.i382.2.i, ptr %arrayidx1.i.2.i143, align 8
  %add.i381.3.i = add i64 %or51.i, %add2.i368.3.i
  %add2.i382.3.i = add i64 %add.i381.3.i, %carry.1.i385.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i382.3.i, i64 %add2.i368.3.i)
  %cmp4.not.i383.3.i = icmp eq i64 %add2.i382.3.i, %add2.i368.3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i382.3.i, i64 %add2.i368.3.i)
  %cmp6.i384.3.i = icmp ult i64 %add2.i382.3.i, %add2.i368.3.i
  %518 = zext i1 %cmp6.i384.3.i to i64
  %carry.1.i385.3.i = select i1 %cmp4.not.i383.3.i, i64 %carry.1.i385.2.i, i64 %518
  %519 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_store8_noabort(i32 %519)
  store i64 %add2.i382.3.i, ptr %arrayidx1.i.3.i145, align 8
  %add.i381.4.i = add i64 %add2.i368.4.i, %or57.i169
  %add2.i382.4.i = add i64 %add.i381.4.i, %carry.1.i385.3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i382.4.i, i64 %add2.i368.4.i)
  %cmp4.not.i383.4.i = icmp eq i64 %add2.i382.4.i, %add2.i368.4.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i382.4.i, i64 %add2.i368.4.i)
  %cmp6.i384.4.i = icmp ult i64 %add2.i382.4.i, %add2.i368.4.i
  %520 = zext i1 %cmp6.i384.4.i to i64
  %carry.1.i385.4.i = select i1 %cmp4.not.i383.4.i, i64 %carry.1.i385.3.i, i64 %520
  %521 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_store8_noabort(i32 %521)
  store i64 %add2.i382.4.i, ptr %arrayidx1.i.4.i, align 8
  %add.i381.5.i = add i64 %add2.i368.5.i, %or63.i
  %add2.i382.5.i = add i64 %add.i381.5.i, %carry.1.i385.4.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i382.5.i, i64 %add2.i368.5.i)
  %cmp6.i384.5.i = icmp ult i64 %add2.i382.5.i, %add2.i368.5.i
  %522 = zext i1 %cmp6.i384.5.i to i64
  %523 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_store8_noabort(i32 %523)
  store i64 %add2.i382.5.i, ptr %arrayidx1.i.5.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i368.5.i, i64 %add.i.5.i)
  %cmp4.not.i369.5.i = icmp eq i64 %add2.i368.5.i, %add.i.5.i
  %carry.1.i371.5.i = select i1 %cmp4.not.i369.5.i, i64 %carry.1.i371.4.i, i64 %499
  %524 = ptrtoint ptr %arrayidx2.i147 to i32
  call void @__asan_load8_noabort(i32 %524)
  %525 = load i64, ptr %arrayidx2.i147, align 8
  %and.i170 = and i64 %525, -4294967296
  %526 = ptrtoint ptr %arrayidx3.i148 to i32
  call void @__asan_load8_noabort(i32 %526)
  %527 = load i64, ptr %arrayidx3.i148, align 8
  %shl72.i = shl i64 %527, 32
  %528 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load8_noabort(i32 %528)
  %529 = load i64, ptr %arrayidx13.i, align 8
  %530 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %530)
  %531 = load i64, ptr %arrayidx15.i, align 8
  %532 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %532)
  %533 = load i64, ptr %arrayidx17.i, align 8
  %534 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %534)
  %535 = load i64, ptr %arrayidx19.i, align 8
  %add2.i396.i = add i64 %and.i170, %add2.i382.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i170)
  %cmp4.not.i397.i = icmp ne i64 %and.i170, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i396.i, i64 %add2.i382.i)
  %cmp6.i398.i = icmp ult i64 %add2.i396.i, %add2.i382.i
  %narrow505.i = select i1 %cmp4.not.i397.i, i1 %cmp6.i398.i, i1 false
  %carry.1.i399.i = zext i1 %narrow505.i to i64
  %536 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %536)
  store i64 %add2.i396.i, ptr %result, align 8
  %add.i395.1.i = add i64 %shl72.i, %add2.i382.1.i
  %add2.i396.1.i = add i64 %add.i395.1.i, %carry.1.i399.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i396.1.i, i64 %add2.i382.1.i)
  %cmp4.not.i397.1.i = icmp eq i64 %add2.i396.1.i, %add2.i382.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i396.1.i, i64 %add2.i382.1.i)
  %cmp6.i398.1.i = icmp ult i64 %add2.i396.1.i, %add2.i382.1.i
  %537 = zext i1 %cmp6.i398.1.i to i64
  %carry.1.i399.1.i = select i1 %cmp4.not.i397.1.i, i64 %carry.1.i399.i, i64 %537
  %538 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_store8_noabort(i32 %538)
  store i64 %add2.i396.1.i, ptr %arrayidx1.i.1.i141, align 8
  %add.i395.2.i = add i64 %529, %add2.i382.2.i
  %add2.i396.2.i = add i64 %add.i395.2.i, %carry.1.i399.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i396.2.i, i64 %add2.i382.2.i)
  %cmp4.not.i397.2.i = icmp eq i64 %add2.i396.2.i, %add2.i382.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i396.2.i, i64 %add2.i382.2.i)
  %cmp6.i398.2.i = icmp ult i64 %add2.i396.2.i, %add2.i382.2.i
  %539 = zext i1 %cmp6.i398.2.i to i64
  %carry.1.i399.2.i = select i1 %cmp4.not.i397.2.i, i64 %carry.1.i399.1.i, i64 %539
  %540 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_store8_noabort(i32 %540)
  store i64 %add2.i396.2.i, ptr %arrayidx1.i.2.i143, align 8
  %add.i395.3.i = add i64 %add2.i382.3.i, %531
  %add2.i396.3.i = add i64 %add.i395.3.i, %carry.1.i399.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i396.3.i, i64 %add2.i382.3.i)
  %cmp4.not.i397.3.i = icmp eq i64 %add2.i396.3.i, %add2.i382.3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i396.3.i, i64 %add2.i382.3.i)
  %cmp6.i398.3.i = icmp ult i64 %add2.i396.3.i, %add2.i382.3.i
  %541 = zext i1 %cmp6.i398.3.i to i64
  %carry.1.i399.3.i = select i1 %cmp4.not.i397.3.i, i64 %carry.1.i399.2.i, i64 %541
  %542 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_store8_noabort(i32 %542)
  store i64 %add2.i396.3.i, ptr %arrayidx1.i.3.i145, align 8
  %add.i395.4.i = add i64 %add2.i382.4.i, %533
  %add2.i396.4.i = add i64 %add.i395.4.i, %carry.1.i399.3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i396.4.i, i64 %add2.i382.4.i)
  %cmp4.not.i397.4.i = icmp eq i64 %add2.i396.4.i, %add2.i382.4.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i396.4.i, i64 %add2.i382.4.i)
  %cmp6.i398.4.i = icmp ult i64 %add2.i396.4.i, %add2.i382.4.i
  %543 = zext i1 %cmp6.i398.4.i to i64
  %carry.1.i399.4.i = select i1 %cmp4.not.i397.4.i, i64 %carry.1.i399.3.i, i64 %543
  %544 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_store8_noabort(i32 %544)
  store i64 %add2.i396.4.i, ptr %arrayidx1.i.4.i, align 8
  %add.i395.5.i = add i64 %add2.i382.5.i, %535
  %add2.i396.5.i = add i64 %add.i395.5.i, %carry.1.i399.4.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i396.5.i, i64 %add2.i382.5.i)
  %cmp6.i398.5.i = icmp ult i64 %add2.i396.5.i, %add2.i382.5.i
  %545 = zext i1 %cmp6.i398.5.i to i64
  %546 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_store8_noabort(i32 %546)
  store i64 %add2.i396.5.i, ptr %arrayidx1.i.5.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i382.5.i, i64 %add2.i368.5.i)
  %cmp4.not.i383.5.i = icmp eq i64 %add2.i382.5.i, %add2.i368.5.i
  %carry.1.i385.5.i = select i1 %cmp4.not.i383.5.i, i64 %carry.1.i385.4.i, i64 %522
  %547 = ptrtoint ptr %arrayidx3.i148 to i32
  call void @__asan_load8_noabort(i32 %547)
  %548 = load i64, ptr %arrayidx3.i148, align 8
  %549 = ptrtoint ptr %arrayidx2.i147 to i32
  call void @__asan_load8_noabort(i32 %549)
  %550 = load i64, ptr %arrayidx2.i147, align 8
  %add2.i410.2.i = add i64 %add2.i396.2.i, %548
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %548)
  %cmp4.not.i411.2.i = icmp ne i64 %548, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i410.2.i, i64 %add2.i396.2.i)
  %cmp6.i412.2.i = icmp ult i64 %add2.i410.2.i, %add2.i396.2.i
  %narrow358 = select i1 %cmp4.not.i411.2.i, i1 %cmp6.i412.2.i, i1 false
  %carry.1.i413.2.i = zext i1 %narrow358 to i64
  %551 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_store8_noabort(i32 %551)
  store i64 %add2.i410.2.i, ptr %arrayidx1.i.2.i143, align 8
  %add.i409.3.i = add i64 %550, %carry.1.i413.2.i
  %add2.i410.3.i = add i64 %add.i409.3.i, %add2.i396.3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add.i409.3.i)
  %cmp4.not.i411.3.i = icmp eq i64 %add.i409.3.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i410.3.i, i64 %add2.i396.3.i)
  %cmp6.i412.3.i = icmp ult i64 %add2.i410.3.i, %add2.i396.3.i
  %552 = zext i1 %cmp6.i412.3.i to i64
  %carry.1.i413.3.i = select i1 %cmp4.not.i411.3.i, i64 %carry.1.i413.2.i, i64 %552
  %553 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_store8_noabort(i32 %553)
  store i64 %add2.i410.3.i, ptr %arrayidx1.i.3.i145, align 8
  %add.i409.4.i = add i64 %add2.i396.4.i, %carry.1.i413.3.i
  %cmp4.not.i411.4.i = select i1 %cmp4.not.i411.3.i, i1 %narrow358, i1 %cmp6.i412.3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i409.4.i, i64 %add2.i396.4.i)
  %cmp6.i412.4.i = icmp ult i64 %add.i409.4.i, %add2.i396.4.i
  %narrow359 = select i1 %cmp4.not.i411.4.i, i1 %cmp6.i412.4.i, i1 false
  %carry.1.i413.4.i = zext i1 %narrow359 to i64
  %554 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_store8_noabort(i32 %554)
  store i64 %add.i409.4.i, ptr %arrayidx1.i.4.i, align 8
  %add.i409.5.i = add i64 %add2.i396.5.i, %carry.1.i413.4.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i409.5.i, i64 %add2.i396.5.i)
  %cmp6.i412.5.i = icmp ult i64 %add.i409.5.i, %add2.i396.5.i
  %555 = zext i1 %cmp6.i412.5.i to i64
  %556 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_store8_noabort(i32 %556)
  store i64 %add.i409.5.i, ptr %arrayidx1.i.5.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i396.5.i, i64 %add2.i382.5.i)
  %cmp4.not.i397.5.i = icmp eq i64 %add2.i396.5.i, %add2.i382.5.i
  %carry.1.i399.5.i = select i1 %cmp4.not.i397.5.i, i64 %carry.1.i399.4.i, i64 %545
  %557 = ptrtoint ptr %arrayidx3.i148 to i32
  call void @__asan_load8_noabort(i32 %557)
  %558 = load i64, ptr %arrayidx3.i148, align 8
  %and99.i = and i64 %558, 4294967295
  %and102.i = and i64 %558, -4294967296
  %559 = ptrtoint ptr %arrayidx2.i147 to i32
  call void @__asan_load8_noabort(i32 %559)
  %560 = load i64, ptr %arrayidx2.i147, align 8
  %add2.i424.i = add i64 %and99.i, %add2.i396.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and99.i)
  %cmp4.not.i425.i = icmp ne i64 %and99.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i424.i, i64 %add2.i396.i)
  %cmp6.i426.i = icmp ult i64 %add2.i424.i, %add2.i396.i
  %narrow507.i = select i1 %cmp4.not.i425.i, i1 %cmp6.i426.i, i1 false
  %carry.1.i427.i = zext i1 %narrow507.i to i64
  %561 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %561)
  store i64 %add2.i424.i, ptr %result, align 8
  %add.i423.1.i = add i64 %and102.i, %add2.i396.1.i
  %add2.i424.1.i = add i64 %add.i423.1.i, %carry.1.i427.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i424.1.i, i64 %add2.i396.1.i)
  %cmp4.not.i425.1.i = icmp eq i64 %add2.i424.1.i, %add2.i396.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i424.1.i, i64 %add2.i396.1.i)
  %cmp6.i426.1.i = icmp ult i64 %add2.i424.1.i, %add2.i396.1.i
  %562 = zext i1 %cmp6.i426.1.i to i64
  %carry.1.i427.1.i = select i1 %cmp4.not.i425.1.i, i64 %carry.1.i427.i, i64 %562
  %563 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_store8_noabort(i32 %563)
  store i64 %add2.i424.1.i, ptr %arrayidx1.i.1.i141, align 8
  %add.i423.2.i = add i64 %560, %add2.i410.2.i
  %add2.i424.2.i = add i64 %add.i423.2.i, %carry.1.i427.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i424.2.i, i64 %add2.i410.2.i)
  %cmp4.not.i425.2.i = icmp eq i64 %add2.i424.2.i, %add2.i410.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i424.2.i, i64 %add2.i410.2.i)
  %cmp6.i426.2.i = icmp ult i64 %add2.i424.2.i, %add2.i410.2.i
  %564 = zext i1 %cmp6.i426.2.i to i64
  %carry.1.i427.2.i = select i1 %cmp4.not.i425.2.i, i64 %carry.1.i427.1.i, i64 %564
  %565 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_store8_noabort(i32 %565)
  store i64 %add2.i424.2.i, ptr %arrayidx1.i.2.i143, align 8
  %add.i423.3.i = add i64 %carry.1.i427.2.i, %add2.i410.3.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.1.i427.2.i)
  %cmp4.not.i425.3.i = icmp ne i64 %carry.1.i427.2.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i423.3.i, i64 %add2.i410.3.i)
  %cmp6.i426.3.i = icmp ult i64 %add.i423.3.i, %add2.i410.3.i
  %narrow360 = select i1 %cmp4.not.i425.3.i, i1 %cmp6.i426.3.i, i1 false
  %carry.1.i427.3.i = zext i1 %narrow360 to i64
  %566 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_store8_noabort(i32 %566)
  store i64 %add.i423.3.i, ptr %arrayidx1.i.3.i145, align 8
  %add.i423.4.i = add i64 %add.i409.4.i, %carry.1.i427.3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i423.4.i, i64 %add.i409.4.i)
  %cmp6.i426.4.i = icmp ult i64 %add.i423.4.i, %add.i409.4.i
  %567 = zext i1 %cmp6.i426.4.i to i64
  %carry.1.i427.4.i = select i1 %narrow360, i64 %567, i64 %carry.1.i427.3.i
  %568 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_store8_noabort(i32 %568)
  store i64 %add.i423.4.i, ptr %arrayidx1.i.4.i, align 8
  %add.i423.5.i = add i64 %carry.1.i427.4.i, %add.i409.5.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i423.5.i, i64 %add.i409.5.i)
  %cmp6.i426.5.i = icmp ult i64 %add.i423.5.i, %add.i409.5.i
  %569 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_store8_noabort(i32 %569)
  store i64 %add.i423.5.i, ptr %arrayidx1.i.5.i, align 8
  %carry.1.i413.5.i = select i1 %narrow359, i64 %555, i64 %carry.1.i413.4.i
  %570 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load8_noabort(i32 %570)
  %571 = load i64, ptr %arrayidx13.i, align 8
  %572 = ptrtoint ptr %arrayidx2.i147 to i32
  call void @__asan_load8_noabort(i32 %572)
  %573 = load i64, ptr %arrayidx2.i147, align 8
  %or117.i = tail call i64 @llvm.fshl.i64(i64 %571, i64 %573, i64 32) #16
  %574 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load8_noabort(i32 %574)
  %575 = load i64, ptr %arrayidx15.i, align 8
  %or123.i = tail call i64 @llvm.fshl.i64(i64 %575, i64 %571, i64 32) #16
  %576 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load8_noabort(i32 %576)
  %577 = load i64, ptr %arrayidx17.i, align 8
  %or129.i = tail call i64 @llvm.fshl.i64(i64 %577, i64 %575, i64 32) #16
  %578 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load8_noabort(i32 %578)
  %579 = load i64, ptr %arrayidx19.i, align 8
  %or135.i = tail call i64 @llvm.fshl.i64(i64 %579, i64 %577, i64 32) #16
  %580 = ptrtoint ptr %arrayidx3.i148 to i32
  call void @__asan_load8_noabort(i32 %580)
  %581 = load i64, ptr %arrayidx3.i148, align 8
  %or141.i = tail call i64 @llvm.fshl.i64(i64 %581, i64 %579, i64 32) #16
  %or147.i = tail call i64 @llvm.fshl.i64(i64 %573, i64 %581, i64 32) #16
  %sub2.i.i171 = sub i64 %add2.i424.i, %or117.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or117.i)
  %cmp4.not.i436.i = icmp ne i64 %or117.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i424.i, i64 %or117.i)
  %cmp6.i437.i = icmp ult i64 %add2.i424.i, %or117.i
  %narrow508.i = select i1 %cmp4.not.i436.i, i1 %cmp6.i437.i, i1 false
  %borrow.1.i.i172 = zext i1 %narrow508.i to i64
  %582 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %582)
  store i64 %sub2.i.i171, ptr %result, align 8
  %583 = add i64 %or123.i, %borrow.1.i.i172
  %sub2.i.1.i173 = sub i64 %add2.i424.1.i, %583
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %583)
  %cmp4.not.i436.1.i = icmp eq i64 %583, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i424.1.i, i64 %583)
  %cmp6.i437.1.i = icmp ult i64 %add2.i424.1.i, %583
  %584 = zext i1 %cmp6.i437.1.i to i64
  %borrow.1.i.1.i174 = select i1 %cmp4.not.i436.1.i, i64 %borrow.1.i.i172, i64 %584
  %585 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_store8_noabort(i32 %585)
  store i64 %sub2.i.1.i173, ptr %arrayidx1.i.1.i141, align 8
  %586 = add i64 %borrow.1.i.1.i174, %or129.i
  %sub2.i.2.i175 = sub i64 %add2.i424.2.i, %586
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %586)
  %cmp4.not.i436.2.i = icmp eq i64 %586, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i424.2.i, i64 %586)
  %cmp6.i437.2.i = icmp ult i64 %add2.i424.2.i, %586
  %587 = zext i1 %cmp6.i437.2.i to i64
  %borrow.1.i.2.i176 = select i1 %cmp4.not.i436.2.i, i64 %borrow.1.i.1.i174, i64 %587
  %588 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_store8_noabort(i32 %588)
  store i64 %sub2.i.2.i175, ptr %arrayidx1.i.2.i143, align 8
  %589 = add i64 %borrow.1.i.2.i176, %or135.i
  %sub2.i.3.i177 = sub i64 %add.i423.3.i, %589
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %589)
  %cmp4.not.i436.3.i = icmp eq i64 %589, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i423.3.i, i64 %589)
  %cmp6.i437.3.i = icmp ult i64 %add.i423.3.i, %589
  %590 = zext i1 %cmp6.i437.3.i to i64
  %borrow.1.i.3.i178 = select i1 %cmp4.not.i436.3.i, i64 %borrow.1.i.2.i176, i64 %590
  %591 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_store8_noabort(i32 %591)
  store i64 %sub2.i.3.i177, ptr %arrayidx1.i.3.i145, align 8
  %592 = add i64 %borrow.1.i.3.i178, %or141.i
  %sub2.i.4.i = sub i64 %add.i423.4.i, %592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %592)
  %cmp4.not.i436.4.i = icmp eq i64 %592, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i423.4.i, i64 %592)
  %cmp6.i437.4.i = icmp ult i64 %add.i423.4.i, %592
  %593 = zext i1 %cmp6.i437.4.i to i64
  %borrow.1.i.4.i = select i1 %cmp4.not.i436.4.i, i64 %borrow.1.i.3.i178, i64 %593
  %594 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_store8_noabort(i32 %594)
  store i64 %sub2.i.4.i, ptr %arrayidx1.i.4.i, align 8
  %595 = add i64 %borrow.1.i.4.i, %or147.i
  %sub2.i.5.i = sub i64 %add.i423.5.i, %595
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i423.5.i, i64 %595)
  %cmp6.i437.5.i = icmp ult i64 %add.i423.5.i, %595
  %596 = zext i1 %cmp6.i437.5.i to i64
  %597 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_store8_noabort(i32 %597)
  store i64 %sub2.i.5.i, ptr %arrayidx1.i.5.i, align 8
  %cmp4.not.i425.5.i = select i1 %narrow360, i1 %cmp6.i426.4.i, i1 false
  %narrow361 = select i1 %cmp4.not.i425.5.i, i1 %cmp6.i426.5.i, i1 false
  %carry.1.i427.5.i = zext i1 %narrow361 to i64
  %598 = ptrtoint ptr %arrayidx3.i148 to i32
  call void @__asan_load8_noabort(i32 %598)
  %599 = load i64, ptr %arrayidx3.i148, align 8
  %shl153.i = shl i64 %599, 32
  %600 = ptrtoint ptr %arrayidx2.i147 to i32
  call void @__asan_load8_noabort(i32 %600)
  %601 = load i64, ptr %arrayidx2.i147, align 8
  %or159.i = tail call i64 @llvm.fshl.i64(i64 %601, i64 %599, i64 32) #16
  %shr162.i = lshr i64 %601, 32
  %sub2.i446.i = sub i64 %sub2.i.i171, %shl153.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %shl153.i)
  %cmp4.not.i447.i = icmp ne i64 %shl153.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i.i171, i64 %shl153.i)
  %cmp6.i448.i = icmp ult i64 %sub2.i.i171, %shl153.i
  %narrow509.i = select i1 %cmp4.not.i447.i, i1 %cmp6.i448.i, i1 false
  %borrow.1.i449.i = zext i1 %narrow509.i to i64
  %602 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %602)
  store i64 %sub2.i446.i, ptr %result, align 8
  %603 = add i64 %or159.i, %borrow.1.i449.i
  %sub2.i446.1.i = sub i64 %sub2.i.1.i173, %603
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %603)
  %cmp4.not.i447.1.i = icmp eq i64 %603, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i.1.i173, i64 %603)
  %cmp6.i448.1.i = icmp ult i64 %sub2.i.1.i173, %603
  %604 = zext i1 %cmp6.i448.1.i to i64
  %borrow.1.i449.1.i = select i1 %cmp4.not.i447.1.i, i64 %borrow.1.i449.i, i64 %604
  %605 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_store8_noabort(i32 %605)
  store i64 %sub2.i446.1.i, ptr %arrayidx1.i.1.i141, align 8
  %606 = add nuw nsw i64 %borrow.1.i449.1.i, %shr162.i
  %sub2.i446.2.i = sub i64 %sub2.i.2.i175, %606
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %606)
  %cmp4.not.i447.2.i = icmp eq i64 %606, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i.2.i175, i64 %606)
  %cmp6.i448.2.i = icmp ult i64 %sub2.i.2.i175, %606
  %607 = zext i1 %cmp6.i448.2.i to i64
  %borrow.1.i449.2.i = select i1 %cmp4.not.i447.2.i, i64 %borrow.1.i449.1.i, i64 %607
  %608 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_store8_noabort(i32 %608)
  store i64 %sub2.i446.2.i, ptr %arrayidx1.i.2.i143, align 8
  %sub2.i446.3.i = sub i64 %sub2.i.3.i177, %borrow.1.i449.2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i449.2.i)
  %cmp4.not.i447.3.i = icmp ne i64 %borrow.1.i449.2.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i.3.i177, i64 %borrow.1.i449.2.i)
  %cmp6.i448.3.i = icmp ult i64 %sub2.i.3.i177, %borrow.1.i449.2.i
  %narrow362 = select i1 %cmp4.not.i447.3.i, i1 %cmp6.i448.3.i, i1 false
  %borrow.1.i449.3.i = zext i1 %narrow362 to i64
  %609 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_store8_noabort(i32 %609)
  store i64 %sub2.i446.3.i, ptr %arrayidx1.i.3.i145, align 8
  %sub2.i446.4.i = sub i64 %sub2.i.4.i, %borrow.1.i449.3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i.4.i, i64 %borrow.1.i449.3.i)
  %cmp6.i448.4.i = icmp ult i64 %sub2.i.4.i, %borrow.1.i449.3.i
  %610 = zext i1 %cmp6.i448.4.i to i64
  %borrow.1.i449.4.i = select i1 %narrow362, i64 %610, i64 %borrow.1.i449.3.i
  %611 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_store8_noabort(i32 %611)
  store i64 %sub2.i446.4.i, ptr %arrayidx1.i.4.i, align 8
  %sub2.i446.5.i = sub i64 %sub2.i.5.i, %borrow.1.i449.4.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i.5.i, i64 %borrow.1.i449.4.i)
  %cmp6.i448.5.i = icmp ult i64 %sub2.i.5.i, %borrow.1.i449.4.i
  %612 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_store8_noabort(i32 %612)
  store i64 %sub2.i446.5.i, ptr %arrayidx1.i.5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %595)
  %cmp4.not.i436.5.i = icmp eq i64 %595, 0
  %borrow.1.i.5.i = select i1 %cmp4.not.i436.5.i, i64 %borrow.1.i.4.i, i64 %596
  %613 = ptrtoint ptr %arrayidx2.i147 to i32
  call void @__asan_load8_noabort(i32 %613)
  %614 = load i64, ptr %arrayidx2.i147, align 8
  %and173.i = and i64 %614, -4294967296
  %shr176.i = lshr i64 %614, 32
  %sub2.i459.1.i = sub i64 %sub2.i446.1.i, %and173.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and173.i)
  %cmp4.not.i460.1.i = icmp ne i64 %and173.i, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i446.1.i, i64 %and173.i)
  %cmp6.i461.1.i = icmp ult i64 %sub2.i446.1.i, %and173.i
  %narrow510.i = select i1 %cmp4.not.i460.1.i, i1 %cmp6.i461.1.i, i1 false
  %borrow.1.i462.1.i = zext i1 %narrow510.i to i64
  %615 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_store8_noabort(i32 %615)
  store i64 %sub2.i459.1.i, ptr %arrayidx1.i.1.i141, align 8
  %616 = add nuw nsw i64 %shr176.i, %borrow.1.i462.1.i
  %sub2.i459.2.i = sub i64 %sub2.i446.2.i, %616
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %616)
  %cmp4.not.i460.2.i = icmp eq i64 %616, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i446.2.i, i64 %616)
  %cmp6.i461.2.i = icmp ult i64 %sub2.i446.2.i, %616
  %617 = zext i1 %cmp6.i461.2.i to i64
  %borrow.1.i462.2.i = select i1 %cmp4.not.i460.2.i, i64 %borrow.1.i462.1.i, i64 %617
  %618 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_store8_noabort(i32 %618)
  store i64 %sub2.i459.2.i, ptr %arrayidx1.i.2.i143, align 8
  %sub2.i459.3.i = sub i64 %sub2.i446.3.i, %borrow.1.i462.2.i
  %cmp4.not.i460.3.i = select i1 %cmp4.not.i460.2.i, i1 %narrow510.i, i1 %cmp6.i461.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i446.3.i, i64 %borrow.1.i462.2.i)
  %cmp6.i461.3.i = icmp ult i64 %sub2.i446.3.i, %borrow.1.i462.2.i
  %narrow363 = select i1 %cmp4.not.i460.3.i, i1 %cmp6.i461.3.i, i1 false
  %borrow.1.i462.3.i = zext i1 %narrow363 to i64
  %619 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_store8_noabort(i32 %619)
  store i64 %sub2.i459.3.i, ptr %arrayidx1.i.3.i145, align 8
  %sub2.i459.4.i = sub i64 %sub2.i446.4.i, %borrow.1.i462.3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i446.4.i, i64 %borrow.1.i462.3.i)
  %cmp6.i461.4.i = icmp ult i64 %sub2.i446.4.i, %borrow.1.i462.3.i
  %620 = zext i1 %cmp6.i461.4.i to i64
  %borrow.1.i462.4.i = select i1 %narrow363, i64 %620, i64 %borrow.1.i462.3.i
  %621 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_store8_noabort(i32 %621)
  store i64 %sub2.i459.4.i, ptr %arrayidx1.i.4.i, align 8
  %sub2.i459.5.i = sub i64 %sub2.i446.5.i, %borrow.1.i462.4.i
  %cmp4.not.i460.5.i = select i1 %narrow363, i1 %cmp6.i461.4.i, i1 false
  call void @__sanitizer_cov_trace_cmp8(i64 %sub2.i446.5.i, i64 %borrow.1.i462.4.i)
  %cmp6.i461.5.i = icmp ult i64 %sub2.i446.5.i, %borrow.1.i462.4.i
  %narrow364 = select i1 %cmp4.not.i460.5.i, i1 %cmp6.i461.5.i, i1 false
  %borrow.1.i462.5.i.neg381 = sext i1 %narrow364 to i64
  %622 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_store8_noabort(i32 %622)
  store i64 %sub2.i459.5.i, ptr %arrayidx1.i.5.i, align 8
  %cmp4.not.i447.5.i = select i1 %narrow362, i1 %cmp6.i448.4.i, i1 false
  %narrow365 = select i1 %cmp4.not.i447.5.i, i1 %cmp6.i448.5.i, i1 false
  %borrow.1.i449.5.i.neg380 = sext i1 %narrow365 to i64
  %.neg = add nuw nsw i64 %carry.1.i371.5.i, %carry.1.i.5.i
  %.neg371 = add nuw nsw i64 %.neg, %carry.1.i385.5.i
  %.neg500.i = add nuw nsw i64 %.neg371, %carry.1.i399.5.i
  %add.i179 = add nuw nsw i64 %.neg500.i, %carry.1.i413.5.i
  %add27.i = add nuw nsw i64 %add.i179, %carry.1.i427.5.i
  %add67.i = sub nsw i64 %add27.i, %borrow.1.i.5.i
  %add84.i = add nsw i64 %add67.i, %borrow.1.i449.5.i.neg380
  %sub183.i = add nsw i64 %add84.i, %borrow.1.i462.5.i.neg381
  %conv184.i = trunc i64 %sub183.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv184.i)
  %cmp.i180 = icmp slt i32 %conv184.i, 0
  br i1 %cmp.i180, label %do.body.preheader.i182, label %while.cond.preheader.i181

while.cond.preheader.i181:                        ; preds = %sw.bb19
  %arrayidx.i482.i = getelementptr i64, ptr %1, i32 5
  %arrayidx.i482.1.i = getelementptr i64, ptr %1, i32 4
  %arrayidx.i482.2.i = getelementptr i64, ptr %1, i32 3
  %arrayidx.i482.3.i = getelementptr i64, ptr %1, i32 2
  %arrayidx.i482.4.i = getelementptr i64, ptr %1, i32 1
  br label %while.cond.i187

do.body.preheader.i182:                           ; preds = %sw.bb19
  %arrayidx1.i471.1.i = getelementptr i64, ptr %1, i32 1
  %arrayidx1.i471.2.i = getelementptr i64, ptr %1, i32 2
  %arrayidx1.i471.3.i = getelementptr i64, ptr %1, i32 3
  %arrayidx1.i471.4.i = getelementptr i64, ptr %1, i32 4
  %arrayidx1.i471.5.i = getelementptr i64, ptr %1, i32 5
  br label %do.body.i184

do.body.i184:                                     ; preds = %do.body.i184.do.body.i184_crit_edge, %do.body.preheader.i182
  %carry.0.i183 = phi i32 [ %conv189.i, %do.body.i184.do.body.i184_crit_edge ], [ %conv184.i, %do.body.preheader.i182 ]
  %623 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %623)
  %624 = load i64, ptr %result, align 8
  %625 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %625)
  %626 = load i64, ptr %1, align 8
  %add2.i473.i = add i64 %626, %624
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %626)
  %cmp4.not.i474.i = icmp ne i64 %626, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i473.i, i64 %624)
  %cmp6.i475.i = icmp ult i64 %add2.i473.i, %624
  %narrow512.i = select i1 %cmp4.not.i474.i, i1 %cmp6.i475.i, i1 false
  %carry.1.i476.i = zext i1 %narrow512.i to i64
  %627 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %627)
  store i64 %add2.i473.i, ptr %result, align 8
  %628 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_load8_noabort(i32 %628)
  %629 = load i64, ptr %arrayidx1.i.1.i141, align 8
  %630 = ptrtoint ptr %arrayidx1.i471.1.i to i32
  call void @__asan_load8_noabort(i32 %630)
  %631 = load i64, ptr %arrayidx1.i471.1.i, align 8
  %add.i472.1.i = add i64 %631, %629
  %add2.i473.1.i = add i64 %add.i472.1.i, %carry.1.i476.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i473.1.i, i64 %629)
  %cmp4.not.i474.1.i = icmp eq i64 %add2.i473.1.i, %629
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i473.1.i, i64 %629)
  %cmp6.i475.1.i = icmp ult i64 %add2.i473.1.i, %629
  %632 = zext i1 %cmp6.i475.1.i to i64
  %carry.1.i476.1.i = select i1 %cmp4.not.i474.1.i, i64 %carry.1.i476.i, i64 %632
  %633 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_store8_noabort(i32 %633)
  store i64 %add2.i473.1.i, ptr %arrayidx1.i.1.i141, align 8
  %634 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_load8_noabort(i32 %634)
  %635 = load i64, ptr %arrayidx1.i.2.i143, align 8
  %636 = ptrtoint ptr %arrayidx1.i471.2.i to i32
  call void @__asan_load8_noabort(i32 %636)
  %637 = load i64, ptr %arrayidx1.i471.2.i, align 8
  %add.i472.2.i = add i64 %637, %635
  %add2.i473.2.i = add i64 %add.i472.2.i, %carry.1.i476.1.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i473.2.i, i64 %635)
  %cmp4.not.i474.2.i = icmp eq i64 %add2.i473.2.i, %635
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i473.2.i, i64 %635)
  %cmp6.i475.2.i = icmp ult i64 %add2.i473.2.i, %635
  %638 = zext i1 %cmp6.i475.2.i to i64
  %carry.1.i476.2.i = select i1 %cmp4.not.i474.2.i, i64 %carry.1.i476.1.i, i64 %638
  %639 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_store8_noabort(i32 %639)
  store i64 %add2.i473.2.i, ptr %arrayidx1.i.2.i143, align 8
  %640 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_load8_noabort(i32 %640)
  %641 = load i64, ptr %arrayidx1.i.3.i145, align 8
  %642 = ptrtoint ptr %arrayidx1.i471.3.i to i32
  call void @__asan_load8_noabort(i32 %642)
  %643 = load i64, ptr %arrayidx1.i471.3.i, align 8
  %add.i472.3.i = add i64 %643, %641
  %add2.i473.3.i = add i64 %add.i472.3.i, %carry.1.i476.2.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i473.3.i, i64 %641)
  %cmp4.not.i474.3.i = icmp eq i64 %add2.i473.3.i, %641
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i473.3.i, i64 %641)
  %cmp6.i475.3.i = icmp ult i64 %add2.i473.3.i, %641
  %644 = zext i1 %cmp6.i475.3.i to i64
  %carry.1.i476.3.i = select i1 %cmp4.not.i474.3.i, i64 %carry.1.i476.2.i, i64 %644
  %645 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_store8_noabort(i32 %645)
  store i64 %add2.i473.3.i, ptr %arrayidx1.i.3.i145, align 8
  %646 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_load8_noabort(i32 %646)
  %647 = load i64, ptr %arrayidx1.i.4.i, align 8
  %648 = ptrtoint ptr %arrayidx1.i471.4.i to i32
  call void @__asan_load8_noabort(i32 %648)
  %649 = load i64, ptr %arrayidx1.i471.4.i, align 8
  %add.i472.4.i = add i64 %649, %647
  %add2.i473.4.i = add i64 %add.i472.4.i, %carry.1.i476.3.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i473.4.i, i64 %647)
  %cmp4.not.i474.4.i = icmp eq i64 %add2.i473.4.i, %647
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i473.4.i, i64 %647)
  %cmp6.i475.4.i = icmp ult i64 %add2.i473.4.i, %647
  %650 = zext i1 %cmp6.i475.4.i to i64
  %carry.1.i476.4.i = select i1 %cmp4.not.i474.4.i, i64 %carry.1.i476.3.i, i64 %650
  %651 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_store8_noabort(i32 %651)
  store i64 %add2.i473.4.i, ptr %arrayidx1.i.4.i, align 8
  %652 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_load8_noabort(i32 %652)
  %653 = load i64, ptr %arrayidx1.i.5.i, align 8
  %654 = ptrtoint ptr %arrayidx1.i471.5.i to i32
  call void @__asan_load8_noabort(i32 %654)
  %655 = load i64, ptr %arrayidx1.i471.5.i, align 8
  %add.i472.5.i = add i64 %655, %653
  %add2.i473.5.i = add i64 %add.i472.5.i, %carry.1.i476.4.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i473.5.i, i64 %653)
  %cmp4.not.i474.5.i = icmp eq i64 %add2.i473.5.i, %653
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i473.5.i, i64 %653)
  %cmp6.i475.5.i = icmp ult i64 %add2.i473.5.i, %653
  %656 = zext i1 %cmp6.i475.5.i to i64
  %carry.1.i476.5.i = select i1 %cmp4.not.i474.5.i, i64 %carry.1.i476.4.i, i64 %656
  %657 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_store8_noabort(i32 %657)
  store i64 %add2.i473.5.i, ptr %arrayidx1.i.5.i, align 8
  %658 = trunc i64 %carry.1.i476.5.i to i32
  %conv189.i = add nsw i32 %carry.0.i183, %658
  %cmp190.i = icmp slt i32 %conv189.i, 0
  br i1 %cmp190.i, label %do.body.i184.do.body.i184_crit_edge, label %do.body.i184.cleanup_crit_edge

do.body.i184.cleanup_crit_edge:                   ; preds = %do.body.i184
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body.i184.do.body.i184_crit_edge:              ; preds = %do.body.i184
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i184

while.cond.i187:                                  ; preds = %while.body.i202, %while.cond.preheader.i181
  %carry.1.i185 = phi i32 [ %conv198.i, %while.body.i202 ], [ %conv184.i, %while.cond.preheader.i181 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %carry.1.i185)
  %tobool.not.i186 = icmp eq i32 %carry.1.i185, 0
  br i1 %tobool.not.i186, label %for.cond.i.preheader.i189, label %while.cond.i187.while.body.i202_crit_edge

while.cond.i187.while.body.i202_crit_edge:        ; preds = %while.cond.i187
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i202

for.cond.i.preheader.i189:                        ; preds = %while.cond.i187
  %659 = ptrtoint ptr %arrayidx.i482.i to i32
  call void @__asan_load8_noabort(i32 %659)
  %660 = load i64, ptr %arrayidx.i482.i, align 8
  %661 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_load8_noabort(i32 %661)
  %662 = load i64, ptr %arrayidx1.i.5.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %660, i64 %662)
  %cmp2.i.i188 = icmp ugt i64 %660, %662
  br i1 %cmp2.i.i188, label %for.cond.i.preheader.i189.cleanup_crit_edge, label %if.else.i.i191

for.cond.i.preheader.i189.cleanup_crit_edge:      ; preds = %for.cond.i.preheader.i189
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i.i191:                                   ; preds = %for.cond.i.preheader.i189
  call void @__sanitizer_cov_trace_cmp8(i64 %660, i64 %662)
  %cmp5.i.i190 = icmp ult i64 %660, %662
  br i1 %cmp5.i.i190, label %if.else.i.i191.while.body.i202_crit_edge, label %for.cond.i.1.i193

if.else.i.i191.while.body.i202_crit_edge:         ; preds = %if.else.i.i191
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i202

for.cond.i.1.i193:                                ; preds = %if.else.i.i191
  %663 = ptrtoint ptr %arrayidx.i482.1.i to i32
  call void @__asan_load8_noabort(i32 %663)
  %664 = load i64, ptr %arrayidx.i482.1.i, align 8
  %665 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_load8_noabort(i32 %665)
  %666 = load i64, ptr %arrayidx1.i.4.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %664, i64 %666)
  %cmp2.i.1.i192 = icmp ugt i64 %664, %666
  br i1 %cmp2.i.1.i192, label %for.cond.i.1.i193.cleanup_crit_edge, label %if.else.i.1.i195

for.cond.i.1.i193.cleanup_crit_edge:              ; preds = %for.cond.i.1.i193
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i.1.i195:                                 ; preds = %for.cond.i.1.i193
  call void @__sanitizer_cov_trace_cmp8(i64 %664, i64 %666)
  %cmp5.i.1.i194 = icmp ult i64 %664, %666
  br i1 %cmp5.i.1.i194, label %if.else.i.1.i195.while.body.i202_crit_edge, label %for.cond.i.2.i197

if.else.i.1.i195.while.body.i202_crit_edge:       ; preds = %if.else.i.1.i195
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i202

for.cond.i.2.i197:                                ; preds = %if.else.i.1.i195
  %667 = ptrtoint ptr %arrayidx.i482.2.i to i32
  call void @__asan_load8_noabort(i32 %667)
  %668 = load i64, ptr %arrayidx.i482.2.i, align 8
  %669 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_load8_noabort(i32 %669)
  %670 = load i64, ptr %arrayidx1.i.3.i145, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %668, i64 %670)
  %cmp2.i.2.i196 = icmp ugt i64 %668, %670
  br i1 %cmp2.i.2.i196, label %for.cond.i.2.i197.cleanup_crit_edge, label %if.else.i.2.i199

for.cond.i.2.i197.cleanup_crit_edge:              ; preds = %for.cond.i.2.i197
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i.2.i199:                                 ; preds = %for.cond.i.2.i197
  call void @__sanitizer_cov_trace_cmp8(i64 %668, i64 %670)
  %cmp5.i.2.i198 = icmp ult i64 %668, %670
  br i1 %cmp5.i.2.i198, label %if.else.i.2.i199.while.body.i202_crit_edge, label %for.cond.i.3.i201

if.else.i.2.i199.while.body.i202_crit_edge:       ; preds = %if.else.i.2.i199
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i202

for.cond.i.3.i201:                                ; preds = %if.else.i.2.i199
  %671 = ptrtoint ptr %arrayidx.i482.3.i to i32
  call void @__asan_load8_noabort(i32 %671)
  %672 = load i64, ptr %arrayidx.i482.3.i, align 8
  %673 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_load8_noabort(i32 %673)
  %674 = load i64, ptr %arrayidx1.i.2.i143, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %672, i64 %674)
  %cmp2.i.3.i200 = icmp ugt i64 %672, %674
  br i1 %cmp2.i.3.i200, label %for.cond.i.3.i201.cleanup_crit_edge, label %if.else.i.3.i

for.cond.i.3.i201.cleanup_crit_edge:              ; preds = %for.cond.i.3.i201
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i.3.i:                                    ; preds = %for.cond.i.3.i201
  call void @__sanitizer_cov_trace_cmp8(i64 %672, i64 %674)
  %cmp5.i.3.i = icmp ult i64 %672, %674
  br i1 %cmp5.i.3.i, label %if.else.i.3.i.while.body.i202_crit_edge, label %for.cond.i.4.i

if.else.i.3.i.while.body.i202_crit_edge:          ; preds = %if.else.i.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i202

for.cond.i.4.i:                                   ; preds = %if.else.i.3.i
  %675 = ptrtoint ptr %arrayidx.i482.4.i to i32
  call void @__asan_load8_noabort(i32 %675)
  %676 = load i64, ptr %arrayidx.i482.4.i, align 8
  %677 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_load8_noabort(i32 %677)
  %678 = load i64, ptr %arrayidx1.i.1.i141, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %676, i64 %678)
  %cmp2.i.4.i = icmp ugt i64 %676, %678
  br i1 %cmp2.i.4.i, label %for.cond.i.4.i.cleanup_crit_edge, label %if.else.i.4.i

for.cond.i.4.i.cleanup_crit_edge:                 ; preds = %for.cond.i.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.else.i.4.i:                                    ; preds = %for.cond.i.4.i
  call void @__sanitizer_cov_trace_cmp8(i64 %676, i64 %678)
  %cmp5.i.4.i = icmp ult i64 %676, %678
  br i1 %cmp5.i.4.i, label %if.else.i.4.i.while.body.i202_crit_edge, label %for.cond.i.5.i

if.else.i.4.i.while.body.i202_crit_edge:          ; preds = %if.else.i.4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i202

for.cond.i.5.i:                                   ; preds = %if.else.i.4.i
  %679 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %679)
  %680 = load i64, ptr %1, align 8
  %681 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %681)
  %682 = load i64, ptr %result, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %680, i64 %682)
  %cmp2.i.5.i = icmp ugt i64 %680, %682
  br i1 %cmp2.i.5.i, label %for.cond.i.5.i.cleanup_crit_edge, label %for.cond.i.5.i.while.body.i202_crit_edge

for.cond.i.5.i.while.body.i202_crit_edge:         ; preds = %for.cond.i.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i202

for.cond.i.5.i.cleanup_crit_edge:                 ; preds = %for.cond.i.5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.body.i202:                                  ; preds = %for.cond.i.5.i.while.body.i202_crit_edge, %if.else.i.4.i.while.body.i202_crit_edge, %if.else.i.3.i.while.body.i202_crit_edge, %if.else.i.2.i199.while.body.i202_crit_edge, %if.else.i.1.i195.while.body.i202_crit_edge, %if.else.i.i191.while.body.i202_crit_edge, %while.cond.i187.while.body.i202_crit_edge
  %683 = ptrtoint ptr %result to i32
  call void @__asan_load8_noabort(i32 %683)
  %684 = load i64, ptr %result, align 8
  %685 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %685)
  %686 = load i64, ptr %1, align 8
  %sub2.i489.i = sub i64 %684, %686
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %686)
  %cmp4.not.i490.i = icmp ne i64 %686, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %684, i64 %686)
  %cmp6.i491.i = icmp ult i64 %684, %686
  %narrow511.i = select i1 %cmp4.not.i490.i, i1 %cmp6.i491.i, i1 false
  %borrow.1.i492.i = zext i1 %narrow511.i to i64
  %687 = ptrtoint ptr %result to i32
  call void @__asan_store8_noabort(i32 %687)
  store i64 %sub2.i489.i, ptr %result, align 8
  %688 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_load8_noabort(i32 %688)
  %689 = load i64, ptr %arrayidx1.i.1.i141, align 8
  %690 = ptrtoint ptr %arrayidx.i482.4.i to i32
  call void @__asan_load8_noabort(i32 %690)
  %691 = load i64, ptr %arrayidx.i482.4.i, align 8
  %692 = add i64 %691, %borrow.1.i492.i
  %sub2.i489.1.i = sub i64 %689, %692
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %692)
  %cmp4.not.i490.1.i = icmp eq i64 %692, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %689, i64 %692)
  %cmp6.i491.1.i = icmp ult i64 %689, %692
  %693 = zext i1 %cmp6.i491.1.i to i64
  %borrow.1.i492.1.i = select i1 %cmp4.not.i490.1.i, i64 %borrow.1.i492.i, i64 %693
  %694 = ptrtoint ptr %arrayidx1.i.1.i141 to i32
  call void @__asan_store8_noabort(i32 %694)
  store i64 %sub2.i489.1.i, ptr %arrayidx1.i.1.i141, align 8
  %695 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_load8_noabort(i32 %695)
  %696 = load i64, ptr %arrayidx1.i.2.i143, align 8
  %697 = ptrtoint ptr %arrayidx.i482.3.i to i32
  call void @__asan_load8_noabort(i32 %697)
  %698 = load i64, ptr %arrayidx.i482.3.i, align 8
  %699 = add i64 %borrow.1.i492.1.i, %698
  %sub2.i489.2.i = sub i64 %696, %699
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %699)
  %cmp4.not.i490.2.i = icmp eq i64 %699, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %696, i64 %699)
  %cmp6.i491.2.i = icmp ult i64 %696, %699
  %700 = zext i1 %cmp6.i491.2.i to i64
  %borrow.1.i492.2.i = select i1 %cmp4.not.i490.2.i, i64 %borrow.1.i492.1.i, i64 %700
  %701 = ptrtoint ptr %arrayidx1.i.2.i143 to i32
  call void @__asan_store8_noabort(i32 %701)
  store i64 %sub2.i489.2.i, ptr %arrayidx1.i.2.i143, align 8
  %702 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_load8_noabort(i32 %702)
  %703 = load i64, ptr %arrayidx1.i.3.i145, align 8
  %704 = ptrtoint ptr %arrayidx.i482.2.i to i32
  call void @__asan_load8_noabort(i32 %704)
  %705 = load i64, ptr %arrayidx.i482.2.i, align 8
  %706 = add i64 %borrow.1.i492.2.i, %705
  %sub2.i489.3.i = sub i64 %703, %706
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %706)
  %cmp4.not.i490.3.i = icmp eq i64 %706, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %703, i64 %706)
  %cmp6.i491.3.i = icmp ult i64 %703, %706
  %707 = zext i1 %cmp6.i491.3.i to i64
  %borrow.1.i492.3.i = select i1 %cmp4.not.i490.3.i, i64 %borrow.1.i492.2.i, i64 %707
  %708 = ptrtoint ptr %arrayidx1.i.3.i145 to i32
  call void @__asan_store8_noabort(i32 %708)
  store i64 %sub2.i489.3.i, ptr %arrayidx1.i.3.i145, align 8
  %709 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_load8_noabort(i32 %709)
  %710 = load i64, ptr %arrayidx1.i.4.i, align 8
  %711 = ptrtoint ptr %arrayidx.i482.1.i to i32
  call void @__asan_load8_noabort(i32 %711)
  %712 = load i64, ptr %arrayidx.i482.1.i, align 8
  %713 = add i64 %borrow.1.i492.3.i, %712
  %sub2.i489.4.i = sub i64 %710, %713
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %713)
  %cmp4.not.i490.4.i = icmp eq i64 %713, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %710, i64 %713)
  %cmp6.i491.4.i = icmp ult i64 %710, %713
  %714 = zext i1 %cmp6.i491.4.i to i64
  %borrow.1.i492.4.i = select i1 %cmp4.not.i490.4.i, i64 %borrow.1.i492.3.i, i64 %714
  %715 = ptrtoint ptr %arrayidx1.i.4.i to i32
  call void @__asan_store8_noabort(i32 %715)
  store i64 %sub2.i489.4.i, ptr %arrayidx1.i.4.i, align 8
  %716 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_load8_noabort(i32 %716)
  %717 = load i64, ptr %arrayidx1.i.5.i, align 8
  %718 = ptrtoint ptr %arrayidx.i482.i to i32
  call void @__asan_load8_noabort(i32 %718)
  %719 = load i64, ptr %arrayidx.i482.i, align 8
  %720 = add i64 %borrow.1.i492.4.i, %719
  %sub2.i489.5.i = sub i64 %717, %720
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %720)
  %cmp4.not.i490.5.i = icmp eq i64 %720, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %717, i64 %720)
  %cmp6.i491.5.i = icmp ult i64 %717, %720
  %721 = zext i1 %cmp6.i491.5.i to i64
  %borrow.1.i492.5.i = select i1 %cmp4.not.i490.5.i, i64 %borrow.1.i492.4.i, i64 %721
  %722 = ptrtoint ptr %arrayidx1.i.5.i to i32
  call void @__asan_store8_noabort(i32 %722)
  store i64 %sub2.i489.5.i, ptr %arrayidx1.i.5.i, align 8
  %723 = trunc i64 %borrow.1.i492.5.i to i32
  %conv198.i = sub i32 %carry.1.i185, %723
  br label %while.cond.i187

sw.default:                                       ; preds = %if.end16
  %call21 = tail call i32 @___ratelimit(ptr noundef nonnull @vli_mmod_fast._rs, ptr noundef nonnull @__func__.vli_mmod_fast) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %sw.default.cleanup_crit_edge, label %do.end

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #18
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.default.cleanup_crit_edge, %for.cond.i.5.i.cleanup_crit_edge, %for.cond.i.4.i.cleanup_crit_edge, %for.cond.i.3.i201.cleanup_crit_edge, %for.cond.i.2.i197.cleanup_crit_edge, %for.cond.i.1.i193.cleanup_crit_edge, %for.cond.i.preheader.i189.cleanup_crit_edge, %do.body.i184.cleanup_crit_edge, %for.cond.i.3.i.cleanup_crit_edge, %for.cond.i.2.i137.cleanup_crit_edge, %for.cond.i.1.i133.cleanup_crit_edge, %for.cond.i.preheader.i129.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %for.cond.i.2.i.cleanup_crit_edge, %for.cond.i.1.i.cleanup_crit_edge, %for.cond.i.preheader.i.cleanup_crit_edge, %vli_mmod_barrett.exit, %vli_mmod_special2.exit, %vli_mmod_special.exit
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_rng_generate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xycz_add_c(ptr noundef %x1, ptr noundef %y1, ptr noundef %x2, ptr noundef %y2, ptr nocapture noundef readonly %curve) unnamed_addr #1 align 64 {
entry:
  %t5 = alloca [8 x i64], align 8
  %t6 = alloca [8 x i64], align 8
  %t7 = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %t5) #16
  %0 = call ptr @memset(ptr %t5, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %t6) #16
  %1 = call ptr @memset(ptr %t6, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %t7) #16
  %2 = call ptr @memset(ptr %t7, i32 255, i32 64)
  %p = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 2
  %3 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p, align 4
  %ndigits1 = getelementptr inbounds %struct.ecc_curve, ptr %curve, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %ndigits1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ndigits1, align 4
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp20.not.i.i = icmp eq i8 %6, 0
  br i1 %cmp20.not.i.i, label %lor.lhs.false.i.critedge, label %entry.for.body.i.i_crit_edge

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %i.022.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %borrow.021.i.i = phi i64 [ %borrow.1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i64, ptr %x2, i32 %i.022.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx.i.i, align 8
  %arrayidx1.i.i = getelementptr i64, ptr %x1, i32 %i.022.i.i
  %9 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx1.i.i, align 8
  %11 = add i64 %10, %borrow.021.i.i
  %sub2.i.i = sub i64 %8, %11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %cmp4.not.i.i = icmp eq i64 %11, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %11)
  %cmp6.i.i = icmp ult i64 %8, %11
  %12 = zext i1 %cmp6.i.i to i64
  %borrow.1.i.i = select i1 %cmp4.not.i.i, i64 %borrow.021.i.i, i64 %12
  %arrayidx8.i.i = getelementptr i64, ptr %t5, i32 %i.022.i.i
  %13 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %sub2.i.i, ptr %arrayidx8.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.022.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv
  br i1 %exitcond.not.i.i, label %vli_sub.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

vli_sub.exit.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i)
  %tobool.not.i = icmp eq i64 %borrow.1.i.i, 0
  br i1 %tobool.not.i, label %vli_sub.exit.i.for.body.i.i96.preheader_crit_edge, label %vli_sub.exit.i.for.body.i14.i_crit_edge

vli_sub.exit.i.for.body.i14.i_crit_edge:          ; preds = %vli_sub.exit.i
  br label %for.body.i14.i

vli_sub.exit.i.for.body.i.i96.preheader_crit_edge: ; preds = %vli_sub.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i96.preheader

for.body.i14.i:                                   ; preds = %for.body.i14.i.for.body.i14.i_crit_edge, %vli_sub.exit.i.for.body.i14.i_crit_edge
  %i.022.i6.i = phi i32 [ %inc.i12.i, %for.body.i14.i.for.body.i14.i_crit_edge ], [ 0, %vli_sub.exit.i.for.body.i14.i_crit_edge ]
  %carry.021.i.i = phi i64 [ %carry.1.i.i, %for.body.i14.i.for.body.i14.i_crit_edge ], [ 0, %vli_sub.exit.i.for.body.i14.i_crit_edge ]
  %arrayidx.i7.i = getelementptr i64, ptr %t5, i32 %i.022.i6.i
  %14 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i7.i, align 8
  %arrayidx1.i8.i = getelementptr i64, ptr %4, i32 %i.022.i6.i
  %16 = ptrtoint ptr %arrayidx1.i8.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx1.i8.i, align 8
  %add.i.i = add i64 %15, %carry.021.i.i
  %add2.i.i = add i64 %add.i.i, %17
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %15)
  %cmp4.not.i9.i = icmp eq i64 %add2.i.i, %15
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i, i64 %15)
  %cmp6.i10.i = icmp ult i64 %add2.i.i, %15
  %18 = zext i1 %cmp6.i10.i to i64
  %carry.1.i.i = select i1 %cmp4.not.i9.i, i64 %carry.021.i.i, i64 %18
  %19 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add2.i.i, ptr %arrayidx.i7.i, align 8
  %inc.i12.i = add nuw nsw i32 %i.022.i6.i, 1
  %exitcond.not.i13.i = icmp eq i32 %inc.i12.i, %conv
  br i1 %exitcond.not.i13.i, label %for.body.i14.i.for.body.i.i96.preheader_crit_edge, label %for.body.i14.i.for.body.i14.i_crit_edge

for.body.i14.i.for.body.i14.i_crit_edge:          ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i

for.body.i14.i.for.body.i.i96.preheader_crit_edge: ; preds = %for.body.i14.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i96.preheader

for.body.i.i96.preheader:                         ; preds = %for.body.i14.i.for.body.i.i96.preheader_crit_edge, %vli_sub.exit.i.for.body.i.i96.preheader_crit_edge
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t5, ptr noundef nonnull %t5, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef %x1, ptr noundef %x1, ptr noundef nonnull %t5, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef %x2, ptr noundef %x2, ptr noundef nonnull %t5, ptr noundef %curve)
  br label %for.body.i.i96

for.body.i.i96:                                   ; preds = %for.body.i.i96.for.body.i.i96_crit_edge, %for.body.i.i96.preheader
  %i.022.i.i84 = phi i32 [ %inc.i.i94, %for.body.i.i96.for.body.i.i96_crit_edge ], [ 0, %for.body.i.i96.preheader ]
  %carry.021.i.i85 = phi i64 [ %carry.1.i.i92, %for.body.i.i96.for.body.i.i96_crit_edge ], [ 0, %for.body.i.i96.preheader ]
  %arrayidx.i.i86 = getelementptr i64, ptr %y2, i32 %i.022.i.i84
  %20 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.i.i86, align 8
  %arrayidx1.i.i87 = getelementptr i64, ptr %y1, i32 %i.022.i.i84
  %22 = ptrtoint ptr %arrayidx1.i.i87 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx1.i.i87, align 8
  %add.i.i88 = add i64 %21, %carry.021.i.i85
  %add2.i.i89 = add i64 %add.i.i88, %23
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i89, i64 %21)
  %cmp4.not.i.i90 = icmp eq i64 %add2.i.i89, %21
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i89, i64 %21)
  %cmp6.i.i91 = icmp ult i64 %add2.i.i89, %21
  %24 = zext i1 %cmp6.i.i91 to i64
  %carry.1.i.i92 = select i1 %cmp4.not.i.i90, i64 %carry.021.i.i85, i64 %24
  %arrayidx8.i.i93 = getelementptr i64, ptr %t5, i32 %i.022.i.i84
  %25 = ptrtoint ptr %arrayidx8.i.i93 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %add2.i.i89, ptr %arrayidx8.i.i93, align 8
  %inc.i.i94 = add nuw nsw i32 %i.022.i.i84, 1
  %exitcond.not.i.i95 = icmp eq i32 %inc.i.i94, %conv
  br i1 %exitcond.not.i.i95, label %vli_add.exit.i, label %for.body.i.i96.for.body.i.i96_crit_edge

for.body.i.i96.for.body.i.i96_crit_edge:          ; preds = %for.body.i.i96
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i96

vli_add.exit.i:                                   ; preds = %for.body.i.i96
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.1.i.i92)
  %tobool.not.i97 = icmp eq i64 %carry.1.i.i92, 0
  br i1 %tobool.not.i97, label %vli_add.exit.i.for.cond.i.i.preheader_crit_edge, label %vli_add.exit.i.if.then.i_crit_edge

vli_add.exit.i.if.then.i_crit_edge:               ; preds = %vli_add.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

vli_add.exit.i.for.cond.i.i.preheader_crit_edge:  ; preds = %vli_add.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i.preheader

lor.lhs.false.i.critedge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t5, ptr noundef nonnull %t5, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef %x1, ptr noundef %x1, ptr noundef nonnull %t5, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef %x2, ptr noundef %x2, ptr noundef nonnull %t5, ptr noundef %curve)
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %lor.lhs.false.i.critedge, %vli_add.exit.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.else.i.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %i.0.in.i.i = phi i32 [ %i.0.i.i, %if.else.i.i.for.cond.i.i_crit_edge ], [ %conv, %for.cond.i.i.preheader ]
  %i.0.i.i = add nsw i32 %i.0.in.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i)
  %cmp.i.i = icmp sgt i32 %i.0.in.i.i, 0
  br i1 %cmp.i.i, label %for.body.i11.i, label %for.cond.i.i.if.then.i_crit_edge

for.cond.i.i.if.then.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

for.body.i11.i:                                   ; preds = %for.cond.i.i
  %arrayidx.i9.i = getelementptr i64, ptr %t5, i32 %i.0.i.i
  %26 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %arrayidx.i9.i, align 8
  %arrayidx1.i10.i = getelementptr i64, ptr %4, i32 %i.0.i.i
  %28 = ptrtoint ptr %arrayidx1.i10.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx1.i10.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %29)
  %cmp2.i.i = icmp ugt i64 %27, %29
  br i1 %cmp2.i.i, label %for.body.i11.i.if.then.i_crit_edge, label %if.else.i.i

for.body.i11.i.if.then.i_crit_edge:               ; preds = %for.body.i11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i

if.else.i.i:                                      ; preds = %for.body.i11.i
  %cmp5.i.i = icmp ult i64 %27, %29
  br i1 %cmp5.i.i, label %if.else.i.i.vli_mod_add.exit_crit_edge, label %if.else.i.i.for.cond.i.i_crit_edge

if.else.i.i.for.cond.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

if.else.i.i.vli_mod_add.exit_crit_edge:           ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_add.exit

if.then.i:                                        ; preds = %for.body.i11.i.if.then.i_crit_edge, %for.cond.i.i.if.then.i_crit_edge, %vli_add.exit.i.if.then.i_crit_edge
  br i1 %cmp20.not.i.i, label %if.then.i.vli_mod_sub.exit156.thread_crit_edge, label %if.then.i.for.body.i21.i_crit_edge

if.then.i.for.body.i21.i_crit_edge:               ; preds = %if.then.i
  br label %for.body.i21.i

if.then.i.vli_mod_sub.exit156.thread_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_sub.exit156.thread

for.body.i21.i:                                   ; preds = %for.body.i21.i.for.body.i21.i_crit_edge, %if.then.i.for.body.i21.i_crit_edge
  %i.022.i13.i = phi i32 [ %inc.i19.i, %for.body.i21.i.for.body.i21.i_crit_edge ], [ 0, %if.then.i.for.body.i21.i_crit_edge ]
  %borrow.021.i.i98 = phi i64 [ %borrow.1.i.i100, %for.body.i21.i.for.body.i21.i_crit_edge ], [ 0, %if.then.i.for.body.i21.i_crit_edge ]
  %arrayidx.i14.i = getelementptr i64, ptr %t5, i32 %i.022.i13.i
  %30 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %arrayidx.i14.i, align 8
  %arrayidx1.i15.i = getelementptr i64, ptr %4, i32 %i.022.i13.i
  %32 = ptrtoint ptr %arrayidx1.i15.i to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %arrayidx1.i15.i, align 8
  %34 = add i64 %33, %borrow.021.i.i98
  %sub2.i.i99 = sub i64 %31, %34
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %cmp4.not.i16.i = icmp eq i64 %34, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %34)
  %cmp6.i17.i = icmp ult i64 %31, %34
  %35 = zext i1 %cmp6.i17.i to i64
  %borrow.1.i.i100 = select i1 %cmp4.not.i16.i, i64 %borrow.021.i.i98, i64 %35
  %36 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %sub2.i.i99, ptr %arrayidx.i14.i, align 8
  %inc.i19.i = add nuw nsw i32 %i.022.i13.i, 1
  %exitcond.not.i20.i = icmp eq i32 %inc.i19.i, %conv
  br i1 %exitcond.not.i20.i, label %for.body.i21.i.vli_mod_add.exit_crit_edge, label %for.body.i21.i.for.body.i21.i_crit_edge

for.body.i21.i.for.body.i21.i_crit_edge:          ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i

for.body.i21.i.vli_mod_add.exit_crit_edge:        ; preds = %for.body.i21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_add.exit

vli_mod_add.exit:                                 ; preds = %for.body.i21.i.vli_mod_add.exit_crit_edge, %if.else.i.i.vli_mod_add.exit_crit_edge
  br i1 %cmp20.not.i.i, label %vli_mod_add.exit.vli_mod_sub.exit156.thread_crit_edge, label %vli_mod_add.exit.for.body.i.i113_crit_edge

vli_mod_add.exit.for.body.i.i113_crit_edge:       ; preds = %vli_mod_add.exit
  br label %for.body.i.i113

vli_mod_add.exit.vli_mod_sub.exit156.thread_crit_edge: ; preds = %vli_mod_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_sub.exit156.thread

for.body.i.i113:                                  ; preds = %for.body.i.i113.for.body.i.i113_crit_edge, %vli_mod_add.exit.for.body.i.i113_crit_edge
  %i.022.i.i102 = phi i32 [ %inc.i.i111, %for.body.i.i113.for.body.i.i113_crit_edge ], [ 0, %vli_mod_add.exit.for.body.i.i113_crit_edge ]
  %borrow.021.i.i103 = phi i64 [ %borrow.1.i.i109, %for.body.i.i113.for.body.i.i113_crit_edge ], [ 0, %vli_mod_add.exit.for.body.i.i113_crit_edge ]
  %arrayidx.i.i104 = getelementptr i64, ptr %y2, i32 %i.022.i.i102
  %37 = ptrtoint ptr %arrayidx.i.i104 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.i.i104, align 8
  %arrayidx1.i.i105 = getelementptr i64, ptr %y1, i32 %i.022.i.i102
  %39 = ptrtoint ptr %arrayidx1.i.i105 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx1.i.i105, align 8
  %41 = add i64 %40, %borrow.021.i.i103
  %sub2.i.i106 = sub i64 %38, %41
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %41)
  %cmp4.not.i.i107 = icmp eq i64 %41, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %41)
  %cmp6.i.i108 = icmp ult i64 %38, %41
  %42 = zext i1 %cmp6.i.i108 to i64
  %borrow.1.i.i109 = select i1 %cmp4.not.i.i107, i64 %borrow.021.i.i103, i64 %42
  %43 = ptrtoint ptr %arrayidx.i.i104 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %sub2.i.i106, ptr %arrayidx.i.i104, align 8
  %inc.i.i111 = add nuw nsw i32 %i.022.i.i102, 1
  %exitcond.not.i.i112 = icmp eq i32 %inc.i.i111, %conv
  br i1 %exitcond.not.i.i112, label %vli_sub.exit.i115, label %for.body.i.i113.for.body.i.i113_crit_edge

for.body.i.i113.for.body.i.i113_crit_edge:        ; preds = %for.body.i.i113
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i113

vli_sub.exit.i115:                                ; preds = %for.body.i.i113
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i109)
  %tobool.not.i114 = icmp eq i64 %borrow.1.i.i109, 0
  br i1 %tobool.not.i114, label %vli_sub.exit.i115.for.body.i.i141.preheader_crit_edge, label %vli_sub.exit.i115.for.body.i14.i127_crit_edge

vli_sub.exit.i115.for.body.i14.i127_crit_edge:    ; preds = %vli_sub.exit.i115
  br label %for.body.i14.i127

vli_sub.exit.i115.for.body.i.i141.preheader_crit_edge: ; preds = %vli_sub.exit.i115
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i141.preheader

for.body.i14.i127:                                ; preds = %for.body.i14.i127.for.body.i14.i127_crit_edge, %vli_sub.exit.i115.for.body.i14.i127_crit_edge
  %i.022.i6.i116 = phi i32 [ %inc.i12.i125, %for.body.i14.i127.for.body.i14.i127_crit_edge ], [ 0, %vli_sub.exit.i115.for.body.i14.i127_crit_edge ]
  %carry.021.i.i117 = phi i64 [ %carry.1.i.i124, %for.body.i14.i127.for.body.i14.i127_crit_edge ], [ 0, %vli_sub.exit.i115.for.body.i14.i127_crit_edge ]
  %arrayidx.i7.i118 = getelementptr i64, ptr %y2, i32 %i.022.i6.i116
  %44 = ptrtoint ptr %arrayidx.i7.i118 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %arrayidx.i7.i118, align 8
  %arrayidx1.i8.i119 = getelementptr i64, ptr %4, i32 %i.022.i6.i116
  %46 = ptrtoint ptr %arrayidx1.i8.i119 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %arrayidx1.i8.i119, align 8
  %add.i.i120 = add i64 %45, %carry.021.i.i117
  %add2.i.i121 = add i64 %add.i.i120, %47
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i121, i64 %45)
  %cmp4.not.i9.i122 = icmp eq i64 %add2.i.i121, %45
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i121, i64 %45)
  %cmp6.i10.i123 = icmp ult i64 %add2.i.i121, %45
  %48 = zext i1 %cmp6.i10.i123 to i64
  %carry.1.i.i124 = select i1 %cmp4.not.i9.i122, i64 %carry.021.i.i117, i64 %48
  %49 = ptrtoint ptr %arrayidx.i7.i118 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %add2.i.i121, ptr %arrayidx.i7.i118, align 8
  %inc.i12.i125 = add nuw nsw i32 %i.022.i6.i116, 1
  %exitcond.not.i13.i126 = icmp eq i32 %inc.i12.i125, %conv
  br i1 %exitcond.not.i13.i126, label %for.body.i14.i127.for.body.i.i141.preheader_crit_edge, label %for.body.i14.i127.for.body.i14.i127_crit_edge

for.body.i14.i127.for.body.i14.i127_crit_edge:    ; preds = %for.body.i14.i127
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i127

for.body.i14.i127.for.body.i.i141.preheader_crit_edge: ; preds = %for.body.i14.i127
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i141.preheader

for.body.i.i141.preheader:                        ; preds = %for.body.i14.i127.for.body.i.i141.preheader_crit_edge, %vli_sub.exit.i115.for.body.i.i141.preheader_crit_edge
  br label %for.body.i.i141

for.body.i.i141:                                  ; preds = %for.body.i.i141.for.body.i.i141_crit_edge, %for.body.i.i141.preheader
  %i.022.i.i130 = phi i32 [ %inc.i.i139, %for.body.i.i141.for.body.i.i141_crit_edge ], [ 0, %for.body.i.i141.preheader ]
  %borrow.021.i.i131 = phi i64 [ %borrow.1.i.i137, %for.body.i.i141.for.body.i.i141_crit_edge ], [ 0, %for.body.i.i141.preheader ]
  %arrayidx.i.i132 = getelementptr i64, ptr %x2, i32 %i.022.i.i130
  %50 = ptrtoint ptr %arrayidx.i.i132 to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arrayidx.i.i132, align 8
  %arrayidx1.i.i133 = getelementptr i64, ptr %x1, i32 %i.022.i.i130
  %52 = ptrtoint ptr %arrayidx1.i.i133 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %arrayidx1.i.i133, align 8
  %54 = add i64 %53, %borrow.021.i.i131
  %sub2.i.i134 = sub i64 %51, %54
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %54)
  %cmp4.not.i.i135 = icmp eq i64 %54, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %51, i64 %54)
  %cmp6.i.i136 = icmp ult i64 %51, %54
  %55 = zext i1 %cmp6.i.i136 to i64
  %borrow.1.i.i137 = select i1 %cmp4.not.i.i135, i64 %borrow.021.i.i131, i64 %55
  %arrayidx8.i.i138 = getelementptr i64, ptr %t6, i32 %i.022.i.i130
  %56 = ptrtoint ptr %arrayidx8.i.i138 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %sub2.i.i134, ptr %arrayidx8.i.i138, align 8
  %inc.i.i139 = add nuw nsw i32 %i.022.i.i130, 1
  %exitcond.not.i.i140 = icmp eq i32 %inc.i.i139, %conv
  br i1 %exitcond.not.i.i140, label %vli_sub.exit.i143, label %for.body.i.i141.for.body.i.i141_crit_edge

for.body.i.i141.for.body.i.i141_crit_edge:        ; preds = %for.body.i.i141
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i141

vli_sub.exit.i143:                                ; preds = %for.body.i.i141
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i137)
  %tobool.not.i142 = icmp eq i64 %borrow.1.i.i137, 0
  br i1 %tobool.not.i142, label %vli_sub.exit.i143.for.body.i.i170.preheader_crit_edge, label %vli_sub.exit.i143.for.body.i14.i155_crit_edge

vli_sub.exit.i143.for.body.i14.i155_crit_edge:    ; preds = %vli_sub.exit.i143
  br label %for.body.i14.i155

vli_sub.exit.i143.for.body.i.i170.preheader_crit_edge: ; preds = %vli_sub.exit.i143
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i170.preheader

for.body.i14.i155:                                ; preds = %for.body.i14.i155.for.body.i14.i155_crit_edge, %vli_sub.exit.i143.for.body.i14.i155_crit_edge
  %i.022.i6.i144 = phi i32 [ %inc.i12.i153, %for.body.i14.i155.for.body.i14.i155_crit_edge ], [ 0, %vli_sub.exit.i143.for.body.i14.i155_crit_edge ]
  %carry.021.i.i145 = phi i64 [ %carry.1.i.i152, %for.body.i14.i155.for.body.i14.i155_crit_edge ], [ 0, %vli_sub.exit.i143.for.body.i14.i155_crit_edge ]
  %arrayidx.i7.i146 = getelementptr i64, ptr %t6, i32 %i.022.i6.i144
  %57 = ptrtoint ptr %arrayidx.i7.i146 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx.i7.i146, align 8
  %arrayidx1.i8.i147 = getelementptr i64, ptr %4, i32 %i.022.i6.i144
  %59 = ptrtoint ptr %arrayidx1.i8.i147 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx1.i8.i147, align 8
  %add.i.i148 = add i64 %58, %carry.021.i.i145
  %add2.i.i149 = add i64 %add.i.i148, %60
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i149, i64 %58)
  %cmp4.not.i9.i150 = icmp eq i64 %add2.i.i149, %58
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i149, i64 %58)
  %cmp6.i10.i151 = icmp ult i64 %add2.i.i149, %58
  %61 = zext i1 %cmp6.i10.i151 to i64
  %carry.1.i.i152 = select i1 %cmp4.not.i9.i150, i64 %carry.021.i.i145, i64 %61
  %62 = ptrtoint ptr %arrayidx.i7.i146 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %add2.i.i149, ptr %arrayidx.i7.i146, align 8
  %inc.i12.i153 = add nuw nsw i32 %i.022.i6.i144, 1
  %exitcond.not.i13.i154 = icmp eq i32 %inc.i12.i153, %conv
  br i1 %exitcond.not.i13.i154, label %for.body.i14.i155.for.body.i.i170.preheader_crit_edge, label %for.body.i14.i155.for.body.i14.i155_crit_edge

for.body.i14.i155.for.body.i14.i155_crit_edge:    ; preds = %for.body.i14.i155
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i155

for.body.i14.i155.for.body.i.i170.preheader_crit_edge: ; preds = %for.body.i14.i155
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i170.preheader

vli_mod_sub.exit156.thread:                       ; preds = %vli_mod_add.exit.vli_mod_sub.exit156.thread_crit_edge, %if.then.i.vli_mod_sub.exit156.thread_crit_edge
  call fastcc void @vli_mod_mult_fast(ptr noundef %y1, ptr noundef %y1, ptr noundef nonnull %t6, ptr noundef %curve)
  br label %for.cond.i.i177.preheader

for.body.i.i170.preheader:                        ; preds = %for.body.i14.i155.for.body.i.i170.preheader_crit_edge, %vli_sub.exit.i143.for.body.i.i170.preheader_crit_edge
  call fastcc void @vli_mod_mult_fast(ptr noundef %y1, ptr noundef %y1, ptr noundef nonnull %t6, ptr noundef %curve)
  br label %for.body.i.i170

for.body.i.i170:                                  ; preds = %for.body.i.i170.for.body.i.i170_crit_edge, %for.body.i.i170.preheader
  %i.022.i.i158 = phi i32 [ %inc.i.i168, %for.body.i.i170.for.body.i.i170_crit_edge ], [ 0, %for.body.i.i170.preheader ]
  %carry.021.i.i159 = phi i64 [ %carry.1.i.i166, %for.body.i.i170.for.body.i.i170_crit_edge ], [ 0, %for.body.i.i170.preheader ]
  %arrayidx.i.i160 = getelementptr i64, ptr %x1, i32 %i.022.i.i158
  %63 = ptrtoint ptr %arrayidx.i.i160 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %arrayidx.i.i160, align 8
  %arrayidx1.i.i161 = getelementptr i64, ptr %x2, i32 %i.022.i.i158
  %65 = ptrtoint ptr %arrayidx1.i.i161 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx1.i.i161, align 8
  %add.i.i162 = add i64 %64, %carry.021.i.i159
  %add2.i.i163 = add i64 %add.i.i162, %66
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i163, i64 %64)
  %cmp4.not.i.i164 = icmp eq i64 %add2.i.i163, %64
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i163, i64 %64)
  %cmp6.i.i165 = icmp ult i64 %add2.i.i163, %64
  %67 = zext i1 %cmp6.i.i165 to i64
  %carry.1.i.i166 = select i1 %cmp4.not.i.i164, i64 %carry.021.i.i159, i64 %67
  %arrayidx8.i.i167 = getelementptr i64, ptr %t6, i32 %i.022.i.i158
  %68 = ptrtoint ptr %arrayidx8.i.i167 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %add2.i.i163, ptr %arrayidx8.i.i167, align 8
  %inc.i.i168 = add nuw nsw i32 %i.022.i.i158, 1
  %exitcond.not.i.i169 = icmp eq i32 %inc.i.i168, %conv
  br i1 %exitcond.not.i.i169, label %vli_add.exit.i172, label %for.body.i.i170.for.body.i.i170_crit_edge

for.body.i.i170.for.body.i.i170_crit_edge:        ; preds = %for.body.i.i170
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i170

vli_add.exit.i172:                                ; preds = %for.body.i.i170
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %carry.1.i.i166)
  %tobool.not.i171 = icmp eq i64 %carry.1.i.i166, 0
  br i1 %tobool.not.i171, label %vli_add.exit.i172.for.cond.i.i177.preheader_crit_edge, label %vli_add.exit.i172.if.then.i184_crit_edge

vli_add.exit.i172.if.then.i184_crit_edge:         ; preds = %vli_add.exit.i172
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i184

vli_add.exit.i172.for.cond.i.i177.preheader_crit_edge: ; preds = %vli_add.exit.i172
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i177.preheader

for.cond.i.i177.preheader:                        ; preds = %vli_add.exit.i172.for.cond.i.i177.preheader_crit_edge, %vli_mod_sub.exit156.thread
  br label %for.cond.i.i177

for.cond.i.i177:                                  ; preds = %if.else.i.i183.for.cond.i.i177_crit_edge, %for.cond.i.i177.preheader
  %i.0.in.i.i174 = phi i32 [ %i.0.i.i175, %if.else.i.i183.for.cond.i.i177_crit_edge ], [ %conv, %for.cond.i.i177.preheader ]
  %i.0.i.i175 = add nsw i32 %i.0.in.i.i174, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.in.i.i174)
  %cmp.i.i176 = icmp sgt i32 %i.0.in.i.i174, 0
  br i1 %cmp.i.i176, label %for.body.i11.i181, label %for.cond.i.i177.if.then.i184_crit_edge

for.cond.i.i177.if.then.i184_crit_edge:           ; preds = %for.cond.i.i177
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i184

for.body.i11.i181:                                ; preds = %for.cond.i.i177
  %arrayidx.i9.i178 = getelementptr i64, ptr %t6, i32 %i.0.i.i175
  %69 = ptrtoint ptr %arrayidx.i9.i178 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx.i9.i178, align 8
  %arrayidx1.i10.i179 = getelementptr i64, ptr %4, i32 %i.0.i.i175
  %71 = ptrtoint ptr %arrayidx1.i10.i179 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %arrayidx1.i10.i179, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %70, i64 %72)
  %cmp2.i.i180 = icmp ugt i64 %70, %72
  br i1 %cmp2.i.i180, label %for.body.i11.i181.if.then.i184_crit_edge, label %if.else.i.i183

for.body.i11.i181.if.then.i184_crit_edge:         ; preds = %for.body.i11.i181
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i184

if.else.i.i183:                                   ; preds = %for.body.i11.i181
  %cmp5.i.i182 = icmp ult i64 %70, %72
  br i1 %cmp5.i.i182, label %if.else.i.i183.vli_mod_add.exit196_crit_edge, label %if.else.i.i183.for.cond.i.i177_crit_edge

if.else.i.i183.for.cond.i.i177_crit_edge:         ; preds = %if.else.i.i183
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i177

if.else.i.i183.vli_mod_add.exit196_crit_edge:     ; preds = %if.else.i.i183
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_add.exit196

if.then.i184:                                     ; preds = %for.body.i11.i181.if.then.i184_crit_edge, %for.cond.i.i177.if.then.i184_crit_edge, %vli_add.exit.i172.if.then.i184_crit_edge
  br i1 %cmp20.not.i.i, label %vli_mod_add.exit196.thread, label %if.then.i184.for.body.i21.i195_crit_edge

if.then.i184.for.body.i21.i195_crit_edge:         ; preds = %if.then.i184
  br label %for.body.i21.i195

vli_mod_add.exit196.thread:                       ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @vli_mod_square_fast(ptr noundef %x2, ptr noundef %y2, ptr noundef %curve)
  br label %vli_mod_sub.exit336.thread

for.body.i21.i195:                                ; preds = %for.body.i21.i195.for.body.i21.i195_crit_edge, %if.then.i184.for.body.i21.i195_crit_edge
  %i.022.i13.i185 = phi i32 [ %inc.i19.i193, %for.body.i21.i195.for.body.i21.i195_crit_edge ], [ 0, %if.then.i184.for.body.i21.i195_crit_edge ]
  %borrow.021.i.i186 = phi i64 [ %borrow.1.i.i192, %for.body.i21.i195.for.body.i21.i195_crit_edge ], [ 0, %if.then.i184.for.body.i21.i195_crit_edge ]
  %arrayidx.i14.i187 = getelementptr i64, ptr %t6, i32 %i.022.i13.i185
  %73 = ptrtoint ptr %arrayidx.i14.i187 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx.i14.i187, align 8
  %arrayidx1.i15.i188 = getelementptr i64, ptr %4, i32 %i.022.i13.i185
  %75 = ptrtoint ptr %arrayidx1.i15.i188 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %arrayidx1.i15.i188, align 8
  %77 = add i64 %76, %borrow.021.i.i186
  %sub2.i.i189 = sub i64 %74, %77
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %77)
  %cmp4.not.i16.i190 = icmp eq i64 %77, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %74, i64 %77)
  %cmp6.i17.i191 = icmp ult i64 %74, %77
  %78 = zext i1 %cmp6.i17.i191 to i64
  %borrow.1.i.i192 = select i1 %cmp4.not.i16.i190, i64 %borrow.021.i.i186, i64 %78
  %79 = ptrtoint ptr %arrayidx.i14.i187 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %sub2.i.i189, ptr %arrayidx.i14.i187, align 8
  %inc.i19.i193 = add nuw nsw i32 %i.022.i13.i185, 1
  %exitcond.not.i20.i194 = icmp eq i32 %inc.i19.i193, %conv
  br i1 %exitcond.not.i20.i194, label %for.body.i21.i195.vli_mod_add.exit196_crit_edge, label %for.body.i21.i195.for.body.i21.i195_crit_edge

for.body.i21.i195.for.body.i21.i195_crit_edge:    ; preds = %for.body.i21.i195
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i21.i195

for.body.i21.i195.vli_mod_add.exit196_crit_edge:  ; preds = %for.body.i21.i195
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_add.exit196

vli_mod_add.exit196:                              ; preds = %for.body.i21.i195.vli_mod_add.exit196_crit_edge, %if.else.i.i183.vli_mod_add.exit196_crit_edge
  call fastcc void @vli_mod_square_fast(ptr noundef %x2, ptr noundef %y2, ptr noundef %curve)
  br i1 %cmp20.not.i.i, label %vli_mod_add.exit196.vli_mod_sub.exit336.thread_crit_edge, label %vli_mod_add.exit196.for.body.i.i209_crit_edge

vli_mod_add.exit196.for.body.i.i209_crit_edge:    ; preds = %vli_mod_add.exit196
  br label %for.body.i.i209

vli_mod_add.exit196.vli_mod_sub.exit336.thread_crit_edge: ; preds = %vli_mod_add.exit196
  call void @__sanitizer_cov_trace_pc() #18
  br label %vli_mod_sub.exit336.thread

for.body.i.i209:                                  ; preds = %for.body.i.i209.for.body.i.i209_crit_edge, %vli_mod_add.exit196.for.body.i.i209_crit_edge
  %i.022.i.i198 = phi i32 [ %inc.i.i207, %for.body.i.i209.for.body.i.i209_crit_edge ], [ 0, %vli_mod_add.exit196.for.body.i.i209_crit_edge ]
  %borrow.021.i.i199 = phi i64 [ %borrow.1.i.i205, %for.body.i.i209.for.body.i.i209_crit_edge ], [ 0, %vli_mod_add.exit196.for.body.i.i209_crit_edge ]
  %arrayidx.i.i200 = getelementptr i64, ptr %x2, i32 %i.022.i.i198
  %80 = ptrtoint ptr %arrayidx.i.i200 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %arrayidx.i.i200, align 8
  %arrayidx1.i.i201 = getelementptr i64, ptr %t6, i32 %i.022.i.i198
  %82 = ptrtoint ptr %arrayidx1.i.i201 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %arrayidx1.i.i201, align 8
  %84 = add i64 %83, %borrow.021.i.i199
  %sub2.i.i202 = sub i64 %81, %84
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %84)
  %cmp4.not.i.i203 = icmp eq i64 %84, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %81, i64 %84)
  %cmp6.i.i204 = icmp ult i64 %81, %84
  %85 = zext i1 %cmp6.i.i204 to i64
  %borrow.1.i.i205 = select i1 %cmp4.not.i.i203, i64 %borrow.021.i.i199, i64 %85
  %86 = ptrtoint ptr %arrayidx.i.i200 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %sub2.i.i202, ptr %arrayidx.i.i200, align 8
  %inc.i.i207 = add nuw nsw i32 %i.022.i.i198, 1
  %exitcond.not.i.i208 = icmp eq i32 %inc.i.i207, %conv
  br i1 %exitcond.not.i.i208, label %vli_sub.exit.i211, label %for.body.i.i209.for.body.i.i209_crit_edge

for.body.i.i209.for.body.i.i209_crit_edge:        ; preds = %for.body.i.i209
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i209

vli_sub.exit.i211:                                ; preds = %for.body.i.i209
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i205)
  %tobool.not.i210 = icmp eq i64 %borrow.1.i.i205, 0
  br i1 %tobool.not.i210, label %vli_sub.exit.i211.for.body.i.i237.preheader_crit_edge, label %vli_sub.exit.i211.for.body.i14.i223_crit_edge

vli_sub.exit.i211.for.body.i14.i223_crit_edge:    ; preds = %vli_sub.exit.i211
  br label %for.body.i14.i223

vli_sub.exit.i211.for.body.i.i237.preheader_crit_edge: ; preds = %vli_sub.exit.i211
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i237.preheader

for.body.i14.i223:                                ; preds = %for.body.i14.i223.for.body.i14.i223_crit_edge, %vli_sub.exit.i211.for.body.i14.i223_crit_edge
  %i.022.i6.i212 = phi i32 [ %inc.i12.i221, %for.body.i14.i223.for.body.i14.i223_crit_edge ], [ 0, %vli_sub.exit.i211.for.body.i14.i223_crit_edge ]
  %carry.021.i.i213 = phi i64 [ %carry.1.i.i220, %for.body.i14.i223.for.body.i14.i223_crit_edge ], [ 0, %vli_sub.exit.i211.for.body.i14.i223_crit_edge ]
  %arrayidx.i7.i214 = getelementptr i64, ptr %x2, i32 %i.022.i6.i212
  %87 = ptrtoint ptr %arrayidx.i7.i214 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %arrayidx.i7.i214, align 8
  %arrayidx1.i8.i215 = getelementptr i64, ptr %4, i32 %i.022.i6.i212
  %89 = ptrtoint ptr %arrayidx1.i8.i215 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx1.i8.i215, align 8
  %add.i.i216 = add i64 %88, %carry.021.i.i213
  %add2.i.i217 = add i64 %add.i.i216, %90
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i217, i64 %88)
  %cmp4.not.i9.i218 = icmp eq i64 %add2.i.i217, %88
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i217, i64 %88)
  %cmp6.i10.i219 = icmp ult i64 %add2.i.i217, %88
  %91 = zext i1 %cmp6.i10.i219 to i64
  %carry.1.i.i220 = select i1 %cmp4.not.i9.i218, i64 %carry.021.i.i213, i64 %91
  %92 = ptrtoint ptr %arrayidx.i7.i214 to i32
  call void @__asan_store8_noabort(i32 %92)
  store i64 %add2.i.i217, ptr %arrayidx.i7.i214, align 8
  %inc.i12.i221 = add nuw nsw i32 %i.022.i6.i212, 1
  %exitcond.not.i13.i222 = icmp eq i32 %inc.i12.i221, %conv
  br i1 %exitcond.not.i13.i222, label %for.body.i14.i223.for.body.i.i237.preheader_crit_edge, label %for.body.i14.i223.for.body.i14.i223_crit_edge

for.body.i14.i223.for.body.i14.i223_crit_edge:    ; preds = %for.body.i14.i223
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i223

for.body.i14.i223.for.body.i.i237.preheader_crit_edge: ; preds = %for.body.i14.i223
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i237.preheader

for.body.i.i237.preheader:                        ; preds = %for.body.i14.i223.for.body.i.i237.preheader_crit_edge, %vli_sub.exit.i211.for.body.i.i237.preheader_crit_edge
  br label %for.body.i.i237

for.body.i.i237:                                  ; preds = %for.body.i.i237.for.body.i.i237_crit_edge, %for.body.i.i237.preheader
  %i.022.i.i226 = phi i32 [ %inc.i.i235, %for.body.i.i237.for.body.i.i237_crit_edge ], [ 0, %for.body.i.i237.preheader ]
  %borrow.021.i.i227 = phi i64 [ %borrow.1.i.i233, %for.body.i.i237.for.body.i.i237_crit_edge ], [ 0, %for.body.i.i237.preheader ]
  %arrayidx.i.i228 = getelementptr i64, ptr %x1, i32 %i.022.i.i226
  %93 = ptrtoint ptr %arrayidx.i.i228 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %arrayidx.i.i228, align 8
  %arrayidx1.i.i229 = getelementptr i64, ptr %x2, i32 %i.022.i.i226
  %95 = ptrtoint ptr %arrayidx1.i.i229 to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %arrayidx1.i.i229, align 8
  %97 = add i64 %96, %borrow.021.i.i227
  %sub2.i.i230 = sub i64 %94, %97
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %97)
  %cmp4.not.i.i231 = icmp eq i64 %97, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %94, i64 %97)
  %cmp6.i.i232 = icmp ult i64 %94, %97
  %98 = zext i1 %cmp6.i.i232 to i64
  %borrow.1.i.i233 = select i1 %cmp4.not.i.i231, i64 %borrow.021.i.i227, i64 %98
  %arrayidx8.i.i234 = getelementptr i64, ptr %t7, i32 %i.022.i.i226
  %99 = ptrtoint ptr %arrayidx8.i.i234 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %sub2.i.i230, ptr %arrayidx8.i.i234, align 8
  %inc.i.i235 = add nuw nsw i32 %i.022.i.i226, 1
  %exitcond.not.i.i236 = icmp eq i32 %inc.i.i235, %conv
  br i1 %exitcond.not.i.i236, label %vli_sub.exit.i239, label %for.body.i.i237.for.body.i.i237_crit_edge

for.body.i.i237.for.body.i.i237_crit_edge:        ; preds = %for.body.i.i237
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i237

vli_sub.exit.i239:                                ; preds = %for.body.i.i237
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i233)
  %tobool.not.i238 = icmp eq i64 %borrow.1.i.i233, 0
  br i1 %tobool.not.i238, label %vli_sub.exit.i239.for.body.i.i265.preheader_crit_edge, label %vli_sub.exit.i239.for.body.i14.i251_crit_edge

vli_sub.exit.i239.for.body.i14.i251_crit_edge:    ; preds = %vli_sub.exit.i239
  br label %for.body.i14.i251

vli_sub.exit.i239.for.body.i.i265.preheader_crit_edge: ; preds = %vli_sub.exit.i239
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i265.preheader

for.body.i14.i251:                                ; preds = %for.body.i14.i251.for.body.i14.i251_crit_edge, %vli_sub.exit.i239.for.body.i14.i251_crit_edge
  %i.022.i6.i240 = phi i32 [ %inc.i12.i249, %for.body.i14.i251.for.body.i14.i251_crit_edge ], [ 0, %vli_sub.exit.i239.for.body.i14.i251_crit_edge ]
  %carry.021.i.i241 = phi i64 [ %carry.1.i.i248, %for.body.i14.i251.for.body.i14.i251_crit_edge ], [ 0, %vli_sub.exit.i239.for.body.i14.i251_crit_edge ]
  %arrayidx.i7.i242 = getelementptr i64, ptr %t7, i32 %i.022.i6.i240
  %100 = ptrtoint ptr %arrayidx.i7.i242 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %arrayidx.i7.i242, align 8
  %arrayidx1.i8.i243 = getelementptr i64, ptr %4, i32 %i.022.i6.i240
  %102 = ptrtoint ptr %arrayidx1.i8.i243 to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %arrayidx1.i8.i243, align 8
  %add.i.i244 = add i64 %101, %carry.021.i.i241
  %add2.i.i245 = add i64 %add.i.i244, %103
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i245, i64 %101)
  %cmp4.not.i9.i246 = icmp eq i64 %add2.i.i245, %101
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i245, i64 %101)
  %cmp6.i10.i247 = icmp ult i64 %add2.i.i245, %101
  %104 = zext i1 %cmp6.i10.i247 to i64
  %carry.1.i.i248 = select i1 %cmp4.not.i9.i246, i64 %carry.021.i.i241, i64 %104
  %105 = ptrtoint ptr %arrayidx.i7.i242 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %add2.i.i245, ptr %arrayidx.i7.i242, align 8
  %inc.i12.i249 = add nuw nsw i32 %i.022.i6.i240, 1
  %exitcond.not.i13.i250 = icmp eq i32 %inc.i12.i249, %conv
  br i1 %exitcond.not.i13.i250, label %for.body.i14.i251.for.body.i.i265.preheader_crit_edge, label %for.body.i14.i251.for.body.i14.i251_crit_edge

for.body.i14.i251.for.body.i14.i251_crit_edge:    ; preds = %for.body.i14.i251
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i251

for.body.i14.i251.for.body.i.i265.preheader_crit_edge: ; preds = %for.body.i14.i251
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i265.preheader

for.body.i.i265.preheader:                        ; preds = %for.body.i14.i251.for.body.i.i265.preheader_crit_edge, %vli_sub.exit.i239.for.body.i.i265.preheader_crit_edge
  call fastcc void @vli_mod_mult_fast(ptr noundef %y2, ptr noundef %y2, ptr noundef nonnull %t7, ptr noundef %curve)
  br label %for.body.i.i265

for.body.i.i265:                                  ; preds = %for.body.i.i265.for.body.i.i265_crit_edge, %for.body.i.i265.preheader
  %i.022.i.i254 = phi i32 [ %inc.i.i263, %for.body.i.i265.for.body.i.i265_crit_edge ], [ 0, %for.body.i.i265.preheader ]
  %borrow.021.i.i255 = phi i64 [ %borrow.1.i.i261, %for.body.i.i265.for.body.i.i265_crit_edge ], [ 0, %for.body.i.i265.preheader ]
  %arrayidx.i.i256 = getelementptr i64, ptr %y2, i32 %i.022.i.i254
  %106 = ptrtoint ptr %arrayidx.i.i256 to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %arrayidx.i.i256, align 8
  %arrayidx1.i.i257 = getelementptr i64, ptr %y1, i32 %i.022.i.i254
  %108 = ptrtoint ptr %arrayidx1.i.i257 to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %arrayidx1.i.i257, align 8
  %110 = add i64 %109, %borrow.021.i.i255
  %sub2.i.i258 = sub i64 %107, %110
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %110)
  %cmp4.not.i.i259 = icmp eq i64 %110, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %107, i64 %110)
  %cmp6.i.i260 = icmp ult i64 %107, %110
  %111 = zext i1 %cmp6.i.i260 to i64
  %borrow.1.i.i261 = select i1 %cmp4.not.i.i259, i64 %borrow.021.i.i255, i64 %111
  %112 = ptrtoint ptr %arrayidx.i.i256 to i32
  call void @__asan_store8_noabort(i32 %112)
  store i64 %sub2.i.i258, ptr %arrayidx.i.i256, align 8
  %inc.i.i263 = add nuw nsw i32 %i.022.i.i254, 1
  %exitcond.not.i.i264 = icmp eq i32 %inc.i.i263, %conv
  br i1 %exitcond.not.i.i264, label %vli_sub.exit.i267, label %for.body.i.i265.for.body.i.i265_crit_edge

for.body.i.i265.for.body.i.i265_crit_edge:        ; preds = %for.body.i.i265
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i265

vli_sub.exit.i267:                                ; preds = %for.body.i.i265
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i261)
  %tobool.not.i266 = icmp eq i64 %borrow.1.i.i261, 0
  br i1 %tobool.not.i266, label %vli_sub.exit.i267.for.body.i.i293.preheader_crit_edge, label %vli_sub.exit.i267.for.body.i14.i279_crit_edge

vli_sub.exit.i267.for.body.i14.i279_crit_edge:    ; preds = %vli_sub.exit.i267
  br label %for.body.i14.i279

vli_sub.exit.i267.for.body.i.i293.preheader_crit_edge: ; preds = %vli_sub.exit.i267
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i293.preheader

for.body.i14.i279:                                ; preds = %for.body.i14.i279.for.body.i14.i279_crit_edge, %vli_sub.exit.i267.for.body.i14.i279_crit_edge
  %i.022.i6.i268 = phi i32 [ %inc.i12.i277, %for.body.i14.i279.for.body.i14.i279_crit_edge ], [ 0, %vli_sub.exit.i267.for.body.i14.i279_crit_edge ]
  %carry.021.i.i269 = phi i64 [ %carry.1.i.i276, %for.body.i14.i279.for.body.i14.i279_crit_edge ], [ 0, %vli_sub.exit.i267.for.body.i14.i279_crit_edge ]
  %arrayidx.i7.i270 = getelementptr i64, ptr %y2, i32 %i.022.i6.i268
  %113 = ptrtoint ptr %arrayidx.i7.i270 to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %arrayidx.i7.i270, align 8
  %arrayidx1.i8.i271 = getelementptr i64, ptr %4, i32 %i.022.i6.i268
  %115 = ptrtoint ptr %arrayidx1.i8.i271 to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %arrayidx1.i8.i271, align 8
  %add.i.i272 = add i64 %114, %carry.021.i.i269
  %add2.i.i273 = add i64 %add.i.i272, %116
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i273, i64 %114)
  %cmp4.not.i9.i274 = icmp eq i64 %add2.i.i273, %114
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i273, i64 %114)
  %cmp6.i10.i275 = icmp ult i64 %add2.i.i273, %114
  %117 = zext i1 %cmp6.i10.i275 to i64
  %carry.1.i.i276 = select i1 %cmp4.not.i9.i274, i64 %carry.021.i.i269, i64 %117
  %118 = ptrtoint ptr %arrayidx.i7.i270 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %add2.i.i273, ptr %arrayidx.i7.i270, align 8
  %inc.i12.i277 = add nuw nsw i32 %i.022.i6.i268, 1
  %exitcond.not.i13.i278 = icmp eq i32 %inc.i12.i277, %conv
  br i1 %exitcond.not.i13.i278, label %for.body.i14.i279.for.body.i.i293.preheader_crit_edge, label %for.body.i14.i279.for.body.i14.i279_crit_edge

for.body.i14.i279.for.body.i14.i279_crit_edge:    ; preds = %for.body.i14.i279
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i279

for.body.i14.i279.for.body.i.i293.preheader_crit_edge: ; preds = %for.body.i14.i279
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i293.preheader

for.body.i.i293.preheader:                        ; preds = %for.body.i14.i279.for.body.i.i293.preheader_crit_edge, %vli_sub.exit.i267.for.body.i.i293.preheader_crit_edge
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t7, ptr noundef nonnull %t5, ptr noundef %curve)
  br label %for.body.i.i293

for.body.i.i293:                                  ; preds = %for.body.i.i293.for.body.i.i293_crit_edge, %for.body.i.i293.preheader
  %i.022.i.i282 = phi i32 [ %inc.i.i291, %for.body.i.i293.for.body.i.i293_crit_edge ], [ 0, %for.body.i.i293.preheader ]
  %borrow.021.i.i283 = phi i64 [ %borrow.1.i.i289, %for.body.i.i293.for.body.i.i293_crit_edge ], [ 0, %for.body.i.i293.preheader ]
  %arrayidx.i.i284 = getelementptr i64, ptr %t7, i32 %i.022.i.i282
  %119 = ptrtoint ptr %arrayidx.i.i284 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %arrayidx.i.i284, align 8
  %arrayidx1.i.i285 = getelementptr i64, ptr %t6, i32 %i.022.i.i282
  %121 = ptrtoint ptr %arrayidx1.i.i285 to i32
  call void @__asan_load8_noabort(i32 %121)
  %122 = load i64, ptr %arrayidx1.i.i285, align 8
  %123 = add i64 %122, %borrow.021.i.i283
  %sub2.i.i286 = sub i64 %120, %123
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %123)
  %cmp4.not.i.i287 = icmp eq i64 %123, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %120, i64 %123)
  %cmp6.i.i288 = icmp ult i64 %120, %123
  %124 = zext i1 %cmp6.i.i288 to i64
  %borrow.1.i.i289 = select i1 %cmp4.not.i.i287, i64 %borrow.021.i.i283, i64 %124
  %125 = ptrtoint ptr %arrayidx.i.i284 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %sub2.i.i286, ptr %arrayidx.i.i284, align 8
  %inc.i.i291 = add nuw nsw i32 %i.022.i.i282, 1
  %exitcond.not.i.i292 = icmp eq i32 %inc.i.i291, %conv
  br i1 %exitcond.not.i.i292, label %vli_sub.exit.i295, label %for.body.i.i293.for.body.i.i293_crit_edge

for.body.i.i293.for.body.i.i293_crit_edge:        ; preds = %for.body.i.i293
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i293

vli_sub.exit.i295:                                ; preds = %for.body.i.i293
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i289)
  %tobool.not.i294 = icmp eq i64 %borrow.1.i.i289, 0
  br i1 %tobool.not.i294, label %vli_sub.exit.i295.for.body.i.i321.preheader_crit_edge, label %vli_sub.exit.i295.for.body.i14.i307_crit_edge

vli_sub.exit.i295.for.body.i14.i307_crit_edge:    ; preds = %vli_sub.exit.i295
  br label %for.body.i14.i307

vli_sub.exit.i295.for.body.i.i321.preheader_crit_edge: ; preds = %vli_sub.exit.i295
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i321.preheader

for.body.i14.i307:                                ; preds = %for.body.i14.i307.for.body.i14.i307_crit_edge, %vli_sub.exit.i295.for.body.i14.i307_crit_edge
  %i.022.i6.i296 = phi i32 [ %inc.i12.i305, %for.body.i14.i307.for.body.i14.i307_crit_edge ], [ 0, %vli_sub.exit.i295.for.body.i14.i307_crit_edge ]
  %carry.021.i.i297 = phi i64 [ %carry.1.i.i304, %for.body.i14.i307.for.body.i14.i307_crit_edge ], [ 0, %vli_sub.exit.i295.for.body.i14.i307_crit_edge ]
  %arrayidx.i7.i298 = getelementptr i64, ptr %t7, i32 %i.022.i6.i296
  %126 = ptrtoint ptr %arrayidx.i7.i298 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %arrayidx.i7.i298, align 8
  %arrayidx1.i8.i299 = getelementptr i64, ptr %4, i32 %i.022.i6.i296
  %128 = ptrtoint ptr %arrayidx1.i8.i299 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx1.i8.i299, align 8
  %add.i.i300 = add i64 %127, %carry.021.i.i297
  %add2.i.i301 = add i64 %add.i.i300, %129
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i301, i64 %127)
  %cmp4.not.i9.i302 = icmp eq i64 %add2.i.i301, %127
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i301, i64 %127)
  %cmp6.i10.i303 = icmp ult i64 %add2.i.i301, %127
  %130 = zext i1 %cmp6.i10.i303 to i64
  %carry.1.i.i304 = select i1 %cmp4.not.i9.i302, i64 %carry.021.i.i297, i64 %130
  %131 = ptrtoint ptr %arrayidx.i7.i298 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %add2.i.i301, ptr %arrayidx.i7.i298, align 8
  %inc.i12.i305 = add nuw nsw i32 %i.022.i6.i296, 1
  %exitcond.not.i13.i306 = icmp eq i32 %inc.i12.i305, %conv
  br i1 %exitcond.not.i13.i306, label %for.body.i14.i307.for.body.i.i321.preheader_crit_edge, label %for.body.i14.i307.for.body.i14.i307_crit_edge

for.body.i14.i307.for.body.i14.i307_crit_edge:    ; preds = %for.body.i14.i307
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i307

for.body.i14.i307.for.body.i.i321.preheader_crit_edge: ; preds = %for.body.i14.i307
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i321.preheader

for.body.i.i321.preheader:                        ; preds = %for.body.i14.i307.for.body.i.i321.preheader_crit_edge, %vli_sub.exit.i295.for.body.i.i321.preheader_crit_edge
  br label %for.body.i.i321

for.body.i.i321:                                  ; preds = %for.body.i.i321.for.body.i.i321_crit_edge, %for.body.i.i321.preheader
  %i.022.i.i310 = phi i32 [ %inc.i.i319, %for.body.i.i321.for.body.i.i321_crit_edge ], [ 0, %for.body.i.i321.preheader ]
  %borrow.021.i.i311 = phi i64 [ %borrow.1.i.i317, %for.body.i.i321.for.body.i.i321_crit_edge ], [ 0, %for.body.i.i321.preheader ]
  %arrayidx.i.i312 = getelementptr i64, ptr %t7, i32 %i.022.i.i310
  %132 = ptrtoint ptr %arrayidx.i.i312 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %arrayidx.i.i312, align 8
  %arrayidx1.i.i313 = getelementptr i64, ptr %x1, i32 %i.022.i.i310
  %134 = ptrtoint ptr %arrayidx1.i.i313 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %arrayidx1.i.i313, align 8
  %136 = add i64 %135, %borrow.021.i.i311
  %sub2.i.i314 = sub i64 %133, %136
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %136)
  %cmp4.not.i.i315 = icmp eq i64 %136, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %133, i64 %136)
  %cmp6.i.i316 = icmp ult i64 %133, %136
  %137 = zext i1 %cmp6.i.i316 to i64
  %borrow.1.i.i317 = select i1 %cmp4.not.i.i315, i64 %borrow.021.i.i311, i64 %137
  %arrayidx8.i.i318 = getelementptr i64, ptr %t6, i32 %i.022.i.i310
  %138 = ptrtoint ptr %arrayidx8.i.i318 to i32
  call void @__asan_store8_noabort(i32 %138)
  store i64 %sub2.i.i314, ptr %arrayidx8.i.i318, align 8
  %inc.i.i319 = add nuw nsw i32 %i.022.i.i310, 1
  %exitcond.not.i.i320 = icmp eq i32 %inc.i.i319, %conv
  br i1 %exitcond.not.i.i320, label %vli_sub.exit.i323, label %for.body.i.i321.for.body.i.i321_crit_edge

for.body.i.i321.for.body.i.i321_crit_edge:        ; preds = %for.body.i.i321
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i321

vli_sub.exit.i323:                                ; preds = %for.body.i.i321
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i317)
  %tobool.not.i322 = icmp eq i64 %borrow.1.i.i317, 0
  br i1 %tobool.not.i322, label %vli_sub.exit.i323.for.body.i.i349.preheader_crit_edge, label %vli_sub.exit.i323.for.body.i14.i335_crit_edge

vli_sub.exit.i323.for.body.i14.i335_crit_edge:    ; preds = %vli_sub.exit.i323
  br label %for.body.i14.i335

vli_sub.exit.i323.for.body.i.i349.preheader_crit_edge: ; preds = %vli_sub.exit.i323
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i349.preheader

for.body.i14.i335:                                ; preds = %for.body.i14.i335.for.body.i14.i335_crit_edge, %vli_sub.exit.i323.for.body.i14.i335_crit_edge
  %i.022.i6.i324 = phi i32 [ %inc.i12.i333, %for.body.i14.i335.for.body.i14.i335_crit_edge ], [ 0, %vli_sub.exit.i323.for.body.i14.i335_crit_edge ]
  %carry.021.i.i325 = phi i64 [ %carry.1.i.i332, %for.body.i14.i335.for.body.i14.i335_crit_edge ], [ 0, %vli_sub.exit.i323.for.body.i14.i335_crit_edge ]
  %arrayidx.i7.i326 = getelementptr i64, ptr %t6, i32 %i.022.i6.i324
  %139 = ptrtoint ptr %arrayidx.i7.i326 to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %arrayidx.i7.i326, align 8
  %arrayidx1.i8.i327 = getelementptr i64, ptr %4, i32 %i.022.i6.i324
  %141 = ptrtoint ptr %arrayidx1.i8.i327 to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %arrayidx1.i8.i327, align 8
  %add.i.i328 = add i64 %140, %carry.021.i.i325
  %add2.i.i329 = add i64 %add.i.i328, %142
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i329, i64 %140)
  %cmp4.not.i9.i330 = icmp eq i64 %add2.i.i329, %140
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i329, i64 %140)
  %cmp6.i10.i331 = icmp ult i64 %add2.i.i329, %140
  %143 = zext i1 %cmp6.i10.i331 to i64
  %carry.1.i.i332 = select i1 %cmp4.not.i9.i330, i64 %carry.021.i.i325, i64 %143
  %144 = ptrtoint ptr %arrayidx.i7.i326 to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %add2.i.i329, ptr %arrayidx.i7.i326, align 8
  %inc.i12.i333 = add nuw nsw i32 %i.022.i6.i324, 1
  %exitcond.not.i13.i334 = icmp eq i32 %inc.i12.i333, %conv
  br i1 %exitcond.not.i13.i334, label %for.body.i14.i335.for.body.i.i349.preheader_crit_edge, label %for.body.i14.i335.for.body.i14.i335_crit_edge

for.body.i14.i335.for.body.i14.i335_crit_edge:    ; preds = %for.body.i14.i335
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i335

for.body.i14.i335.for.body.i.i349.preheader_crit_edge: ; preds = %for.body.i14.i335
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i349.preheader

vli_mod_sub.exit336.thread:                       ; preds = %vli_mod_add.exit196.vli_mod_sub.exit336.thread_crit_edge, %vli_mod_add.exit196.thread
  call fastcc void @vli_mod_mult_fast(ptr noundef %y2, ptr noundef %y2, ptr noundef nonnull %t7, ptr noundef %curve)
  call fastcc void @vli_mod_square_fast(ptr noundef nonnull %t7, ptr noundef nonnull %t5, ptr noundef %curve)
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %t6, ptr noundef nonnull %t6, ptr noundef nonnull %t5, ptr noundef %curve)
  br label %vli_set.exit

for.body.i.i349.preheader:                        ; preds = %for.body.i14.i335.for.body.i.i349.preheader_crit_edge, %vli_sub.exit.i323.for.body.i.i349.preheader_crit_edge
  call fastcc void @vli_mod_mult_fast(ptr noundef nonnull %t6, ptr noundef nonnull %t6, ptr noundef nonnull %t5, ptr noundef %curve)
  br label %for.body.i.i349

for.body.i.i349:                                  ; preds = %for.body.i.i349.for.body.i.i349_crit_edge, %for.body.i.i349.preheader
  %i.022.i.i338 = phi i32 [ %inc.i.i347, %for.body.i.i349.for.body.i.i349_crit_edge ], [ 0, %for.body.i.i349.preheader ]
  %borrow.021.i.i339 = phi i64 [ %borrow.1.i.i345, %for.body.i.i349.for.body.i.i349_crit_edge ], [ 0, %for.body.i.i349.preheader ]
  %arrayidx.i.i340 = getelementptr i64, ptr %t6, i32 %i.022.i.i338
  %145 = ptrtoint ptr %arrayidx.i.i340 to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %arrayidx.i.i340, align 8
  %arrayidx1.i.i341 = getelementptr i64, ptr %y1, i32 %i.022.i.i338
  %147 = ptrtoint ptr %arrayidx1.i.i341 to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %arrayidx1.i.i341, align 8
  %149 = add i64 %148, %borrow.021.i.i339
  %sub2.i.i342 = sub i64 %146, %149
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %149)
  %cmp4.not.i.i343 = icmp eq i64 %149, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %146, i64 %149)
  %cmp6.i.i344 = icmp ult i64 %146, %149
  %150 = zext i1 %cmp6.i.i344 to i64
  %borrow.1.i.i345 = select i1 %cmp4.not.i.i343, i64 %borrow.021.i.i339, i64 %150
  %151 = ptrtoint ptr %arrayidx1.i.i341 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %sub2.i.i342, ptr %arrayidx1.i.i341, align 8
  %inc.i.i347 = add nuw nsw i32 %i.022.i.i338, 1
  %exitcond.not.i.i348 = icmp eq i32 %inc.i.i347, %conv
  br i1 %exitcond.not.i.i348, label %vli_sub.exit.i351, label %for.body.i.i349.for.body.i.i349_crit_edge

for.body.i.i349.for.body.i.i349_crit_edge:        ; preds = %for.body.i.i349
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i349

vli_sub.exit.i351:                                ; preds = %for.body.i.i349
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %borrow.1.i.i345)
  %tobool.not.i350 = icmp eq i64 %borrow.1.i.i345, 0
  br i1 %tobool.not.i350, label %vli_sub.exit.i351.for.body.i.preheader_crit_edge, label %vli_sub.exit.i351.for.body.i14.i363_crit_edge

vli_sub.exit.i351.for.body.i14.i363_crit_edge:    ; preds = %vli_sub.exit.i351
  br label %for.body.i14.i363

vli_sub.exit.i351.for.body.i.preheader_crit_edge: ; preds = %vli_sub.exit.i351
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.preheader

for.body.i14.i363:                                ; preds = %for.body.i14.i363.for.body.i14.i363_crit_edge, %vli_sub.exit.i351.for.body.i14.i363_crit_edge
  %i.022.i6.i352 = phi i32 [ %inc.i12.i361, %for.body.i14.i363.for.body.i14.i363_crit_edge ], [ 0, %vli_sub.exit.i351.for.body.i14.i363_crit_edge ]
  %carry.021.i.i353 = phi i64 [ %carry.1.i.i360, %for.body.i14.i363.for.body.i14.i363_crit_edge ], [ 0, %vli_sub.exit.i351.for.body.i14.i363_crit_edge ]
  %arrayidx.i7.i354 = getelementptr i64, ptr %y1, i32 %i.022.i6.i352
  %152 = ptrtoint ptr %arrayidx.i7.i354 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx.i7.i354, align 8
  %arrayidx1.i8.i355 = getelementptr i64, ptr %4, i32 %i.022.i6.i352
  %154 = ptrtoint ptr %arrayidx1.i8.i355 to i32
  call void @__asan_load8_noabort(i32 %154)
  %155 = load i64, ptr %arrayidx1.i8.i355, align 8
  %add.i.i356 = add i64 %153, %carry.021.i.i353
  %add2.i.i357 = add i64 %add.i.i356, %155
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i357, i64 %153)
  %cmp4.not.i9.i358 = icmp eq i64 %add2.i.i357, %153
  call void @__sanitizer_cov_trace_cmp8(i64 %add2.i.i357, i64 %153)
  %cmp6.i10.i359 = icmp ult i64 %add2.i.i357, %153
  %156 = zext i1 %cmp6.i10.i359 to i64
  %carry.1.i.i360 = select i1 %cmp4.not.i9.i358, i64 %carry.021.i.i353, i64 %156
  %157 = ptrtoint ptr %arrayidx.i7.i354 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %add2.i.i357, ptr %arrayidx.i7.i354, align 8
  %inc.i12.i361 = add nuw nsw i32 %i.022.i6.i352, 1
  %exitcond.not.i13.i362 = icmp eq i32 %inc.i12.i361, %conv
  br i1 %exitcond.not.i13.i362, label %for.body.i14.i363.for.body.i.preheader_crit_edge, label %for.body.i14.i363.for.body.i14.i363_crit_edge

for.body.i14.i363.for.body.i14.i363_crit_edge:    ; preds = %for.body.i14.i363
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i14.i363

for.body.i14.i363.for.body.i.preheader_crit_edge: ; preds = %for.body.i14.i363
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body.i14.i363.for.body.i.preheader_crit_edge, %vli_sub.exit.i351.for.body.i.preheader_crit_edge
  %158 = shl nuw nsw i32 %conv, 3
  %159 = call ptr @memcpy(ptr %x1, ptr %t7, i32 %158)
  br label %vli_set.exit

vli_set.exit:                                     ; preds = %for.body.i.preheader, %vli_mod_sub.exit336.thread
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %t7) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %t6) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %t5) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !108, !109, !110, !111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__ksymtab_ecc_get_curve25519, !1, !"__ksymtab_ecc_get_curve25519", i1 false, i1 false}
!1 = !{!"../crypto/ecc.c", i32 51, i32 1}
!2 = !{ptr @__ksymtab_ecc_get_curve, !3, !"__ksymtab_ecc_get_curve", i1 false, i1 false}
!3 = !{!"../crypto/ecc.c", i32 67, i32 1}
!4 = !{ptr @__ksymtab_ecc_alloc_point, !5, !"__ksymtab_ecc_alloc_point", i1 false, i1 false}
!5 = !{!"../crypto/ecc.c", i32 109, i32 1}
!6 = !{ptr @__ksymtab_ecc_free_point, !7, !"__ksymtab_ecc_free_point", i1 false, i1 false}
!7 = !{!"../crypto/ecc.c", i32 120, i32 1}
!8 = !{ptr @__ksymtab_vli_is_zero, !9, !"__ksymtab_vli_is_zero", i1 false, i1 false}
!9 = !{!"../crypto/ecc.c", i32 142, i32 1}
!10 = !{ptr @__ksymtab_vli_num_bits, !11, !"__ksymtab_vli_num_bits", i1 false, i1 false}
!11 = !{!"../crypto/ecc.c", i32 185, i32 1}
!12 = !{ptr @__ksymtab_vli_from_be64, !13, !"__ksymtab_vli_from_be64", i1 false, i1 false}
!13 = !{!"../crypto/ecc.c", i32 196, i32 1}
!14 = !{ptr @__ksymtab_vli_from_le64, !15, !"__ksymtab_vli_from_le64", i1 false, i1 false}
!15 = !{!"../crypto/ecc.c", i32 206, i32 1}
!16 = !{ptr @__ksymtab_vli_cmp, !17, !"__ksymtab_vli_cmp", i1 false, i1 false}
!17 = !{!"../crypto/ecc.c", i32 231, i32 1}
!18 = !{ptr @__ksymtab_vli_sub, !19, !"__ksymtab_vli_sub", i1 false, i1 false}
!19 = !{!"../crypto/ecc.c", i32 328, i32 1}
!20 = !{ptr @__ksymtab_vli_mod_mult_slow, !21, !"__ksymtab_vli_mod_mult_slow", i1 false, i1 false}
!21 = !{!"../crypto/ecc.c", i32 963, i32 1}
!22 = !{ptr @__ksymtab_vli_mod_inv, !23, !"__ksymtab_vli_mod_inv", i1 false, i1 false}
!23 = !{!"../crypto/ecc.c", i32 1063, i32 1}
!24 = !{ptr @__ksymtab_ecc_point_is_zero, !25, !"__ksymtab_ecc_point_is_zero", i1 false, i1 false}
!25 = !{!"../crypto/ecc.c", i32 1073, i32 1}
!26 = !{ptr @__ksymtab_ecc_point_mult_shamir, !27, !"__ksymtab_ecc_point_mult_shamir", i1 false, i1 false}
!27 = !{!"../crypto/ecc.c", i32 1415, i32 1}
!28 = !{ptr @__ksymtab_ecc_is_key_valid, !29, !"__ksymtab_ecc_is_key_valid", i1 false, i1 false}
!29 = !{!"../crypto/ecc.c", i32 1453, i32 1}
!30 = !{ptr @__ksymtab_ecc_gen_privkey, !31, !"__ksymtab_ecc_gen_privkey", i1 false, i1 false}
!31 = !{!"../crypto/ecc.c", i32 1506, i32 1}
!32 = !{ptr @__ksymtab_ecc_make_pub_key, !33, !"__ksymtab_ecc_make_pub_key", i1 false, i1 false}
!33 = !{!"../crypto/ecc.c", i32 1545, i32 1}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../crypto/ecc.c", i32 1553, i32 6}
!36 = !{ptr @__ksymtab_ecc_is_pubkey_valid_partial, !37, !"__ksymtab_ecc_is_pubkey_valid_partial", i1 false, i1 false}
!37 = !{!"../crypto/ecc.c", i32 1578, i32 1}
!38 = !{ptr @__ksymtab_ecc_is_pubkey_valid_full, !39, !"__ksymtab_ecc_is_pubkey_valid_full", i1 false, i1 false}
!39 = !{!"../crypto/ecc.c", i32 1605, i32 1}
!40 = !{ptr @__ksymtab_crypto_ecdh_shared_secret, !41, !"__ksymtab_crypto_ecdh_shared_secret", i1 false, i1 false}
!41 = !{!"../crypto/ecc.c", i32 1666, i32 1}
!42 = !{ptr @__UNIQUE_ID_file175, !43, !"__UNIQUE_ID_file175", i1 false, i1 false}
!43 = !{!"../crypto/ecc.c", i32 1668, i32 1}
!44 = !{ptr @__UNIQUE_ID_license176, !43, !"__UNIQUE_ID_license176", i1 false, i1 false}
!45 = !{ptr @.str.1, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../crypto/ecc_curve_defs.h", i32 97, i32 10}
!47 = !{ptr @ecc_25519, !48, !"ecc_25519", i1 false, i1 false}
!48 = !{!"../crypto/ecc_curve_defs.h", i32 96, i32 31}
!49 = !{ptr @curve25519_g_x, !50, !"curve25519_g_x", i1 false, i1 false}
!50 = !{!"../crypto/ecc_curve_defs.h", i32 90, i32 12}
!51 = !{ptr @curve25519_p, !52, !"curve25519_p", i1 false, i1 false}
!52 = !{!"../crypto/ecc_curve_defs.h", i32 92, i32 12}
!53 = !{ptr @curve25519_a, !54, !"curve25519_a", i1 false, i1 false}
!54 = !{!"../crypto/ecc_curve_defs.h", i32 94, i32 12}
!55 = !{ptr @.str.2, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../crypto/ecc_curve_defs.h", i32 19, i32 10}
!57 = !{ptr @nist_p192, !58, !"nist_p192", i1 false, i1 false}
!58 = !{!"../crypto/ecc_curve_defs.h", i32 18, i32 25}
!59 = !{ptr @nist_p192_g_x, !60, !"nist_p192_g_x", i1 false, i1 false}
!60 = !{!"../crypto/ecc_curve_defs.h", i32 6, i32 12}
!61 = !{ptr @nist_p192_g_y, !62, !"nist_p192_g_y", i1 false, i1 false}
!62 = !{!"../crypto/ecc_curve_defs.h", i32 8, i32 12}
!63 = !{ptr @nist_p192_p, !64, !"nist_p192_p", i1 false, i1 false}
!64 = !{!"../crypto/ecc_curve_defs.h", i32 10, i32 12}
!65 = !{ptr @nist_p192_n, !66, !"nist_p192_n", i1 false, i1 false}
!66 = !{!"../crypto/ecc_curve_defs.h", i32 12, i32 12}
!67 = !{ptr @nist_p192_a, !68, !"nist_p192_a", i1 false, i1 false}
!68 = !{!"../crypto/ecc_curve_defs.h", i32 14, i32 12}
!69 = !{ptr @nist_p192_b, !70, !"nist_p192_b", i1 false, i1 false}
!70 = !{!"../crypto/ecc_curve_defs.h", i32 16, i32 12}
!71 = !{ptr @.str.3, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../crypto/ecc_curve_defs.h", i32 45, i32 10}
!73 = !{ptr @nist_p256, !74, !"nist_p256", i1 false, i1 false}
!74 = !{!"../crypto/ecc_curve_defs.h", i32 44, i32 25}
!75 = !{ptr @nist_p256_g_x, !76, !"nist_p256_g_x", i1 false, i1 false}
!76 = !{!"../crypto/ecc_curve_defs.h", i32 32, i32 12}
!77 = !{ptr @nist_p256_g_y, !78, !"nist_p256_g_y", i1 false, i1 false}
!78 = !{!"../crypto/ecc_curve_defs.h", i32 34, i32 12}
!79 = !{ptr @nist_p256_p, !80, !"nist_p256_p", i1 false, i1 false}
!80 = !{!"../crypto/ecc_curve_defs.h", i32 36, i32 12}
!81 = !{ptr @nist_p256_n, !82, !"nist_p256_n", i1 false, i1 false}
!82 = !{!"../crypto/ecc_curve_defs.h", i32 38, i32 12}
!83 = !{ptr @nist_p256_a, !84, !"nist_p256_a", i1 false, i1 false}
!84 = !{!"../crypto/ecc_curve_defs.h", i32 40, i32 12}
!85 = !{ptr @nist_p256_b, !86, !"nist_p256_b", i1 false, i1 false}
!86 = !{!"../crypto/ecc_curve_defs.h", i32 42, i32 12}
!87 = !{ptr @.str.4, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../crypto/ecc_curve_defs.h", i32 77, i32 10}
!89 = !{ptr @nist_p384, !90, !"nist_p384", i1 false, i1 false}
!90 = !{!"../crypto/ecc_curve_defs.h", i32 76, i32 25}
!91 = !{ptr @nist_p384_g_x, !92, !"nist_p384_g_x", i1 false, i1 false}
!92 = !{!"../crypto/ecc_curve_defs.h", i32 58, i32 12}
!93 = !{ptr @nist_p384_g_y, !94, !"nist_p384_g_y", i1 false, i1 false}
!94 = !{!"../crypto/ecc_curve_defs.h", i32 61, i32 12}
!95 = !{ptr @nist_p384_p, !96, !"nist_p384_p", i1 false, i1 false}
!96 = !{!"../crypto/ecc_curve_defs.h", i32 64, i32 12}
!97 = !{ptr @nist_p384_n, !98, !"nist_p384_n", i1 false, i1 false}
!98 = !{!"../crypto/ecc_curve_defs.h", i32 67, i32 12}
!99 = !{ptr @nist_p384_a, !100, !"nist_p384_a", i1 false, i1 false}
!100 = !{!"../crypto/ecc_curve_defs.h", i32 70, i32 12}
!101 = !{ptr @nist_p384_b, !102, !"nist_p384_b", i1 false, i1 false}
!102 = !{!"../crypto/ecc_curve_defs.h", i32 73, i32 12}
!103 = !{ptr @.str.5, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../crypto/ecc.c", i32 918, i32 27}
!105 = !{ptr @.str.6, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../crypto/ecc.c", i32 945, i32 3}
!107 = !{ptr @vli_mmod_fast._rs, !106, !"_rs", i1 false, i1 false}
!108 = !{ptr @__func__.vli_mmod_fast, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.7, !106, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @vli_mmod_fast._entry, !106, !"_entry", i1 false, i1 false}
!111 = !{ptr @vli_mmod_fast._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2149052999}
