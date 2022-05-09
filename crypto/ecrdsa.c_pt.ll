; ModuleID = '/llk/IR_all_yes/crypto/ecrdsa.c_pt.bc'
source_filename = "../crypto/ecrdsa.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.akcipher_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ecc_curve = type { ptr, %struct.ecc_point, ptr, ptr, ptr, ptr }
%struct.ecc_point = type { ptr, ptr, i8 }
%struct.asn1_decoder = type opaque
%struct.ecrdsa_ctx = type { i32, i32, i32, ptr, i32, ptr, i32, ptr, %struct.ecc_point, [2 x [8 x i64]] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.akcipher_request = type { %struct.crypto_async_request, ptr, ptr, i32, i32, [88 x i8], [0 x ptr] }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@ecrdsa_alg = internal global %struct.akcipher_alg { ptr null, ptr @ecrdsa_verify, ptr null, ptr null, ptr @ecrdsa_set_pub_key, ptr null, ptr @ecrdsa_max_size, ptr null, ptr @ecrdsa_exit_tfm, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 0, i32 176, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecrdsa\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecrdsa-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, align 128
@__initcall__kmod_ecrdsa_generic__226_291_ecrdsa_mod_init6 = internal global ptr @ecrdsa_mod_init, section ".initcall6.init", align 4
@__exitcall_ecrdsa_mod_fini = internal global ptr @ecrdsa_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file227 = internal constant [42 x i8] c"ecrdsa_generic.file=crypto/ecrdsa_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [27 x i8] c"ecrdsa_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [56 x i8] c"ecrdsa_generic.author=Vitaly Chikunov <vt@altlinux.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [53 x i8] c"ecrdsa_generic.description=EC-RDSA generic algorithm\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace231 = internal constant [36 x i8] c"ecrdsa_generic.alias=ecrdsa-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto232 = internal constant [43 x i8] c"ecrdsa_generic.alias=crypto-ecrdsa-generic\00", section ".modinfo", align 1
@gost_cp256a = internal global { %struct.ecc_curve, [32 x i8] } { %struct.ecc_curve { ptr @.str, %struct.ecc_point { ptr @cp256a_g_x, ptr @cp256a_g_y, i8 4 }, ptr @cp256a_p, ptr @cp256a_n, ptr @cp256a_a, ptr @cp256a_b }, [32 x i8] zeroinitializer }, align 32
@gost_cp256b = internal global { %struct.ecc_curve, [32 x i8] } { %struct.ecc_curve { ptr @.str.1, %struct.ecc_point { ptr @cp256b_g_x, ptr @cp256b_g_y, i8 4 }, ptr @cp256b_p, ptr @cp256b_n, ptr @cp256b_a, ptr @cp256b_b }, [32 x i8] zeroinitializer }, align 32
@gost_cp256c = internal global { %struct.ecc_curve, [32 x i8] } { %struct.ecc_curve { ptr @.str.2, %struct.ecc_point { ptr @cp256c_g_x, ptr @cp256c_g_y, i8 4 }, ptr @cp256c_p, ptr @cp256c_n, ptr @cp256c_a, ptr @cp256c_b }, [32 x i8] zeroinitializer }, align 32
@gost_tc512a = internal global { %struct.ecc_curve, [32 x i8] } { %struct.ecc_curve { ptr @.str.3, %struct.ecc_point { ptr @tc512a_g_x, ptr @tc512a_g_y, i8 8 }, ptr @tc512a_p, ptr @tc512a_n, ptr @tc512a_a, ptr @tc512a_b }, [32 x i8] zeroinitializer }, align 32
@gost_tc512b = internal global { %struct.ecc_curve, [32 x i8] } { %struct.ecc_curve { ptr @.str.4, %struct.ecc_point { ptr @tc512b_g_x, ptr @tc512b_g_y, i8 8 }, ptr @tc512b_p, ptr @tc512b_n, ptr @tc512b_a, ptr @tc512b_b }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cp256a\00", [25 x i8] zeroinitializer }, align 32
@cp256a_g_x = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 1, i64 0, i64 0, i64 0], [32 x i8] zeroinitializer }, align 32
@cp256a_g_y = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 2498593567797091860, i64 3830680016491111345, i64 2873103435924712310, i64 -8245558264988132134], [32 x i8] zeroinitializer }, align 32
@cp256a_p = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 -617, i64 -1, i64 -1, i64 -1], [32 x i8] zeroinitializer }, align 32
@cp256a_n = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 5009158414088124563, i64 7809541304632398080, i64 -1, i64 -1], [32 x i8] zeroinitializer }, align 32
@cp256a_a = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 -620, i64 -1, i64 -1, i64 -1], [32 x i8] zeroinitializer }, align 32
@cp256a_b = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 166, i64 0, i64 0, i64 0], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cp256b\00", [25 x i8] zeroinitializer }, align 32
@cp256b_g_x = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 1, i64 0, i64 0, i64 0], [32 x i8] zeroinitializer }, align 32
@cp256b_g_y = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 8380065134347910908, i64 -4231754699411034885, i64 -5170945741538955035, i64 4586936300958475904], [32 x i8] zeroinitializer }, align 32
@cp256b_p = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 3225, i64 0, i64 0, i64 -9223372036854775808], [32 x i8] zeroinitializer }, align 32
@cp256b_n = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 -1975085602927142513, i64 6877010924405138661, i64 1, i64 -9223372036854775808], [32 x i8] zeroinitializer }, align 32
@cp256b_a = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 3222, i64 0, i64 0, i64 -9223372036854775808], [32 x i8] zeroinitializer }, align 32
@cp256b_b = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 3407488576426589323, i64 -1623224875453830376, i64 7397113744704010250, i64 4475157570682201592], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cp256c\00", [25 x i8] zeroinitializer }, align 32
@cp256c_g_x = internal global { [4 x i64], [32 x i8] } zeroinitializer, align 32
@cp256c_g_y = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 3922165844065631079, i64 5570324096847452815, i64 4377278402047557870, i64 4750423869925431948], [32 x i8] zeroinitializer }, align 32
@cp256c_p = internal global { [9 x i64], [56 x i8] } { [9 x i64] [i64 8762025449026844059, i64 -3493545887105265197, i64 -6116230936070600534, i64 -7232956513876868857, i64 -1314343221222459998, i64 -4988704430752223655, i64 4635194493461543795, i64 -6548489626150906060, i64 1], [56 x i8] zeroinitializer }, align 32
@cp256c_n = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 -1139627972675236935, i64 6353632743118470004, i64 -6116230936070600534, i64 -7232956513876868857], [32 x i8] zeroinitializer }, align 32
@cp256c_a = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 8762025449026844056, i64 -3493545887105265197, i64 -6116230936070600534, i64 -7232956513876868857], [32 x i8] zeroinitializer }, align 32
@cp256c_b = internal global { [4 x i64], [32 x i8] } { [4 x i64] [i64 32858, i64 0, i64 0, i64 0], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tc512a\00", [25 x i8] zeroinitializer }, align 32
@tc512a_g_x = internal global { [8 x i64], [32 x i8] } { [8 x i64] [i64 3, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [32 x i8] zeroinitializer }, align 32
@tc512a_g_y = internal global { [8 x i64], [32 x i8] } { [8 x i64] [i64 -8528258813007629660, i64 -9211833350552685128, i64 4428699405171442153, i64 -2371665554939300119, i64 8610993528743373089, i64 -3576389633498305599, i64 -6477434007174491930, i64 8431811524762495715], [32 x i8] zeroinitializer }, align 32
@tc512a_p = internal global { [8 x i64], [32 x i8] } { [8 x i64] [i64 -569, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], [32 x i8] zeroinitializer }, align 32
@tc512a_n = internal global { [8 x i64], [32 x i8] } { [8 x i64] [i64 -3833212814570245515, i64 -7256644063278745507, i64 8066557768473337952, i64 2875149458206460177, i64 -1, i64 -1, i64 -1, i64 -1], [32 x i8] zeroinitializer }, align 32
@tc512a_a = internal global { [8 x i64], [32 x i8] } { [8 x i64] [i64 -572, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1], [32 x i8] zeroinitializer }, align 32
@tc512a_b = internal global { [8 x i64], [32 x i8] } { [8 x i64] [i64 5778558643480938336, i64 -8777803930811873439, i64 5527138575362724061, i64 -1279954057480558751, i64 8772176569785082469, i64 3798827467815039208, i64 -4486417372761558566, i64 -1674687747073472803], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tc512b\00", [25 x i8] zeroinitializer }, align 32
@tc512b_g_x = internal global { [8 x i64], [32 x i8] } { [8 x i64] [i64 2, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0], [32 x i8] zeroinitializer }, align 32
@tc512b_g_y = internal global { [8 x i64], [32 x i8] } { [8 x i64] [i64 9088602729843933629, i64 2883447622864793324, i64 1525801816275564936, i64 -2543925771901121991, i64 -4724880848805137611, i64 4328587515984921107, i64 3172537680985101327, i64 1913887842373405004], [32 x i8] zeroinitializer }, align 32
@tc512b_p = internal global { [8 x i64], [32 x i8] } { [8 x i64] [i64 111, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 -9223372036854775808], [32 x i8] zeroinitializer }, align 32
@tc512b_n = internal global { [8 x i64], [32 x i8] } { [8 x i64] [i64 -4164584646449879619, i64 -8387559503723501042, i64 -5981422987514737414, i64 5305781407290074437, i64 1, i64 0, i64 0, i64 -9223372036854775808], [32 x i8] zeroinitializer }, align 32
@tc512b_a = internal global { [8 x i64], [32 x i8] } { [8 x i64] [i64 108, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 -9223372036854775808], [32 x i8] zeroinitializer }, align 32
@tc512b_b = internal global { [8 x i64], [32 x i8] } { [8 x i64] [i64 -320657414584794858, i64 5834285697131024494, i64 9190482825178691228, i64 4509894527686896929, i64 -4646064996432009057, i64 -5081048422758139716, i64 9096715785331418391, i64 7529204137847177541], [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"crypto/ecrdsa.c\00", [16 x i8] zeroinitializer }, align 32
@ecrdsa_pub_key_decoder = external dso_local constant %struct.asn1_decoder, align 1
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"streebog256\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"streebog512\00", [20 x i8] zeroinitializer }, align 32
@ecrdsa_params_decoder = external dso_local constant %struct.asn1_decoder, align 1
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 75, i64 76, i64 77, i64 85, i64 86, i64 87, i64 88, i64 89]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 78, i64 79]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 64, i64 128]
@___asan_gen_.10 = private unnamed_addr constant [12 x i8] c"gost_cp256a\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 48, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant [12 x i8] c"gost_cp256b\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 81, i32 25 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"gost_cp256c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 118, i32 25 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"gost_tc512a\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 167, i32 25 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"gost_tc512b\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 212, i32 25 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 49, i32 10 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"cp256a_g_x\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 29, i32 12 }
@___asan_gen_.31 = private unnamed_addr constant [11 x i8] c"cp256a_g_y\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 32, i32 12 }
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"cp256a_p\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 35, i32 12 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"cp256a_n\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 38, i32 12 }
@___asan_gen_.40 = private unnamed_addr constant [9 x i8] c"cp256a_a\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 41, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [9 x i8] c"cp256a_b\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 44, i32 12 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 82, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant [11 x i8] c"cp256b_g_x\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 62, i32 12 }
@___asan_gen_.52 = private unnamed_addr constant [11 x i8] c"cp256b_g_y\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 65, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant [9 x i8] c"cp256b_p\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 68, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant [9 x i8] c"cp256b_n\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 71, i32 12 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"cp256b_a\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 74, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"cp256b_b\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 77, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 119, i32 10 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"cp256c_g_x\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 95, i32 12 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"cp256c_g_y\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 98, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [9 x i8] c"cp256c_p\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 101, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [9 x i8] c"cp256c_n\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 108, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [9 x i8] c"cp256c_a\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 111, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant [9 x i8] c"cp256c_b\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 114, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 168, i32 10 }
@___asan_gen_.91 = private unnamed_addr constant [11 x i8] c"tc512a_g_x\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 136, i32 12 }
@___asan_gen_.94 = private unnamed_addr constant [11 x i8] c"tc512a_g_y\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 141, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [9 x i8] c"tc512a_p\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 146, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [9 x i8] c"tc512a_n\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 151, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant [9 x i8] c"tc512a_a\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 156, i32 12 }
@___asan_gen_.106 = private unnamed_addr constant [9 x i8] c"tc512a_b\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 161, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 213, i32 10 }
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"tc512b_g_x\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 181, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"tc512b_g_y\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 186, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant [9 x i8] c"tc512b_p\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 191, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant [9 x i8] c"tc512b_n\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 196, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant [9 x i8] c"tc512b_a\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 201, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant [9 x i8] c"tc512b_b\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [24 x i8] c"../crypto/ecrdsa_defs.h\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 206, i32 12 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 100, i32 6 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 209, i32 17 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.137 = private constant [19 x i8] c"../crypto/ecrdsa.c\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 213, i32 17 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_alias_crypto232, ptr @__UNIQUE_ID_alias_userspace231, ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_ecrdsa_mod_fini, ptr @__initcall__kmod_ecrdsa_generic__226_291_ecrdsa_mod_init6, ptr @ecrdsa_mod_fini, ptr @gost_cp256a, ptr @gost_cp256b, ptr @gost_cp256c, ptr @gost_tc512a, ptr @gost_tc512b, ptr @.str, ptr @cp256a_g_x, ptr @cp256a_g_y, ptr @cp256a_p, ptr @cp256a_n, ptr @cp256a_a, ptr @cp256a_b, ptr @.str.1, ptr @cp256b_g_x, ptr @cp256b_g_y, ptr @cp256b_p, ptr @cp256b_n, ptr @cp256b_a, ptr @cp256b_b, ptr @.str.2, ptr @cp256c_g_x, ptr @cp256c_g_y, ptr @cp256c_p, ptr @cp256c_n, ptr @cp256c_a, ptr @cp256c_b, ptr @.str.3, ptr @tc512a_g_x, ptr @tc512a_g_y, ptr @tc512a_p, ptr @tc512a_n, ptr @tc512a_a, ptr @tc512a_b, ptr @.str.4, ptr @tc512b_g_x, ptr @tc512b_g_y, ptr @tc512b_p, ptr @tc512b_n, ptr @tc512b_a, ptr @tc512b_b, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gost_cp256a to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gost_cp256b to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gost_cp256c to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gost_tc512a to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gost_tc512b to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256a_g_x to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256a_g_y to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256a_p to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256a_n to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256a_a to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256a_b to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256b_g_x to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256b_g_y to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256b_p to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256b_n to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256b_a to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256b_b to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256c_g_x to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256c_g_y to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256c_p to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256c_n to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256c_a to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cp256c_b to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc512a_g_x to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc512a_g_y to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc512a_p to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc512a_n to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc512a_a to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc512a_b to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc512b_g_x to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc512b_g_y to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc512b_p to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc512b_n to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc512b_a to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc512b_b to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecrdsa_param_curve(ptr nocapture noundef writeonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @look_up_OID(ptr noundef %value, i32 noundef %vlen) #7
  %curve_oid = getelementptr inbounds %struct.ecrdsa_ctx, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %curve_oid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %curve_oid, align 4
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %sw.default.i [
    i32 0, label %entry.cleanup_crit_edge
    i32 75, label %entry.get_curve_by_oid.exit_crit_edge
    i32 85, label %entry.get_curve_by_oid.exit_crit_edge7
    i32 76, label %entry.sw.bb1.i_crit_edge
    i32 86, label %entry.sw.bb1.i_crit_edge8
    i32 77, label %entry.sw.bb2.i_crit_edge
    i32 87, label %entry.sw.bb2.i_crit_edge9
    i32 88, label %sw.bb3.i
    i32 89, label %sw.bb4.i
  ]

entry.sw.bb2.i_crit_edge9:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb2.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

entry.sw.bb1.i_crit_edge8:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

entry.get_curve_by_oid.exit_crit_edge7:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_curve_by_oid.exit

entry.get_curve_by_oid.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_curve_by_oid.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge8
  br label %get_curve_by_oid.exit

sw.bb2.i:                                         ; preds = %entry.sw.bb2.i_crit_edge, %entry.sw.bb2.i_crit_edge9
  br label %get_curve_by_oid.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_curve_by_oid.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_curve_by_oid.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_curve_by_oid.exit

get_curve_by_oid.exit:                            ; preds = %sw.default.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %entry.get_curve_by_oid.exit_crit_edge, %entry.get_curve_by_oid.exit_crit_edge7
  %retval.0.i = phi ptr [ null, %sw.default.i ], [ @gost_tc512b, %sw.bb4.i ], [ @gost_tc512a, %sw.bb3.i ], [ @gost_cp256c, %sw.bb2.i ], [ @gost_cp256b, %sw.bb1.i ], [ @gost_cp256a, %entry.get_curve_by_oid.exit_crit_edge ], [ @gost_cp256a, %entry.get_curve_by_oid.exit_crit_edge7 ]
  %curve = getelementptr inbounds %struct.ecrdsa_ctx, ptr %context, i32 0, i32 3
  %2 = ptrtoint ptr %curve to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %retval.0.i, ptr %curve, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_curve_by_oid.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_curve_by_oid.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @look_up_OID(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ecrdsa_param_digest(ptr nocapture noundef readonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @look_up_OID(ptr noundef %value, i32 noundef %vlen) #7
  %digest_oid1 = getelementptr inbounds %struct.ecrdsa_ctx, ptr %context, i32 0, i32 2
  %0 = ptrtoint ptr %digest_oid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %digest_oid1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %1)
  %cmp.not = icmp eq i32 %call, %1
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @ecrdsa_parse_pub_key(ptr nocapture noundef writeonly %context, i32 noundef %hdrlen, i8 noundef zeroext %tag, ptr noundef %value, i32 noundef %vlen) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.ecrdsa_ctx, ptr %context, i32 0, i32 7
  %0 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %value, ptr %key, align 4
  %key_len = getelementptr inbounds %struct.ecrdsa_ctx, ptr %context, i32 0, i32 6
  %1 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %vlen, ptr %key_len, align 8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ecrdsa_mod_fini() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_akcipher(ptr noundef nonnull @ecrdsa_alg) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_akcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ecrdsa_mod_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_akcipher(ptr noundef nonnull @ecrdsa_alg) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecrdsa_verify(ptr nocapture noundef readonly %req) #0 align 64 {
entry:
  %sig = alloca [128 x i8], align 1
  %digest = alloca [64 x i8], align 1
  %r = alloca [8 x i64], align 8
  %_r = alloca [8 x i64], align 8
  %s = alloca [8 x i64], align 8
  %e = alloca [8 x i64], align 8
  %z1 = alloca [8 x i64], align 8
  %cc = alloca %struct.ecc_point, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %sig) #7
  %2 = call ptr @memset(ptr %sig, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %digest) #7
  %3 = call ptr @memset(ptr %digest, i32 255, i32 64)
  %dst_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_len, align 4
  %div275 = lshr i32 %5, 3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %r) #7
  %6 = call ptr @memset(ptr %r, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %_r) #7
  %7 = call ptr @memset(ptr %_r, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %s) #7
  %8 = call ptr @memset(ptr %s, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %e) #7
  %9 = call ptr @memset(ptr %e, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %z1) #7
  %10 = call ptr @memset(ptr %z1, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cc) #7
  %11 = getelementptr inbounds i8, ptr %cc, i32 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  %13 = ptrtoint ptr %cc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %s, ptr %cc, align 4
  %y = getelementptr inbounds %struct.ecc_point, ptr %cc, i32 0, i32 1
  %14 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %e, ptr %y, align 4
  %ndigits5 = getelementptr inbounds %struct.ecc_point, ptr %cc, i32 0, i32 2
  %conv = trunc i32 %div275 to i8
  %15 = ptrtoint ptr %ndigits5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %ndigits5, align 4
  %curve = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 3
  %16 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %curve, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %digest6 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 4
  %18 = ptrtoint ptr %digest6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %digest6, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %src = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 1
  %20 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src, align 8
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %pub_key = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 16
  %22 = ptrtoint ptr %pub_key to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pub_key, align 8
  %tobool12.not = icmp eq ptr %23, null
  br i1 %tobool12.not, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false13

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false13:                                  ; preds = %lor.lhs.false10
  %digest_len = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4
  %24 = ptrtoint ptr %digest_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %digest_len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %25)
  %cmp.not = icmp eq i32 %5, %25
  br i1 %cmp.not, label %lor.lhs.false16, label %lor.lhs.false13.cleanup_crit_edge

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %ndigits19 = getelementptr inbounds %struct.ecc_curve, ptr %17, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %ndigits19 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ndigits19, align 4
  %conv20 = zext i8 %27 to i32
  %mul = shl nuw nsw i32 %conv20, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mul)
  %cmp21.not = icmp eq i32 %5, %mul
  br i1 %cmp21.not, label %lor.lhs.false23, label %lor.lhs.false16.cleanup_crit_edge

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false23:                                  ; preds = %lor.lhs.false16
  %ndigits25 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 24
  %28 = ptrtoint ptr %ndigits25 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %ndigits25, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %27)
  %cmp31.not = icmp eq i8 %29, %27
  br i1 %cmp31.not, label %lor.lhs.false33, label %lor.lhs.false23.cleanup_crit_edge

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false33:                                  ; preds = %lor.lhs.false23
  %mul35 = shl i32 %5, 1
  %src_len = getelementptr inbounds %struct.akcipher_request, ptr %req, i32 0, i32 3
  %30 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %src_len, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul35, i32 %31)
  %cmp36.not = icmp eq i32 %mul35, %31
  br i1 %cmp36.not, label %lor.lhs.false38, label %lor.lhs.false33.cleanup_crit_edge

lor.lhs.false33.cleanup_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false38:                                  ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %mul35)
  %cmp40 = icmp ugt i32 %mul35, 128
  br i1 %cmp40, label %do.end, label %lor.lhs.false62.critedge, !prof !111

do.end:                                           ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 100, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

lor.lhs.false62.critedge:                         ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %5)
  %cmp65 = icmp ugt i32 %5, 64
  br i1 %cmp65, label %do.end82, label %if.end98, !prof !111

do.end82:                                         ; preds = %lor.lhs.false62.critedge
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 101, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end98:                                         ; preds = %lor.lhs.false62.critedge
  %conv102 = zext i32 %mul35 to i64
  %call103 = call i32 @sg_nents_for_len(ptr noundef nonnull %21, i64 noundef %conv102) #7
  %32 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_len, align 32
  %call106 = call i32 @sg_copy_to_buffer(ptr noundef nonnull %21, i32 noundef %call103, ptr noundef nonnull %sig, i32 noundef %33) #7
  %34 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src, align 8
  %36 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src_len, align 32
  %38 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dst_len, align 4
  %add = add i32 %39, %37
  %conv111 = zext i32 %add to i64
  %call112 = call i32 @sg_nents_for_len(ptr noundef %35, i64 noundef %conv111) #7
  %40 = ptrtoint ptr %dst_len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dst_len, align 4
  %42 = ptrtoint ptr %src_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %src_len, align 32
  %call116 = call i32 @sg_pcopy_to_buffer(ptr noundef %35, i32 noundef %call112, ptr noundef nonnull %digest, i32 noundef %41, i32 noundef %43) #7
  call void @vli_from_be64(ptr noundef nonnull %s, ptr noundef nonnull %sig, i32 noundef %div275) #7
  %mul121 = and i32 %5, -8
  %add.ptr = getelementptr i8, ptr %sig, i32 %mul121
  call void @vli_from_be64(ptr noundef nonnull %r, ptr noundef %add.ptr, i32 noundef %div275) #7
  %call123 = call zeroext i1 @vli_is_zero(ptr noundef nonnull %r, i32 noundef %div275) #7
  br i1 %call123, label %if.end98.cleanup_crit_edge, label %lor.lhs.false125

if.end98.cleanup_crit_edge:                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false125:                                 ; preds = %if.end98
  %44 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %curve, align 4
  %n = getelementptr inbounds %struct.ecc_curve, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %n, align 4
  %call128 = call i32 @vli_cmp(ptr noundef nonnull %r, ptr noundef %47, i32 noundef %div275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call128)
  %cmp129 = icmp eq i32 %call128, 1
  br i1 %cmp129, label %lor.lhs.false125.cleanup_crit_edge, label %lor.lhs.false131

lor.lhs.false125.cleanup_crit_edge:               ; preds = %lor.lhs.false125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false131:                                 ; preds = %lor.lhs.false125
  %call133 = call zeroext i1 @vli_is_zero(ptr noundef nonnull %s, i32 noundef %div275) #7
  br i1 %call133, label %lor.lhs.false131.cleanup_crit_edge, label %lor.lhs.false135

lor.lhs.false131.cleanup_crit_edge:               ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false135:                                 ; preds = %lor.lhs.false131
  %48 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %curve, align 4
  %n138 = getelementptr inbounds %struct.ecc_curve, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %n138 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %n138, align 4
  %call139 = call i32 @vli_cmp(ptr noundef nonnull %s, ptr noundef %51, i32 noundef %div275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call139)
  %cmp140 = icmp eq i32 %call139, 1
  br i1 %cmp140, label %lor.lhs.false135.cleanup_crit_edge, label %if.end143

lor.lhs.false135.cleanup_crit_edge:               ; preds = %lor.lhs.false135
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end143:                                        ; preds = %lor.lhs.false135
  call void @vli_from_le64(ptr noundef nonnull %e, ptr noundef nonnull %digest, i32 noundef %div275) #7
  %52 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %curve, align 4
  %n148 = getelementptr inbounds %struct.ecc_curve, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %n148 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %n148, align 4
  %call149 = call i32 @vli_cmp(ptr noundef nonnull %e, ptr noundef %55, i32 noundef %div275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call149)
  %cmp150 = icmp eq i32 %call149, 1
  br i1 %cmp150, label %if.then152, label %if.end143.if.end158_crit_edge

if.end143.if.end158_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158

if.then152:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %curve, align 4
  %n156 = getelementptr inbounds %struct.ecc_curve, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %n156 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %n156, align 4
  %call157 = call i64 @vli_sub(ptr noundef nonnull %e, ptr noundef nonnull %e, ptr noundef %59, i32 noundef %div275) #7
  br label %if.end158

if.end158:                                        ; preds = %if.then152, %if.end143.if.end158_crit_edge
  %call160 = call zeroext i1 @vli_is_zero(ptr noundef nonnull %e, i32 noundef %div275) #7
  br i1 %call160, label %if.then161, label %if.end158.if.end162_crit_edge

if.end158.if.end162_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162

if.then161:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %e to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 1, ptr %e, align 8
  br label %if.end162

if.end162:                                        ; preds = %if.then161, %if.end158.if.end162_crit_edge
  %61 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %curve, align 4
  %n165 = getelementptr inbounds %struct.ecc_curve, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %n165 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %n165, align 4
  call void @vli_mod_inv(ptr noundef nonnull %e, ptr noundef nonnull %e, ptr noundef %64, i32 noundef %div275) #7
  %65 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %curve, align 4
  %n169 = getelementptr inbounds %struct.ecc_curve, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %n169 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %n169, align 4
  call void @vli_mod_mult_slow(ptr noundef nonnull %z1, ptr noundef nonnull %s, ptr noundef nonnull %e, ptr noundef %68, i32 noundef %div275) #7
  %69 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %curve, align 4
  %n172 = getelementptr inbounds %struct.ecc_curve, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %n172 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %n172, align 4
  %call174 = call i64 @vli_sub(ptr noundef nonnull %_r, ptr noundef %72, ptr noundef nonnull %r, i32 noundef %div275) #7
  %73 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %curve, align 4
  %n177 = getelementptr inbounds %struct.ecc_curve, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %n177 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %n177, align 4
  call void @vli_mod_mult_slow(ptr noundef nonnull %_r, ptr noundef nonnull %_r, ptr noundef nonnull %e, ptr noundef %76, i32 noundef %div275) #7
  %77 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %curve, align 4
  %g180 = getelementptr inbounds %struct.ecc_curve, ptr %78, i32 0, i32 1
  call void @ecc_point_mult_shamir(ptr noundef nonnull %cc, ptr noundef nonnull %z1, ptr noundef %g180, ptr noundef nonnull %_r, ptr noundef %pub_key, ptr noundef %78) #7
  %79 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cc, align 4
  %81 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %curve, align 4
  %n185 = getelementptr inbounds %struct.ecc_curve, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %n185 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %n185, align 4
  %call186 = call i32 @vli_cmp(ptr noundef %80, ptr noundef %84, i32 noundef %div275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call186)
  %cmp187 = icmp eq i32 %call186, 1
  br i1 %cmp187, label %if.then189, label %if.end162.if.end195_crit_edge

if.end162.if.end195_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end195

if.then189:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cc, align 4
  %87 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %curve, align 4
  %n193 = getelementptr inbounds %struct.ecc_curve, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %n193 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %n193, align 4
  %call194 = call i64 @vli_sub(ptr noundef %86, ptr noundef %86, ptr noundef %90, i32 noundef %div275) #7
  br label %if.end195

if.end195:                                        ; preds = %if.then189, %if.end162.if.end195_crit_edge
  %91 = ptrtoint ptr %cc to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cc, align 4
  %call198 = call i32 @vli_cmp(ptr noundef %92, ptr noundef nonnull %r, i32 noundef %div275) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %tobool199.not = icmp eq i32 %call198, 0
  %. = select i1 %tobool199.not, i32 0, i32 -129
  br label %cleanup

cleanup:                                          ; preds = %if.end195, %lor.lhs.false135.cleanup_crit_edge, %lor.lhs.false131.cleanup_crit_edge, %lor.lhs.false125.cleanup_crit_edge, %if.end98.cleanup_crit_edge, %do.end82, %do.end, %lor.lhs.false33.cleanup_crit_edge, %lor.lhs.false23.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -74, %do.end82 ], [ -74, %do.end ], [ -74, %lor.lhs.false33.cleanup_crit_edge ], [ -74, %lor.lhs.false23.cleanup_crit_edge ], [ -74, %lor.lhs.false16.cleanup_crit_edge ], [ -74, %lor.lhs.false13.cleanup_crit_edge ], [ -74, %lor.lhs.false10.cleanup_crit_edge ], [ -74, %lor.lhs.false8.cleanup_crit_edge ], [ -74, %lor.lhs.false.cleanup_crit_edge ], [ -74, %entry.cleanup_crit_edge ], [ -129, %lor.lhs.false135.cleanup_crit_edge ], [ -129, %lor.lhs.false131.cleanup_crit_edge ], [ -129, %lor.lhs.false125.cleanup_crit_edge ], [ -129, %if.end98.cleanup_crit_edge ], [ %., %if.end195 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cc) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %z1) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %e) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %s) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %_r) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %r) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %digest) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %sig) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ecrdsa_set_pub_key(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %call1 = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @ecrdsa_pub_key_decoder, ptr noundef %__crt_ctx.i, ptr noundef %key, i32 noundef %keylen) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %key, i32 %keylen
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %add.ptr, align 1
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr.i, align 1
  %add.ptr.i106 = getelementptr i8, ptr %add.ptr.i, i32 4
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %1, label %if.end.cleanup_crit_edge [
    i32 78, label %if.end.if.end13_crit_edge
    i32 79, label %if.then7
  ]

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %if.then7, %if.end.if.end13_crit_edge
  %.str.7.sink = phi ptr [ @.str.7, %if.then7 ], [ @.str.6, %if.end.if.end13_crit_edge ]
  %.sink108 = phi i32 [ 81, %if.then7 ], [ 80, %if.end.if.end13_crit_edge ]
  %.sink = phi i32 [ 64, %if.then7 ], [ 32, %if.end.if.end13_crit_edge ]
  %digest8 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %5 = ptrtoint ptr %digest8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %.str.7.sink, ptr %digest8, align 4
  %digest_oid9 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %6 = ptrtoint ptr %digest_oid9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink108, ptr %digest_oid9, align 8
  %digest_len10 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %7 = ptrtoint ptr %digest_len10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %digest_len10, align 8
  %8 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %__crt_ctx.i, align 8
  %call14 = tail call i32 @asn1_ber_decoder(ptr noundef nonnull @ecrdsa_params_decoder, ptr noundef %__crt_ctx.i, ptr noundef %add.ptr.i106, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %curve = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %9 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %curve, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end17.cleanup_crit_edge, label %lor.lhs.false

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end17
  %ndigits19 = getelementptr inbounds %struct.ecc_curve, ptr %10, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %ndigits19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ndigits19, align 4
  %conv = zext i8 %12 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %digest_len20 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %13 = ptrtoint ptr %digest_len20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %digest_len20, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %14)
  %cmp21.not = icmp eq i32 %mul, %14
  br i1 %cmp21.not, label %if.end24, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  %key_len = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %15 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %key_len, align 8
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %16, label %if.end24.cleanup_crit_edge [
    i32 64, label %if.end24.lor.lhs.false30_crit_edge
    i32 128, label %if.end24.lor.lhs.false30_crit_edge109
  ]

if.end24.lor.lhs.false30_crit_edge109:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false30

if.end24.lor.lhs.false30_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false30

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false30:                                  ; preds = %if.end24.lor.lhs.false30_crit_edge, %if.end24.lor.lhs.false30_crit_edge109
  %mul37 = shl nuw nsw i32 %conv, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %mul37)
  %cmp38.not = icmp eq i32 %16, %mul37
  br i1 %cmp38.not, label %if.end41, label %lor.lhs.false30.cleanup_crit_edge

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #9
  %div43105 = lshr i32 %16, 4
  %pub_key = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 16
  %_pubp = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 32
  %arrayidx45 = getelementptr %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 96
  %conv48 = trunc i32 %div43105 to i8
  %18 = ptrtoint ptr %pub_key to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %_pubp, ptr %pub_key, align 8
  %.compoundliteral.sroa.2.0.pub_key.sroa_idx = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 20
  %19 = ptrtoint ptr %.compoundliteral.sroa.2.0.pub_key.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx45, ptr %.compoundliteral.sroa.2.0.pub_key.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.pub_key.sroa_idx = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %20 = ptrtoint ptr %.compoundliteral.sroa.3.0.pub_key.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv48, ptr %.compoundliteral.sroa.3.0.pub_key.sroa_idx, align 8
  %key51 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %21 = ptrtoint ptr %key51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %key51, align 4
  tail call void @vli_from_le64(ptr noundef %_pubp, ptr noundef %22, i32 noundef %div43105) #7
  %23 = ptrtoint ptr %.compoundliteral.sroa.2.0.pub_key.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %.compoundliteral.sroa.2.0.pub_key.sroa_idx, align 4
  %25 = ptrtoint ptr %key51 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %key51, align 4
  %mul55 = shl nuw nsw i32 %div43105, 3
  %add.ptr56 = getelementptr i8, ptr %26, i32 %mul55
  tail call void @vli_from_le64(ptr noundef %24, ptr noundef %add.ptr56, i32 noundef %div43105) #7
  %27 = ptrtoint ptr %curve to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %curve, align 4
  %call59 = tail call i32 @ecc_is_pubkey_valid_partial(ptr noundef %28, ptr noundef %pub_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  %. = select i1 %tobool60.not, i32 0, i32 -129
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %lor.lhs.false30.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ -65, %if.end.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ -65, %lor.lhs.false.cleanup_crit_edge ], [ -65, %if.end17.cleanup_crit_edge ], [ -65, %if.end24.cleanup_crit_edge ], [ -65, %lor.lhs.false30.cleanup_crit_edge ], [ %., %if.end41 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ecrdsa_max_size(ptr nocapture noundef readonly %tfm) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ndigits = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %0 = ptrtoint ptr %ndigits to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ndigits, align 8
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 3
  ret i32 %mul
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ecrdsa_exit_tfm(ptr nocapture noundef %tfm) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vli_from_be64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vli_is_zero(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vli_cmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vli_from_le64(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vli_sub(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vli_mod_inv(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vli_mod_mult_slow(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ecc_point_mult_shamir(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asn1_ber_decoder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ecc_is_pubkey_valid_partial(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_akcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_ecrdsa_generic__226_291_ecrdsa_mod_init6, !1, !"__initcall__kmod_ecrdsa_generic__226_291_ecrdsa_mod_init6", i1 false, i1 false}
!1 = !{!"../crypto/ecrdsa.c", i32 291, i32 1}
!2 = !{ptr @__exitcall_ecrdsa_mod_fini, !3, !"__exitcall_ecrdsa_mod_fini", i1 false, i1 false}
!3 = !{!"../crypto/ecrdsa.c", i32 292, i32 1}
!4 = !{ptr @__UNIQUE_ID_file227, !5, !"__UNIQUE_ID_file227", i1 false, i1 false}
!5 = !{!"../crypto/ecrdsa.c", i32 294, i32 1}
!6 = !{ptr @__UNIQUE_ID_license228, !5, !"__UNIQUE_ID_license228", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author229, !8, !"__UNIQUE_ID_author229", i1 false, i1 false}
!8 = !{!"../crypto/ecrdsa.c", i32 295, i32 1}
!9 = !{ptr @__UNIQUE_ID_description230, !10, !"__UNIQUE_ID_description230", i1 false, i1 false}
!10 = !{!"../crypto/ecrdsa.c", i32 296, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias_userspace231, !12, !"__UNIQUE_ID_alias_userspace231", i1 false, i1 false}
!12 = !{!"../crypto/ecrdsa.c", i32 297, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias_crypto232, !12, !"__UNIQUE_ID_alias_crypto232", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../crypto/ecrdsa_defs.h", i32 49, i32 10}
!16 = !{ptr @gost_cp256a, !17, !"gost_cp256a", i1 false, i1 false}
!17 = !{!"../crypto/ecrdsa_defs.h", i32 48, i32 25}
!18 = !{ptr @cp256a_g_x, !19, !"cp256a_g_x", i1 false, i1 false}
!19 = !{!"../crypto/ecrdsa_defs.h", i32 29, i32 12}
!20 = !{ptr @cp256a_g_y, !21, !"cp256a_g_y", i1 false, i1 false}
!21 = !{!"../crypto/ecrdsa_defs.h", i32 32, i32 12}
!22 = !{ptr @cp256a_p, !23, !"cp256a_p", i1 false, i1 false}
!23 = !{!"../crypto/ecrdsa_defs.h", i32 35, i32 12}
!24 = !{ptr @cp256a_n, !25, !"cp256a_n", i1 false, i1 false}
!25 = !{!"../crypto/ecrdsa_defs.h", i32 38, i32 12}
!26 = !{ptr @cp256a_a, !27, !"cp256a_a", i1 false, i1 false}
!27 = !{!"../crypto/ecrdsa_defs.h", i32 41, i32 12}
!28 = !{ptr @cp256a_b, !29, !"cp256a_b", i1 false, i1 false}
!29 = !{!"../crypto/ecrdsa_defs.h", i32 44, i32 12}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../crypto/ecrdsa_defs.h", i32 82, i32 10}
!32 = !{ptr @gost_cp256b, !33, !"gost_cp256b", i1 false, i1 false}
!33 = !{!"../crypto/ecrdsa_defs.h", i32 81, i32 25}
!34 = !{ptr @cp256b_g_x, !35, !"cp256b_g_x", i1 false, i1 false}
!35 = !{!"../crypto/ecrdsa_defs.h", i32 62, i32 12}
!36 = !{ptr @cp256b_g_y, !37, !"cp256b_g_y", i1 false, i1 false}
!37 = !{!"../crypto/ecrdsa_defs.h", i32 65, i32 12}
!38 = !{ptr @cp256b_p, !39, !"cp256b_p", i1 false, i1 false}
!39 = !{!"../crypto/ecrdsa_defs.h", i32 68, i32 12}
!40 = !{ptr @cp256b_n, !41, !"cp256b_n", i1 false, i1 false}
!41 = !{!"../crypto/ecrdsa_defs.h", i32 71, i32 12}
!42 = !{ptr @cp256b_a, !43, !"cp256b_a", i1 false, i1 false}
!43 = !{!"../crypto/ecrdsa_defs.h", i32 74, i32 12}
!44 = !{ptr @cp256b_b, !45, !"cp256b_b", i1 false, i1 false}
!45 = !{!"../crypto/ecrdsa_defs.h", i32 77, i32 12}
!46 = !{ptr @.str.2, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../crypto/ecrdsa_defs.h", i32 119, i32 10}
!48 = !{ptr @gost_cp256c, !49, !"gost_cp256c", i1 false, i1 false}
!49 = !{!"../crypto/ecrdsa_defs.h", i32 118, i32 25}
!50 = !{ptr @cp256c_g_x, !51, !"cp256c_g_x", i1 false, i1 false}
!51 = !{!"../crypto/ecrdsa_defs.h", i32 95, i32 12}
!52 = !{ptr @cp256c_g_y, !53, !"cp256c_g_y", i1 false, i1 false}
!53 = !{!"../crypto/ecrdsa_defs.h", i32 98, i32 12}
!54 = !{ptr @cp256c_p, !55, !"cp256c_p", i1 false, i1 false}
!55 = !{!"../crypto/ecrdsa_defs.h", i32 101, i32 12}
!56 = !{ptr @cp256c_n, !57, !"cp256c_n", i1 false, i1 false}
!57 = !{!"../crypto/ecrdsa_defs.h", i32 108, i32 12}
!58 = !{ptr @cp256c_a, !59, !"cp256c_a", i1 false, i1 false}
!59 = !{!"../crypto/ecrdsa_defs.h", i32 111, i32 12}
!60 = !{ptr @cp256c_b, !61, !"cp256c_b", i1 false, i1 false}
!61 = !{!"../crypto/ecrdsa_defs.h", i32 114, i32 12}
!62 = !{ptr @.str.3, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../crypto/ecrdsa_defs.h", i32 168, i32 10}
!64 = !{ptr @gost_tc512a, !65, !"gost_tc512a", i1 false, i1 false}
!65 = !{!"../crypto/ecrdsa_defs.h", i32 167, i32 25}
!66 = !{ptr @tc512a_g_x, !67, !"tc512a_g_x", i1 false, i1 false}
!67 = !{!"../crypto/ecrdsa_defs.h", i32 136, i32 12}
!68 = !{ptr @tc512a_g_y, !69, !"tc512a_g_y", i1 false, i1 false}
!69 = !{!"../crypto/ecrdsa_defs.h", i32 141, i32 12}
!70 = !{ptr @tc512a_p, !71, !"tc512a_p", i1 false, i1 false}
!71 = !{!"../crypto/ecrdsa_defs.h", i32 146, i32 12}
!72 = !{ptr @tc512a_n, !73, !"tc512a_n", i1 false, i1 false}
!73 = !{!"../crypto/ecrdsa_defs.h", i32 151, i32 12}
!74 = !{ptr @tc512a_a, !75, !"tc512a_a", i1 false, i1 false}
!75 = !{!"../crypto/ecrdsa_defs.h", i32 156, i32 12}
!76 = !{ptr @tc512a_b, !77, !"tc512a_b", i1 false, i1 false}
!77 = !{!"../crypto/ecrdsa_defs.h", i32 161, i32 12}
!78 = !{ptr @.str.4, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../crypto/ecrdsa_defs.h", i32 213, i32 10}
!80 = !{ptr @gost_tc512b, !81, !"gost_tc512b", i1 false, i1 false}
!81 = !{!"../crypto/ecrdsa_defs.h", i32 212, i32 25}
!82 = !{ptr @tc512b_g_x, !83, !"tc512b_g_x", i1 false, i1 false}
!83 = !{!"../crypto/ecrdsa_defs.h", i32 181, i32 12}
!84 = !{ptr @tc512b_g_y, !85, !"tc512b_g_y", i1 false, i1 false}
!85 = !{!"../crypto/ecrdsa_defs.h", i32 186, i32 12}
!86 = !{ptr @tc512b_p, !87, !"tc512b_p", i1 false, i1 false}
!87 = !{!"../crypto/ecrdsa_defs.h", i32 191, i32 12}
!88 = !{ptr @tc512b_n, !89, !"tc512b_n", i1 false, i1 false}
!89 = !{!"../crypto/ecrdsa_defs.h", i32 196, i32 12}
!90 = !{ptr @tc512b_a, !91, !"tc512b_a", i1 false, i1 false}
!91 = !{!"../crypto/ecrdsa_defs.h", i32 201, i32 12}
!92 = !{ptr @tc512b_b, !93, !"tc512b_b", i1 false, i1 false}
!93 = !{!"../crypto/ecrdsa_defs.h", i32 206, i32 12}
!94 = !{ptr @ecrdsa_alg, !95, !"ecrdsa_alg", i1 false, i1 false}
!95 = !{!"../crypto/ecrdsa.c", i32 267, i32 28}
!96 = !{ptr @.str.5, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../crypto/ecrdsa.c", i32 100, i32 6}
!98 = !{ptr @.str.6, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../crypto/ecrdsa.c", i32 209, i32 17}
!100 = !{ptr @.str.7, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../crypto/ecrdsa.c", i32 213, i32 17}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"branch_weights", i32 1, i32 2000}
