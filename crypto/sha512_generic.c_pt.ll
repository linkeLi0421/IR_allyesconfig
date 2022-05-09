; ModuleID = '/llk/IR_all_yes/crypto/sha512_generic.c_pt.bc'
source_filename = "../crypto/sha512_generic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sha384_zero_message_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_sha384_zero_message_hash\09\09\09\09"
module asm "\09.long\09__crc_sha384_zero_message_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha384_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22sha384_zero_message_hash\22\09\09\09\09\09"
module asm "__kstrtabns_sha384_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sha512_zero_message_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_sha512_zero_message_hash\09\09\09\09"
module asm "\09.long\09__crc_sha512_zero_message_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sha512_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22sha512_zero_message_hash\22\09\09\09\09\09"
module asm "__kstrtabns_sha512_zero_message_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_sha512_update\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sha512_update\09\09\09\09"
module asm "\09.long\09__crc_crypto_sha512_update\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha512_update:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha512_update\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha512_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+crypto_sha512_finup\22, \22a\22\09"
module asm "\09.weak\09__crc_crypto_sha512_finup\09\09\09\09"
module asm "\09.long\09__crc_crypto_sha512_finup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_crypto_sha512_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22crypto_sha512_finup\22\09\09\09\09\09"
module asm "__kstrtabns_crypto_sha512_finup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.shash_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [84 x i8], i32, i32, [120 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.shash_desc = type { ptr, [4 x i8], [0 x ptr] }
%struct.sha512_state = type { [8 x i64], [2 x i64], [128 x i8] }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }

@sha384_zero_message_hash = dso_local constant { [48 x i8], [48 x i8] } { [48 x i8] c"8\B0`\A7Q\AC\968L\D92~\B1\B1\E3j!\FD\B7\11\14\BE\07CL\0C\C7\BFc\F6\E1\DA'N\DE\BF\E7oe\FB\D5\1A\D2\F1H\98\B9[", [48 x i8] zeroinitializer }, align 32
@__kstrtab_sha384_zero_message_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha384_zero_message_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_sha384_zero_message_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha384_zero_message_hash to i32), ptr @__kstrtab_sha384_zero_message_hash, ptr @__kstrtabns_sha384_zero_message_hash }, section "___ksymtab_gpl+sha384_zero_message_hash", align 4
@sha512_zero_message_hash = dso_local constant { [64 x i8], [32 x i8] } { [64 x i8] c"\CF\83\E15~\EF\B8\BD\F1T(P\D6m\80\07\D6 \E4\05\0BW\15\DC\83\F4\A9!\D3l\E9\CEG\D0\D1<]\85\F2\B0\FF\83\18\D2\87~\EC/c\B91\BDGAz\81\A582z\F9'\DA>", [32 x i8] zeroinitializer }, align 32
@__kstrtab_sha512_zero_message_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_sha512_zero_message_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_sha512_zero_message_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sha512_zero_message_hash to i32), ptr @__kstrtab_sha512_zero_message_hash, ptr @__kstrtabns_sha512_zero_message_hash }, section "___ksymtab_gpl+sha512_zero_message_hash", align 4
@__kstrtab_crypto_sha512_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha512_update = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha512_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha512_update to i32), ptr @__kstrtab_crypto_sha512_update, ptr @__kstrtabns_crypto_sha512_update }, section "___ksymtab+crypto_sha512_update", align 4
@__kstrtab_crypto_sha512_finup = external dso_local constant [0 x i8], align 1
@__kstrtabns_crypto_sha512_finup = external dso_local constant [0 x i8], align 1
@__ksymtab_crypto_sha512_finup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @crypto_sha512_finup to i32), ptr @__kstrtab_crypto_sha512_finup, ptr @__kstrtabns_crypto_sha512_finup }, section "___ksymtab+crypto_sha512_finup", align 4
@sha512_algs = internal global [2 x %struct.shash_alg] [%struct.shash_alg { ptr @sha512_base_init, ptr @crypto_sha512_update, ptr @sha512_final, ptr @crypto_sha512_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 208, [84 x i8] undef, i32 64, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha512-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, %struct.shash_alg { ptr @sha384_base_init, ptr @crypto_sha512_update, ptr @sha512_final, ptr @crypto_sha512_finup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 208, [84 x i8] undef, i32 48, i32 0, [120 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 128, i32 0, i32 0, i32 100, %struct.refcount_struct zeroinitializer, [128 x i8] c"sha384\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"sha384-generic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }], align 128
@__initcall__kmod_sha512_generic__226_218_sha512_generic_mod_init4 = internal global ptr @sha512_generic_mod_init, section ".initcall4.init", align 4
@__exitcall_sha512_generic_mod_fini = internal global ptr @sha512_generic_mod_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_file227 = internal constant [42 x i8] c"sha512_generic.file=crypto/sha512_generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [27 x i8] c"sha512_generic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [70 x i8] c"sha512_generic.description=SHA-512 and SHA-384 Secure Hash Algorithms\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace230 = internal constant [28 x i8] c"sha512_generic.alias=sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto231 = internal constant [35 x i8] c"sha512_generic.alias=crypto-sha384\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace232 = internal constant [36 x i8] c"sha512_generic.alias=sha384-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto233 = internal constant [43 x i8] c"sha512_generic.alias=crypto-sha384-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace234 = internal constant [28 x i8] c"sha512_generic.alias=sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto235 = internal constant [35 x i8] c"sha512_generic.alias=crypto-sha512\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_userspace236 = internal constant [36 x i8] c"sha512_generic.alias=sha512-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_alias_crypto237 = internal constant [43 x i8] c"sha512_generic.alias=crypto-sha512-generic\00", section ".modinfo", align 1
@sha512_K = internal constant { [80 x i64], [160 x i8] } { [80 x i64] [i64 4794697086780616226, i64 8158064640168781261, i64 -5349999486874862801, i64 -1606136188198331460, i64 4131703408338449720, i64 6480981068601479193, i64 -7908458776815382629, i64 -6116909921290321640, i64 -2880145864133508542, i64 1334009975649890238, i64 2608012711638119052, i64 6128411473006802146, i64 8268148722764581231, i64 -9160688886553864527, i64 -7215885187991268811, i64 -4495734319001033068, i64 -1973867731355612462, i64 -1171420211273849373, i64 1135362057144423861, i64 2597628984639134821, i64 3308224258029322869, i64 5365058923640841347, i64 6679025012923562964, i64 8573033837759648693, i64 -7476448914759557205, i64 -6327057829258317296, i64 -5763719355590565569, i64 -4658551843659510044, i64 -4116276920077217854, i64 -3051310485924567259, i64 489312712824947311, i64 1452737877330783856, i64 2861767655752347644, i64 3322285676063803686, i64 5560940570517711597, i64 5996557281743188959, i64 7280758554555802590, i64 8532644243296465576, i64 -9096487096722542874, i64 -7894198246740708037, i64 -6719396339535248540, i64 -6333637450476146687, i64 -4446306890439682159, i64 -4076793802049405392, i64 -3345356375505022440, i64 -2983346525034927856, i64 -860691631967231958, i64 1182934255886127544, i64 1847814050463011016, i64 2177327727835720531, i64 2830643537854262169, i64 3796741975233480872, i64 4115178125766777443, i64 5681478168544905931, i64 6601373596472566643, i64 7507060721942968483, i64 8399075790359081724, i64 8693463985226723168, i64 -8878714635349349518, i64 -8302665154208450068, i64 -8016688836872298968, i64 -6606660893046293015, i64 -4685533653050689259, i64 -4147400797238176981, i64 -3880063495543823972, i64 -3348786107499101689, i64 -1523767162380948706, i64 -757361751448694408, i64 500013540394364858, i64 748580250866718886, i64 1242879168328830382, i64 1977374033974150939, i64 2944078676154940804, i64 3659926193048069267, i64 4368137639120453308, i64 4836135668995329356, i64 5532061633213252278, i64 6448918945643986474, i64 6902733635092675308, i64 7801388544844847127], [160 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [25 x i8] c"sha384_zero_message_hash\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 21, i32 10 }
@___asan_gen_.4 = private unnamed_addr constant [25 x i8] c"sha512_zero_message_hash\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 31, i32 10 }
@___asan_gen_.7 = private unnamed_addr constant [9 x i8] c"sha512_K\00", align 1
@___asan_gen_.8 = private constant [27 x i8] c"../crypto/sha512_generic.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 53, i32 18 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_alias_crypto231, ptr @__UNIQUE_ID_alias_crypto233, ptr @__UNIQUE_ID_alias_crypto235, ptr @__UNIQUE_ID_alias_crypto237, ptr @__UNIQUE_ID_alias_userspace230, ptr @__UNIQUE_ID_alias_userspace232, ptr @__UNIQUE_ID_alias_userspace234, ptr @__UNIQUE_ID_alias_userspace236, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_sha512_generic_mod_fini, ptr @__initcall__kmod_sha512_generic__226_218_sha512_generic_mod_init4, ptr @__ksymtab_crypto_sha512_finup, ptr @__ksymtab_crypto_sha512_update, ptr @__ksymtab_sha384_zero_message_hash, ptr @__ksymtab_sha512_zero_message_hash, ptr @sha512_generic_mod_fini, ptr @sha384_zero_message_hash, ptr @sha512_zero_message_hash, ptr @sha512_K], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sha384_zero_message_hash to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sha512_zero_message_hash to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sha512_K to i32), i32 640, i32 800, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_sha512_update(ptr nocapture noundef %desc, ptr nocapture noundef readonly %data, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 127
  %conv1.i = zext i32 %len to i64
  %add.i = add i64 %1, %conv1.i
  store i64 %add.i, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv1.i)
  %cmp.i = icmp ult i64 %add.i, %conv1.i
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9.i = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %3 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx9.i, align 8
  %inc.i = add i64 %4, 1
  store i64 %inc.i, ptr %arrayidx9.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %add10.i = add i32 %conv.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add10.i)
  %cmp11.i = icmp ugt i32 %add10.i, 127
  br i1 %cmp11.i, label %if.then14.i, label %if.end.i.if.end27.i_crit_edge, !prof !46

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool15.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool15.not.i, label %if.then14.i.if.end21.i_crit_edge, label %if.then16.i

if.then14.i.if.end21.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nuw nsw i32 128, %conv.i
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %conv.i
  %5 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr17.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub18.i = sub i32 %len, %sub.i
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #7
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.then14.i.if.end21.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub18.i, %if.then16.i ], [ %len, %if.then14.i.if.end21.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr17.i, %if.then16.i ], [ %data, %if.then14.i.if.end21.i_crit_edge ]
  %rem22.i = and i32 %len.addr.0.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len.addr.0.i)
  %tobool23.not.i = icmp ult i32 %len.addr.0.i, 128
  br i1 %tobool23.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then24.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %div1.i = lshr i32 %len.addr.0.i, 7
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #7
  %mul.i = and i32 %len.addr.0.i, -128
  %add.ptr25.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end27.i_crit_edge, %if.end.i.if.end27.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %if.end.i.if.end27.i_crit_edge ], [ %rem22.i, %if.then24.i ], [ %rem22.i, %if.end21.i.if.end27.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %if.end.i.if.end27.i_crit_edge ], [ 0, %if.then24.i ], [ 0, %if.end21.i.if.end27.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %if.end.i.if.end27.i_crit_edge ], [ %add.ptr25.i, %if.then24.i ], [ %data.addr.0.i, %if.end21.i.if.end27.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool28.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.sha512_base_do_update.exit_crit_edge, label %if.then29.i

if.end27.i.sha512_base_do_update.exit_crit_edge:  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sha512_base_do_update.exit

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf30.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %add.ptr32.i = getelementptr i8, ptr %buf30.i, i32 %partial.0.i
  %6 = call ptr @memcpy(ptr %add.ptr32.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sha512_base_do_update.exit

sha512_base_do_update.exit:                       ; preds = %if.then29.i, %if.end27.i.sha512_base_do_update.exit_crit_edge
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sha512_generic_block_fn(ptr nocapture noundef %sst, ptr nocapture noundef readonly %src, i32 noundef %blocks) unnamed_addr #0 align 64 {
entry:
  %W.i = alloca [16 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blocks)
  %tobool.not2 = icmp eq i32 %blocks, 0
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %arrayidx1.i = getelementptr i64, ptr %sst, i32 1
  %arrayidx2.i = getelementptr i64, ptr %sst, i32 2
  %arrayidx3.i = getelementptr i64, ptr %sst, i32 3
  %arrayidx4.i = getelementptr i64, ptr %sst, i32 4
  %arrayidx5.i = getelementptr i64, ptr %sst, i32 5
  %arrayidx6.i = getelementptr i64, ptr %sst, i32 6
  %arrayidx7.i = getelementptr i64, ptr %sst, i32 7
  br label %while.body

while.body:                                       ; preds = %sha512_transform.exit.while.body_crit_edge, %while.body.lr.ph
  %blocks.addr.04 = phi i32 [ %blocks, %while.body.lr.ph ], [ %dec, %sha512_transform.exit.while.body_crit_edge ]
  %src.addr.03 = phi ptr [ %src, %while.body.lr.ph ], [ %add.ptr, %sha512_transform.exit.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %W.i) #7
  %0 = call ptr @memset(ptr %W.i, i32 255, i32 128)
  %1 = ptrtoint ptr %sst to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %sst, align 8
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx1.i, align 8
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %arrayidx2.i, align 8
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %arrayidx3.i, align 8
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx4.i, align 8
  %11 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx5.i, align 8
  %13 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx6.i, align 8
  %15 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arrayidx7.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end21.i.for.body.i_crit_edge, %while.body
  %indvar.i = phi i32 [ 0, %while.body ], [ %indvar.next.i, %if.end21.i.for.body.i_crit_edge ]
  %i.0516.i = phi i32 [ 0, %while.body ], [ %add211.i, %if.end21.i.for.body.i_crit_edge ]
  %h.0515.i = phi i64 [ %16, %while.body ], [ %add136.i, %if.end21.i.for.body.i_crit_edge ]
  %g.0514.i = phi i64 [ %14, %while.body ], [ %add160.i, %if.end21.i.for.body.i_crit_edge ]
  %f.0513.i = phi i64 [ %12, %while.body ], [ %add184.i, %if.end21.i.for.body.i_crit_edge ]
  %e.0512.i = phi i64 [ %10, %while.body ], [ %add208.i, %if.end21.i.for.body.i_crit_edge ]
  %d.0511.i = phi i64 [ %8, %while.body ], [ %add137.i, %if.end21.i.for.body.i_crit_edge ]
  %c.0510.i = phi i64 [ %6, %while.body ], [ %add161.i, %if.end21.i.for.body.i_crit_edge ]
  %b.0509.i = phi i64 [ %4, %while.body ], [ %add185.i, %if.end21.i.for.body.i_crit_edge ]
  %a.0508.i = phi i64 [ %2, %while.body ], [ %add209.i, %if.end21.i.for.body.i_crit_edge ]
  %17 = shl nuw nsw i32 %indvar.i, 6
  %uglygep.i = getelementptr i8, ptr %W.i, i32 %17
  %uglygep518.i = getelementptr i8, ptr %src.addr.03, i32 %17
  %and.i = and i32 %i.0516.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.if.end21.i_crit_edge

for.body.i.if.end21.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %i.0516.i)
  %cmp8.i = icmp ult i32 %i.0516.i, 16
  br i1 %cmp8.i, label %for.body12.preheader.i, label %if.then.i.for.body15.i_crit_edge

if.then.i.for.body15.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body15.i

for.body12.preheader.i:                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = call ptr @memcpy(ptr %uglygep.i, ptr %uglygep518.i, i32 128)
  br label %if.end21.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %if.then.i.for.body15.i_crit_edge
  %j.1506.i = phi i32 [ %inc19.i, %for.body15.i.for.body15.i_crit_edge ], [ 0, %if.then.i.for.body15.i_crit_edge ]
  %add16.i = add nuw nsw i32 %j.1506.i, %i.0516.i
  %sub.i.i = add nuw nsw i32 %add16.i, 14
  %and.i.i = and i32 %sub.i.i, 15
  %arrayidx.i404.i = getelementptr i64, ptr %W.i, i32 %and.i.i
  %19 = ptrtoint ptr %arrayidx.i404.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %arrayidx.i404.i, align 8
  %or.i.i.i = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 45) #7
  %or.i44.i.i = tail call i64 @llvm.fshl.i64(i64 %20, i64 %20, i64 3) #7
  %xor.i.i = xor i64 %or.i.i.i, %or.i44.i.i
  %shr.i.i = lshr i64 %20, 6
  %xor8.i.i = xor i64 %xor.i.i, %shr.i.i
  %sub9.i.i = add nuw nsw i32 %add16.i, 9
  %and10.i.i = and i32 %sub9.i.i, 15
  %arrayidx11.i.i = getelementptr i64, ptr %W.i, i32 %and10.i.i
  %21 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx11.i.i, align 8
  %add.i.i = add i64 %xor8.i.i, %22
  %sub12.i.i = add nuw nsw i32 %add16.i, 1
  %and13.i.i = and i32 %sub12.i.i, 15
  %arrayidx14.i.i = getelementptr i64, ptr %W.i, i32 %and13.i.i
  %23 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx14.i.i, align 8
  %or.i45.i.i = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 63) #7
  %or.i46.i.i = tail call i64 @llvm.fshl.i64(i64 %24, i64 %24, i64 56) #7
  %xor20.i.i = xor i64 %or.i45.i.i, %or.i46.i.i
  %shr24.i.i = lshr i64 %24, 7
  %xor25.i.i = xor i64 %xor20.i.i, %shr24.i.i
  %and27.i.i = and i32 %add16.i, 15
  %arrayidx28.i.i = getelementptr i64, ptr %W.i, i32 %and27.i.i
  %25 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx28.i.i, align 8
  %add26.i.i = add i64 %add.i.i, %26
  %add29.i.i = add i64 %add26.i.i, %xor25.i.i
  store i64 %add29.i.i, ptr %arrayidx28.i.i, align 8
  %inc19.i = add nuw nsw i32 %j.1506.i, 1
  %exitcond.not.i = icmp eq i32 %inc19.i, 16
  br i1 %exitcond.not.i, label %for.body15.i.if.end21.i_crit_edge, label %for.body15.i.for.body15.i_crit_edge

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15.i

for.body15.i.if.end21.i_crit_edge:                ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %for.body15.i.if.end21.i_crit_edge, %for.body12.preheader.i, %for.body.i.if.end21.i_crit_edge
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %e.0512.i, i64 %e.0512.i, i64 50) #7
  %or.i405.i = tail call i64 @llvm.fshl.i64(i64 %e.0512.i, i64 %e.0512.i, i64 46) #7
  %xor.i = xor i64 %or.i.i, %or.i405.i
  %or.i406.i = tail call i64 @llvm.fshl.i64(i64 %e.0512.i, i64 %e.0512.i, i64 23) #7
  %xor24.i = xor i64 %xor.i, %or.i406.i
  %xor.i407.i = xor i64 %f.0513.i, %g.0514.i
  %and.i408.i = and i64 %xor.i407.i, %e.0512.i
  %xor1.i.i = xor i64 %and.i408.i, %g.0514.i
  %arrayidx28.i = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %i.0516.i
  %27 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %arrayidx28.i, align 8
  %arrayidx31.i = getelementptr [16 x i64], ptr %W.i, i32 0, i32 %and.i
  %29 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx31.i, align 8
  %add25.i = add i64 %xor1.i.i, %h.0515.i
  %add27.i = add i64 %add25.i, %xor24.i
  %add29.i = add i64 %add27.i, %28
  %add32.i = add i64 %add29.i, %30
  %or.i409.i = tail call i64 @llvm.fshl.i64(i64 %a.0508.i, i64 %a.0508.i, i64 36) #7
  %or.i410.i = tail call i64 @llvm.fshl.i64(i64 %a.0508.i, i64 %a.0508.i, i64 30) #7
  %xor35.i = xor i64 %or.i409.i, %or.i410.i
  %or.i411.i = tail call i64 @llvm.fshl.i64(i64 %a.0508.i, i64 %a.0508.i, i64 25) #7
  %xor37.i = xor i64 %xor35.i, %or.i411.i
  %and.i412.i = and i64 %a.0508.i, %b.0509.i
  %or.i413.i = or i64 %a.0508.i, %b.0509.i
  %and1.i.i = and i64 %or.i413.i, %c.0510.i
  %or2.i.i = or i64 %and1.i.i, %and.i412.i
  %add39.i = add i64 %or2.i.i, %xor37.i
  %add40.i = add i64 %add32.i, %d.0511.i
  %add41.i = add i64 %add39.i, %add32.i
  %or.i414.i = tail call i64 @llvm.fshl.i64(i64 %add40.i, i64 %add40.i, i64 50) #7
  %or.i415.i = tail call i64 @llvm.fshl.i64(i64 %add40.i, i64 %add40.i, i64 46) #7
  %xor44.i = xor i64 %or.i414.i, %or.i415.i
  %or.i416.i = tail call i64 @llvm.fshl.i64(i64 %add40.i, i64 %add40.i, i64 23) #7
  %xor46.i = xor i64 %xor44.i, %or.i416.i
  %xor.i417.i = xor i64 %e.0512.i, %f.0513.i
  %and.i418.i = and i64 %add40.i, %xor.i417.i
  %xor1.i419.i = xor i64 %and.i418.i, %f.0513.i
  %add50.i = or i32 %i.0516.i, 1
  %arrayidx51.i = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %add50.i
  %31 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %arrayidx51.i, align 8
  %add54.i = or i32 %and.i, 1
  %arrayidx55.i = getelementptr [16 x i64], ptr %W.i, i32 0, i32 %add54.i
  %33 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx55.i, align 8
  %add47.i = add i64 %32, %g.0514.i
  %add49.i = add i64 %add47.i, %34
  %add52.i = add i64 %add49.i, %xor1.i419.i
  %add56.i = add i64 %add52.i, %xor46.i
  %or.i420.i = tail call i64 @llvm.fshl.i64(i64 %add41.i, i64 %add41.i, i64 36) #7
  %or.i421.i = tail call i64 @llvm.fshl.i64(i64 %add41.i, i64 %add41.i, i64 30) #7
  %xor59.i = xor i64 %or.i420.i, %or.i421.i
  %or.i422.i = tail call i64 @llvm.fshl.i64(i64 %add41.i, i64 %add41.i, i64 25) #7
  %xor61.i = xor i64 %xor59.i, %or.i422.i
  %and.i423.i = and i64 %add41.i, %a.0508.i
  %or.i424.i = or i64 %add41.i, %a.0508.i
  %and1.i425.i = and i64 %or.i424.i, %b.0509.i
  %or2.i426.i = or i64 %and1.i425.i, %and.i423.i
  %add63.i = add i64 %xor61.i, %or2.i426.i
  %add64.i = add i64 %add56.i, %c.0510.i
  %add65.i = add i64 %add63.i, %add56.i
  %or.i427.i = tail call i64 @llvm.fshl.i64(i64 %add64.i, i64 %add64.i, i64 50) #7
  %or.i428.i = tail call i64 @llvm.fshl.i64(i64 %add64.i, i64 %add64.i, i64 46) #7
  %xor68.i = xor i64 %or.i427.i, %or.i428.i
  %or.i429.i = tail call i64 @llvm.fshl.i64(i64 %add64.i, i64 %add64.i, i64 23) #7
  %xor70.i = xor i64 %xor68.i, %or.i429.i
  %xor.i430.i = xor i64 %add40.i, %e.0512.i
  %and.i431.i = and i64 %add64.i, %xor.i430.i
  %xor1.i432.i = xor i64 %and.i431.i, %e.0512.i
  %add74.i = or i32 %i.0516.i, 2
  %arrayidx75.i = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %add74.i
  %35 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx75.i, align 8
  %add78.i = or i32 %and.i, 2
  %arrayidx79.i = getelementptr [16 x i64], ptr %W.i, i32 0, i32 %add78.i
  %37 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx79.i, align 8
  %add71.i = add i64 %36, %f.0513.i
  %add73.i = add i64 %add71.i, %38
  %add76.i = add i64 %add73.i, %xor1.i432.i
  %add80.i = add i64 %add76.i, %xor70.i
  %or.i433.i = tail call i64 @llvm.fshl.i64(i64 %add65.i, i64 %add65.i, i64 36) #7
  %or.i434.i = tail call i64 @llvm.fshl.i64(i64 %add65.i, i64 %add65.i, i64 30) #7
  %xor83.i = xor i64 %or.i433.i, %or.i434.i
  %or.i435.i = tail call i64 @llvm.fshl.i64(i64 %add65.i, i64 %add65.i, i64 25) #7
  %xor85.i = xor i64 %xor83.i, %or.i435.i
  %and.i436.i = and i64 %add65.i, %add41.i
  %or.i437.i = or i64 %add65.i, %add41.i
  %and1.i438.i = and i64 %or.i437.i, %a.0508.i
  %or2.i439.i = or i64 %and1.i438.i, %and.i436.i
  %add87.i = add i64 %xor85.i, %or2.i439.i
  %add88.i = add i64 %add80.i, %b.0509.i
  %add89.i = add i64 %add87.i, %add80.i
  %or.i440.i = tail call i64 @llvm.fshl.i64(i64 %add88.i, i64 %add88.i, i64 50) #7
  %or.i441.i = tail call i64 @llvm.fshl.i64(i64 %add88.i, i64 %add88.i, i64 46) #7
  %xor92.i = xor i64 %or.i440.i, %or.i441.i
  %or.i442.i = tail call i64 @llvm.fshl.i64(i64 %add88.i, i64 %add88.i, i64 23) #7
  %xor94.i = xor i64 %xor92.i, %or.i442.i
  %xor.i443.i = xor i64 %add64.i, %add40.i
  %and.i444.i = and i64 %add88.i, %xor.i443.i
  %xor1.i445.i = xor i64 %and.i444.i, %add40.i
  %add98.i = or i32 %i.0516.i, 3
  %arrayidx99.i = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %add98.i
  %39 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx99.i, align 8
  %add102.i = or i32 %and.i, 3
  %arrayidx103.i = getelementptr [16 x i64], ptr %W.i, i32 0, i32 %add102.i
  %41 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx103.i, align 8
  %add95.i = add i64 %40, %e.0512.i
  %add97.i = add i64 %add95.i, %42
  %add100.i = add i64 %add97.i, %xor1.i445.i
  %add104.i = add i64 %add100.i, %xor94.i
  %or.i446.i = tail call i64 @llvm.fshl.i64(i64 %add89.i, i64 %add89.i, i64 36) #7
  %or.i447.i = tail call i64 @llvm.fshl.i64(i64 %add89.i, i64 %add89.i, i64 30) #7
  %xor107.i = xor i64 %or.i446.i, %or.i447.i
  %or.i448.i = tail call i64 @llvm.fshl.i64(i64 %add89.i, i64 %add89.i, i64 25) #7
  %xor109.i = xor i64 %xor107.i, %or.i448.i
  %and.i449.i = and i64 %add89.i, %add65.i
  %or.i450.i = or i64 %add89.i, %add65.i
  %and1.i451.i = and i64 %or.i450.i, %add41.i
  %or2.i452.i = or i64 %and1.i451.i, %and.i449.i
  %add111.i = add i64 %xor109.i, %or2.i452.i
  %add112.i = add i64 %add104.i, %a.0508.i
  %add113.i = add i64 %add111.i, %add104.i
  %or.i453.i = tail call i64 @llvm.fshl.i64(i64 %add112.i, i64 %add112.i, i64 50) #7
  %or.i454.i = tail call i64 @llvm.fshl.i64(i64 %add112.i, i64 %add112.i, i64 46) #7
  %xor116.i = xor i64 %or.i453.i, %or.i454.i
  %or.i455.i = tail call i64 @llvm.fshl.i64(i64 %add112.i, i64 %add112.i, i64 23) #7
  %xor118.i = xor i64 %xor116.i, %or.i455.i
  %xor.i456.i = xor i64 %add88.i, %add64.i
  %and.i457.i = and i64 %add112.i, %xor.i456.i
  %xor1.i458.i = xor i64 %and.i457.i, %add64.i
  %add122.i = or i32 %i.0516.i, 4
  %arrayidx123.i = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %add122.i
  %43 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx123.i, align 8
  %add126.i = or i32 %and.i, 4
  %arrayidx127.i = getelementptr [16 x i64], ptr %W.i, i32 0, i32 %add126.i
  %45 = ptrtoint ptr %arrayidx127.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx127.i, align 8
  %add119.i = add i64 %44, %add40.i
  %add121.i = add i64 %add119.i, %46
  %add124.i = add i64 %add121.i, %xor1.i458.i
  %add128.i = add i64 %add124.i, %xor118.i
  %or.i459.i = tail call i64 @llvm.fshl.i64(i64 %add113.i, i64 %add113.i, i64 36) #7
  %or.i460.i = tail call i64 @llvm.fshl.i64(i64 %add113.i, i64 %add113.i, i64 30) #7
  %xor131.i = xor i64 %or.i459.i, %or.i460.i
  %or.i461.i = tail call i64 @llvm.fshl.i64(i64 %add113.i, i64 %add113.i, i64 25) #7
  %xor133.i = xor i64 %xor131.i, %or.i461.i
  %and.i462.i = and i64 %add113.i, %add89.i
  %or.i463.i = or i64 %add113.i, %add89.i
  %and1.i464.i = and i64 %or.i463.i, %add65.i
  %or2.i465.i = or i64 %and1.i464.i, %and.i462.i
  %add135.i = add i64 %xor133.i, %or2.i465.i
  %add136.i = add i64 %add128.i, %add41.i
  %add137.i = add i64 %add135.i, %add128.i
  %or.i466.i = tail call i64 @llvm.fshl.i64(i64 %add136.i, i64 %add136.i, i64 50) #7
  %or.i467.i = tail call i64 @llvm.fshl.i64(i64 %add136.i, i64 %add136.i, i64 46) #7
  %xor140.i = xor i64 %or.i466.i, %or.i467.i
  %or.i468.i = tail call i64 @llvm.fshl.i64(i64 %add136.i, i64 %add136.i, i64 23) #7
  %xor142.i = xor i64 %xor140.i, %or.i468.i
  %xor.i469.i = xor i64 %add112.i, %add88.i
  %and.i470.i = and i64 %add136.i, %xor.i469.i
  %xor1.i471.i = xor i64 %and.i470.i, %add88.i
  %add146.i = or i32 %i.0516.i, 5
  %arrayidx147.i = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %add146.i
  %47 = ptrtoint ptr %arrayidx147.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx147.i, align 8
  %add150.i = or i32 %and.i, 5
  %arrayidx151.i = getelementptr [16 x i64], ptr %W.i, i32 0, i32 %add150.i
  %49 = ptrtoint ptr %arrayidx151.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx151.i, align 8
  %add143.i = add i64 %48, %add64.i
  %add145.i = add i64 %add143.i, %50
  %add148.i = add i64 %add145.i, %xor1.i471.i
  %add152.i = add i64 %add148.i, %xor142.i
  %or.i472.i = tail call i64 @llvm.fshl.i64(i64 %add137.i, i64 %add137.i, i64 36) #7
  %or.i473.i = tail call i64 @llvm.fshl.i64(i64 %add137.i, i64 %add137.i, i64 30) #7
  %xor155.i = xor i64 %or.i472.i, %or.i473.i
  %or.i474.i = tail call i64 @llvm.fshl.i64(i64 %add137.i, i64 %add137.i, i64 25) #7
  %xor157.i = xor i64 %xor155.i, %or.i474.i
  %and.i475.i = and i64 %add137.i, %add113.i
  %or.i476.i = or i64 %add137.i, %add113.i
  %and1.i477.i = and i64 %or.i476.i, %add89.i
  %or2.i478.i = or i64 %and1.i477.i, %and.i475.i
  %add159.i = add i64 %xor157.i, %or2.i478.i
  %add160.i = add i64 %add152.i, %add65.i
  %add161.i = add i64 %add159.i, %add152.i
  %or.i479.i = tail call i64 @llvm.fshl.i64(i64 %add160.i, i64 %add160.i, i64 50) #7
  %or.i480.i = tail call i64 @llvm.fshl.i64(i64 %add160.i, i64 %add160.i, i64 46) #7
  %xor164.i = xor i64 %or.i479.i, %or.i480.i
  %or.i481.i = tail call i64 @llvm.fshl.i64(i64 %add160.i, i64 %add160.i, i64 23) #7
  %xor166.i = xor i64 %xor164.i, %or.i481.i
  %xor.i482.i = xor i64 %add136.i, %add112.i
  %and.i483.i = and i64 %add160.i, %xor.i482.i
  %xor1.i484.i = xor i64 %and.i483.i, %add112.i
  %add170.i = or i32 %i.0516.i, 6
  %arrayidx171.i = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %add170.i
  %51 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %arrayidx171.i, align 8
  %add174.i = or i32 %and.i, 6
  %arrayidx175.i = getelementptr [16 x i64], ptr %W.i, i32 0, i32 %add174.i
  %53 = ptrtoint ptr %arrayidx175.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx175.i, align 8
  %add167.i = add i64 %54, %52
  %add169.i = add i64 %add167.i, %add88.i
  %add172.i = add i64 %add169.i, %xor1.i484.i
  %add176.i = add i64 %add172.i, %xor166.i
  %or.i485.i = tail call i64 @llvm.fshl.i64(i64 %add161.i, i64 %add161.i, i64 36) #7
  %or.i486.i = tail call i64 @llvm.fshl.i64(i64 %add161.i, i64 %add161.i, i64 30) #7
  %xor179.i = xor i64 %or.i485.i, %or.i486.i
  %or.i487.i = tail call i64 @llvm.fshl.i64(i64 %add161.i, i64 %add161.i, i64 25) #7
  %xor181.i = xor i64 %xor179.i, %or.i487.i
  %and.i488.i = and i64 %add161.i, %add137.i
  %or.i489.i = or i64 %add161.i, %add137.i
  %and1.i490.i = and i64 %or.i489.i, %add113.i
  %or2.i491.i = or i64 %and1.i490.i, %and.i488.i
  %add183.i = add i64 %xor181.i, %or2.i491.i
  %add184.i = add i64 %add176.i, %add89.i
  %add185.i = add i64 %add183.i, %add176.i
  %or.i492.i = tail call i64 @llvm.fshl.i64(i64 %add184.i, i64 %add184.i, i64 50) #7
  %or.i493.i = tail call i64 @llvm.fshl.i64(i64 %add184.i, i64 %add184.i, i64 46) #7
  %xor188.i = xor i64 %or.i492.i, %or.i493.i
  %or.i494.i = tail call i64 @llvm.fshl.i64(i64 %add184.i, i64 %add184.i, i64 23) #7
  %xor190.i = xor i64 %xor188.i, %or.i494.i
  %xor.i495.i = xor i64 %add160.i, %add136.i
  %and.i496.i = and i64 %add184.i, %xor.i495.i
  %xor1.i497.i = xor i64 %and.i496.i, %add136.i
  %add194.i = or i32 %i.0516.i, 7
  %arrayidx195.i = getelementptr [80 x i64], ptr @sha512_K, i32 0, i32 %add194.i
  %55 = ptrtoint ptr %arrayidx195.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %arrayidx195.i, align 8
  %add198.i = or i32 %and.i, 7
  %arrayidx199.i = getelementptr [16 x i64], ptr %W.i, i32 0, i32 %add198.i
  %57 = ptrtoint ptr %arrayidx199.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx199.i, align 8
  %add191.i = add i64 %58, %56
  %add193.i = add i64 %add191.i, %add112.i
  %add196.i = add i64 %add193.i, %xor1.i497.i
  %add200.i = add i64 %add196.i, %xor190.i
  %or.i498.i = tail call i64 @llvm.fshl.i64(i64 %add185.i, i64 %add185.i, i64 36) #7
  %or.i499.i = tail call i64 @llvm.fshl.i64(i64 %add185.i, i64 %add185.i, i64 30) #7
  %xor203.i = xor i64 %or.i498.i, %or.i499.i
  %or.i500.i = tail call i64 @llvm.fshl.i64(i64 %add185.i, i64 %add185.i, i64 25) #7
  %xor205.i = xor i64 %xor203.i, %or.i500.i
  %and.i501.i = and i64 %add185.i, %add161.i
  %or.i502.i = or i64 %add185.i, %add161.i
  %and1.i503.i = and i64 %or.i502.i, %add137.i
  %or2.i504.i = or i64 %and1.i503.i, %and.i501.i
  %add207.i = add i64 %xor205.i, %or2.i504.i
  %add208.i = add i64 %add200.i, %add113.i
  %add209.i = add i64 %add207.i, %add200.i
  %add211.i = add nuw nsw i32 %i.0516.i, 8
  %indvar.next.i = add nuw nsw i32 %indvar.i, 1
  %exitcond519.not.i = icmp eq i32 %indvar.next.i, 10
  br i1 %exitcond519.not.i, label %sha512_transform.exit, label %if.end21.i.for.body.i_crit_edge

if.end21.i.for.body.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

sha512_transform.exit:                            ; preds = %if.end21.i
  %dec = add i32 %blocks.addr.04, -1
  %add214.i = add i64 %add209.i, %2
  %59 = ptrtoint ptr %sst to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %add214.i, ptr %sst, align 8
  %add216.i = add i64 %add185.i, %4
  %60 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %add216.i, ptr %arrayidx1.i, align 8
  %add218.i = add i64 %add161.i, %6
  %61 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %add218.i, ptr %arrayidx2.i, align 8
  %add220.i = add i64 %add137.i, %8
  %62 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %add220.i, ptr %arrayidx3.i, align 8
  %add222.i = add i64 %add208.i, %10
  %63 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %add222.i, ptr %arrayidx4.i, align 8
  %add224.i = add i64 %add184.i, %12
  %64 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %add224.i, ptr %arrayidx5.i, align 8
  %add226.i = add i64 %add160.i, %14
  %65 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %add226.i, ptr %arrayidx6.i, align 8
  %add228.i = add i64 %add136.i, %16
  %66 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %add228.i, ptr %arrayidx7.i, align 8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %W.i) #7
  %add.ptr = getelementptr i8, ptr %src.addr.03, i32 128
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %sha512_transform.exit.while.end_crit_edge, label %sha512_transform.exit.while.body_crit_edge

sha512_transform.exit.while.body_crit_edge:       ; preds = %sha512_transform.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

sha512_transform.exit.while.end_crit_edge:        ; preds = %sha512_transform.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %sha512_transform.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @crypto_sha512_finup(ptr noundef %desc, ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef writeonly %hash) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 127
  %conv1.i = zext i32 %len to i64
  %add.i = add i64 %1, %conv1.i
  store i64 %add.i, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv1.i)
  %cmp.i = icmp ult i64 %add.i, %conv1.i
  br i1 %cmp.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9.i = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %3 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx9.i, align 8
  %inc.i = add i64 %4, 1
  store i64 %inc.i, ptr %arrayidx9.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %add10.i = add i32 %conv.i, %len
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add10.i)
  %cmp11.i = icmp ugt i32 %add10.i, 127
  br i1 %cmp11.i, label %if.then14.i, label %if.end.i.if.end27.i_crit_edge, !prof !46

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool15.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool15.not.i, label %if.then14.i.if.end21.i_crit_edge, label %if.then16.i

if.then14.i.if.end21.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then16.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub nuw nsw i32 128, %conv.i
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %add.ptr.i = getelementptr i8, ptr %buf.i, i32 %conv.i
  %5 = call ptr @memcpy(ptr %add.ptr.i, ptr %data, i32 %sub.i)
  %add.ptr17.i = getelementptr i8, ptr %data, i32 %sub.i
  %sub18.i = sub i32 %len, %sub.i
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #7
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %if.then14.i.if.end21.i_crit_edge
  %len.addr.0.i = phi i32 [ %sub18.i, %if.then16.i ], [ %len, %if.then14.i.if.end21.i_crit_edge ]
  %data.addr.0.i = phi ptr [ %add.ptr17.i, %if.then16.i ], [ %data, %if.then14.i.if.end21.i_crit_edge ]
  %rem22.i = and i32 %len.addr.0.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len.addr.0.i)
  %tobool23.not.i = icmp ult i32 %len.addr.0.i, 128
  br i1 %tobool23.not.i, label %if.end21.i.if.end27.i_crit_edge, label %if.then24.i

if.end21.i.if.end27.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then24.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %div1.i = lshr i32 %len.addr.0.i, 7
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %data.addr.0.i, i32 noundef %div1.i) #7
  %mul.i = and i32 %len.addr.0.i, -128
  %add.ptr25.i = getelementptr i8, ptr %data.addr.0.i, i32 %mul.i
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then24.i, %if.end21.i.if.end27.i_crit_edge, %if.end.i.if.end27.i_crit_edge
  %len.addr.1.i = phi i32 [ %len, %if.end.i.if.end27.i_crit_edge ], [ %rem22.i, %if.then24.i ], [ %rem22.i, %if.end21.i.if.end27.i_crit_edge ]
  %partial.0.i = phi i32 [ %conv.i, %if.end.i.if.end27.i_crit_edge ], [ 0, %if.then24.i ], [ 0, %if.end21.i.if.end27.i_crit_edge ]
  %data.addr.2.i = phi ptr [ %data, %if.end.i.if.end27.i_crit_edge ], [ %add.ptr25.i, %if.then24.i ], [ %data.addr.0.i, %if.end21.i.if.end27.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.addr.1.i)
  %tobool28.not.i = icmp eq i32 %len.addr.1.i, 0
  br i1 %tobool28.not.i, label %if.end27.i.sha512_base_do_update.exit_crit_edge, label %if.then29.i

if.end27.i.sha512_base_do_update.exit_crit_edge:  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sha512_base_do_update.exit

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %buf30.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %add.ptr32.i = getelementptr i8, ptr %buf30.i, i32 %partial.0.i
  %6 = call ptr @memcpy(ptr %add.ptr32.i, ptr %data.addr.2.i, i32 %len.addr.1.i)
  br label %sha512_base_do_update.exit

sha512_base_do_update.exit:                       ; preds = %if.then29.i, %if.end27.i.sha512_base_do_update.exit_crit_edge
  %buf.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %7 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %count.i, align 8
  %9 = trunc i64 %8 to i32
  %conv.i.i = and i32 %9, 127
  %inc.i.i = add nuw nsw i32 %conv.i.i, 1
  %arrayidx2.i.i = getelementptr %struct.sha512_state, ptr %__ctx.i.i, i32 0, i32 2, i32 %conv.i.i
  %10 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -128, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %conv.i.i)
  %cmp.i.i = icmp ugt i32 %conv.i.i, 111
  br i1 %cmp.i.i, label %if.then.i.i, label %sha512_base_do_update.exit.sha512_base_do_finalize.exit.i_crit_edge

sha512_base_do_update.exit.sha512_base_do_finalize.exit.i_crit_edge: ; preds = %sha512_base_do_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sha512_base_do_finalize.exit.i

if.then.i.i:                                      ; preds = %sha512_base_do_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6.i.i = getelementptr i8, ptr %buf.i.i, i32 %inc.i.i
  %sub.i.i = xor i32 %conv.i.i, 127
  %11 = call ptr @memset(ptr %add.ptr6.i.i, i32 0, i32 %sub.i.i)
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1) #7
  br label %sha512_base_do_finalize.exit.i

sha512_base_do_finalize.exit.i:                   ; preds = %if.then.i.i, %sha512_base_do_update.exit.sha512_base_do_finalize.exit.i_crit_edge
  %partial.0.i.i = phi i32 [ 0, %if.then.i.i ], [ %inc.i.i, %sha512_base_do_update.exit.sha512_base_do_finalize.exit.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 25
  %add.ptr11.i.i = getelementptr i8, ptr %buf.i.i, i32 %partial.0.i.i
  %sub12.i.i = sub nuw nsw i32 112, %partial.0.i.i
  %12 = call ptr @memset(ptr %add.ptr11.i.i, i32 0, i32 %sub12.i.i)
  %arrayidx14.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %13 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %arrayidx14.i.i, align 8
  %15 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %count.i, align 8
  %or.i.i = tail call i64 @llvm.fshl.i64(i64 %14, i64 %16, i64 3) #7
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %or.i.i, ptr %add.ptr.i.i, align 8
  %shl20.i.i = shl i64 %16, 3
  %arrayidx21.i.i = getelementptr %struct.shash_desc, ptr %desc, i32 26
  %18 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %shl20.i.i, ptr %arrayidx21.i.i, align 8
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %buf.i.i, i32 noundef 1) #7
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %20, i32 0, i32 2, i32 3
  %21 = ptrtoint ptr %__crt_alg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %__crt_alg.i.i.i.i, align 4
  %digestsize.i.i.i = getelementptr i8, ptr %22, i32 -128
  %23 = ptrtoint ptr %digestsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %digestsize.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not1.i.i = icmp eq i32 %24, 0
  br i1 %cmp.not1.i.i, label %sha512_base_do_finalize.exit.i.sha512_final.exit_crit_edge, label %sha512_base_do_finalize.exit.i.for.body.i.i_crit_edge

sha512_base_do_finalize.exit.i.for.body.i.i_crit_edge: ; preds = %sha512_base_do_finalize.exit.i
  br label %for.body.i.i

sha512_base_do_finalize.exit.i.sha512_final.exit_crit_edge: ; preds = %sha512_base_do_finalize.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sha512_final.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %sha512_base_do_finalize.exit.i.for.body.i.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i4.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %sha512_base_do_finalize.exit.i.for.body.i.i_crit_edge ]
  %digest.03.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %hash, %sha512_base_do_finalize.exit.i.for.body.i.i_crit_edge ]
  %digest_size.02.i.i = phi i32 [ %sub.i5.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %24, %sha512_base_do_finalize.exit.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [8 x i64], ptr %__ctx.i.i, i32 0, i32 %i.04.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i.i, align 8
  %incdec.ptr.i.i = getelementptr i64, ptr %digest.03.i.i, i32 1
  %27 = ptrtoint ptr %digest.03.i.i to i32
  call void @__asan_storeN_noabort(i32 %27, i32 8)
  store i64 %26, ptr %digest.03.i.i, align 1
  %inc.i4.i = add i32 %i.04.i.i, 1
  %sub.i5.i = add i32 %digest_size.02.i.i, -8
  %cmp.not.i.i = icmp eq i32 %sub.i5.i, 0
  br i1 %cmp.not.i.i, label %for.body.i.i.sha512_final.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.sha512_final.exit_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sha512_final.exit

sha512_final.exit:                                ; preds = %for.body.i.i.sha512_final.exit_crit_edge, %sha512_base_do_finalize.exit.i.sha512_final.exit_crit_edge
  %28 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 208)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i.i) #7, !srcloc !47
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sha512_final(ptr noundef %desc, ptr nocapture noundef writeonly %hash) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %buf.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 11
  %count.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %count.i, align 8
  %2 = trunc i64 %1 to i32
  %conv.i = and i32 %2, 127
  %inc.i = add nuw nsw i32 %conv.i, 1
  %arrayidx2.i = getelementptr %struct.sha512_state, ptr %__ctx.i.i, i32 0, i32 2, i32 %conv.i
  %3 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -128, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 111, i32 %conv.i)
  %cmp.i = icmp ugt i32 %conv.i, 111
  br i1 %cmp.i, label %if.then.i, label %entry.sha512_base_do_finalize.exit_crit_edge

entry.sha512_base_do_finalize.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sha512_base_do_finalize.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr6.i = getelementptr i8, ptr %buf.i, i32 %inc.i
  %sub.i = xor i32 %conv.i, 127
  %4 = call ptr @memset(ptr %add.ptr6.i, i32 0, i32 %sub.i)
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #7
  br label %sha512_base_do_finalize.exit

sha512_base_do_finalize.exit:                     ; preds = %if.then.i, %entry.sha512_base_do_finalize.exit_crit_edge
  %partial.0.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %entry.sha512_base_do_finalize.exit_crit_edge ]
  %add.ptr.i = getelementptr %struct.shash_desc, ptr %desc, i32 25
  %add.ptr11.i = getelementptr i8, ptr %buf.i, i32 %partial.0.i
  %sub12.i = sub nuw nsw i32 112, %partial.0.i
  %5 = call ptr @memset(ptr %add.ptr11.i, i32 0, i32 %sub12.i)
  %arrayidx14.i = getelementptr %struct.shash_desc, ptr %desc, i32 10
  %6 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx14.i, align 8
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %count.i, align 8
  %or.i = tail call i64 @llvm.fshl.i64(i64 %7, i64 %9, i64 3) #7
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %or.i, ptr %add.ptr.i, align 8
  %shl20.i = shl i64 %9, 3
  %arrayidx21.i = getelementptr %struct.shash_desc, ptr %desc, i32 26
  %11 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %shl20.i, ptr %arrayidx21.i, align 8
  tail call fastcc void @sha512_generic_block_fn(ptr noundef %__ctx.i.i, ptr noundef %buf.i, i32 noundef 1) #7
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 8
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %13, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %digestsize.i.i = getelementptr i8, ptr %15, i32 -128
  %16 = ptrtoint ptr %digestsize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %digestsize.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not1.i = icmp eq i32 %17, 0
  br i1 %cmp.not1.i, label %sha512_base_do_finalize.exit.sha512_base_finish.exit_crit_edge, label %sha512_base_do_finalize.exit.for.body.i_crit_edge

sha512_base_do_finalize.exit.for.body.i_crit_edge: ; preds = %sha512_base_do_finalize.exit
  br label %for.body.i

sha512_base_do_finalize.exit.sha512_base_finish.exit_crit_edge: ; preds = %sha512_base_do_finalize.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sha512_base_finish.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sha512_base_do_finalize.exit.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i4, %for.body.i.for.body.i_crit_edge ], [ 0, %sha512_base_do_finalize.exit.for.body.i_crit_edge ]
  %digest.03.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %hash, %sha512_base_do_finalize.exit.for.body.i_crit_edge ]
  %digest_size.02.i = phi i32 [ %sub.i5, %for.body.i.for.body.i_crit_edge ], [ %17, %sha512_base_do_finalize.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x i64], ptr %__ctx.i.i, i32 0, i32 %i.04.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx.i, align 8
  %incdec.ptr.i = getelementptr i64, ptr %digest.03.i, i32 1
  %20 = ptrtoint ptr %digest.03.i to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %digest.03.i, align 1
  %inc.i4 = add i32 %i.04.i, 1
  %sub.i5 = add i32 %digest_size.02.i, -8
  %cmp.not.i = icmp eq i32 %sub.i5, 0
  br i1 %cmp.not.i, label %for.body.i.sha512_base_finish.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.sha512_base_finish.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sha512_base_finish.exit

sha512_base_finish.exit:                          ; preds = %for.body.i.sha512_base_finish.exit_crit_edge, %sha512_base_do_finalize.exit.sha512_base_finish.exit_crit_edge
  %21 = call ptr @memset(ptr %__ctx.i.i, i32 0, i32 208)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %__ctx.i.i) #7, !srcloc !47
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sha512_generic_mod_fini() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_shashes(ptr noundef nonnull @sha512_algs, i32 noundef 2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_shashes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sha512_generic_mod_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @crypto_register_shashes(ptr noundef nonnull @sha512_algs, i32 noundef 2) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha512_base_init(ptr nocapture noundef writeonly %desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 7640891576956012808, ptr %__ctx.i, align 8
  %arrayidx2 = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -4942790177534073029, ptr %arrayidx2, align 8
  %arrayidx4 = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 4354685564936845355, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -6534734903238641935, ptr %arrayidx6, align 8
  %arrayidx8 = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 5840696475078001361, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr %struct.shash_desc, ptr %desc, i32 6
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -7276294671716946913, ptr %arrayidx10, align 8
  %arrayidx12 = getelementptr %struct.shash_desc, ptr %desc, i32 7
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 2270897969802886507, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr %struct.shash_desc, ptr %desc, i32 8
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 6620516959819538809, ptr %arrayidx14, align 8
  %count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %8 = call ptr @memset(ptr %count, i32 0, i32 16)
  ret i32 0
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sha384_base_init(ptr nocapture noundef writeonly %desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %__ctx.i = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -3766243637369397544, ptr %__ctx.i, align 8
  %arrayidx2 = getelementptr %struct.shash_desc, ptr %desc, i32 2
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 7105036623409894663, ptr %arrayidx2, align 8
  %arrayidx4 = getelementptr %struct.shash_desc, ptr %desc, i32 3
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -7973340178411365097, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.shash_desc, ptr %desc, i32 4
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 1526699215303891257, ptr %arrayidx6, align 8
  %arrayidx8 = getelementptr %struct.shash_desc, ptr %desc, i32 5
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 7436329637833083697, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr %struct.shash_desc, ptr %desc, i32 6
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -8163818279084223215, ptr %arrayidx10, align 8
  %arrayidx12 = getelementptr %struct.shash_desc, ptr %desc, i32 7
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 -2662702644619276377, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr %struct.shash_desc, ptr %desc, i32 8
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 5167115440072839076, ptr %arrayidx14, align 8
  %count = getelementptr inbounds %struct.shash_desc, ptr %desc, i32 9
  %8 = call ptr @memset(ptr %count, i32 0, i32 16)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_shashes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @sha384_zero_message_hash, !1, !"sha384_zero_message_hash", i1 false, i1 false}
!1 = !{!"../crypto/sha512_generic.c", i32 21, i32 10}
!2 = !{ptr @__ksymtab_sha384_zero_message_hash, !3, !"__ksymtab_sha384_zero_message_hash", i1 false, i1 false}
!3 = !{!"../crypto/sha512_generic.c", i32 29, i32 1}
!4 = !{ptr @sha512_zero_message_hash, !5, !"sha512_zero_message_hash", i1 false, i1 false}
!5 = !{!"../crypto/sha512_generic.c", i32 31, i32 10}
!6 = !{ptr @__ksymtab_sha512_zero_message_hash, !7, !"__ksymtab_sha512_zero_message_hash", i1 false, i1 false}
!7 = !{!"../crypto/sha512_generic.c", i32 41, i32 1}
!8 = !{ptr @__ksymtab_crypto_sha512_update, !9, !"__ksymtab_crypto_sha512_update", i1 false, i1 false}
!9 = !{!"../crypto/sha512_generic.c", i32 162, i32 1}
!10 = !{ptr @__ksymtab_crypto_sha512_finup, !11, !"__ksymtab_crypto_sha512_finup", i1 false, i1 false}
!11 = !{!"../crypto/sha512_generic.c", i32 176, i32 1}
!12 = !{ptr @__initcall__kmod_sha512_generic__226_218_sha512_generic_mod_init4, !13, !"__initcall__kmod_sha512_generic__226_218_sha512_generic_mod_init4", i1 false, i1 false}
!13 = !{!"../crypto/sha512_generic.c", i32 218, i32 1}
!14 = !{ptr @__exitcall_sha512_generic_mod_fini, !15, !"__exitcall_sha512_generic_mod_fini", i1 false, i1 false}
!15 = !{!"../crypto/sha512_generic.c", i32 219, i32 1}
!16 = !{ptr @__UNIQUE_ID_file227, !17, !"__UNIQUE_ID_file227", i1 false, i1 false}
!17 = !{!"../crypto/sha512_generic.c", i32 221, i32 1}
!18 = !{ptr @__UNIQUE_ID_license228, !17, !"__UNIQUE_ID_license228", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_description229, !20, !"__UNIQUE_ID_description229", i1 false, i1 false}
!20 = !{!"../crypto/sha512_generic.c", i32 222, i32 1}
!21 = !{ptr @__UNIQUE_ID_alias_userspace230, !22, !"__UNIQUE_ID_alias_userspace230", i1 false, i1 false}
!22 = !{!"../crypto/sha512_generic.c", i32 224, i32 1}
!23 = !{ptr @__UNIQUE_ID_alias_crypto231, !22, !"__UNIQUE_ID_alias_crypto231", i1 false, i1 false}
!24 = !{ptr @__UNIQUE_ID_alias_userspace232, !25, !"__UNIQUE_ID_alias_userspace232", i1 false, i1 false}
!25 = !{!"../crypto/sha512_generic.c", i32 225, i32 1}
!26 = !{ptr @__UNIQUE_ID_alias_crypto233, !25, !"__UNIQUE_ID_alias_crypto233", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_alias_userspace234, !28, !"__UNIQUE_ID_alias_userspace234", i1 false, i1 false}
!28 = !{!"../crypto/sha512_generic.c", i32 226, i32 1}
!29 = !{ptr @__UNIQUE_ID_alias_crypto235, !28, !"__UNIQUE_ID_alias_crypto235", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_alias_userspace236, !31, !"__UNIQUE_ID_alias_userspace236", i1 false, i1 false}
!31 = !{!"../crypto/sha512_generic.c", i32 227, i32 1}
!32 = !{ptr @__UNIQUE_ID_alias_crypto237, !31, !"__UNIQUE_ID_alias_crypto237", i1 false, i1 false}
!33 = !{ptr @sha512_K, !34, !"sha512_K", i1 false, i1 false}
!34 = !{!"../crypto/sha512_generic.c", i32 53, i32 18}
!35 = !{ptr @sha512_algs, !36, !"sha512_algs", i1 false, i1 false}
!36 = !{!"../crypto/sha512_generic.c", i32 178, i32 25}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 2149227860}
