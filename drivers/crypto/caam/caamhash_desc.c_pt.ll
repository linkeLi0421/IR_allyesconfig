; ModuleID = '/llk/IR_all_yes/drivers/crypto/caam/caamhash_desc.c_pt.bc'
source_filename = "../drivers/crypto/caam/caamhash_desc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cnstr_shdsc_ahash\22, \22a\22\09"
module asm "\09.weak\09__crc_cnstr_shdsc_ahash\09\09\09\09"
module asm "\09.long\09__crc_cnstr_shdsc_ahash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_ahash\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_ahash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+cnstr_shdsc_sk_hash\22, \22a\22\09"
module asm "\09.weak\09__crc_cnstr_shdsc_sk_hash\09\09\09\09"
module asm "\09.long\09__crc_cnstr_shdsc_sk_hash\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cnstr_shdsc_sk_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22cnstr_shdsc_sk_hash\22\09\09\09\09\09"
module asm "__kstrtabns_cnstr_shdsc_sk_hash:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.alginfo = type { i32, i32, i32, i32, ptr, i8 }

@__kstrtab_cnstr_shdsc_ahash = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_ahash = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_ahash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_ahash to i32), ptr @__kstrtab_cnstr_shdsc_ahash, ptr @__kstrtabns_cnstr_shdsc_ahash }, section "___ksymtab+cnstr_shdsc_ahash", align 4
@__kstrtab_cnstr_shdsc_sk_hash = external dso_local constant [0 x i8], align 1
@__kstrtabns_cnstr_shdsc_sk_hash = external dso_local constant [0 x i8], align 1
@__ksymtab_cnstr_shdsc_sk_hash = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cnstr_shdsc_sk_hash to i32), ptr @__kstrtab_cnstr_shdsc_sk_hash, ptr @__kstrtabns_cnstr_shdsc_sk_hash }, section "___ksymtab+cnstr_shdsc_sk_hash", align 4
@__UNIQUE_ID_file511 = internal constant [53 x i8] c"caamhash_desc.file=drivers/crypto/caam/caamhash_desc\00", section ".modinfo", align 1
@__UNIQUE_ID_license512 = internal constant [35 x i8] c"caamhash_desc.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description513 = internal constant [61 x i8] c"caamhash_desc.description=FSL CAAM ahash descriptors support\00", section ".modinfo", align 1
@__UNIQUE_ID_author514 = internal constant [40 x i8] c"caamhash_desc.author=NXP Semiconductors\00", section ".modinfo", align 1
@init_sh_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%02d: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"init_sh_desc\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/crypto/caam/desc_constr.h\00", [62 x i8] zeroinitializer }, align 32
@init_sh_desc._entry_ptr = internal global ptr @init_sh_desc._entry, section ".printk_index", align 4
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@append_jump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"append_jump\00", [20 x i8] zeroinitializer }, align 32
@append_jump._entry_ptr = internal global ptr @append_jump._entry, section ".printk_index", align 4
@append_key_as_imm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"append_key_as_imm\00", [46 x i8] zeroinitializer }, align 32
@append_key_as_imm._entry_ptr = internal global ptr @append_key_as_imm._entry, section ".printk_index", align 4
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@append_seq_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"append_seq_load\00", [16 x i8] zeroinitializer }, align 32
@append_seq_load._entry_ptr = internal global ptr @append_seq_load._entry, section ".printk_index", align 4
@append_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"append_operation\00", [47 x i8] zeroinitializer }, align 32
@append_operation._entry_ptr = internal global ptr @append_operation._entry, section ".printk_index", align 4
@append_seq_fifo_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"append_seq_fifo_load\00", [43 x i8] zeroinitializer }, align 32
@append_seq_fifo_load._entry_ptr = internal global ptr @append_seq_fifo_load._entry, section ".printk_index", align 4
@append_seq_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"append_seq_store\00", [47 x i8] zeroinitializer }, align 32
@append_seq_store._entry_ptr = internal global ptr @append_seq_store._entry, section ".printk_index", align 4
@append_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"append_key\00", [21 x i8] zeroinitializer }, align 32
@append_key._entry_ptr = internal global ptr @append_key._entry, section ".printk_index", align 4
@append_fifo_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"append_fifo_store\00", [46 x i8] zeroinitializer }, align 32
@append_fifo_store._entry_ptr = internal global ptr @append_fifo_store._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@___asan_gen_ = private constant [39 x i8] c"../drivers/crypto/caam/caamhash_desc.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 111, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 240, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 374, i32 1 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 275, i32 1 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 265, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 277, i32 1 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 276, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 287, i32 1 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [37 x i8] c"../drivers/crypto/caam/desc_constr.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 290, i32 1 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author514, ptr @__UNIQUE_ID_description513, ptr @__UNIQUE_ID_file511, ptr @__UNIQUE_ID_license512, ptr @__ksymtab_cnstr_shdsc_ahash, ptr @__ksymtab_cnstr_shdsc_sk_hash, ptr @append_fifo_store._entry, ptr @append_fifo_store._entry_ptr, ptr @append_jump._entry, ptr @append_jump._entry_ptr, ptr @append_key._entry, ptr @append_key._entry_ptr, ptr @append_key_as_imm._entry, ptr @append_key_as_imm._entry_ptr, ptr @append_operation._entry, ptr @append_operation._entry_ptr, ptr @append_seq_fifo_load._entry, ptr @append_seq_fifo_load._entry_ptr, ptr @append_seq_load._entry, ptr @append_seq_load._entry_ptr, ptr @append_seq_store._entry, ptr @append_seq_store._entry_ptr, ptr @init_sh_desc._entry, ptr @init_sh_desc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_sh_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_jump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_key_as_imm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_seq_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_seq_fifo_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_seq_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_fifo_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cnstr_shdsc_ahash(ptr noundef %desc, ptr nocapture noundef readonly %adata, i32 noundef %state, i32 noundef %digestsize, i32 noundef %ctx_len, i1 noundef zeroext %import_ctx, i32 noundef %era) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %adata, align 4
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %4 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i.i = icmp eq i8 %4, 0
  %5 = lshr i32 %3, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %3, i32 %5
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([13 x i8], ptr @.str.1, i32 0, i32 7)) #6
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %6 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i5.i = icmp eq i8 %6, 0
  %retval.0.i.i6.i = select i1 %tobool.not.i.i5.i, i32 -1199570431, i32 16941240
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %retval.0.i.i6.i, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %cmp.not = icmp eq i32 %state, 0
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %land.lhs.true

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

land.lhs.true:                                    ; preds = %entry
  %keylen = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 1
  %8 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %land.lhs.true.if.end4_crit_edge, label %if.then

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then:                                          ; preds = %land.lhs.true
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %10 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i.i.i = icmp eq i8 %10, 0
  %11 = lshr i32 %retval.0.i.i6.i, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %retval.0.i.i6.i, i32 %11
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 57
  %add.ptr.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i.i, ptr noundef getelementptr inbounds ([12 x i8], ptr @.str.3, i32 0, i32 7)) #6
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %14 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i.i.i.i = icmp eq i8 %14, 0
  %15 = lshr i32 %13, 24
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %13, i32 %15
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i, 127
  %add.ptr.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i
  %retval.0.i.i1.i = select i1 %tobool.not.i.i.i.i.i, i32 -1593819136, i32 4194465
  %16 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i.i1.i, ptr %add.ptr.i.i.i, align 4
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %19 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i6.i.i = icmp eq i8 %19, 0
  %20 = tail call i32 @llvm.bswap.i32(i32 %18) #3
  %retval.0.i7.i.i = select i1 %tobool.not.i6.i.i, i32 %18, i32 %20
  %add.i.i = add i32 %retval.0.i7.i.i, 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #3
  %retval.0.i9.i.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %21
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i9.i.i, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %era)
  %cmp1 = icmp slt i32 %era, 6
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %key_virt = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 4
  %23 = ptrtoint ptr %key_virt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %key_virt, align 4
  %keylen_pad = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 2
  %25 = ptrtoint ptr %keylen_pad to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %keylen_pad, align 4
  %27 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %keylen, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %29 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i.i26 = icmp eq i8 %29, 0
  %30 = lshr i32 %retval.0.i9.i.i, 24
  %retval.0.i.i.i27 = select i1 %tobool.not.i.i.i26, i32 %retval.0.i9.i.i, i32 %30
  %and.i.i28 = and i32 %retval.0.i.i.i27, 127
  %call2.i29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i28, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.4, i32 0, i32 7)) #6
  %or4.i = or i32 %28, 79888384
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %33 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i.i.i.i30 = icmp eq i8 %33, 0
  %34 = lshr i32 %32, 24
  %retval.0.i.i.i.i.i31 = select i1 %tobool.not.i.i.i.i.i30, i32 %32, i32 %34
  %and.i.i.i.i32 = and i32 %retval.0.i.i.i.i.i31, 127
  %add.ptr.i.i.i33 = getelementptr i32, ptr %desc, i32 %and.i.i.i.i32
  %35 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #3
  %retval.0.i.i7.i = select i1 %tobool.not.i.i.i.i.i30, i32 %or4.i, i32 %35
  %36 = ptrtoint ptr %add.ptr.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i.i7.i, ptr %add.ptr.i.i.i33, align 4
  %37 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %39 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i6.i.i34 = icmp eq i8 %39, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %38) #3
  %retval.0.i7.i.i35 = select i1 %tobool.not.i6.i.i34, i32 %38, i32 %40
  %add.i.i36 = add i32 %retval.0.i7.i.i35, 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %add.i.i36) #3
  %retval.0.i9.i.i37 = select i1 %tobool.not.i6.i.i34, i32 %add.i.i36, i32 %41
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i9.i.i37, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i, label %if.then2.append_key_as_imm.exit_crit_edge, label %if.then.i.i

if.then2.append_key_as_imm.exit_crit_edge:        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  br label %append_key_as_imm.exit

if.then.i.i:                                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %43 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i.i.i8.i = icmp eq i8 %43, 0
  %44 = lshr i32 %retval.0.i9.i.i37, 24
  %retval.0.i.i.i.i9.i = select i1 %tobool.not.i.i.i.i8.i, i32 %retval.0.i9.i.i37, i32 %44
  %and.i.i.i10.i = and i32 %retval.0.i.i.i.i9.i, 127
  %add.ptr.i.i11.i = getelementptr i32, ptr %desc, i32 %and.i.i.i10.i
  %45 = call ptr @memcpy(ptr %add.ptr.i.i11.i, ptr %24, i32 %26)
  br label %append_key_as_imm.exit

append_key_as_imm.exit:                           ; preds = %if.then.i.i, %if.then2.append_key_as_imm.exit_crit_edge
  %46 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %48 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i.i12.i = icmp eq i8 %48, 0
  %49 = tail call i32 @llvm.bswap.i32(i32 %47) #3
  %retval.0.i.i13.i = select i1 %tobool.not.i.i12.i, i32 %47, i32 %49
  %sub.i.i = add i32 %26, 3
  %div8.i.i = lshr i32 %sub.i.i, 2
  %add2.i.i = add i32 %retval.0.i.i13.i, %div8.i.i
  %50 = tail call i32 @llvm.bswap.i32(i32 %add2.i.i) #3
  %retval.0.i10.i.i = select i1 %tobool.not.i.i12.i, i32 %add2.i.i, i32 %50
  br label %if.end.sink.split

if.else:                                          ; preds = %if.then
  %51 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %adata, align 4
  %and.i = and i32 %52, 983040
  %key_inline.i = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 5
  %53 = ptrtoint ptr %key_inline.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %key_inline.i, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i = icmp eq i8 %54, 0
  %55 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %keylen, align 4
  br i1 %tobool.not.i, label %if.else28.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %keylen_pad.i = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 2
  %57 = ptrtoint ptr %keylen_pad.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %keylen_pad.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp.i = icmp ugt i32 %56, %58
  %or3.i = or i32 %56, %and.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %59 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i.i.i.i38 = icmp eq i8 %59, 0
  %60 = lshr i32 %retval.0.i9.i.i, 24
  %retval.0.i.i.i.i39 = select i1 %tobool.not.i.i.i.i38, i32 %retval.0.i9.i.i, i32 %60
  %and.i.i.i40 = and i32 %retval.0.i.i.i.i39, 127
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i.i40, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.6, i32 0, i32 7)) #6
  br i1 %cmp.i, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %or.i.i = or i32 %or3.i, -2145353728
  %61 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %63 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i.i.i.i.i.i = icmp eq i8 %63, 0
  %64 = lshr i32 %62, 24
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %62, i32 %64
  %and.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i.i
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #3
  %retval.0.i.i5.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %or.i.i, i32 %65
  %66 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %retval.0.i.i5.i.i, ptr %add.ptr.i.i.i.i, align 4
  %67 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %69 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i6.i.i.i = icmp eq i8 %69, 0
  %70 = tail call i32 @llvm.bswap.i32(i32 %68) #3
  %retval.0.i7.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %68, i32 %70
  %add.i.i.i = add i32 %retval.0.i7.i.i.i, 1
  %71 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #3
  %retval.0.i9.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %add.i.i.i, i32 %71
  %72 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %retval.0.i9.i.i.i, ptr %desc, align 4
  %key_dma.i = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 3
  %73 = ptrtoint ptr %key_dma.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %key_dma.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %75 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i.i.i.i.i41 = icmp eq i8 %75, 0
  %76 = lshr i32 %retval.0.i9.i.i.i, 24
  %retval.0.i.i.i.i.i42 = select i1 %tobool.not.i.i.i.i.i41, i32 %retval.0.i9.i.i.i, i32 %76
  %and.i.i.i.i43 = and i32 %retval.0.i.i.i.i.i42, 127
  %add.ptr.i.i.i44 = getelementptr i32, ptr %desc, i32 %and.i.i.i.i43
  %77 = tail call i32 @llvm.bswap.i32(i32 %74) #3
  %retval.0.i.i.i61.i = select i1 %tobool.not.i.i.i.i.i41, i32 %74, i32 %77
  %78 = ptrtoint ptr %add.ptr.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %retval.0.i.i.i61.i, ptr %add.ptr.i.i.i44, align 4
  %79 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %81 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i.i.i45 = icmp eq i8 %81, 0
  %82 = tail call i32 @llvm.bswap.i32(i32 %80) #3
  %retval.0.i.i.i46 = select i1 %tobool.not.i.i.i45, i32 %80, i32 %82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %83 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i = lshr i32 %83, 2
  %add.i.i47 = add i32 %retval.0.i.i.i46, %div14.i.i
  %84 = tail call i32 @llvm.bswap.i32(i32 %add.i.i47) #3
  %retval.0.i23.i.i = select i1 %tobool.not.i.i.i45, i32 %add.i.i47, i32 %84
  %85 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %retval.0.i23.i.i, ptr %desc, align 4
  %86 = ptrtoint ptr %keylen_pad.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %keylen_pad.i, align 4
  %add.i = add i32 %87, 3
  %and8.i = and i32 %add.i, -4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %88 = load i32, ptr @caam_ptr_sz, align 4
  %sub.i = sub i32 %and8.i, %88
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  %or.i66.i = or i32 %or3.i, -2145386496
  %89 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %91 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i.i.i.i.i67.i = icmp eq i8 %91, 0
  %92 = lshr i32 %90, 24
  %retval.0.i.i.i.i.i68.i = select i1 %tobool.not.i.i.i.i.i67.i, i32 %90, i32 %92
  %and.i.i.i.i69.i = and i32 %retval.0.i.i.i.i.i68.i, 127
  %add.ptr.i.i.i70.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i69.i
  %93 = tail call i32 @llvm.bswap.i32(i32 %or.i66.i) #3
  %retval.0.i.i5.i71.i = select i1 %tobool.not.i.i.i.i.i67.i, i32 %or.i66.i, i32 %93
  %94 = ptrtoint ptr %add.ptr.i.i.i70.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %retval.0.i.i5.i71.i, ptr %add.ptr.i.i.i70.i, align 4
  %95 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %97 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i6.i.i72.i = icmp eq i8 %97, 0
  %98 = tail call i32 @llvm.bswap.i32(i32 %96) #3
  %retval.0.i7.i.i73.i = select i1 %tobool.not.i6.i.i72.i, i32 %96, i32 %98
  %add.i.i74.i = add i32 %retval.0.i7.i.i73.i, 1
  %99 = tail call i32 @llvm.bswap.i32(i32 %add.i.i74.i) #3
  %retval.0.i9.i.i75.i = select i1 %tobool.not.i6.i.i72.i, i32 %add.i.i74.i, i32 %99
  %100 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %retval.0.i9.i.i75.i, ptr %desc, align 4
  %101 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i.i48 = icmp eq i32 %102, 0
  br i1 %tobool.not.i.i48, label %if.else.i.append_data.exit.i_crit_edge, label %if.then.i.i49

if.else.i.append_data.exit.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %append_data.exit.i

if.then.i.i49:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %key_virt.i = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 4
  %103 = ptrtoint ptr %key_virt.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %key_virt.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %105 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool.not.i.i.i.i76.i = icmp eq i8 %105, 0
  %106 = lshr i32 %retval.0.i9.i.i75.i, 24
  %retval.0.i.i.i.i77.i = select i1 %tobool.not.i.i.i.i76.i, i32 %retval.0.i9.i.i75.i, i32 %106
  %and.i.i.i78.i = and i32 %retval.0.i.i.i.i77.i, 127
  %add.ptr.i.i79.i = getelementptr i32, ptr %desc, i32 %and.i.i.i78.i
  %107 = call ptr @memcpy(ptr %add.ptr.i.i79.i, ptr %104, i32 %102)
  br label %append_data.exit.i

append_data.exit.i:                               ; preds = %if.then.i.i49, %if.else.i.append_data.exit.i_crit_edge
  %108 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %110 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i.i80.i = icmp eq i8 %110, 0
  %111 = tail call i32 @llvm.bswap.i32(i32 %109) #3
  %retval.0.i.i81.i = select i1 %tobool.not.i.i80.i, i32 %109, i32 %111
  %sub.i.i50 = add i32 %102, 3
  %div8.i.i51 = lshr i32 %sub.i.i50, 2
  %add2.i.i52 = add i32 %retval.0.i.i81.i, %div8.i.i51
  %112 = tail call i32 @llvm.bswap.i32(i32 %add2.i.i52) #3
  %retval.0.i10.i.i53 = select i1 %tobool.not.i.i80.i, i32 %add2.i.i52, i32 %112
  %113 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %retval.0.i10.i.i53, ptr %desc, align 4
  %114 = ptrtoint ptr %keylen_pad.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %keylen_pad.i, align 4
  %add16.i = add i32 %115, 3
  %and17.i = and i32 %add16.i, -4
  %116 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %keylen, align 4
  %add19.i = add i32 %117, 3
  %and20.i = and i32 %add19.i, -4
  %sub21.i = sub i32 %and17.i, %and20.i
  br label %if.end.i

if.end.i:                                         ; preds = %append_data.exit.i, %if.then1.i
  %words.0.in.i = phi i32 [ %sub.i, %if.then1.i ], [ %sub21.i, %append_data.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %words.0.in.i)
  %tobool23.not.i = icmp ult i32 %words.0.in.i, 4
  br i1 %tobool23.not.i, label %if.end.i.if.end_crit_edge, label %if.then24.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %words.0.i = lshr i32 %words.0.in.i, 2
  %118 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %120 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool.not.i82.i = icmp eq i8 %120, 0
  %121 = tail call i32 @llvm.bswap.i32(i32 %119) #3
  %retval.0.i.i = select i1 %tobool.not.i82.i, i32 %119, i32 %121
  %add25.i = add i32 %retval.0.i.i, %words.0.i
  %122 = tail call i32 @llvm.bswap.i32(i32 %add25.i) #3
  %retval.0.i84.i = select i1 %tobool.not.i82.i, i32 %add25.i, i32 %122
  br label %if.end.sink.split

if.else28.i:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %123 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i.i.i85.i = icmp eq i8 %123, 0
  %124 = lshr i32 %retval.0.i9.i.i, 24
  %retval.0.i.i.i86.i = select i1 %tobool.not.i.i.i85.i, i32 %retval.0.i9.i.i, i32 %124
  %and.i.i87.i = and i32 %retval.0.i.i.i86.i, 127
  %call2.i88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i87.i, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.6, i32 0, i32 7)) #6
  %or31.i = or i32 %56, %and.i
  %or.i89.i = or i32 %or31.i, -2145345536
  %125 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %127 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool.not.i.i.i.i.i90.i = icmp eq i8 %127, 0
  %128 = lshr i32 %126, 24
  %retval.0.i.i.i.i.i91.i = select i1 %tobool.not.i.i.i.i.i90.i, i32 %126, i32 %128
  %and.i.i.i.i92.i = and i32 %retval.0.i.i.i.i.i91.i, 127
  %add.ptr.i.i.i93.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i92.i
  %129 = tail call i32 @llvm.bswap.i32(i32 %or.i89.i) #3
  %retval.0.i.i5.i94.i = select i1 %tobool.not.i.i.i.i.i90.i, i32 %or.i89.i, i32 %129
  %130 = ptrtoint ptr %add.ptr.i.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %retval.0.i.i5.i94.i, ptr %add.ptr.i.i.i93.i, align 4
  %131 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %133 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i6.i.i95.i = icmp eq i8 %133, 0
  %134 = tail call i32 @llvm.bswap.i32(i32 %132) #3
  %retval.0.i7.i.i96.i = select i1 %tobool.not.i6.i.i95.i, i32 %132, i32 %134
  %add.i.i97.i = add i32 %retval.0.i7.i.i96.i, 1
  %135 = tail call i32 @llvm.bswap.i32(i32 %add.i.i97.i) #3
  %retval.0.i9.i.i98.i = select i1 %tobool.not.i6.i.i95.i, i32 %add.i.i97.i, i32 %135
  %136 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %retval.0.i9.i.i98.i, ptr %desc, align 4
  %key_dma34.i = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 3
  %137 = ptrtoint ptr %key_dma34.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %key_dma34.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %139 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool.not.i.i.i.i99.i = icmp eq i8 %139, 0
  %140 = lshr i32 %retval.0.i9.i.i98.i, 24
  %retval.0.i.i.i.i100.i = select i1 %tobool.not.i.i.i.i99.i, i32 %retval.0.i9.i.i98.i, i32 %140
  %and.i.i.i101.i = and i32 %retval.0.i.i.i.i100.i, 127
  %add.ptr.i.i102.i = getelementptr i32, ptr %desc, i32 %and.i.i.i101.i
  %141 = tail call i32 @llvm.bswap.i32(i32 %138) #3
  %retval.0.i.i.i103.i = select i1 %tobool.not.i.i.i.i99.i, i32 %138, i32 %141
  %142 = ptrtoint ptr %add.ptr.i.i102.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %retval.0.i.i.i103.i, ptr %add.ptr.i.i102.i, align 4
  %143 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %145 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i.i104.i = icmp eq i8 %145, 0
  %146 = tail call i32 @llvm.bswap.i32(i32 %144) #3
  %retval.0.i.i105.i = select i1 %tobool.not.i.i104.i, i32 %144, i32 %146
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %147 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i106.i = lshr i32 %147, 2
  %add.i107.i = add i32 %retval.0.i.i105.i, %div14.i106.i
  %148 = tail call i32 @llvm.bswap.i32(i32 %add.i107.i) #3
  %retval.0.i23.i108.i = select i1 %tobool.not.i.i104.i, i32 %add.i107.i, i32 %148
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %if.else28.i, %if.then24.i, %append_key_as_imm.exit
  %retval.0.i84.sink.i.sink = phi i32 [ %retval.0.i10.i.i, %append_key_as_imm.exit ], [ %retval.0.i84.i, %if.then24.i ], [ %retval.0.i23.i108.i, %if.else28.i ]
  %149 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %retval.0.i84.sink.i.sink, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %if.end.i.if.end_crit_edge
  %150 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %add.ptr.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %152 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i.i54 = icmp eq i8 %152, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %151) #3
  %retval.0.i.i55 = select i1 %tobool.not.i.i54, i32 %151, i32 %153
  %154 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %desc, align 4
  %156 = lshr i32 %155, 24
  %retval.0.i.i.i56 = select i1 %tobool.not.i.i54, i32 %155, i32 %156
  %and.i.i57 = and i32 %retval.0.i.i.i56, 127
  %sub.i58 = sub nsw i32 %and.i.i57, %and.i.i.i
  %or.i59 = or i32 %sub.i58, %retval.0.i.i55
  %157 = tail call i32 @llvm.bswap.i32(i32 %or.i59) #3
  %retval.0.i7.i = select i1 %tobool.not.i.i54, i32 %or.i59, i32 %157
  %158 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %retval.0.i7.i, ptr %add.ptr.i.i, align 4
  %or = or i32 %1, 64
  br label %if.end4

if.end4:                                          ; preds = %if.end, %land.lhs.true.if.end4_crit_edge, %entry.if.end4_crit_edge
  %op.0 = phi i32 [ %or, %if.end ], [ %1, %land.lhs.true.if.end4_crit_edge ], [ %1, %entry.if.end4_crit_edge ]
  br i1 %import_ctx, label %if.then6, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %159 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %161 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool.not.i.i.i60 = icmp eq i8 %161, 0
  %162 = lshr i32 %160, 24
  %retval.0.i.i.i61 = select i1 %tobool.not.i.i.i60, i32 %160, i32 %162
  %and.i.i62 = and i32 %retval.0.i.i.i61, 127
  %call2.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i62, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.5, i32 0, i32 7)) #6
  %or4.i65 = or i32 %ctx_len, 471859200
  %163 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %165 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool.not.i.i.i.i.i66 = icmp eq i8 %165, 0
  %166 = lshr i32 %164, 24
  %retval.0.i.i.i.i.i67 = select i1 %tobool.not.i.i.i.i.i66, i32 %164, i32 %166
  %and.i.i.i.i68 = and i32 %retval.0.i.i.i.i.i67, 127
  %add.ptr.i.i.i69 = getelementptr i32, ptr %desc, i32 %and.i.i.i.i68
  %167 = tail call i32 @llvm.bswap.i32(i32 %or4.i65) #3
  %retval.0.i.i6.i70 = select i1 %tobool.not.i.i.i.i.i66, i32 %or4.i65, i32 %167
  %168 = ptrtoint ptr %add.ptr.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %retval.0.i.i6.i70, ptr %add.ptr.i.i.i69, align 4
  %169 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %171 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool.not.i6.i.i71 = icmp eq i8 %171, 0
  %172 = tail call i32 @llvm.bswap.i32(i32 %170) #3
  %retval.0.i7.i.i72 = select i1 %tobool.not.i6.i.i71, i32 %170, i32 %172
  %add.i.i73 = add i32 %retval.0.i7.i.i72, 1
  %173 = tail call i32 @llvm.bswap.i32(i32 %add.i.i73) #3
  %retval.0.i9.i.i74 = select i1 %tobool.not.i6.i.i71, i32 %add.i.i73, i32 %173
  %174 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %retval.0.i9.i.i74, ptr %desc, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %175 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %177 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool.not.i.i.i75 = icmp eq i8 %177, 0
  %178 = lshr i32 %176, 24
  %retval.0.i.i.i76 = select i1 %tobool.not.i.i.i75, i32 %176, i32 %178
  %and.i.i77 = and i32 %retval.0.i.i.i76, 127
  %call2.i78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i77, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.6, i32 0, i32 7)) #6
  %or8 = or i32 %op.0, %state
  %or.i79 = or i32 %or8, -2147483647
  %179 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %181 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool.not.i.i.i.i.i80 = icmp eq i8 %181, 0
  %182 = lshr i32 %180, 24
  %retval.0.i.i.i.i.i81 = select i1 %tobool.not.i.i.i.i.i80, i32 %180, i32 %182
  %and.i.i.i.i82 = and i32 %retval.0.i.i.i.i.i81, 127
  %add.ptr.i.i.i83 = getelementptr i32, ptr %desc, i32 %and.i.i.i.i82
  %183 = tail call i32 @llvm.bswap.i32(i32 %or.i79) #3
  %retval.0.i.i5.i = select i1 %tobool.not.i.i.i.i.i80, i32 %or.i79, i32 %183
  %184 = ptrtoint ptr %add.ptr.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %retval.0.i.i5.i, ptr %add.ptr.i.i.i83, align 4
  %185 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %187 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool.not.i6.i.i84 = icmp eq i8 %187, 0
  %188 = tail call i32 @llvm.bswap.i32(i32 %186) #3
  %retval.0.i7.i.i85 = select i1 %tobool.not.i6.i.i84, i32 %186, i32 %188
  %add.i.i86 = add i32 %retval.0.i7.i.i85, 1
  %189 = tail call i32 @llvm.bswap.i32(i32 %add.i.i86) #3
  %retval.0.i9.i.i87 = select i1 %tobool.not.i6.i.i84, i32 %add.i.i86, i32 %189
  %190 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %retval.0.i9.i.i87, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %191 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %191)
  %tobool.not.i.i.i.i88 = icmp eq i8 %191, 0
  %192 = lshr i32 %retval.0.i9.i.i87, 24
  %retval.0.i.i.i.i89 = select i1 %tobool.not.i.i.i.i88, i32 %retval.0.i9.i.i87, i32 %192
  %and.i.i.i90 = and i32 %retval.0.i.i.i.i89, 127
  %add.ptr.i.i91 = getelementptr i32, ptr %desc, i32 %and.i.i.i90
  %retval.0.i.i92 = select i1 %tobool.not.i.i.i.i88, i32 -1475868156, i32 67766440
  %193 = ptrtoint ptr %add.ptr.i.i91 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %retval.0.i.i92, ptr %add.ptr.i.i91, align 4
  %194 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %196 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool.not.i6.i = icmp eq i8 %196, 0
  %197 = tail call i32 @llvm.bswap.i32(i32 %195) #3
  %retval.0.i7.i93 = select i1 %tobool.not.i6.i, i32 %195, i32 %197
  %add.i94 = add i32 %retval.0.i7.i93, 1
  %198 = tail call i32 @llvm.bswap.i32(i32 %add.i94) #3
  %retval.0.i9.i = select i1 %tobool.not.i6.i, i32 %add.i94, i32 %198
  %199 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %retval.0.i9.i, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %200 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool.not.i.i.i95 = icmp eq i8 %200, 0
  %201 = lshr i32 %retval.0.i9.i, 24
  %retval.0.i.i.i96 = select i1 %tobool.not.i.i.i95, i32 %retval.0.i9.i, i32 %201
  %and.i.i97 = and i32 %retval.0.i.i.i96, 127
  %call2.i98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i97, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.7, i32 0, i32 7)) #6
  %202 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %204 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool.not.i.i.i.i.i99 = icmp eq i8 %204, 0
  %205 = lshr i32 %203, 24
  %retval.0.i.i.i.i.i100 = select i1 %tobool.not.i.i.i.i.i99, i32 %203, i32 %205
  %and.i.i.i.i101 = and i32 %retval.0.i.i.i.i.i100, 127
  %add.ptr.i.i.i102 = getelementptr i32, ptr %desc, i32 %and.i.i.i.i101
  %retval.0.i.i1.i103 = select i1 %tobool.not.i.i.i.i.i99, i32 756285440, i32 5165
  %206 = ptrtoint ptr %add.ptr.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %retval.0.i.i1.i103, ptr %add.ptr.i.i.i102, align 4
  %207 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %209 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool.not.i6.i.i104 = icmp eq i8 %209, 0
  %210 = tail call i32 @llvm.bswap.i32(i32 %208) #3
  %retval.0.i7.i.i105 = select i1 %tobool.not.i6.i.i104, i32 %208, i32 %210
  %add.i.i106 = add i32 %retval.0.i7.i.i105, 1
  %211 = tail call i32 @llvm.bswap.i32(i32 %add.i.i106) #3
  %retval.0.i9.i.i107 = select i1 %tobool.not.i6.i.i104, i32 %add.i.i106, i32 %211
  %212 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %retval.0.i9.i.i107, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %213 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool.not.i.i.i108 = icmp eq i8 %213, 0
  %214 = lshr i32 %retval.0.i9.i.i107, 24
  %retval.0.i.i.i109 = select i1 %tobool.not.i.i.i108, i32 %retval.0.i9.i.i107, i32 %214
  %and.i.i110 = and i32 %retval.0.i.i.i109, 127
  %call2.i111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i110, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.8, i32 0, i32 7)) #6
  %or4.i113 = or i32 %digestsize, 1545601024
  %215 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %217 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %217)
  %tobool.not.i.i.i.i.i114 = icmp eq i8 %217, 0
  %218 = lshr i32 %216, 24
  %retval.0.i.i.i.i.i115 = select i1 %tobool.not.i.i.i.i.i114, i32 %216, i32 %218
  %and.i.i.i.i116 = and i32 %retval.0.i.i.i.i.i115, 127
  %add.ptr.i.i.i117 = getelementptr i32, ptr %desc, i32 %and.i.i.i.i116
  %219 = tail call i32 @llvm.bswap.i32(i32 %or4.i113) #3
  %retval.0.i.i6.i118 = select i1 %tobool.not.i.i.i.i.i114, i32 %or4.i113, i32 %219
  %220 = ptrtoint ptr %add.ptr.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %retval.0.i.i6.i118, ptr %add.ptr.i.i.i117, align 4
  %221 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %223 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool.not.i6.i.i119 = icmp eq i8 %223, 0
  %224 = tail call i32 @llvm.bswap.i32(i32 %222) #3
  %retval.0.i7.i.i120 = select i1 %tobool.not.i6.i.i119, i32 %222, i32 %224
  %add.i.i121 = add i32 %retval.0.i7.i.i120, 1
  %225 = tail call i32 @llvm.bswap.i32(i32 %add.i.i121) #3
  %retval.0.i9.i.i122 = select i1 %tobool.not.i6.i.i119, i32 %add.i.i121, i32 %225
  %226 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %retval.0.i9.i.i122, ptr %desc, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cnstr_shdsc_sk_hash(ptr noundef %desc, ptr nocapture noundef readonly %adata, i32 noundef %state, i32 noundef %digestsize, i32 noundef %ctx_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %2 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i.i = icmp eq i8 %2, 0
  %3 = lshr i32 %1, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %1, i32 %3
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([13 x i8], ptr @.str.1, i32 0, i32 7)) #6
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %4 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i5.i = icmp eq i8 %4, 0
  %retval.0.i.i6.i = select i1 %tobool.not.i.i5.i, i32 -1199566335, i32 17989816
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i.i6.i, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %6 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i.i.i = icmp eq i8 %6, 0
  %7 = lshr i32 %retval.0.i.i6.i, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %retval.0.i.i6.i, i32 %7
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 57
  %add.ptr.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i.i, ptr noundef getelementptr inbounds ([12 x i8], ptr @.str.3, i32 0, i32 7)) #6
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %10 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i.i.i.i = icmp eq i8 %10, 0
  %11 = lshr i32 %9, 24
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %9, i32 %11
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i, 127
  %add.ptr.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i
  %retval.0.i.i1.i = select i1 %tobool.not.i.i.i.i.i, i32 -1593819136, i32 4194465
  %12 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i.i1.i, ptr %add.ptr.i.i.i, align 4
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %15 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i6.i.i = icmp eq i8 %15, 0
  %16 = tail call i32 @llvm.bswap.i32(i32 %14) #3
  %retval.0.i7.i.i = select i1 %tobool.not.i6.i.i, i32 %14, i32 %16
  %add.i.i = add i32 %retval.0.i7.i.i, 1
  %17 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #3
  %retval.0.i9.i.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %17
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i9.i.i, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %state)
  %cmp = icmp ne i32 %state, 4
  %19 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %state, label %if.else [
    i32 12, label %entry.if.then_crit_edge
    i32 4, label %entry.if.then_crit_edge186
  ]

entry.if.then_crit_edge186:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge186
  %key_virt = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 4
  %20 = ptrtoint ptr %key_virt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %key_virt, align 4
  %keylen = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 1
  %22 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %keylen, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %24 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i.i46 = icmp eq i8 %24, 0
  %25 = lshr i32 %retval.0.i9.i.i, 24
  %retval.0.i.i.i47 = select i1 %tobool.not.i.i.i46, i32 %retval.0.i9.i.i, i32 %25
  %and.i.i48 = and i32 %retval.0.i.i.i47, 127
  %call2.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i48, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.4, i32 0, i32 7)) #6
  %or4.i = or i32 %23, 41943040
  %26 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %28 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i.i.i.i50 = icmp eq i8 %28, 0
  %29 = lshr i32 %27, 24
  %retval.0.i.i.i.i.i51 = select i1 %tobool.not.i.i.i.i.i50, i32 %27, i32 %29
  %and.i.i.i.i52 = and i32 %retval.0.i.i.i.i.i51, 127
  %add.ptr.i.i.i53 = getelementptr i32, ptr %desc, i32 %and.i.i.i.i52
  %30 = tail call i32 @llvm.bswap.i32(i32 %or4.i) #3
  %retval.0.i.i7.i = select i1 %tobool.not.i.i.i.i.i50, i32 %or4.i, i32 %30
  %31 = ptrtoint ptr %add.ptr.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i.i7.i, ptr %add.ptr.i.i.i53, align 4
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %34 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i6.i.i54 = icmp eq i8 %34, 0
  %35 = tail call i32 @llvm.bswap.i32(i32 %33) #3
  %retval.0.i7.i.i55 = select i1 %tobool.not.i6.i.i54, i32 %33, i32 %35
  %add.i.i56 = add i32 %retval.0.i7.i.i55, 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %add.i.i56) #3
  %retval.0.i9.i.i57 = select i1 %tobool.not.i6.i.i54, i32 %add.i.i56, i32 %36
  %37 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i9.i.i57, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %if.then.append_key_as_imm.exit_crit_edge, label %if.then.i.i

if.then.append_key_as_imm.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %append_key_as_imm.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %38 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i.i.i8.i = icmp eq i8 %38, 0
  %39 = lshr i32 %retval.0.i9.i.i57, 24
  %retval.0.i.i.i.i9.i = select i1 %tobool.not.i.i.i.i8.i, i32 %retval.0.i9.i.i57, i32 %39
  %and.i.i.i10.i = and i32 %retval.0.i.i.i.i9.i, 127
  %add.ptr.i.i11.i = getelementptr i32, ptr %desc, i32 %and.i.i.i10.i
  %40 = call ptr @memcpy(ptr %add.ptr.i.i11.i, ptr %21, i32 %23)
  br label %append_key_as_imm.exit

append_key_as_imm.exit:                           ; preds = %if.then.i.i, %if.then.append_key_as_imm.exit_crit_edge
  %41 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %43 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i.i12.i = icmp eq i8 %43, 0
  %44 = tail call i32 @llvm.bswap.i32(i32 %42) #3
  %retval.0.i.i13.i = select i1 %tobool.not.i.i12.i, i32 %42, i32 %44
  %sub.i.i = add i32 %23, 3
  %div8.i.i = lshr i32 %sub.i.i, 2
  %add2.i.i = add i32 %retval.0.i.i13.i, %div8.i.i
  %45 = tail call i32 @llvm.bswap.i32(i32 %add2.i.i) #3
  %retval.0.i10.i.i = select i1 %tobool.not.i.i12.i, i32 %add2.i.i, i32 %45
  br label %if.end10

if.else:                                          ; preds = %entry
  %46 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %adata, align 4
  %and.i = and i32 %47, 16719856
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050368, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1050368
  br i1 %cmp.i, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %key_dma = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 3
  %48 = ptrtoint ptr %key_dma to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %key_dma, align 4
  %keylen5 = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 1
  %50 = ptrtoint ptr %keylen5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %keylen5, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %52 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i.i58 = icmp eq i8 %52, 0
  %53 = lshr i32 %retval.0.i9.i.i, 24
  %retval.0.i.i.i59 = select i1 %tobool.not.i.i.i58, i32 %retval.0.i9.i.i, i32 %53
  %and.i.i60 = and i32 %retval.0.i.i.i59, 127
  %call2.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i60, ptr noundef getelementptr inbounds ([11 x i8], ptr @.str.9, i32 0, i32 7)) #6
  %or.i.i = or i32 %51, 37748736
  %54 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %56 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i.i.i.i.i.i = icmp eq i8 %56, 0
  %57 = lshr i32 %55, 24
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %55, i32 %57
  %and.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i.i
  %58 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #3
  %retval.0.i.i.i.i62 = select i1 %tobool.not.i.i.i.i.i.i, i32 %or.i.i, i32 %58
  %59 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i.i.i.i62, ptr %add.ptr.i.i.i.i, align 4
  %60 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %62 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i6.i.i.i = icmp eq i8 %62, 0
  %63 = tail call i32 @llvm.bswap.i32(i32 %61) #3
  %retval.0.i7.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %61, i32 %63
  %add.i.i.i = add i32 %retval.0.i7.i.i.i, 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #3
  %retval.0.i9.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %add.i.i.i, i32 %64
  %65 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i9.i.i.i, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %66 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i.i.i.i2.i.i = icmp eq i8 %66, 0
  %67 = lshr i32 %retval.0.i9.i.i.i, 24
  %retval.0.i.i.i.i3.i.i = select i1 %tobool.not.i.i.i.i2.i.i, i32 %retval.0.i9.i.i.i, i32 %67
  %and.i.i.i4.i.i = and i32 %retval.0.i.i.i.i3.i.i, 127
  %add.ptr.i.i5.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i4.i.i
  %68 = tail call i32 @llvm.bswap.i32(i32 %49) #3
  %retval.0.i.i.i.i.i63 = select i1 %tobool.not.i.i.i.i2.i.i, i32 %49, i32 %68
  %69 = ptrtoint ptr %add.ptr.i.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %retval.0.i.i.i.i.i63, ptr %add.ptr.i.i5.i.i, align 4
  %70 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %72 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i.i.i.i64 = icmp eq i8 %72, 0
  %73 = tail call i32 @llvm.bswap.i32(i32 %71) #3
  %retval.0.i.i6.i.i = select i1 %tobool.not.i.i.i.i64, i32 %71, i32 %73
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %74 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i = lshr i32 %74, 2
  %add.i7.i.i = add i32 %retval.0.i.i6.i.i, %div14.i.i.i
  %75 = tail call i32 @llvm.bswap.i32(i32 %add.i7.i.i) #3
  %retval.0.i23.i.i.i = select i1 %tobool.not.i.i.i.i64, i32 %add.i7.i.i, i32 %75
  br label %if.end

if.else6:                                         ; preds = %if.else
  %key_virt7 = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 4
  %76 = ptrtoint ptr %key_virt7 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %key_virt7, align 4
  %keylen8 = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 1
  %78 = ptrtoint ptr %keylen8 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %keylen8, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %80 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i.i.i65 = icmp eq i8 %80, 0
  %81 = lshr i32 %retval.0.i9.i.i, 24
  %retval.0.i.i.i66 = select i1 %tobool.not.i.i.i65, i32 %retval.0.i9.i.i, i32 %81
  %and.i.i67 = and i32 %retval.0.i.i.i66, 127
  %call2.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i67, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.4, i32 0, i32 7)) #6
  %or4.i70 = or i32 %79, 41943040
  %82 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %84 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i.i.i.i.i71 = icmp eq i8 %84, 0
  %85 = lshr i32 %83, 24
  %retval.0.i.i.i.i.i72 = select i1 %tobool.not.i.i.i.i.i71, i32 %83, i32 %85
  %and.i.i.i.i73 = and i32 %retval.0.i.i.i.i.i72, 127
  %add.ptr.i.i.i74 = getelementptr i32, ptr %desc, i32 %and.i.i.i.i73
  %86 = tail call i32 @llvm.bswap.i32(i32 %or4.i70) #3
  %retval.0.i.i7.i75 = select i1 %tobool.not.i.i.i.i.i71, i32 %or4.i70, i32 %86
  %87 = ptrtoint ptr %add.ptr.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %retval.0.i.i7.i75, ptr %add.ptr.i.i.i74, align 4
  %88 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %90 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i6.i.i76 = icmp eq i8 %90, 0
  %91 = tail call i32 @llvm.bswap.i32(i32 %89) #3
  %retval.0.i7.i.i77 = select i1 %tobool.not.i6.i.i76, i32 %89, i32 %91
  %add.i.i78 = add i32 %retval.0.i7.i.i77, 1
  %92 = tail call i32 @llvm.bswap.i32(i32 %add.i.i78) #3
  %retval.0.i9.i.i79 = select i1 %tobool.not.i6.i.i76, i32 %add.i.i78, i32 %92
  %93 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %retval.0.i9.i.i79, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.not.i.i80 = icmp eq i32 %79, 0
  br i1 %tobool.not.i.i80, label %if.else6.append_key_as_imm.exit92_crit_edge, label %if.then.i.i85

if.else6.append_key_as_imm.exit92_crit_edge:      ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  br label %append_key_as_imm.exit92

if.then.i.i85:                                    ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %94 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i.i.i.i8.i81 = icmp eq i8 %94, 0
  %95 = lshr i32 %retval.0.i9.i.i79, 24
  %retval.0.i.i.i.i9.i82 = select i1 %tobool.not.i.i.i.i8.i81, i32 %retval.0.i9.i.i79, i32 %95
  %and.i.i.i10.i83 = and i32 %retval.0.i.i.i.i9.i82, 127
  %add.ptr.i.i11.i84 = getelementptr i32, ptr %desc, i32 %and.i.i.i10.i83
  %96 = call ptr @memcpy(ptr %add.ptr.i.i11.i84, ptr %77, i32 %79)
  br label %append_key_as_imm.exit92

append_key_as_imm.exit92:                         ; preds = %if.then.i.i85, %if.else6.append_key_as_imm.exit92_crit_edge
  %97 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %99 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i.i12.i86 = icmp eq i8 %99, 0
  %100 = tail call i32 @llvm.bswap.i32(i32 %98) #3
  %retval.0.i.i13.i87 = select i1 %tobool.not.i.i12.i86, i32 %98, i32 %100
  %sub.i.i88 = add i32 %79, 3
  %div8.i.i89 = lshr i32 %sub.i.i88, 2
  %add2.i.i90 = add i32 %retval.0.i.i13.i87, %div8.i.i89
  %101 = tail call i32 @llvm.bswap.i32(i32 %add2.i.i90) #3
  %retval.0.i10.i.i91 = select i1 %tobool.not.i.i12.i86, i32 %add2.i.i90, i32 %101
  br label %if.end

if.end:                                           ; preds = %append_key_as_imm.exit92, %if.then4
  %storemerge185 = phi i32 [ %retval.0.i10.i.i91, %append_key_as_imm.exit92 ], [ %retval.0.i23.i.i.i, %if.then4 ]
  %102 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %storemerge185, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %103 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i.i.i93 = icmp eq i8 %103, 0
  %104 = lshr i32 %storemerge185, 24
  %retval.0.i.i.i94 = select i1 %tobool.not.i.i.i93, i32 %storemerge185, i32 %104
  %and.i.i95 = and i32 %retval.0.i.i.i94, 127
  %call2.i96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i95, ptr noundef getelementptr inbounds ([16 x i8], ptr @.str.5, i32 0, i32 7)) #6
  %or4.i98 = or i32 %ctx_len, 438304768
  %105 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %107 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool.not.i.i.i.i.i99 = icmp eq i8 %107, 0
  %108 = lshr i32 %106, 24
  %retval.0.i.i.i.i.i100 = select i1 %tobool.not.i.i.i.i.i99, i32 %106, i32 %108
  %and.i.i.i.i101 = and i32 %retval.0.i.i.i.i.i100, 127
  %add.ptr.i.i.i102 = getelementptr i32, ptr %desc, i32 %and.i.i.i.i101
  %109 = tail call i32 @llvm.bswap.i32(i32 %or4.i98) #3
  %retval.0.i.i6.i103 = select i1 %tobool.not.i.i.i.i.i99, i32 %or4.i98, i32 %109
  %110 = ptrtoint ptr %add.ptr.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %retval.0.i.i6.i103, ptr %add.ptr.i.i.i102, align 4
  %111 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %113 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i6.i.i104 = icmp eq i8 %113, 0
  %114 = tail call i32 @llvm.bswap.i32(i32 %112) #3
  %retval.0.i7.i.i105 = select i1 %tobool.not.i6.i.i104, i32 %112, i32 %114
  %add.i.i106 = add i32 %retval.0.i7.i.i105, 1
  %115 = tail call i32 @llvm.bswap.i32(i32 %add.i.i106) #3
  %retval.0.i9.i.i107 = select i1 %tobool.not.i6.i.i104, i32 %add.i.i106, i32 %115
  br label %if.end10

if.end10:                                         ; preds = %if.end, %append_key_as_imm.exit
  %storemerge = phi i32 [ %retval.0.i10.i.i, %append_key_as_imm.exit ], [ %retval.0.i9.i.i107, %if.end ]
  %116 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %storemerge, ptr %desc, align 4
  %117 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %add.ptr.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %119 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i.i108 = icmp eq i8 %119, 0
  %120 = tail call i32 @llvm.bswap.i32(i32 %118) #3
  %retval.0.i.i = select i1 %tobool.not.i.i108, i32 %118, i32 %120
  %121 = lshr i32 %storemerge, 24
  %retval.0.i.i.i109 = select i1 %tobool.not.i.i108, i32 %storemerge, i32 %121
  %and.i.i110 = and i32 %retval.0.i.i.i109, 127
  %sub.i = sub nsw i32 %and.i.i110, %and.i.i.i
  %or.i111 = or i32 %sub.i, %retval.0.i.i
  %122 = tail call i32 @llvm.bswap.i32(i32 %or.i111) #3
  %retval.0.i7.i = select i1 %tobool.not.i.i108, i32 %or.i111, i32 %122
  %123 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %retval.0.i7.i, ptr %add.ptr.i.i, align 4
  %124 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %adata, align 4
  %126 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %128 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not.i.i.i112 = icmp eq i8 %128, 0
  %129 = lshr i32 %127, 24
  %retval.0.i.i.i113 = select i1 %tobool.not.i.i.i112, i32 %127, i32 %129
  %and.i.i114 = and i32 %retval.0.i.i.i113, 127
  %call2.i115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i114, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.6, i32 0, i32 7)) #6
  %or = or i32 %125, %state
  %or.i116 = or i32 %or, -2147483647
  %130 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %132 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool.not.i.i.i.i.i117 = icmp eq i8 %132, 0
  %133 = lshr i32 %131, 24
  %retval.0.i.i.i.i.i118 = select i1 %tobool.not.i.i.i.i.i117, i32 %131, i32 %133
  %and.i.i.i.i119 = and i32 %retval.0.i.i.i.i.i118, 127
  %add.ptr.i.i.i120 = getelementptr i32, ptr %desc, i32 %and.i.i.i.i119
  %134 = tail call i32 @llvm.bswap.i32(i32 %or.i116) #3
  %retval.0.i.i5.i = select i1 %tobool.not.i.i.i.i.i117, i32 %or.i116, i32 %134
  %135 = ptrtoint ptr %add.ptr.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %retval.0.i.i5.i, ptr %add.ptr.i.i.i120, align 4
  %136 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %138 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool.not.i6.i.i121 = icmp eq i8 %138, 0
  %139 = tail call i32 @llvm.bswap.i32(i32 %137) #3
  %retval.0.i7.i.i122 = select i1 %tobool.not.i6.i.i121, i32 %137, i32 %139
  %add.i.i123 = add i32 %retval.0.i7.i.i122, 1
  %140 = tail call i32 @llvm.bswap.i32(i32 %add.i.i123) #3
  %retval.0.i9.i.i124 = select i1 %tobool.not.i6.i.i121, i32 %add.i.i123, i32 %140
  %141 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %retval.0.i9.i.i124, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %142 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not.i.i.i.i125 = icmp eq i8 %142, 0
  %143 = lshr i32 %retval.0.i9.i.i124, 24
  %retval.0.i.i.i.i126 = select i1 %tobool.not.i.i.i.i125, i32 %retval.0.i9.i.i124, i32 %143
  %and.i.i.i127 = and i32 %retval.0.i.i.i.i126, 127
  %add.ptr.i.i128 = getelementptr i32, ptr %desc, i32 %and.i.i.i127
  %retval.0.i.i129 = select i1 %tobool.not.i.i.i.i125, i32 -1475868156, i32 67766440
  %144 = ptrtoint ptr %add.ptr.i.i128 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %retval.0.i.i129, ptr %add.ptr.i.i128, align 4
  %145 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %147 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i6.i = icmp eq i8 %147, 0
  %148 = tail call i32 @llvm.bswap.i32(i32 %146) #3
  %retval.0.i7.i130 = select i1 %tobool.not.i6.i, i32 %146, i32 %148
  %add.i = add i32 %retval.0.i7.i130, 1
  %149 = tail call i32 @llvm.bswap.i32(i32 %add.i) #3
  %retval.0.i9.i = select i1 %tobool.not.i6.i, i32 %add.i, i32 %149
  %150 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %retval.0.i9.i, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %151 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool.not.i.i.i131 = icmp eq i8 %151, 0
  %152 = lshr i32 %retval.0.i9.i, 24
  %retval.0.i.i.i132 = select i1 %tobool.not.i.i.i131, i32 %retval.0.i9.i, i32 %152
  %and.i.i133 = and i32 %retval.0.i.i.i132, 127
  %call2.i134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i133, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.7, i32 0, i32 7)) #6
  %153 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %155 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %155)
  %tobool.not.i.i.i.i.i135 = icmp eq i8 %155, 0
  %156 = lshr i32 %154, 24
  %retval.0.i.i.i.i.i136 = select i1 %tobool.not.i.i.i.i.i135, i32 %154, i32 %156
  %and.i.i.i.i137 = and i32 %retval.0.i.i.i.i.i136, 127
  %add.ptr.i.i.i138 = getelementptr i32, ptr %desc, i32 %and.i.i.i.i137
  %retval.0.i.i1.i139 = select i1 %tobool.not.i.i.i.i.i135, i32 722599936, i32 4651
  %157 = ptrtoint ptr %add.ptr.i.i.i138 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %retval.0.i.i1.i139, ptr %add.ptr.i.i.i138, align 4
  %158 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %160 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool.not.i6.i.i140 = icmp eq i8 %160, 0
  %161 = tail call i32 @llvm.bswap.i32(i32 %159) #3
  %retval.0.i7.i.i141 = select i1 %tobool.not.i6.i.i140, i32 %159, i32 %161
  %add.i.i142 = add i32 %retval.0.i7.i.i141, 1
  %162 = tail call i32 @llvm.bswap.i32(i32 %add.i.i142) #3
  %retval.0.i9.i.i143 = select i1 %tobool.not.i6.i.i140, i32 %add.i.i142, i32 %162
  %163 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %retval.0.i9.i.i143, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %164 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i.i.i144 = icmp eq i8 %164, 0
  %165 = lshr i32 %retval.0.i9.i.i143, 24
  %retval.0.i.i.i145 = select i1 %tobool.not.i.i.i144, i32 %retval.0.i9.i.i143, i32 %165
  %and.i.i146 = and i32 %retval.0.i.i.i145, 127
  %call2.i147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i146, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.8, i32 0, i32 7)) #6
  %or4.i149 = or i32 %digestsize, 1512046592
  %166 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %168 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i.i.i.i.i150 = icmp eq i8 %168, 0
  %169 = lshr i32 %167, 24
  %retval.0.i.i.i.i.i151 = select i1 %tobool.not.i.i.i.i.i150, i32 %167, i32 %169
  %and.i.i.i.i152 = and i32 %retval.0.i.i.i.i.i151, 127
  %add.ptr.i.i.i153 = getelementptr i32, ptr %desc, i32 %and.i.i.i.i152
  %170 = tail call i32 @llvm.bswap.i32(i32 %or4.i149) #3
  %retval.0.i.i6.i154 = select i1 %tobool.not.i.i.i.i.i150, i32 %or4.i149, i32 %170
  %171 = ptrtoint ptr %add.ptr.i.i.i153 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %retval.0.i.i6.i154, ptr %add.ptr.i.i.i153, align 4
  %172 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %174 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool.not.i6.i.i155 = icmp eq i8 %174, 0
  %175 = tail call i32 @llvm.bswap.i32(i32 %173) #3
  %retval.0.i7.i.i156 = select i1 %tobool.not.i6.i.i155, i32 %173, i32 %175
  %add.i.i157 = add i32 %retval.0.i7.i.i156, 1
  %176 = tail call i32 @llvm.bswap.i32(i32 %add.i.i157) #3
  %retval.0.i9.i.i158 = select i1 %tobool.not.i6.i.i155, i32 %add.i.i157, i32 %176
  %177 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %retval.0.i9.i.i158, ptr %desc, align 4
  %178 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %adata, align 4
  %and.i159 = and i32 %179, 16719856
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050368, i32 %and.i159)
  %cmp.i160 = icmp ne i32 %and.i159, 1050368
  %brmerge = or i1 %cmp, %cmp.i160
  br i1 %brmerge, label %if.end10.if.end19_crit_edge, label %if.then16

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end19

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #5
  %key_dma17 = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 3
  %180 = ptrtoint ptr %key_dma17 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %key_dma17, align 4
  %keylen18 = getelementptr inbounds %struct.alginfo, ptr %adata, i32 0, i32 1
  %182 = ptrtoint ptr %keylen18 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %keylen18, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %184 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool.not.i.i.i161 = icmp eq i8 %184, 0
  %185 = lshr i32 %retval.0.i9.i.i158, 24
  %retval.0.i.i.i162 = select i1 %tobool.not.i.i.i161, i32 %retval.0.i9.i.i158, i32 %185
  %and.i.i163 = and i32 %retval.0.i.i.i162, 127
  %call2.i164 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %and.i.i163, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.10, i32 0, i32 7)) #6
  %or.i.i165 = or i32 %183, 1646526464
  %186 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %188 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool.not.i.i.i.i.i.i166 = icmp eq i8 %188, 0
  %189 = lshr i32 %187, 24
  %retval.0.i.i.i.i.i.i167 = select i1 %tobool.not.i.i.i.i.i.i166, i32 %187, i32 %189
  %and.i.i.i.i.i168 = and i32 %retval.0.i.i.i.i.i.i167, 127
  %add.ptr.i.i.i.i169 = getelementptr i32, ptr %desc, i32 %and.i.i.i.i.i168
  %190 = tail call i32 @llvm.bswap.i32(i32 %or.i.i165) #3
  %retval.0.i.i.i.i170 = select i1 %tobool.not.i.i.i.i.i.i166, i32 %or.i.i165, i32 %190
  %191 = ptrtoint ptr %add.ptr.i.i.i.i169 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %retval.0.i.i.i.i170, ptr %add.ptr.i.i.i.i169, align 4
  %192 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %194 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not.i6.i.i.i171 = icmp eq i8 %194, 0
  %195 = tail call i32 @llvm.bswap.i32(i32 %193) #3
  %retval.0.i7.i.i.i172 = select i1 %tobool.not.i6.i.i.i171, i32 %193, i32 %195
  %add.i.i.i173 = add i32 %retval.0.i7.i.i.i172, 1
  %196 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i173) #3
  %retval.0.i9.i.i.i174 = select i1 %tobool.not.i6.i.i.i171, i32 %add.i.i.i173, i32 %196
  %197 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %retval.0.i9.i.i.i174, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %198 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %198)
  %tobool.not.i.i.i.i2.i.i175 = icmp eq i8 %198, 0
  %199 = lshr i32 %retval.0.i9.i.i.i174, 24
  %retval.0.i.i.i.i3.i.i176 = select i1 %tobool.not.i.i.i.i2.i.i175, i32 %retval.0.i9.i.i.i174, i32 %199
  %and.i.i.i4.i.i177 = and i32 %retval.0.i.i.i.i3.i.i176, 127
  %add.ptr.i.i5.i.i178 = getelementptr i32, ptr %desc, i32 %and.i.i.i4.i.i177
  %200 = tail call i32 @llvm.bswap.i32(i32 %181) #3
  %retval.0.i.i.i.i.i179 = select i1 %tobool.not.i.i.i.i2.i.i175, i32 %181, i32 %200
  %201 = ptrtoint ptr %add.ptr.i.i5.i.i178 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %retval.0.i.i.i.i.i179, ptr %add.ptr.i.i5.i.i178, align 4
  %202 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %204 = load i8, ptr @caam_little_end, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool.not.i.i.i.i180 = icmp eq i8 %204, 0
  %205 = tail call i32 @llvm.bswap.i32(i32 %203) #3
  %retval.0.i.i6.i.i181 = select i1 %tobool.not.i.i.i.i180, i32 %203, i32 %205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %206 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i182 = lshr i32 %206, 2
  %add.i7.i.i183 = add i32 %retval.0.i.i6.i.i181, %div14.i.i.i182
  %207 = tail call i32 @llvm.bswap.i32(i32 %add.i7.i.i183) #3
  %retval.0.i23.i.i.i184 = select i1 %tobool.not.i.i.i.i180, i32 %add.i7.i.i183, i32 %207
  %208 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %retval.0.i23.i.i.i184, ptr %desc, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end10.if.end19_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__ksymtab_cnstr_shdsc_ahash, !1, !"__ksymtab_cnstr_shdsc_ahash", i1 false, i1 false}
!1 = !{!"../drivers/crypto/caam/caamhash_desc.c", i32 76, i32 1}
!2 = !{ptr @__ksymtab_cnstr_shdsc_sk_hash, !3, !"__ksymtab_cnstr_shdsc_sk_hash", i1 false, i1 false}
!3 = !{!"../drivers/crypto/caam/caamhash_desc.c", i32 141, i32 1}
!4 = !{ptr @__UNIQUE_ID_file511, !5, !"__UNIQUE_ID_file511", i1 false, i1 false}
!5 = !{!"../drivers/crypto/caam/caamhash_desc.c", i32 143, i32 1}
!6 = !{ptr @__UNIQUE_ID_license512, !5, !"__UNIQUE_ID_license512", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description513, !8, !"__UNIQUE_ID_description513", i1 false, i1 false}
!8 = !{!"../drivers/crypto/caam/caamhash_desc.c", i32 144, i32 1}
!9 = !{ptr @__UNIQUE_ID_author514, !10, !"__UNIQUE_ID_author514", i1 false, i1 false}
!10 = !{!"../drivers/crypto/caam/caamhash_desc.c", i32 145, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/crypto/caam/desc_constr.h", i32 111, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @init_sh_desc._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @init_sh_desc._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/crypto/caam/desc_constr.h", i32 240, i32 1}
!19 = !{ptr @append_jump._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @append_jump._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/crypto/caam/desc_constr.h", i32 374, i32 1}
!23 = !{ptr @append_key_as_imm._entry, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @append_key_as_imm._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/crypto/caam/desc_constr.h", i32 275, i32 1}
!27 = !{ptr @append_seq_load._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @append_seq_load._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/crypto/caam/desc_constr.h", i32 265, i32 1}
!31 = !{ptr @append_operation._entry, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @append_operation._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/crypto/caam/desc_constr.h", i32 277, i32 1}
!35 = !{ptr @append_seq_fifo_load._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @append_seq_fifo_load._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/caam/desc_constr.h", i32 276, i32 1}
!39 = !{ptr @append_seq_store._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @append_seq_store._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/crypto/caam/desc_constr.h", i32 287, i32 1}
!43 = !{ptr @append_key._entry, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @append_key._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/crypto/caam/desc_constr.h", i32 290, i32 1}
!47 = !{ptr @append_fifo_store._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @append_fifo_store._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i8 0, i8 2}
