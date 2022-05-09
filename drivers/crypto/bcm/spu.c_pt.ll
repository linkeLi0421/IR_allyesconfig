; ModuleID = '/llk/IR_all_yes/drivers/crypto/bcm/spu.c_pt.bc'
source_filename = "../drivers/crypto/bcm/spu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spu_hash_parms = type { i32, i32, i32, i8, ptr, i16, i16, i32 }
%struct.spu_aead_parms = type { i32, i16, i8, i8, i8, i32, i32 }
%struct.spu_request_opts = type { i8, i8, i8, i8, i8, i8 }
%struct.spu_cipher_parms = type { i32, i32, i32, ptr, i16, ptr, i16 }
%struct.MHEADER = type { i8, i8, i16 }
%struct.SPUHEADER = type { %struct.MHEADER, i32, %struct.SCTX }
%struct.SCTX = type { i32, i32, i32 }
%struct.BDESC_HEADER = type { i16, i16, i16, i16, i16, i16 }
%struct.BD_HEADER = type { i16, i16 }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"md5\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sha1\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha224\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aes\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha384\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha512\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3_224\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3_256\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3_384\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sha3_512\00", [23 x i8] zeroinitializer }, align 32
@hash_alg_name = dso_local global { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ccm(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gcm(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"authenc\00", [24 x i8] zeroinitializer }, align 32
@aead_alg_name = dso_local global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14], [20 x i8] zeroinitializer }, align 32
@spum_status_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.104, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s() Warning: Error result from SPU: %#08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spum_status_process\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/crypto/bcm/spu.c\00", [39 x i8] zeroinitializer }, align 32
@spum_status_process._entry_ptr = internal global ptr @spum_status_process._entry, section ".printk_index", align 4
@spum_ccm_update_iv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.104, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s(): Invalid IV len %d for CCM mode, should be %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"spum_ccm_update_iv\00", [45 x i8] zeroinitializer }, align 32
@spum_ccm_update_iv._entry_ptr = internal global ptr @spum_ccm_update_iv._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 14, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 14, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 14, i32 42 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 14, i32 50 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 14, i32 60 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 14, i32 70 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 15, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 15, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 15, i32 22 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 15, i32 34 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 15, i32 46 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 15, i32 58 }
@___asan_gen_.144 = private unnamed_addr constant [14 x i8] c"hash_alg_name\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 14, i32 7 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 17, i32 27 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 17, i32 39 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 17, i32 51 }
@___asan_gen_.156 = private unnamed_addr constant [14 x i8] c"aead_alg_name\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 17, i32 7 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 1121, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [28 x i8] c"../drivers/crypto/bcm/spu.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 1153, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @spum_ccm_update_iv._entry, ptr @spum_ccm_update_iv._entry_ptr, ptr @spum_status_process._entry, ptr @spum_status_process._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @hash_alg_name, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @aead_alg_name, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_alg_name to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_alg_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spum_status_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spum_ccm_update_iv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @spum_dump_msg_hdr(ptr nocapture noundef %buf, i32 noundef %buf_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_ns2_ctx_max_payload(i32 noundef %cipher_alg, i32 noundef %cipher_mode, i32 noundef %blocksize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cipher_mode)
  %cmp = icmp eq i32 %cipher_mode, 7
  %spec.select = select i1 %cmp, i32 65519, i32 65535
  %rem = urem i32 %spec.select, %blocksize
  %sub1 = sub nsw i32 %spec.select, %rem
  ret i32 %sub1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_nsp_ctx_max_payload(i32 noundef %cipher_alg, i32 noundef %cipher_mode, i32 noundef %blocksize) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cipher_mode)
  %cmp = icmp eq i32 %cipher_mode, 7
  %spec.select = select i1 %cmp, i32 8176, i32 8192
  %rem = urem i32 %spec.select, %blocksize
  %sub1 = sub nsw i32 %spec.select, %rem
  ret i32 %sub1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_payload_length(ptr nocapture noundef readonly %spu_hdr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %spu_hdr, i32 8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %add.ptr, align 2
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @spum_response_hdr_len(i16 noundef zeroext %auth_key_len, i16 noundef zeroext %enc_key_len, i1 noundef zeroext %is_hash) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %. = select i1 %is_hash, i16 8, i16 12
  ret i16 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @spum_hash_pad_len(i32 noundef %hash_alg, i32 noundef %hash_mode, i32 noundef %chunksize, i16 noundef zeroext %hash_block_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %hash_alg)
  %cmp = icmp eq i32 %hash_alg, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hash_mode)
  %cmp1 = icmp eq i32 %hash_mode, 0
  %or.cond = and i1 %cmp, %cmp1
  %conv = zext i16 %hash_block_size to i32
  %rem = urem i32 %chunksize, %conv
  br i1 %or.cond, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp4.not.not = icmp eq i32 %rem, 0
  %spec.select = select i1 %cmp4.not.not, i32 0, i32 %conv
  %hash_pad_len.0 = sub nsw i32 %spec.select, %rem
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = and i32 %hash_alg, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %switch = icmp eq i32 %0, 6
  %add.neg = select i1 %switch, i32 -17, i32 -9
  %add19.neg = add nsw i32 %add.neg, %conv
  %sub21 = sub nsw i32 %add19.neg, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub21)
  %cmp22 = icmp slt i32 %sub21, 0
  %add26 = select i1 %cmp22, i32 %conv, i32 0
  %spec.select51 = select i1 %switch, i32 17, i32 9
  %add28 = add nsw i32 %spec.select51, %sub21
  %add29 = add nsw i32 %add28, %add26
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then
  %retval.0.in = phi i32 [ %hash_pad_len.0, %if.then ], [ %add29, %if.end10 ]
  %retval.0 = trunc i32 %retval.0.in to i16
  ret i16 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_gcm_ccm_pad_len(i32 noundef %cipher_mode, i32 noundef %data_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cipher_mode.off = add i32 %cipher_mode, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cipher_mode.off)
  %switch = icmp ult i32 %cipher_mode.off, 2
  %add = add i32 %data_size, 15
  %and = and i32 %add, -16
  %sub = sub i32 %and, %data_size
  %pad_len.0 = select i1 %switch, i32 %sub, i32 0
  ret i32 %pad_len.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_assoc_resp_len(i32 noundef %cipher_mode, i32 noundef %assoc_len, i32 noundef %iv_len, i1 noundef zeroext %is_encrypt) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cipher_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cipher_mode, label %entry.if.end8_crit_edge [
    i32 6, label %if.end2.thread
    i32 5, label %if.then4
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end2.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %assoc_len, 15
  %and.i = and i32 %add.i, -16
  br label %if.end8

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.i18 = add i32 %assoc_len, 17
  %and.i19 = and i32 %add.i18, -16
  %add7 = add i32 %and.i19, -2
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end2.thread, %entry.if.end8_crit_edge
  %buflen.2 = phi i32 [ %add7, %if.then4 ], [ %and.i, %if.end2.thread ], [ %assoc_len, %entry.if.end8_crit_edge ]
  ret i32 %buflen.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spum_aead_ivlen(i32 noundef %cipher_mode, i16 noundef zeroext %iv_len) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_hash_type(i32 noundef %src_sent) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_sent)
  %tobool.not = icmp eq i32 %src_sent, 0
  %cond = select i1 %tobool.not, i32 1, i32 2
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_digest_size(i32 noundef %alg_digest_size, i32 noundef %alg, i32 noundef %htype) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %htype.off = add i32 %htype, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %htype.off)
  %switch = icmp ult i32 %htype.off, 2
  br i1 %switch, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %0 = zext i32 %alg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %alg, label %if.end7.fold.split [
    i32 3, label %if.then.if.end7_crit_edge
    i32 6, label %if.then5
  ]

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7.fold.split:                               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %if.end7.fold.split, %if.then5, %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %digestsize.0 = phi i32 [ 64, %if.then5 ], [ %alg_digest_size, %entry.if.end7_crit_edge ], [ 32, %if.then.if.end7_crit_edge ], [ %alg_digest_size, %if.end7.fold.split ]
  ret i32 %digestsize.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spum_create_request(ptr nocapture noundef %spu_hdr, ptr nocapture noundef readonly %req_opts, ptr nocapture noundef readonly %cipher_parms, ptr nocapture noundef readonly %hash_parms, ptr nocapture noundef readonly %aead_parms, i32 noundef %data_size) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prebuf_len = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 6
  %0 = ptrtoint ptr %prebuf_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prebuf_len, align 2
  %conv = zext i16 %1 to i32
  %pad_len = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 7
  %2 = ptrtoint ptr %pad_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad_len, align 4
  %add = add i32 %3, %conv
  %add1 = add i32 %add, %data_size
  %4 = ptrtoint ptr %aead_parms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %aead_parms, align 4
  %iv_len = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 1
  %6 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %iv_len, align 4
  %conv2 = zext i16 %7 to i32
  %add3 = add i32 %5, %conv2
  %aad_pad_len = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 2
  %8 = ptrtoint ptr %aad_pad_len to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %aad_pad_len, align 2
  %conv4 = zext i8 %9 to i32
  %add5 = add i32 %add3, %conv4
  %data_pad_len = getelementptr inbounds %struct.spu_aead_parms, ptr %aead_parms, i32 0, i32 3
  %10 = ptrtoint ptr %data_pad_len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data_pad_len, align 1
  %conv13 = zext i8 %11 to i32
  %add3.i = add i32 %add1, %add3
  %add4.i = add i32 %add3.i, %conv4
  %add5.i = add i32 %add4.i, %conv13
  %is_aead = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 2
  %12 = ptrtoint ptr %is_aead to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_aead, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %land.lhs.true

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true:                                    ; preds = %entry
  %14 = ptrtoint ptr %req_opts to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %req_opts, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not = icmp eq i8 %15, 0
  br i1 %tobool16.not, label %land.lhs.true.if.end30_crit_edge, label %land.lhs.true22

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true22:                                  ; preds = %land.lhs.true
  %digestsize = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 3
  %16 = ptrtoint ptr %digestsize to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %digestsize, align 4
  %conv18 = zext i8 %17 to i32
  %sub = sub i32 %add1, %conv18
  %18 = ptrtoint ptr %req_opts to i32
  call void @__asan_load1_noabort(i32 %18)
  %.pr = load i8, ptr %req_opts, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool24.not = icmp eq i8 %.pr, 0
  br i1 %tobool24.not, label %land.lhs.true22.if.end30_crit_edge, label %if.then26

land.lhs.true22.if.end30_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %digestsize to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %digestsize, align 4
  %conv28 = zext i8 %20 to i32
  %sub29 = sub i32 %add5.i, %conv28
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %land.lhs.true22.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %entry.if.end30_crit_edge
  %cipher_len.0419 = phi i32 [ %sub, %if.then26 ], [ %sub, %land.lhs.true22.if.end30_crit_edge ], [ %add1, %entry.if.end30_crit_edge ], [ %add1, %land.lhs.true.if.end30_crit_edge ]
  %auth_len.0 = phi i32 [ %sub29, %if.then26 ], [ %add5.i, %land.lhs.true22.if.end30_crit_edge ], [ %add5.i, %entry.if.end30_crit_edge ], [ %add5.i, %land.lhs.true.if.end30_crit_edge ]
  %21 = ptrtoint ptr %hash_parms to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hash_parms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %cmp = icmp eq i32 %22, 5
  br i1 %cmp, label %land.lhs.true32, label %if.end30.if.end40_crit_edge

if.end30.if.end40_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

land.lhs.true32:                                  ; preds = %if.end30
  %mode = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 1
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp33 = icmp eq i32 %24, 0
  br i1 %cmp33, label %if.then35, label %land.lhs.true32.if.end40_crit_edge

land.lhs.true32.if.end40_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then35:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  %sub37 = sub i32 %auth_len.0, %3
  %sub39 = sub i32 %cipher_len.0419, %3
  br label %if.end40

if.end40:                                         ; preds = %if.then35, %land.lhs.true32.if.end40_crit_edge, %if.end30.if.end40_crit_edge
  %cipher_len.1 = phi i32 [ %sub39, %if.then35 ], [ %cipher_len.0419, %land.lhs.true32.if.end40_crit_edge ], [ %cipher_len.0419, %if.end30.if.end40_crit_edge ]
  %auth_len.1 = phi i32 [ %sub37, %if.then35 ], [ %auth_len.0, %land.lhs.true32.if.end40_crit_edge ], [ %auth_len.0, %if.end30.if.end40_crit_edge ]
  %auth_first = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 1
  %25 = ptrtoint ptr %cipher_parms to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cipher_parms, align 4
  %mode47 = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 1
  %27 = ptrtoint ptr %mode47 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode47, align 4
  %call48 = tail call ptr @spu_alg_name(i32 noundef %26, i32 noundef %28) #8
  %type = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 2
  %key_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 4
  %key_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 3
  %iv_len54 = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 6
  %iv_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 5
  %mode59 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 1
  %type60 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 2
  %digestsize61 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 3
  %key_len63 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 5
  %key_buf65 = getelementptr inbounds %struct.spu_hash_parms, ptr %hash_parms, i32 0, i32 4
  %29 = getelementptr inbounds i8, ptr %spu_hdr, i32 2
  %30 = call ptr @memset(ptr %29, i32 0, i32 18)
  %add.ptr = getelementptr i8, ptr %spu_hdr, i32 20
  %op_code = getelementptr inbounds %struct.MHEADER, ptr %spu_hdr, i32 0, i32 1
  %31 = ptrtoint ptr %op_code to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %op_code, align 1
  %32 = ptrtoint ptr %spu_hdr to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -88, ptr %spu_hdr, align 4
  %33 = ptrtoint ptr %req_opts to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %req_opts, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool79.not = icmp eq i8 %34, 0
  %spec.select = select i1 %tobool79.not, i32 0, i32 -2147483648
  %35 = ptrtoint ptr %auth_first to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %auth_first, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool84.not = icmp eq i8 %36, 0
  %or86 = or i32 %spec.select, 1073741824
  %cipher_bits.1 = select i1 %tobool84.not, i32 %spec.select, i32 %or86
  %37 = ptrtoint ptr %cipher_parms to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cipher_parms, align 4
  %shl = shl i32 %38, 21
  %or89 = or i32 %cipher_bits.1, %shl
  %39 = ptrtoint ptr %mode47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode47, align 4
  %shl91 = shl i32 %40, 18
  %or92 = or i32 %or89, %shl91
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type, align 4
  %shl94 = shl i32 %42, 16
  %or95 = or i32 %or92, %shl94
  %43 = ptrtoint ptr %hash_parms to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hash_parms, align 4
  %shl97 = shl i32 %44, 13
  %or98 = or i32 %or95, %shl97
  %45 = ptrtoint ptr %mode59 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mode59, align 4
  %shl100 = shl i32 %46, 10
  %or101 = or i32 %or98, %shl100
  %47 = ptrtoint ptr %type60 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type60, align 4
  %shl103 = shl i32 %48, 8
  %or104 = or i32 %or101, %shl103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool106.not = icmp eq i32 %44, 0
  br i1 %tobool106.not, label %if.end40.if.end163_crit_edge, label %if.then107

if.end40.if.end163_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

if.then107:                                       ; preds = %if.end40
  %49 = ptrtoint ptr %key_len63 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %key_len63, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool109.not = icmp eq i16 %50, 0
  br i1 %tobool109.not, label %if.then107.if.end125_crit_edge, label %if.then110

if.then107.if.end125_crit_edge:                   ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then110:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %key_buf65 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %key_buf65, align 4
  %conv113 = zext i16 %50 to i32
  %53 = call ptr @memcpy(ptr %add.ptr, ptr %52, i32 %conv113)
  %54 = ptrtoint ptr %key_len63 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %key_len63, align 4
  %conv115 = zext i16 %55 to i32
  %add.ptr116 = getelementptr i8, ptr %add.ptr, i32 %conv115
  %add119 = add nuw nsw i32 %conv115, 20
  %div411 = lshr i16 %55, 2
  %56 = trunc i16 %div411 to i8
  %conv124 = add i8 %56, 3
  br label %if.end125

if.end125:                                        ; preds = %if.then110, %if.then107.if.end125_crit_edge
  %ptr.0 = phi ptr [ %add.ptr116, %if.then110 ], [ %add.ptr, %if.then107.if.end125_crit_edge ]
  %sctx_words.0 = phi i8 [ %conv124, %if.then110 ], [ 3, %if.then107.if.end125_crit_edge ]
  %buf_len.0 = phi i32 [ %add119, %if.then110 ], [ 20, %if.then107.if.end125_crit_edge ]
  %57 = ptrtoint ptr %mode47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mode47, align 4
  %.off = add i32 %58, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then132, label %if.end125.if.end134_crit_edge

if.end125.if.end134_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.then132:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %aead_parms to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %aead_parms, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end125.if.end134_crit_edge
  %spec.select415 = phi i32 [ 0, %if.end125.if.end134_crit_edge ], [ 8192, %if.then132 ]
  %offset_iv.0 = phi i32 [ 0, %if.end125.if.end134_crit_edge ], [ %60, %if.then132 ]
  %61 = ptrtoint ptr %req_opts to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %req_opts, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool136.not = icmp eq i8 %62, 0
  %spec.select422 = select i1 %tobool136.not, i32 %spec.select415, i32 4096
  %63 = ptrtoint ptr %digestsize61 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %digestsize61, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %64)
  %cmp152 = icmp eq i8 %64, 64
  br i1 %cmp152, label %if.then154, label %if.else156

if.then154:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  %or155 = or i32 %or104, 134217728
  br label %if.end163

if.else156:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #10
  %65 = lshr i8 %64, 2
  %div159 = zext i8 %65 to i32
  %shl160 = shl nuw nsw i32 %div159, 8
  %or161 = or i32 %shl160, %spec.select422
  br label %if.end163

if.end163:                                        ; preds = %if.else156, %if.then154, %if.end40.if.end163_crit_edge
  %ptr.1 = phi ptr [ %ptr.0, %if.then154 ], [ %ptr.0, %if.else156 ], [ %add.ptr, %if.end40.if.end163_crit_edge ]
  %cipher_bits.2 = phi i32 [ %or155, %if.then154 ], [ %or104, %if.else156 ], [ %or104, %if.end40.if.end163_crit_edge ]
  %ecf_bits.1 = phi i32 [ %spec.select422, %if.then154 ], [ %or161, %if.else156 ], [ 0, %if.end40.if.end163_crit_edge ]
  %sctx_words.1 = phi i8 [ %sctx_words.0, %if.then154 ], [ %sctx_words.0, %if.else156 ], [ 3, %if.end40.if.end163_crit_edge ]
  %buf_len.1 = phi i32 [ %buf_len.0, %if.then154 ], [ %buf_len.0, %if.else156 ], [ 20, %if.end40.if.end163_crit_edge ]
  %offset_iv.1 = phi i32 [ %offset_iv.0, %if.then154 ], [ %offset_iv.0, %if.else156 ], [ 0, %if.end40.if.end163_crit_edge ]
  %bd_suppress = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 4
  %66 = ptrtoint ptr %bd_suppress to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bd_suppress, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool164.not = icmp eq i8 %67, 0
  %or166 = or i32 %ecf_bits.1, 524288
  %spec.select412 = select i1 %tobool164.not, i32 %ecf_bits.1, i32 %or166
  %68 = ptrtoint ptr %cipher_parms to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cipher_parms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool169.not = icmp eq i32 %69, 0
  br i1 %tobool169.not, label %if.end163.if.end214_crit_edge, label %if.then170

if.end163.if.end214_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

if.then170:                                       ; preds = %if.end163
  %70 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool172.not = icmp eq i16 %71, 0
  br i1 %tobool172.not, label %if.then170.if.end189_crit_edge, label %if.then173

if.then170.if.end189_crit_edge:                   ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end189

if.then173:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %key_buf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %key_buf, align 4
  %conv176 = zext i16 %71 to i32
  %74 = call ptr @memcpy(ptr %ptr.1, ptr %73, i32 %conv176)
  %75 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %key_len, align 4
  %conv178 = zext i16 %76 to i32
  %add.ptr179 = getelementptr i8, ptr %ptr.1, i32 %conv178
  %add182 = add nuw nsw i32 %buf_len.1, %conv178
  %div185410 = lshr i16 %76, 2
  %77 = trunc i16 %div185410 to i8
  %conv188 = add i8 %sctx_words.1, %77
  br label %if.end189

if.end189:                                        ; preds = %if.then173, %if.then170.if.end189_crit_edge
  %ptr.2 = phi ptr [ %add.ptr179, %if.then173 ], [ %ptr.1, %if.then170.if.end189_crit_edge ]
  %sctx_words.2 = phi i8 [ %conv188, %if.then173 ], [ %sctx_words.1, %if.then170.if.end189_crit_edge ]
  %buf_len.2 = phi i32 [ %add182, %if.then173 ], [ %buf_len.1, %if.then170.if.end189_crit_edge ]
  %78 = ptrtoint ptr %iv_buf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %iv_buf, align 4
  %tobool191.not = icmp eq ptr %79, null
  br i1 %tobool191.not, label %if.end189.if.end214_crit_edge, label %land.lhs.true192

if.end189.if.end214_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

land.lhs.true192:                                 ; preds = %if.end189
  %80 = ptrtoint ptr %iv_len54 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %iv_len54, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool195.not = icmp eq i16 %81, 0
  br i1 %tobool195.not, label %land.lhs.true192.if.end214_crit_edge, label %if.then196

land.lhs.true192.if.end214_crit_edge:             ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end214

if.then196:                                       ; preds = %land.lhs.true192
  call void @__sanitizer_cov_trace_pc() #10
  %conv194 = zext i16 %81 to i32
  %or197 = or i32 %spec.select412, 128
  %82 = call ptr @memcpy(ptr %ptr.2, ptr %79, i32 %conv194)
  %83 = ptrtoint ptr %iv_len54 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %iv_len54, align 4
  %conv202 = zext i16 %84 to i32
  %add.ptr203 = getelementptr i8, ptr %ptr.2, i32 %conv202
  %add206 = add nuw nsw i32 %buf_len.2, %conv202
  %div209409 = lshr i16 %84, 2
  %85 = trunc i16 %div209409 to i8
  %conv212 = add i8 %sctx_words.2, %85
  br label %if.end214

if.end214:                                        ; preds = %if.then196, %land.lhs.true192.if.end214_crit_edge, %if.end189.if.end214_crit_edge, %if.end163.if.end214_crit_edge
  %ptr.3 = phi ptr [ %add.ptr203, %if.then196 ], [ %ptr.2, %land.lhs.true192.if.end214_crit_edge ], [ %ptr.2, %if.end189.if.end214_crit_edge ], [ %ptr.1, %if.end163.if.end214_crit_edge ]
  %ecf_bits.3 = phi i32 [ %or197, %if.then196 ], [ %spec.select412, %land.lhs.true192.if.end214_crit_edge ], [ %spec.select412, %if.end189.if.end214_crit_edge ], [ %spec.select412, %if.end163.if.end214_crit_edge ]
  %sctx_words.3 = phi i8 [ %conv212, %if.then196 ], [ %sctx_words.2, %land.lhs.true192.if.end214_crit_edge ], [ %sctx_words.2, %if.end189.if.end214_crit_edge ], [ %sctx_words.1, %if.end163.if.end214_crit_edge ]
  %buf_len.3 = phi i32 [ %add206, %if.then196 ], [ %buf_len.2, %land.lhs.true192.if.end214_crit_edge ], [ %buf_len.2, %if.end189.if.end214_crit_edge ], [ %buf_len.1, %if.end163.if.end214_crit_edge ]
  %is_rfc4543 = getelementptr inbounds %struct.spu_request_opts, ptr %req_opts, i32 0, i32 5
  %86 = ptrtoint ptr %is_rfc4543 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %is_rfc4543, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool215.not = icmp eq i8 %87, 0
  br i1 %tobool215.not, label %if.end214.if.end229_crit_edge, label %if.then216

if.end214.if.end229_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end229

if.then216:                                       ; preds = %if.end214
  %88 = ptrtoint ptr %req_opts to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %req_opts, align 1, !range !234
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool218.not = icmp eq i8 %89, 0
  br i1 %tobool218.not, label %if.then216.if.end223_crit_edge, label %if.then219

if.then216.if.end223_crit_edge:                   ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end223

if.then219:                                       ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %digestsize61 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %digestsize61, align 4
  %conv221 = zext i8 %91 to i32
  %sub222 = sub i32 %data_size, %conv221
  br label %if.end223

if.end223:                                        ; preds = %if.then219, %if.then216.if.end223_crit_edge
  %data_size.addr.0 = phi i32 [ %sub222, %if.then219 ], [ %data_size, %if.then216.if.end223_crit_edge ]
  %92 = ptrtoint ptr %aead_parms to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %aead_parms, align 4
  %add225 = add i32 %93, %data_size.addr.0
  %94 = ptrtoint ptr %data_pad_len to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %data_pad_len, align 1
  %conv227 = zext i8 %95 to i32
  %add228 = add i32 %add225, %conv227
  br label %if.end229

if.end229:                                        ; preds = %if.end223, %if.end214.if.end229_crit_edge
  %cipher_len.2 = phi i32 [ 0, %if.end223 ], [ %cipher_len.1, %if.end214.if.end229_crit_edge ]
  %cipher_offset.0 = phi i32 [ %add225, %if.end223 ], [ %add5, %if.end214.if.end229_crit_edge ]
  %offset_iv.2 = phi i32 [ %add225, %if.end223 ], [ %offset_iv.1, %if.end214.if.end229_crit_edge ]
  %auth_len.2 = phi i32 [ %add228, %if.end223 ], [ %auth_len.1, %if.end214.if.end229_crit_edge ]
  %conv230 = zext i8 %sctx_words.3 to i32
  %sa = getelementptr inbounds %struct.SPUHEADER, ptr %spu_hdr, i32 0, i32 2
  %96 = ptrtoint ptr %sa to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %conv230, ptr %sa, align 4
  %cipher_flags = getelementptr inbounds %struct.SPUHEADER, ptr %spu_hdr, i32 0, i32 2, i32 1
  %97 = ptrtoint ptr %cipher_flags to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %cipher_bits.2, ptr %cipher_flags, align 4
  %ecf = getelementptr inbounds %struct.SPUHEADER, ptr %spu_hdr, i32 0, i32 2, i32 2
  %98 = ptrtoint ptr %ecf to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %ecf_bits.3, ptr %ecf, align 4
  %99 = ptrtoint ptr %ptr.3 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 0, ptr %ptr.3, align 2
  %conv235 = trunc i32 %auth_len.2 to i16
  %length_mac = getelementptr inbounds %struct.BDESC_HEADER, ptr %ptr.3, i32 0, i32 1
  %100 = ptrtoint ptr %length_mac to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv235, ptr %length_mac, align 2
  %conv236 = trunc i32 %cipher_offset.0 to i16
  %offset_crypto = getelementptr inbounds %struct.BDESC_HEADER, ptr %ptr.3, i32 0, i32 2
  %101 = ptrtoint ptr %offset_crypto to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv236, ptr %offset_crypto, align 2
  %conv237 = trunc i32 %cipher_len.2 to i16
  %length_crypto = getelementptr inbounds %struct.BDESC_HEADER, ptr %ptr.3, i32 0, i32 3
  %102 = ptrtoint ptr %length_crypto to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %conv237, ptr %length_crypto, align 2
  %103 = ptrtoint ptr %mode47 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %mode47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %104)
  %cmp239 = icmp eq i32 %104, 5
  %add.i416 = add i32 %auth_len.2, 3
  %and.i = and i32 %add.i416, 65532
  %auth_len.3 = select i1 %cmp239, i32 %and.i, i32 %auth_len.2
  %conv245 = trunc i32 %auth_len.3 to i16
  %offset_icv = getelementptr inbounds %struct.BDESC_HEADER, ptr %ptr.3, i32 0, i32 4
  %105 = ptrtoint ptr %offset_icv to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv245, ptr %offset_icv, align 2
  %conv246 = trunc i32 %offset_iv.2 to i16
  %offset_iv247 = getelementptr inbounds %struct.BDESC_HEADER, ptr %ptr.3, i32 0, i32 5
  %106 = ptrtoint ptr %offset_iv247 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv246, ptr %offset_iv247, align 2
  %add.ptr248 = getelementptr i8, ptr %ptr.3, i32 12
  %conv250 = trunc i32 %add5.i to i16
  %107 = ptrtoint ptr %add.ptr248 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv250, ptr %add.ptr248, align 2
  %prev_length = getelementptr i8, ptr %ptr.3, i32 14
  %108 = ptrtoint ptr %prev_length to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %prev_length, align 2
  %add252 = add nuw nsw i32 %buf_len.3, 16
  ret i32 %add252
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spu_alg_name(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @spum_wordalign_padlen(i32 noundef %data_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %data_size, 3
  %and = and i32 %add, -4
  %sub = sub i32 %and, %data_size
  ret i32 %sub
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @spum_cipher_req_init(ptr nocapture noundef %spu_hdr, ptr nocapture noundef readonly %cipher_parms) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 1
  %type = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 2
  %iv_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 6
  %key_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 4
  %key_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 3
  %0 = getelementptr inbounds i8, ptr %spu_hdr, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 18)
  %op_code = getelementptr inbounds %struct.MHEADER, ptr %spu_hdr, i32 0, i32 1
  %2 = ptrtoint ptr %op_code to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %op_code, align 1
  %3 = ptrtoint ptr %spu_hdr to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -88, ptr %spu_hdr, align 4
  %4 = ptrtoint ptr %cipher_parms to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cipher_parms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end32, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %key_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool9.not = icmp eq i16 %7, 0
  %8 = lshr i16 %7, 2
  %9 = trunc i16 %8 to i8
  %conv17 = add i8 %9, 3
  %sctx_words.0 = select i1 %tobool9.not, i8 3, i8 %conv17
  %10 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %iv_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool19.not = icmp eq i16 %11, 0
  %12 = lshr i16 %11, 2
  %div27 = trunc i16 %12 to i8
  %ecf_bits.0.ph = select i1 %tobool19.not, i32 0, i32 128
  %add29 = select i1 %tobool19.not, i8 0, i8 %div27
  %sctx_words.1.ph = add i8 %sctx_words.0, %add29
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 4
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  br i1 %tobool9.not, label %if.then.if.end51_crit_edge, label %if.then46

if.then.if.end51_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end32:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 4
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  br label %if.end51

if.then46:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv44 = zext i16 %7 to i32
  %add.ptr47 = getelementptr %struct.SPUHEADER, ptr %spu_hdr, i32 1
  %21 = ptrtoint ptr %key_buf to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %key_buf, align 4
  %23 = call ptr @memcpy(ptr %add.ptr47, ptr %22, i32 %conv44)
  br label %if.end51

if.end51:                                         ; preds = %if.then46, %if.end32, %if.then.if.end51_crit_edge
  %24 = phi i32 [ %16, %if.then46 ], [ %16, %if.then.if.end51_crit_edge ], [ %20, %if.end32 ]
  %25 = phi i32 [ %14, %if.then46 ], [ %14, %if.then.if.end51_crit_edge ], [ %18, %if.end32 ]
  %sctx_words.1110 = phi i8 [ %sctx_words.1.ph, %if.then46 ], [ %sctx_words.1.ph, %if.then.if.end51_crit_edge ], [ 3, %if.end32 ]
  %ecf_bits.0108 = phi i32 [ %ecf_bits.0.ph, %if.then46 ], [ %ecf_bits.0.ph, %if.then.if.end51_crit_edge ], [ 0, %if.end32 ]
  %shl = shl i32 %5, 21
  %shl36 = shl i32 %25, 18
  %shl39 = shl i32 %24, 16
  %or37 = or i32 %shl39, %shl
  %or40 = or i32 %or37, %shl36
  %conv52 = zext i8 %sctx_words.1110 to i32
  %sa = getelementptr inbounds %struct.SPUHEADER, ptr %spu_hdr, i32 0, i32 2
  %26 = ptrtoint ptr %sa to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv52, ptr %sa, align 4
  %cipher_flags = getelementptr inbounds %struct.SPUHEADER, ptr %spu_hdr, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %cipher_flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or40, ptr %cipher_flags, align 4
  %ecf = getelementptr inbounds %struct.SPUHEADER, ptr %spu_hdr, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %ecf to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ecf_bits.0108, ptr %ecf, align 4
  %29 = ptrtoint ptr %key_len to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %key_len, align 4
  %31 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %iv_len, align 4
  %add61 = add i16 %30, 36
  %add63 = add i16 %add61, %32
  ret i16 %add63
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @spum_cipher_req_finish(ptr nocapture noundef %spu_hdr, i16 noundef zeroext %spu_req_hdr_len, i32 noundef %is_inbound, ptr nocapture noundef readonly %cipher_parms, i32 noundef %data_size) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %spu_req_hdr_len to i32
  %add.ptr = getelementptr i8, ptr %spu_hdr, i32 %conv
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 -16
  %mode = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 1
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp = icmp eq i32 %1, 7
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %iv_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 5
  %2 = ptrtoint ptr %iv_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iv_buf, align 4
  %iv_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 6
  %4 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %iv_len, align 4
  %conv3 = zext i16 %5 to i32
  %6 = call ptr @memset(ptr %3, i32 0, i32 %conv3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %iv_len4 = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 6
  %cipher_flags = getelementptr inbounds %struct.SPUHEADER, ptr %spu_hdr, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %cipher_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cipher_flags, align 4
  %9 = ptrtoint ptr %cipher_parms to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cipher_parms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool12.not = icmp eq i32 %10, 0
  br i1 %tobool12.not, label %if.end.if.end26_crit_edge, label %land.lhs.true

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %iv_buf6 = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 5
  %11 = ptrtoint ptr %iv_buf6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iv_buf6, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %land.lhs.true.if.end26_crit_edge, label %land.lhs.true15

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true15:                                  ; preds = %land.lhs.true
  %13 = ptrtoint ptr %iv_len4 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %iv_len4, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool18.not = icmp eq i16 %14, 0
  br i1 %tobool18.not, label %land.lhs.true15.if.end26_crit_edge, label %if.then19

land.lhs.true15.if.end26_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then19:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  %conv17 = zext i16 %14 to i32
  %idx.neg = sub nsw i32 0, %conv17
  %add.ptr22 = getelementptr i8, ptr %add.ptr1, i32 %idx.neg
  %15 = call ptr @memcpy(ptr %add.ptr22, ptr %12, i32 %conv17)
  br label %if.end26

if.end26:                                         ; preds = %if.then19, %land.lhs.true15.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %and = and i32 %8, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_inbound)
  %tobool.not = icmp eq i32 %is_inbound, 0
  %masksel = select i1 %tobool.not, i32 0, i32 -2147483648
  %cipher_bits.0 = or i32 %and, %masksel
  %16 = ptrtoint ptr %cipher_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cipher_bits.0, ptr %cipher_flags, align 4
  %17 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %add.ptr1, align 2
  %length_mac = getelementptr inbounds %struct.BDESC_HEADER, ptr %add.ptr1, i32 0, i32 1
  %18 = ptrtoint ptr %length_mac to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 0, ptr %length_mac, align 2
  %offset_crypto = getelementptr inbounds %struct.BDESC_HEADER, ptr %add.ptr1, i32 0, i32 2
  %19 = ptrtoint ptr %offset_crypto to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %offset_crypto, align 2
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %21)
  %cmp30 = icmp eq i32 %21, 7
  %22 = trunc i32 %data_size to i16
  %conv33 = add i16 %22, 16
  %conv33. = select i1 %cmp30, i16 %conv33, i16 %22
  %23 = getelementptr inbounds %struct.BDESC_HEADER, ptr %add.ptr1, i32 0, i32 3
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv33., ptr %23, align 2
  %offset_icv = getelementptr inbounds %struct.BDESC_HEADER, ptr %add.ptr1, i32 0, i32 4
  %25 = ptrtoint ptr %offset_icv to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %offset_icv, align 2
  %offset_iv = getelementptr inbounds %struct.BDESC_HEADER, ptr %add.ptr1, i32 0, i32 5
  %26 = ptrtoint ptr %offset_iv to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %offset_iv, align 2
  %add.ptr38 = getelementptr i8, ptr %add.ptr1, i32 12
  %27 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %22, ptr %add.ptr38, align 2
  %28 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %29)
  %cmp41 = icmp eq i32 %29, 7
  %storemerge = select i1 %cmp41, i16 %conv33, i16 %22
  %30 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %storemerge, ptr %add.ptr38, align 2
  %prev_length = getelementptr inbounds %struct.BD_HEADER, ptr %add.ptr38, i32 0, i32 1
  %31 = ptrtoint ptr %prev_length to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %prev_length, align 2
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @spum_request_pad(ptr nocapture noundef writeonly %pad_start, i32 noundef %gcm_ccm_padding, i32 noundef %hash_pad_len, i32 noundef %auth_alg, i32 noundef %auth_mode, i32 noundef %total_sent, i32 noundef %status_padding) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gcm_ccm_padding)
  %cmp.not = icmp eq i32 %gcm_ccm_padding, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = call ptr @memset(ptr %pad_start, i32 0, i32 %gcm_ccm_padding)
  %add.ptr = getelementptr i8, ptr %pad_start, i32 %gcm_ccm_padding
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ptr.0 = phi ptr [ %add.ptr, %if.then ], [ %pad_start, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hash_pad_len)
  %cmp1.not = icmp eq i32 %hash_pad_len, 0
  br i1 %cmp1.not, label %if.end.if.end16_crit_edge, label %if.then2

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then2:                                         ; preds = %if.end
  %1 = call ptr @memset(ptr %ptr.0, i32 0, i32 %hash_pad_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %auth_alg)
  %cmp3 = icmp eq i32 %auth_alg, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %auth_mode)
  %cmp4 = icmp eq i32 %auth_mode, 0
  %or.cond = and i1 %cmp3, %cmp4
  br i1 %or.cond, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr6 = getelementptr i8, ptr %ptr.0, i32 %hash_pad_len
  br label %if.end16

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %ptr.0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -128, ptr %ptr.0, align 1
  %sub = add i32 %hash_pad_len, -8
  %add.ptr7 = getelementptr i8, ptr %ptr.0, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %auth_alg)
  %cmp8 = icmp eq i32 %auth_alg, 1
  %conv = zext i32 %total_sent to i64
  %mul = shl nuw nsw i64 %conv, 3
  %3 = tail call i64 @llvm.bswap.i64(i64 %mul)
  %storemerge = select i1 %cmp8, i64 %3, i64 %mul
  %4 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %storemerge, ptr %add.ptr7, align 8
  %add.ptr14 = getelementptr i8, ptr %ptr.0, i32 %hash_pad_len
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then5, %if.end.if.end16_crit_edge
  %ptr.1 = phi ptr [ %add.ptr6, %if.then5 ], [ %add.ptr14, %if.else ], [ %ptr.0, %if.end.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status_padding)
  %cmp17.not = icmp eq i32 %status_padding, 0
  br i1 %cmp17.not, label %if.end16.if.end21_crit_edge, label %if.then19

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memset(ptr %ptr.1, i32 0, i32 %status_padding)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end16.if.end21_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spum_xts_tweak_in_payload() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spum_tx_status_len() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @spum_rx_status_len() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i8 4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spum_status_process(ptr nocapture noundef readonly %statp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %statp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %statp, align 4
  %and = and i32 %1, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, i32 noundef %1) #11
  %and1 = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %. = select i1 %tobool2.not, i32 -74, i32 1
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %., %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spum_ccm_update_iv(i32 noundef %digestsize, ptr nocapture noundef readonly %cipher_parms, i32 noundef %assoclen, i32 noundef %chunksize, i1 noundef zeroext %is_encrypt, i1 noundef zeroext %is_esp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iv_len = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 6
  %0 = ptrtoint ptr %iv_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %iv_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %1)
  %cmp.not = icmp eq i16 %1, 16
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %1 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef %conv, i32 noundef 16) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %is_esp, label %if.end.if.end8_crit_edge, label %if.else

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %iv_buf = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 5
  %2 = ptrtoint ptr %iv_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iv_buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 7
  %narrow = add nuw nsw i8 %6, 1
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end.if.end8_crit_edge
  %L.0 = phi i8 [ %narrow, %if.else ], [ 4, %if.end.if.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %assoclen)
  %cmp11.not = icmp eq i32 %assoclen, 0
  %shl = select i1 %cmp11.not, i32 0, i32 64
  %sub = shl i32 %digestsize, 2
  %7 = add i32 %sub, 248
  %shl16 = and i32 %7, 248
  %or = or i32 %shl, %shl16
  %conv17 = zext i8 %L.0 to i32
  %sub18 = add nuw nsw i32 %conv17, 255
  %or20 = or i32 %or, %sub18
  %conv21 = trunc i32 %or20 to i8
  %iv_buf22 = getelementptr inbounds %struct.spu_cipher_parms, ptr %cipher_parms, i32 0, i32 5
  %8 = ptrtoint ptr %iv_buf22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iv_buf22, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv21, ptr %9, align 1
  %sub26 = select i1 %is_encrypt, i32 0, i32 %digestsize
  %spec.select = sub i32 %chunksize, %sub26
  %11 = load ptr, ptr %iv_buf22, align 4
  %add31 = sub nuw nsw i32 16, %conv17
  %arrayidx32 = getelementptr i8, ptr %11, i32 %add31
  tail call void @format_value_ccm(i32 noundef %spec.select, ptr noundef %arrayidx32, i8 noundef zeroext %L.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @format_value_ccm(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !217, !218, !219, !220, !222, !223, !224}
!llvm.module.flags = !{!225, !226, !227, !228, !229, !230, !231, !232}
!llvm.ident = !{!233}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/bcm/spu.c", i32 14, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/crypto/bcm/spu.c", i32 14, i32 35}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/crypto/bcm/spu.c", i32 14, i32 42}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/bcm/spu.c", i32 14, i32 50}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/bcm/spu.c", i32 14, i32 60}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/bcm/spu.c", i32 14, i32 70}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/bcm/spu.c", i32 15, i32 2}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/crypto/bcm/spu.c", i32 15, i32 12}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/bcm/spu.c", i32 15, i32 22}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/bcm/spu.c", i32 15, i32 34}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/bcm/spu.c", i32 15, i32 46}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/bcm/spu.c", i32 15, i32 58}
!24 = !{ptr @hash_alg_name, !25, !"hash_alg_name", i1 false, i1 false}
!25 = !{!"../drivers/crypto/bcm/spu.c", i32 14, i32 7}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/bcm/spu.c", i32 17, i32 27}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/crypto/bcm/spu.c", i32 17, i32 39}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/bcm/spu.c", i32 17, i32 51}
!32 = !{ptr @aead_alg_name, !33, !"aead_alg_name", i1 false, i1 false}
!33 = !{!"../drivers/crypto/bcm/spu.c", i32 17, i32 7}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/bcm/spu.c", i32 40, i32 13}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/bcm/spu.c", i32 41, i32 13}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/bcm/spu.c", i32 44, i32 13}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/bcm/spu.c", i32 46, i32 14}
!42 = distinct !{null, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/crypto/bcm/spu.c", i32 48, i32 14}
!44 = distinct !{null, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/bcm/spu.c", i32 50, i32 14}
!46 = distinct !{null, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/crypto/bcm/spu.c", i32 52, i32 14}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/bcm/spu.c", i32 54, i32 14}
!50 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/crypto/bcm/spu.c", i32 56, i32 14}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/crypto/bcm/spu.c", i32 57, i32 13}
!54 = distinct !{null, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/crypto/bcm/spu.c", i32 64, i32 14}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/crypto/bcm/spu.c", i32 66, i32 14}
!58 = distinct !{null, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/crypto/bcm/spu.c", i32 69, i32 14}
!60 = distinct !{null, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/crypto/bcm/spu.c", i32 70, i32 14}
!62 = distinct !{null, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/bcm/spu.c", i32 72, i32 14}
!64 = distinct !{null, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/crypto/bcm/spu.c", i32 74, i32 14}
!66 = distinct !{null, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/crypto/bcm/spu.c", i32 79, i32 14}
!68 = distinct !{null, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/crypto/bcm/spu.c", i32 84, i32 14}
!70 = distinct !{null, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/bcm/spu.c", i32 86, i32 14}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/bcm/spu.c", i32 89, i32 14}
!74 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/crypto/bcm/spu.c", i32 90, i32 14}
!76 = distinct !{null, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/crypto/bcm/spu.c", i32 94, i32 14}
!78 = distinct !{null, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/crypto/bcm/spu.c", i32 96, i32 14}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/crypto/bcm/spu.c", i32 100, i32 14}
!82 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/crypto/bcm/spu.c", i32 107, i32 17}
!84 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/crypto/bcm/spu.c", i32 112, i32 12}
!86 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/crypto/bcm/spu.c", i32 116, i32 12}
!88 = distinct !{null, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/crypto/bcm/spu.c", i32 120, i32 12}
!90 = distinct !{null, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/bcm/spu.c", i32 124, i32 12}
!92 = distinct !{null, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/crypto/bcm/spu.c", i32 128, i32 12}
!94 = distinct !{null, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/crypto/bcm/spu.c", i32 132, i32 12}
!96 = distinct !{null, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/crypto/bcm/spu.c", i32 136, i32 12}
!98 = distinct !{null, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/crypto/bcm/spu.c", i32 142, i32 15}
!100 = distinct !{null, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/crypto/bcm/spu.c", i32 144, i32 16}
!102 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/crypto/bcm/spu.c", i32 153, i32 12}
!104 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/crypto/bcm/spu.c", i32 157, i32 12}
!106 = distinct !{null, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/bcm/spu.c", i32 161, i32 12}
!108 = distinct !{null, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/crypto/bcm/spu.c", i32 207, i32 15}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/bcm/spu.c", i32 209, i32 16}
!112 = distinct !{null, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/crypto/bcm/spu.c", i32 219, i32 12}
!114 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/crypto/bcm/spu.c", i32 223, i32 12}
!116 = distinct !{null, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/crypto/bcm/spu.c", i32 229, i32 13}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/bcm/spu.c", i32 233, i32 13}
!120 = distinct !{null, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/crypto/bcm/spu.c", i32 237, i32 13}
!122 = distinct !{null, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/bcm/spu.c", i32 245, i32 15}
!124 = distinct !{null, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/crypto/bcm/spu.c", i32 250, i32 17}
!126 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/crypto/bcm/spu.c", i32 252, i32 17}
!128 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/crypto/bcm/spu.c", i32 267, i32 16}
!130 = distinct !{null, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/crypto/bcm/spu.c", i32 268, i32 17}
!132 = distinct !{null, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/crypto/bcm/spu.c", i32 278, i32 14}
!134 = distinct !{null, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/crypto/bcm/spu.c", i32 279, i32 14}
!136 = distinct !{null, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/crypto/bcm/spu.c", i32 284, i32 14}
!138 = distinct !{null, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/crypto/bcm/spu.c", i32 285, i32 14}
!140 = distinct !{null, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/crypto/bcm/spu.c", i32 290, i32 14}
!142 = distinct !{null, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/crypto/bcm/spu.c", i32 291, i32 14}
!144 = distinct !{null, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/crypto/bcm/spu.c", i32 301, i32 14}
!146 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/crypto/bcm/spu.c", i32 302, i32 14}
!148 = distinct !{null, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/crypto/bcm/spu.c", i32 309, i32 14}
!150 = distinct !{null, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/crypto/bcm/spu.c", i32 310, i32 14}
!152 = distinct !{null, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/crypto/bcm/spu.c", i32 641, i32 11}
!154 = distinct !{null, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/crypto/bcm/spu.c", i32 641, i32 21}
!156 = distinct !{null, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/crypto/bcm/spu.c", i32 642, i32 11}
!158 = distinct !{null, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/crypto/bcm/spu.c", i32 644, i32 11}
!160 = distinct !{null, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/crypto/bcm/spu.c", i32 647, i32 11}
!162 = distinct !{null, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/crypto/bcm/spu.c", i32 648, i32 12}
!164 = distinct !{null, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/crypto/bcm/spu.c", i32 649, i32 11}
!166 = distinct !{null, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/crypto/bcm/spu.c", i32 650, i32 12}
!168 = distinct !{null, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/crypto/bcm/spu.c", i32 651, i32 11}
!170 = distinct !{null, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/crypto/bcm/spu.c", i32 653, i32 11}
!172 = distinct !{null, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/crypto/bcm/spu.c", i32 654, i32 11}
!174 = distinct !{null, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/crypto/bcm/spu.c", i32 655, i32 12}
!176 = distinct !{null, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/crypto/bcm/spu.c", i32 656, i32 11}
!178 = distinct !{null, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/crypto/bcm/spu.c", i32 657, i32 11}
!180 = distinct !{null, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/crypto/bcm/spu.c", i32 658, i32 11}
!182 = distinct !{null, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/crypto/bcm/spu.c", i32 659, i32 11}
!184 = distinct !{null, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/crypto/bcm/spu.c", i32 660, i32 11}
!186 = distinct !{null, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/crypto/bcm/spu.c", i32 661, i32 11}
!188 = distinct !{null, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/crypto/bcm/spu.c", i32 663, i32 11}
!190 = distinct !{null, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/crypto/bcm/spu.c", i32 816, i32 14}
!192 = distinct !{null, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/crypto/bcm/spu.c", i32 841, i32 21}
!194 = distinct !{null, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/crypto/bcm/spu.c", i32 842, i32 11}
!196 = distinct !{null, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/crypto/bcm/spu.c", i32 844, i32 11}
!198 = distinct !{null, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/crypto/bcm/spu.c", i32 936, i32 21}
!200 = distinct !{null, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/crypto/bcm/spu.c", i32 937, i32 11}
!202 = distinct !{null, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/crypto/bcm/spu.c", i32 938, i32 11}
!204 = distinct !{null, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/crypto/bcm/spu.c", i32 951, i32 11}
!206 = distinct !{null, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/crypto/bcm/spu.c", i32 953, i32 11}
!208 = distinct !{null, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/crypto/bcm/spu.c", i32 1036, i32 12}
!210 = distinct !{null, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/crypto/bcm/spu.c", i32 1066, i32 12}
!212 = distinct !{null, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/crypto/bcm/spu.c", i32 1119, i32 11}
!214 = !{ptr @.str.102, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/crypto/bcm/spu.c", i32 1121, i32 3}
!216 = !{ptr @.str.103, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @spum_status_process._entry, !215, !"_entry", i1 false, i1 false}
!219 = !{ptr @spum_status_process._entry_ptr, !215, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.105, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/crypto/bcm/spu.c", i32 1153, i32 3}
!222 = !{ptr @.str.106, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @spum_ccm_update_iv._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @spum_ccm_update_iv._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{i32 1, !"wchar_size", i32 2}
!226 = !{i32 1, !"min_enum_size", i32 4}
!227 = !{i32 8, !"branch-target-enforcement", i32 0}
!228 = !{i32 8, !"sign-return-address", i32 0}
!229 = !{i32 8, !"sign-return-address-all", i32 0}
!230 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!231 = !{i32 7, !"uwtable", i32 1}
!232 = !{i32 7, !"frame-pointer", i32 2}
!233 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!234 = !{i8 0, i8 2}
