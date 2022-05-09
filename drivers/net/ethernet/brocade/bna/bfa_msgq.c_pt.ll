; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/brocade/bna/bfa_msgq.c_pt.bc'
source_filename = "../drivers/net/ethernet/brocade/bna/bfa_msgq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bfa_msgq_cmdq = type { ptr, i32, i16, i16, i16, %struct.bfa_dma, %struct.bfa_mbox_cmd, i16, i32, i32, %struct.bfa_mbox_cmd, %struct.list_head, ptr }
%struct.bfa_dma = type { ptr, i64 }
%struct.bfa_mbox_cmd = type { %struct.list_head, ptr, ptr, [8 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.bfa_msgq = type { %struct.bfa_msgq_cmdq, %struct.bfa_msgq_rspq, %struct.bfa_wc, %struct.bfa_mbox_cmd, %struct.bfa_ioc_notify, ptr }
%struct.bfa_msgq_rspq = type { ptr, i32, i16, i16, i16, %struct.bfa_dma, %struct.bfa_mbox_cmd, i32, [34 x %struct.anon], ptr }
%struct.anon = type { ptr, ptr }
%struct.bfa_wc = type { ptr, ptr, i32 }
%struct.bfa_ioc_notify = type { %struct.list_head, ptr, ptr }
%struct.bfa_msgq_cmd_entry = type { %struct.list_head, ptr, ptr, i32, ptr }
%struct.bfi_mhdr = type { i8, i8, %union.anon.1 }
%union.anon.1 = type { i16 }
%struct.bfi_msgq_i2h_db = type { %struct.bfi_mhdr, %union.anon.4 }
%union.anon.4 = type { i16 }
%struct.bfi_msgq_mhdr = type { i8, i8, i16, i16, i8, i8 }
%struct.bfi_msgq_i2h_cmdq_copy_req = type { %struct.bfi_mhdr, i16, i16 }

@cmdq_sm_stopped._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013SM Assertion failure: %s: %d: event = %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cmdq_sm_stopped\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/brocade/bna/bfa_msgq.c\00", [52 x i8] zeroinitializer }, align 32
@cmdq_sm_stopped._entry_ptr = internal global ptr @cmdq_sm_stopped._entry, section ".printk_index", align 4
@cmdq_sm_init_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cmdq_sm_init_wait\00", [46 x i8] zeroinitializer }, align 32
@cmdq_sm_init_wait._entry_ptr = internal global ptr @cmdq_sm_init_wait._entry, section ".printk_index", align 4
@cmdq_sm_dbell_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cmdq_sm_dbell_wait\00", [45 x i8] zeroinitializer }, align 32
@cmdq_sm_dbell_wait._entry_ptr = internal global ptr @cmdq_sm_dbell_wait._entry, section ".printk_index", align 4
@cmdq_sm_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cmdq_sm_ready\00", [18 x i8] zeroinitializer }, align 32
@cmdq_sm_ready._entry_ptr = internal global ptr @cmdq_sm_ready._entry, section ".printk_index", align 4
@rspq_sm_stopped._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rspq_sm_stopped\00", [16 x i8] zeroinitializer }, align 32
@rspq_sm_stopped._entry_ptr = internal global ptr @rspq_sm_stopped._entry, section ".printk_index", align 4
@rspq_sm_init_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rspq_sm_init_wait\00", [46 x i8] zeroinitializer }, align 32
@rspq_sm_init_wait._entry_ptr = internal global ptr @rspq_sm_init_wait._entry, section ".printk_index", align 4
@rspq_sm_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rspq_sm_ready\00", [18 x i8] zeroinitializer }, align 32
@rspq_sm_ready._entry_ptr = internal global ptr @rspq_sm_ready._entry, section ".printk_index", align 4
@rspq_sm_dbell_wait._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rspq_sm_dbell_wait\00", [45 x i8] zeroinitializer }, align 32
@rspq_sm_dbell_wait._entry_ptr = internal global ptr @rspq_sm_dbell_wait._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 129, i64 130, i64 131, i64 132]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 86, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 118, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 173, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 141, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 351, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 375, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 398, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [47 x i8] c"../drivers/net/ethernet/brocade/bna/bfa_msgq.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 431, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @cmdq_sm_dbell_wait._entry, ptr @cmdq_sm_dbell_wait._entry_ptr, ptr @cmdq_sm_init_wait._entry, ptr @cmdq_sm_init_wait._entry_ptr, ptr @cmdq_sm_ready._entry, ptr @cmdq_sm_ready._entry_ptr, ptr @cmdq_sm_stopped._entry, ptr @cmdq_sm_stopped._entry_ptr, ptr @rspq_sm_dbell_wait._entry, ptr @rspq_sm_dbell_wait._entry_ptr, ptr @rspq_sm_init_wait._entry, ptr @rspq_sm_init_wait._entry_ptr, ptr @rspq_sm_ready._entry, ptr @rspq_sm_ready._entry_ptr, ptr @rspq_sm_stopped._entry, ptr @rspq_sm_stopped._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_sm_stopped._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_sm_init_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_sm_dbell_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmdq_sm_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspq_sm_stopped._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspq_sm_init_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspq_sm_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rspq_sm_dbell_wait._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @bfa_msgq_meminfo() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 16384
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_msgq_memclaim(ptr nocapture noundef writeonly %msgq, ptr noundef %kva, i64 noundef %pa) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 5
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %kva, ptr %addr, align 8
  %pa4 = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 5, i32 1
  %1 = ptrtoint ptr %pa4 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %pa, ptr %pa4, align 8
  %add.ptr = getelementptr i8, ptr %kva, i32 8192
  %add11 = add i64 %pa, 8192
  %addr12 = getelementptr inbounds %struct.bfa_msgq, ptr %msgq, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %addr12 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %addr12, align 8
  %pa16 = getelementptr inbounds %struct.bfa_msgq, ptr %msgq, i32 0, i32 1, i32 5, i32 1
  %3 = ptrtoint ptr %pa16 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %add11, ptr %pa16, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_msgq_attach(ptr noundef %msgq, ptr noundef %ioc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ioc1 = getelementptr inbounds %struct.bfa_msgq, ptr %msgq, i32 0, i32 5
  %0 = ptrtoint ptr %ioc1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %ioc, ptr %ioc1, align 4
  %depth.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 4
  %1 = ptrtoint ptr %depth.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 128, ptr %depth.i, align 4
  %pending_q.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 11
  %2 = ptrtoint ptr %pending_q.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %pending_q.i, ptr %pending_q.i, align 4
  %prev.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pending_q.i, ptr %prev.i.i, align 4
  %msgq1.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 12
  %4 = ptrtoint ptr %msgq1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %msgq, ptr %msgq1.i, align 4
  %5 = ptrtoint ptr %msgq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cmdq_sm_stopped, ptr %msgq, align 8
  %flags.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 1
  %token.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 7
  %6 = ptrtoint ptr %token.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %token.i.i, align 8
  %offset.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 8
  %7 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %offset.i.i, align 4
  %bytes_to_copy.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 9
  %8 = ptrtoint ptr %bytes_to_copy.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bytes_to_copy.i.i, align 8
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 0, ptr %flags.i.i, align 4
  %10 = load volatile ptr, ptr %pending_q.i, align 4
  %cmp.i.not19.i.i = icmp eq ptr %10, %pending_q.i
  br i1 %cmp.i.not19.i.i, label %entry.bfa_msgq_cmdq_attach.exit_crit_edge, label %entry.while.body.i.i_crit_edge

entry.while.body.i.i_crit_edge:                   ; preds = %entry
  br label %while.body.i.i

entry.bfa_msgq_cmdq_attach.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_msgq_cmdq_attach.exit

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %entry.while.body.i.i_crit_edge
  %11 = phi ptr [ %25, %if.end.i.i.while.body.i.i_crit_edge ], [ %10, %entry.while.body.i.i_crit_edge ]
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del.exit.i.i_crit_edge

while.body.i.i.list_del.exit.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del.exit.i.i_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %cbfn2.i.i = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %cbfn2.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cbfn2.i.i, align 4
  %cbarg3.i.i = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %11, i32 0, i32 2
  %22 = ptrtoint ptr %cbarg3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cbarg3.i.i, align 4
  store ptr null, ptr %cbfn2.i.i, align 4
  store ptr null, ptr %cbarg3.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %21, null
  br i1 %tobool6.not.i.i, label %list_del.exit.i.i.if.end.i.i_crit_edge, label %if.then.i.i

list_del.exit.i.i.if.end.i.i_crit_edge:           ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %21(ptr noundef %23, i32 noundef 1) #7
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %list_del.exit.i.i.if.end.i.i_crit_edge
  %24 = ptrtoint ptr %pending_q.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %pending_q.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %25, %pending_q.i
  br i1 %cmp.i.not.i.i, label %if.end.i.i.bfa_msgq_cmdq_attach.exit_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

if.end.i.i.bfa_msgq_cmdq_attach.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_msgq_cmdq_attach.exit

bfa_msgq_cmdq_attach.exit:                        ; preds = %if.end.i.i.bfa_msgq_cmdq_attach.exit_crit_edge, %entry.bfa_msgq_cmdq_attach.exit_crit_edge
  %rspq = getelementptr inbounds %struct.bfa_msgq, ptr %msgq, i32 0, i32 1
  %depth.i17 = getelementptr inbounds %struct.bfa_msgq, ptr %msgq, i32 0, i32 1, i32 4
  %26 = ptrtoint ptr %depth.i17 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 128, ptr %depth.i17, align 4
  %msgq1.i18 = getelementptr inbounds %struct.bfa_msgq, ptr %msgq, i32 0, i32 1, i32 9
  %27 = ptrtoint ptr %msgq1.i18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msgq, ptr %msgq1.i18, align 4
  %28 = ptrtoint ptr %rspq to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @rspq_sm_stopped, ptr %rspq, align 8
  %flags.i.i19 = getelementptr inbounds %struct.bfa_msgq, ptr %msgq, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %flags.i.i19 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %flags.i.i19, align 4
  %30 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ioc1, align 4
  tail call void @bfa_nw_ioc_mbox_regisr(ptr noundef %31, i32 noundef 23, ptr noundef nonnull @bfa_msgq_isr, ptr noundef %msgq) #7
  %ioc_notify = getelementptr inbounds %struct.bfa_msgq, ptr %msgq, i32 0, i32 4
  %cbfn = getelementptr inbounds %struct.bfa_msgq, ptr %msgq, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %cbfn to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @bfa_msgq_notify, ptr %cbfn, align 4
  %cbarg = getelementptr inbounds %struct.bfa_msgq, ptr %msgq, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %cbarg to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msgq, ptr %cbarg, align 4
  %34 = ptrtoint ptr %ioc1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioc1, align 4
  tail call void @bfa_nw_ioc_notify_register(ptr noundef %35, ptr noundef %ioc_notify) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_mbox_regisr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_msgq_isr(ptr noundef %cbarg, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_id = getelementptr inbounds %struct.bfi_mhdr, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %msg_id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %msg_id, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.body5 [
    i8 -127, label %sw.bb
    i8 -126, label %sw.bb1
    i8 -125, label %sw.bb2
    i8 -124, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cbarg, align 8
  tail call void %4(ptr noundef %cbarg, i32 noundef 5) #7
  %rspq.i = getelementptr inbounds %struct.bfa_msgq, ptr %cbarg, i32 0, i32 1
  %5 = ptrtoint ptr %rspq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rspq.i, align 8
  tail call void %6(ptr noundef %rspq.i, i32 noundef 5) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %rspq = getelementptr inbounds %struct.bfa_msgq, ptr %cbarg, i32 0, i32 1
  %idx.i = getelementptr inbounds %struct.bfi_msgq_i2h_db, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %idx.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %idx.i, align 1
  %producer_index.i = getelementptr inbounds %struct.bfa_msgq, ptr %cbarg, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %producer_index.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %producer_index.i, align 8
  %consumer_index.i = getelementptr inbounds %struct.bfa_msgq, ptr %cbarg, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %consumer_index.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %consumer_index.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %8)
  %cmp.not41.i = icmp eq i16 %11, %8
  br i1 %cmp.not41.i, label %sw.bb1.bfa_msgq_rspq_pi_update.exit_crit_edge, label %while.body.lr.ph.i

sw.bb1.bfa_msgq_rspq_pi_update.exit_crit_edge:    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_msgq_rspq_pi_update.exit

while.body.lr.ph.i:                               ; preds = %sw.bb1
  %addr.i = getelementptr inbounds %struct.bfa_msgq, ptr %cbarg, i32 0, i32 1, i32 5
  %depth.i = getelementptr inbounds %struct.bfa_msgq, ptr %cbarg, i32 0, i32 1, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %12 = phi i16 [ %11, %while.body.lr.ph.i ], [ %and.i, %if.end.i.while.body.i_crit_edge ]
  %conv.i = zext i16 %12 to i32
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr.i, align 8
  %mul.i = shl nuw nsw i32 %conv.i, 6
  %add.ptr.i = getelementptr i8, ptr %14, i32 %mul.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr.i, align 1
  %num_entries7.i = getelementptr inbounds %struct.bfi_msgq_mhdr, ptr %add.ptr.i, i32 0, i32 3
  %17 = ptrtoint ptr %num_entries7.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %num_entries7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 33, i8 %16)
  %cmp9.i = icmp ugt i8 %16, 33
  br i1 %cmp9.i, label %while.body.i.bfa_msgq_rspq_pi_update.exit_crit_edge, label %lor.lhs.false.i

while.body.i.bfa_msgq_rspq_pi_update.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_msgq_rspq_pi_update.exit

lor.lhs.false.i:                                  ; preds = %while.body.i
  %conv6.i = zext i8 %16 to i32
  %arrayidx.i = getelementptr %struct.bfa_msgq, ptr %cbarg, i32 0, i32 1, i32 8, i32 %conv6.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %cmp11.i = icmp eq ptr %20, null
  br i1 %cmp11.i, label %lor.lhs.false.i.bfa_msgq_rspq_pi_update.exit_crit_edge, label %if.end.i

lor.lhs.false.i.bfa_msgq_rspq_pi_update.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_msgq_rspq_pi_update.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %cbarg.i = getelementptr %struct.bfa_msgq, ptr %cbarg, i32 0, i32 1, i32 8, i32 %conv6.i, i32 1
  %21 = ptrtoint ptr %cbarg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cbarg.i, align 4
  tail call void %20(ptr noundef %22, ptr noundef %add.ptr.i) #7
  %23 = ptrtoint ptr %consumer_index.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %consumer_index.i, align 2
  %add.i = add i16 %24, %18
  %25 = ptrtoint ptr %depth.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %depth.i, align 4
  %sub.i = add i16 %26, -1
  %and.i = and i16 %sub.i, %add.i
  store i16 %and.i, ptr %consumer_index.i, align 2
  %27 = ptrtoint ptr %producer_index.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %producer_index.i, align 8
  %cmp.not.i = icmp eq i16 %and.i, %28
  br i1 %cmp.not.i, label %if.end.i.bfa_msgq_rspq_pi_update.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i.bfa_msgq_rspq_pi_update.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bfa_msgq_rspq_pi_update.exit

bfa_msgq_rspq_pi_update.exit:                     ; preds = %if.end.i.bfa_msgq_rspq_pi_update.exit_crit_edge, %lor.lhs.false.i.bfa_msgq_rspq_pi_update.exit_crit_edge, %while.body.i.bfa_msgq_rspq_pi_update.exit_crit_edge, %sw.bb1.bfa_msgq_rspq_pi_update.exit_crit_edge
  %29 = ptrtoint ptr %rspq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rspq, align 8
  tail call void %30(ptr noundef %rspq, i32 noundef 4) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %idx.i18 = getelementptr inbounds %struct.bfi_msgq_i2h_db, ptr %msg, i32 0, i32 1
  %31 = ptrtoint ptr %idx.i18 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %idx.i18, align 1
  %consumer_index.i19 = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cbarg, i32 0, i32 3
  %33 = ptrtoint ptr %consumer_index.i19 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %consumer_index.i19, align 2
  %pending_q.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cbarg, i32 0, i32 11
  %34 = ptrtoint ptr %pending_q.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %pending_q.i, align 4
  %cmp.i.not35.i = icmp eq ptr %35, %pending_q.i
  br i1 %cmp.i.not35.i, label %sw.bb2.sw.epilog_crit_edge, label %while.body.lr.ph.i22

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.body.lr.ph.i22:                             ; preds = %sw.bb2
  %producer_index.i20 = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cbarg, i32 0, i32 2
  %depth.i21 = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cbarg, i32 0, i32 4
  %addr.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cbarg, i32 0, i32 5
  %msg_hdr.i34 = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %msg_hdr.i34 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %msg_hdr.i34, align 4
  %num_entries.i35 = getelementptr inbounds %struct.bfi_msgq_mhdr, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %num_entries.i35 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %num_entries.i35, align 1
  %conv.i2336 = zext i16 %39 to i32
  %40 = ptrtoint ptr %consumer_index.i19 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %consumer_index.i19, align 2
  %conv3.i37 = zext i16 %41 to i32
  %42 = ptrtoint ptr %producer_index.i20 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %producer_index.i20, align 8
  %conv4.i38 = zext i16 %43 to i32
  %44 = xor i32 %conv4.i38, -1
  %sub5.i39 = add nsw i32 %44, %conv3.i37
  %45 = ptrtoint ptr %depth.i21 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %depth.i21, align 4
  %conv6.i2440 = zext i16 %46 to i32
  %sub7.i41 = add nsw i32 %conv6.i2440, -1
  %and.i2542 = and i32 %sub7.i41, %sub5.i39
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i2542, i32 %conv.i2336)
  %cmp.not.i2643 = icmp slt i32 %and.i2542, %conv.i2336
  br i1 %cmp.not.i2643, label %while.body.lr.ph.i22.sw.epilog_crit_edge, label %while.body.lr.ph.i22.if.then.i_crit_edge

while.body.lr.ph.i22.if.then.i_crit_edge:         ; preds = %while.body.lr.ph.i22
  br label %if.then.i

while.body.lr.ph.i22.sw.epilog_crit_edge:         ; preds = %while.body.lr.ph.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.body.i27:                                   ; preds = %if.end.i28
  %msg_hdr.i = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %88, i32 0, i32 4
  %47 = ptrtoint ptr %msg_hdr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %msg_hdr.i, align 4
  %num_entries.i = getelementptr inbounds %struct.bfi_msgq_mhdr, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %num_entries.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %num_entries.i, align 1
  %conv.i23 = zext i16 %50 to i32
  %51 = ptrtoint ptr %consumer_index.i19 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %consumer_index.i19, align 2
  %conv3.i = zext i16 %52 to i32
  %53 = ptrtoint ptr %producer_index.i20 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %producer_index.i20, align 8
  %conv4.i = zext i16 %54 to i32
  %55 = xor i32 %conv4.i, -1
  %sub5.i = add nsw i32 %55, %conv3.i
  %56 = ptrtoint ptr %depth.i21 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %depth.i21, align 4
  %conv6.i24 = zext i16 %57 to i32
  %sub7.i = add nsw i32 %conv6.i24, -1
  %and.i25 = and i32 %sub7.i, %sub5.i
  %cmp.not.i26 = icmp slt i32 %and.i25, %conv.i23
  br i1 %cmp.not.i26, label %while.body.i27.if.then17.i_crit_edge, label %while.body.i27.if.then.i_crit_edge

while.body.i27.if.then.i_crit_edge:               ; preds = %while.body.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

while.body.i27.if.then17.i_crit_edge:             ; preds = %while.body.i27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

if.then.i:                                        ; preds = %while.body.i27.if.then.i_crit_edge, %while.body.lr.ph.i22.if.then.i_crit_edge
  %msg_hdr.i44 = phi ptr [ %msg_hdr.i, %while.body.i27.if.then.i_crit_edge ], [ %msg_hdr.i34, %while.body.lr.ph.i22.if.then.i_crit_edge ]
  %58 = phi ptr [ %88, %while.body.i27.if.then.i_crit_edge ], [ %35, %while.body.lr.ph.i22.if.then.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %58) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %65 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %58, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %msg_size.i.i = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %58, i32 0, i32 3
  %67 = ptrtoint ptr %msg_size.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %msg_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not29.i.i = icmp eq i32 %68, 0
  br i1 %tobool.not29.i.i, label %list_del.exit.i.__cmd_copy.exit.i_crit_edge, label %while.body.lr.ph.i.i

list_del.exit.i.__cmd_copy.exit.i_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__cmd_copy.exit.i

while.body.lr.ph.i.i:                             ; preds = %list_del.exit.i
  %69 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %addr.i.i, align 8
  %71 = ptrtoint ptr %producer_index.i20 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %producer_index.i20, align 8
  %conv.i34.i = zext i16 %72 to i32
  %mul.i.i = shl nuw nsw i32 %conv.i34.i, 6
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 %mul.i.i
  %73 = ptrtoint ptr %msg_hdr.i44 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %msg_hdr.i44, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %dst.032.i.i = phi ptr [ %add.ptr.i.i, %while.body.lr.ph.i.i ], [ %add.ptr14.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %src.031.i.i = phi ptr [ %74, %while.body.lr.ph.i.i ], [ %add.ptr2.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %len.030.i.i = phi i32 [ %68, %while.body.lr.ph.i.i ], [ %sub.i.i, %while.body.i.i.while.body.i.i_crit_edge ]
  %75 = tail call i32 @llvm.umin.i32(i32 %len.030.i.i, i32 64) #7
  %76 = call ptr @memcpy(ptr %dst.032.i.i, ptr %src.031.i.i, i32 %75)
  %sub.i.i = sub i32 %len.030.i.i, %75
  %add.ptr2.i.i = getelementptr i8, ptr %src.031.i.i, i32 64
  %77 = ptrtoint ptr %producer_index.i20 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %producer_index.i20, align 8
  %add.i.i = add i16 %78, 1
  %79 = ptrtoint ptr %depth.i21 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %depth.i21, align 4
  %sub6.i.i = add i16 %80, -1
  %and.i.i = and i16 %sub6.i.i, %add.i.i
  store i16 %and.i.i, ptr %producer_index.i20, align 8
  %81 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %addr.i.i, align 8
  %conv12.i.i = zext i16 %and.i.i to i32
  %mul13.i.i = shl nuw nsw i32 %conv12.i.i, 6
  %add.ptr14.i.i = getelementptr i8, ptr %82, i32 %mul13.i.i
  %tobool.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.__cmd_copy.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i.__cmd_copy.exit.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__cmd_copy.exit.i

__cmd_copy.exit.i:                                ; preds = %while.body.i.i.__cmd_copy.exit.i_crit_edge, %list_del.exit.i.__cmd_copy.exit.i_crit_edge
  %cbfn9.i = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %58, i32 0, i32 1
  %83 = ptrtoint ptr %cbfn9.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cbfn9.i, align 4
  %cbarg10.i = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %58, i32 0, i32 2
  %85 = ptrtoint ptr %cbarg10.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %cbarg10.i, align 4
  store ptr null, ptr %cbfn9.i, align 4
  store ptr null, ptr %cbarg10.i, align 4
  %tobool13.not.i = icmp eq ptr %84, null
  br i1 %tobool13.not.i, label %__cmd_copy.exit.i.if.end.i28_crit_edge, label %if.then14.i

__cmd_copy.exit.i.if.end.i28_crit_edge:           ; preds = %__cmd_copy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i28

if.then14.i:                                      ; preds = %__cmd_copy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %84(ptr noundef %86, i32 noundef 0) #7
  br label %if.end.i28

if.end.i28:                                       ; preds = %if.then14.i, %__cmd_copy.exit.i.if.end.i28_crit_edge
  %87 = ptrtoint ptr %pending_q.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %pending_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %88, %pending_q.i
  br i1 %cmp.i.not.i, label %if.end.i28.if.then17.i_crit_edge, label %while.body.i27

if.end.i28.if.then17.i_crit_edge:                 ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17.i

if.then17.i:                                      ; preds = %if.end.i28.if.then17.i_crit_edge, %while.body.i27.if.then17.i_crit_edge
  %89 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cbarg, align 8
  tail call void %90(ptr noundef %cbarg, i32 noundef 4) #7
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %token.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cbarg, i32 0, i32 7
  %91 = ptrtoint ptr %token.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 0, ptr %token.i, align 8
  %offset.i = getelementptr inbounds %struct.bfi_msgq_i2h_cmdq_copy_req, ptr %msg, i32 0, i32 1
  %92 = ptrtoint ptr %offset.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %offset.i, align 1
  %conv.i29 = zext i16 %93 to i32
  %offset1.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cbarg, i32 0, i32 8
  %94 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %conv.i29, ptr %offset1.i, align 4
  %len.i = getelementptr inbounds %struct.bfi_msgq_i2h_cmdq_copy_req, ptr %msg, i32 0, i32 2
  %95 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 2)
  %96 = load i16, ptr %len.i, align 1
  %conv2.i = zext i16 %96 to i32
  %bytes_to_copy.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cbarg, i32 0, i32 9
  %97 = ptrtoint ptr %bytes_to_copy.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %conv2.i, ptr %bytes_to_copy.i, align 8
  %copy_mb.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cbarg, i32 0, i32 10
  %msg.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cbarg, i32 0, i32 10, i32 3
  %addr1.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cbarg, i32 0, i32 5
  %msg_id.i.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i.i, i32 0, i32 1
  %mtag.i.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i.i, i32 0, i32 2
  %data.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cbarg, i32 0, i32 10, i32 3, i32 1
  %msgq.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cbarg, i32 0, i32 12
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %if.then.i.i.tailrecurse.i.i_crit_edge, %sw.bb3
  %98 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %addr1.i.i, align 8
  %100 = call ptr @memset(ptr %data.i.i, i32 0, i32 28)
  %101 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 23, ptr %msg.i.i, align 1
  %102 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 4, ptr %msg_id.i.i, align 1
  %103 = ptrtoint ptr %token.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %token.i, align 8
  %105 = ptrtoint ptr %mtag.i.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 %104, ptr %mtag.i.i, align 1
  %106 = ptrtoint ptr %bytes_to_copy.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bytes_to_copy.i, align 8
  %108 = tail call i32 @llvm.smin.i32(i32 %107, i32 28) #7
  %109 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %offset1.i, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %99, i32 %110
  %111 = call ptr @memcpy(ptr %data.i.i, ptr %add.ptr.i.i30, i32 %108)
  %inc.i.i = add i16 %104, 1
  %112 = ptrtoint ptr %token.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %inc.i.i, ptr %token.i, align 8
  %add.i.i31 = add i32 %110, %108
  store i32 %add.i.i31, ptr %offset1.i, align 4
  %sub.i.i32 = sub i32 %107, %108
  %113 = ptrtoint ptr %bytes_to_copy.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %sub.i.i32, ptr %bytes_to_copy.i, align 8
  %114 = ptrtoint ptr %msgq.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %msgq.i.i, align 4
  %ioc.i.i = getelementptr inbounds %struct.bfa_msgq, ptr %115, i32 0, i32 5
  %116 = ptrtoint ptr %ioc.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ioc.i.i, align 4
  %call.i.i = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %117, ptr noundef %copy_mb.i.i, ptr noundef nonnull @bfa_msgq_cmdq_copy_next, ptr noundef %cbarg) #7
  br i1 %call.i.i, label %tailrecurse.i.i.sw.epilog_crit_edge, label %if.then.i.i

tailrecurse.i.i.sw.epilog_crit_edge:              ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i.i:                                      ; preds = %tailrecurse.i.i
  %118 = ptrtoint ptr %bytes_to_copy.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %bytes_to_copy.i, align 8
  %tobool.not.i.i.i = icmp eq i32 %119, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.sw.epilog_crit_edge, label %if.then.i.i.tailrecurse.i.i_crit_edge

if.then.i.i.tailrecurse.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tailrecurse.i.i

if.then.i.i.sw.epilog_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/brocade/bna/bfa_msgq.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 548, 0\0A.popsection", ""() #7, !srcloc !43
  unreachable

sw.epilog:                                        ; preds = %if.then.i.i.sw.epilog_crit_edge, %tailrecurse.i.i.sw.epilog_crit_edge, %if.then17.i, %while.body.lr.ph.i22.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %bfa_msgq_rspq_pi_update.exit, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_msgq_notify(ptr noundef %cbarg, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb14
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %init_wc = getelementptr inbounds %struct.bfa_msgq, ptr %cbarg, i32 0, i32 2
  %1 = ptrtoint ptr %init_wc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @bfa_msgq_init, ptr %init_wc, align 4
  %wc_cbarg2.i = getelementptr inbounds %struct.bfa_msgq, ptr %cbarg, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cbarg, ptr %wc_cbarg2.i, align 4
  %wc_count.i = getelementptr inbounds %struct.bfa_msgq, ptr %cbarg, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %wc_count.i, align 4
  %4 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cbarg, align 8
  tail call void %5(ptr noundef %cbarg, i32 noundef 1) #7
  %6 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wc_count.i, align 4
  %inc.i39 = add i32 %7, 1
  store i32 %inc.i39, ptr %wc_count.i, align 4
  %rspq = getelementptr inbounds %struct.bfa_msgq, ptr %cbarg, i32 0, i32 1
  %8 = ptrtoint ptr %rspq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rspq, align 8
  tail call void %9(ptr noundef %rspq, i32 noundef 1) #7
  %10 = ptrtoint ptr %wc_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wc_count.i, align 4
  %dec.i.i = add i32 %11, -1
  store i32 %dec.i.i, ptr %wc_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %init_wc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_wc, align 4
  %14 = ptrtoint ptr %wc_cbarg2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wc_cbarg2.i, align 4
  tail call void %13(ptr noundef %15) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cbarg, align 8
  tail call void %17(ptr noundef %cbarg, i32 noundef 2) #7
  %rspq11 = getelementptr inbounds %struct.bfa_msgq, ptr %cbarg, i32 0, i32 1
  %18 = ptrtoint ptr %rspq11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rspq11, align 8
  tail call void %19(ptr noundef %rspq11, i32 noundef 2) #7
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %cbarg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cbarg, align 8
  tail call void %21(ptr noundef %cbarg, i32 noundef 3) #7
  %rspq18 = getelementptr inbounds %struct.bfa_msgq, ptr %cbarg, i32 0, i32 1
  %22 = ptrtoint ptr %rspq18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rspq18, align 8
  tail call void %23(ptr noundef %rspq18, i32 noundef 3) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb7, %if.then.i.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bfa_nw_ioc_notify_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @bfa_msgq_regisr(ptr nocapture noundef writeonly %msgq, i32 noundef %mc, ptr noundef %cbfn, ptr noundef %cbarg) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.bfa_msgq, ptr %msgq, i32 0, i32 1, i32 8, i32 %mc
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %cbfn, ptr %arrayidx, align 4
  %cbarg5 = getelementptr %struct.bfa_msgq, ptr %msgq, i32 0, i32 1, i32 8, i32 %mc, i32 1
  %1 = ptrtoint ptr %cbarg5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cbarg, ptr %cbarg5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_msgq_cmd_post(ptr noundef %msgq, ptr noundef %cmd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_hdr = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %msg_hdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg_hdr, align 4
  %num_entries = getelementptr inbounds %struct.bfi_msgq_mhdr, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_entries to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %num_entries, align 1
  %conv = zext i16 %3 to i32
  %consumer_index = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 3
  %4 = ptrtoint ptr %consumer_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %consumer_index, align 2
  %conv1 = zext i16 %5 to i32
  %producer_index = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 2
  %6 = ptrtoint ptr %producer_index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %producer_index, align 8
  %conv3 = zext i16 %7 to i32
  %8 = xor i32 %conv3, -1
  %sub4 = add nsw i32 %8, %conv1
  %depth = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 4
  %9 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %depth, align 4
  %conv6 = zext i16 %10 to i32
  %sub7 = add nsw i32 %conv6, -1
  %and = and i32 %sub7, %sub4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp.not = icmp slt i32 %and, %conv
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %msg_size.i = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %cmd, i32 0, i32 3
  %11 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_size.i, align 4
  %addr.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not29.i = icmp eq i32 %12, 0
  br i1 %tobool.not29.i, label %if.then.__cmd_copy.exit_crit_edge, label %while.body.lr.ph.i

if.then.__cmd_copy.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %__cmd_copy.exit

while.body.lr.ph.i:                               ; preds = %if.then
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr.i, align 8
  %mul.i = shl nuw nsw i32 %conv3, 6
  %add.ptr.i = getelementptr i8, ptr %14, i32 %mul.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %dst.032.i = phi ptr [ %add.ptr.i, %while.body.lr.ph.i ], [ %add.ptr14.i, %while.body.i.while.body.i_crit_edge ]
  %src.031.i = phi ptr [ %1, %while.body.lr.ph.i ], [ %add.ptr2.i, %while.body.i.while.body.i_crit_edge ]
  %len.030.i = phi i32 [ %12, %while.body.lr.ph.i ], [ %sub.i, %while.body.i.while.body.i_crit_edge ]
  %15 = tail call i32 @llvm.umin.i32(i32 %len.030.i, i32 64) #7
  %16 = call ptr @memcpy(ptr %dst.032.i, ptr %src.031.i, i32 %15)
  %sub.i = sub i32 %len.030.i, %15
  %add.ptr2.i = getelementptr i8, ptr %src.031.i, i32 64
  %17 = ptrtoint ptr %producer_index to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %producer_index, align 8
  %add.i = add i16 %18, 1
  %19 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %depth, align 4
  %sub6.i = add i16 %20, -1
  %and.i = and i16 %sub6.i, %add.i
  store i16 %and.i, ptr %producer_index, align 8
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr.i, align 8
  %conv12.i = zext i16 %and.i to i32
  %mul13.i = shl nuw nsw i32 %conv12.i, 6
  %add.ptr14.i = getelementptr i8, ptr %22, i32 %mul13.i
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %while.body.i.__cmd_copy.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.__cmd_copy.exit_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %__cmd_copy.exit

__cmd_copy.exit:                                  ; preds = %while.body.i.__cmd_copy.exit_crit_edge, %if.then.__cmd_copy.exit_crit_edge
  %cbfn10 = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %cmd, i32 0, i32 1
  %23 = ptrtoint ptr %cbfn10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cbfn10, align 4
  %cbarg11 = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %cmd, i32 0, i32 2
  %25 = ptrtoint ptr %cbarg11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cbarg11, align 4
  store ptr null, ptr %cbfn10, align 4
  store ptr null, ptr %cbarg11, align 4
  %tobool.not = icmp eq ptr %24, null
  br i1 %tobool.not, label %__cmd_copy.exit.if.end_crit_edge, label %if.then14

__cmd_copy.exit.if.end_crit_edge:                 ; preds = %__cmd_copy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then14:                                        ; preds = %__cmd_copy.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %24(ptr noundef %26, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then14, %__cmd_copy.exit.if.end_crit_edge
  %27 = ptrtoint ptr %msgq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %msgq, align 8
  tail call void %28(ptr noundef %msgq, i32 noundef 4) #7
  br label %if.end18

if.else:                                          ; preds = %entry
  %pending_q = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %msgq, i32 0, i32 11, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cmd, ptr noundef %30, ptr noundef %pending_q) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cmd, ptr %prev.i, align 4
  %32 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %pending_q, ptr %cmd, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %cmd, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %cmd, ptr %30, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end.i.i, %if.else.if.end18_crit_edge, %if.end
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bfa_msgq_rsp_copy(ptr nocapture noundef readonly %msgq, ptr nocapture noundef writeonly %buf, i32 noundef %buf_len) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.bfa_msgq, ptr %msgq, i32 0, i32 1, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool.not22 = icmp eq i32 %buf_len, 0
  br i1 %tobool.not22, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %addr, align 8
  %consumer_index = getelementptr inbounds %struct.bfa_msgq, ptr %msgq, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %consumer_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %consumer_index, align 2
  %conv = zext i16 %3 to i32
  %mul = shl nuw nsw i32 %conv, 6
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %depth = getelementptr inbounds %struct.bfa_msgq, ptr %msgq, i32 0, i32 1, i32 4
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %dst.026 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr3, %while.body.while.body_crit_edge ]
  %src.025 = phi ptr [ %add.ptr, %while.body.lr.ph ], [ %add.ptr9, %while.body.while.body_crit_edge ]
  %ci.024 = phi i32 [ %conv, %while.body.lr.ph ], [ %and, %while.body.while.body_crit_edge ]
  %len.023 = phi i32 [ %buf_len, %while.body.lr.ph ], [ %sub, %while.body.while.body_crit_edge ]
  %4 = tail call i32 @llvm.umin.i32(i32 %len.023, i32 64)
  %5 = call ptr @memcpy(ptr %dst.026, ptr %src.025, i32 %4)
  %sub = sub i32 %len.023, %4
  %add.ptr3 = getelementptr i8, ptr %dst.026, i32 64
  %add = add i32 %ci.024, 1
  %6 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %depth, align 4
  %conv4 = zext i16 %7 to i32
  %sub5 = add nsw i32 %conv4, -1
  %and = and i32 %sub5, %add
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %addr, align 8
  %mul8 = shl i32 %and, 6
  %add.ptr9 = getelementptr i8, ptr %9, i32 %mul8
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmdq_sm_stopped(ptr nocapture noundef %cmdq, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %event, label %do.end5 [
    i32 1, label %do.body
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge10
    i32 4, label %sw.bb2
  ]

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %cmdq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cmdq_sm_init_wait, ptr %cmdq, align 8
  %msgq.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 12
  %2 = ptrtoint ptr %msgq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msgq.i, align 4
  %wc_count.i.i = getelementptr inbounds %struct.bfa_msgq, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wc_count.i.i, align 4
  %dec.i.i = add i32 %5, -1
  store i32 %dec.i.i, ptr %wc_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %init_wc.i = getelementptr inbounds %struct.bfa_msgq, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %init_wc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_wc.i, align 4
  %wc_cbarg.i.i = getelementptr inbounds %struct.bfa_msgq, ptr %3, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %wc_cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wc_cbarg.i.i, align 4
  tail call void %7(ptr noundef %9) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %flags, align 4
  br label %sw.epilog

do.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 86, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end5, %sw.bb2, %if.then.i.i, %do.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmdq_sm_init_wait(ptr noundef %cmdq, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %event, label %do.end14 [
    i32 2, label %entry.do.body_crit_edge
    i32 3, label %entry.do.body_crit_edge25
    i32 4, label %sw.bb1
    i32 5, label %sw.bb2
  ]

entry.do.body_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge25
  %1 = ptrtoint ptr %cmdq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cmdq_sm_stopped, ptr %cmdq, align 8
  %flags.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 1
  %token.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 7
  %2 = ptrtoint ptr %token.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %token.i, align 8
  %offset.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 8
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %offset.i, align 4
  %bytes_to_copy.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 9
  %4 = ptrtoint ptr %bytes_to_copy.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bytes_to_copy.i, align 8
  %pending_q.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 11
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %flags.i, align 4
  %6 = ptrtoint ptr %pending_q.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pending_q.i, align 4
  %cmp.i.not19.i = icmp eq ptr %7, %pending_q.i
  br i1 %cmp.i.not19.i, label %do.body.sw.epilog_crit_edge, label %do.body.while.body.i_crit_edge

do.body.while.body.i_crit_edge:                   ; preds = %do.body
  br label %while.body.i

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %do.body.while.body.i_crit_edge
  %8 = phi ptr [ %22, %if.end.i.while.body.i_crit_edge ], [ %7, %do.body.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cbfn2.i = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %cbfn2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cbfn2.i, align 4
  %cbarg3.i = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %8, i32 0, i32 2
  %19 = ptrtoint ptr %cbarg3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cbarg3.i, align 4
  store ptr null, ptr %cbfn2.i, align 4
  store ptr null, ptr %cbarg3.i, align 4
  %tobool6.not.i = icmp eq ptr %18, null
  br i1 %tobool6.not.i, label %list_del.exit.i.if.end.i_crit_edge, label %if.then.i

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %18(ptr noundef %20, i32 noundef 1) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.i.if.end.i_crit_edge
  %21 = ptrtoint ptr %pending_q.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %pending_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %pending_q.i
  br i1 %cmp.i.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %or = or i32 %24, 1
  store i32 %or, ptr %flags, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %flags3 = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 1
  %25 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags3, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body9, label %if.then

if.then:                                          ; preds = %sw.bb2
  %and5 = and i32 %26, -2
  %27 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and5, ptr %flags3, align 4
  %28 = ptrtoint ptr %cmdq to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @cmdq_sm_dbell_wait, ptr %cmdq, align 8
  %dbell_mb.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 6
  %msg.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 6, i32 3
  %29 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 23, ptr %msg.i.i, align 1
  %msg_id.i.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %msg_id.i.i, align 1
  %mtag.i.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %mtag.i.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 0, ptr %mtag.i.i, align 1
  %producer_index.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 2
  %32 = ptrtoint ptr %producer_index.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %producer_index.i.i, align 8
  %idx.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 6, i32 3, i32 1
  %34 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %idx.i.i, align 1
  %msgq.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 12
  %35 = ptrtoint ptr %msgq.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %msgq.i.i, align 4
  %ioc.i.i = getelementptr inbounds %struct.bfa_msgq, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %ioc.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioc.i.i, align 4
  %call.i.i = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %38, ptr noundef %dbell_mb.i.i, ptr noundef nonnull @bfa_msgq_cmdq_dbell_ready, ptr noundef %cmdq) #7
  br i1 %call.i.i, label %if.then.sw.epilog_crit_edge, label %if.then.i.i

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cmdq, align 8
  tail call void %40(ptr noundef %cmdq, i32 noundef 6) #7
  br label %sw.epilog

do.body9:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %cmdq to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @cmdq_sm_ready, ptr %cmdq, align 8
  br label %sw.epilog

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 118, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end14, %do.body9, %if.then.i.i, %if.then.sw.epilog_crit_edge, %sw.bb1, %if.end.i.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmdq_sm_dbell_wait(ptr noundef %cmdq, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %event, label %do.end14 [
    i32 2, label %entry.do.body_crit_edge
    i32 3, label %entry.do.body_crit_edge25
    i32 4, label %sw.bb1
    i32 6, label %sw.bb2
  ]

entry.do.body_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge25
  %1 = ptrtoint ptr %cmdq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cmdq_sm_stopped, ptr %cmdq, align 8
  %flags.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 1
  %token.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 7
  %2 = ptrtoint ptr %token.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %token.i, align 8
  %offset.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 8
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %offset.i, align 4
  %bytes_to_copy.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 9
  %4 = ptrtoint ptr %bytes_to_copy.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bytes_to_copy.i, align 8
  %pending_q.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 11
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %flags.i, align 4
  %6 = ptrtoint ptr %pending_q.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pending_q.i, align 4
  %cmp.i.not19.i = icmp eq ptr %7, %pending_q.i
  br i1 %cmp.i.not19.i, label %do.body.sw.epilog_crit_edge, label %do.body.while.body.i_crit_edge

do.body.while.body.i_crit_edge:                   ; preds = %do.body
  br label %while.body.i

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %do.body.while.body.i_crit_edge
  %8 = phi ptr [ %22, %if.end.i.while.body.i_crit_edge ], [ %7, %do.body.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cbfn2.i = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %cbfn2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cbfn2.i, align 4
  %cbarg3.i = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %8, i32 0, i32 2
  %19 = ptrtoint ptr %cbarg3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cbarg3.i, align 4
  store ptr null, ptr %cbfn2.i, align 4
  store ptr null, ptr %cbarg3.i, align 4
  %tobool6.not.i = icmp eq ptr %18, null
  br i1 %tobool6.not.i, label %list_del.exit.i.if.end.i_crit_edge, label %if.then.i

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %18(ptr noundef %20, i32 noundef 1) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.i.if.end.i_crit_edge
  %21 = ptrtoint ptr %pending_q.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %pending_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %pending_q.i
  br i1 %cmp.i.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %or = or i32 %24, 1
  store i32 %or, ptr %flags, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %flags3 = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 1
  %25 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags3, align 4
  %and = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body9, label %if.then

if.then:                                          ; preds = %sw.bb2
  %and5 = and i32 %26, -2
  %27 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and5, ptr %flags3, align 4
  %28 = ptrtoint ptr %cmdq to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @cmdq_sm_dbell_wait, ptr %cmdq, align 8
  %dbell_mb.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 6
  %msg.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 6, i32 3
  %29 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 23, ptr %msg.i.i, align 1
  %msg_id.i.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 2, ptr %msg_id.i.i, align 1
  %mtag.i.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %mtag.i.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 0, ptr %mtag.i.i, align 1
  %producer_index.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 2
  %32 = ptrtoint ptr %producer_index.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %producer_index.i.i, align 8
  %idx.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 6, i32 3, i32 1
  %34 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 %33, ptr %idx.i.i, align 1
  %msgq.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 12
  %35 = ptrtoint ptr %msgq.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %msgq.i.i, align 4
  %ioc.i.i = getelementptr inbounds %struct.bfa_msgq, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %ioc.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ioc.i.i, align 4
  %call.i.i = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %38, ptr noundef %dbell_mb.i.i, ptr noundef nonnull @bfa_msgq_cmdq_dbell_ready, ptr noundef %cmdq) #7
  br i1 %call.i.i, label %if.then.sw.epilog_crit_edge, label %if.then.i.i

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cmdq, align 8
  tail call void %40(ptr noundef %cmdq, i32 noundef 6) #7
  br label %sw.epilog

do.body9:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %cmdq to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @cmdq_sm_ready, ptr %cmdq, align 8
  br label %sw.epilog

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 173, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end14, %do.body9, %if.then.i.i, %if.then.sw.epilog_crit_edge, %sw.bb1, %if.end.i.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cmdq_sm_ready(ptr noundef %cmdq, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %event, label %do.end7 [
    i32 2, label %entry.do.body_crit_edge
    i32 3, label %entry.do.body_crit_edge13
    i32 4, label %do.body2
  ]

entry.do.body_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge13
  %1 = ptrtoint ptr %cmdq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @cmdq_sm_stopped, ptr %cmdq, align 8
  %flags.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 1
  %token.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 7
  %2 = ptrtoint ptr %token.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %token.i, align 8
  %offset.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 8
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %offset.i, align 4
  %bytes_to_copy.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 9
  %4 = ptrtoint ptr %bytes_to_copy.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bytes_to_copy.i, align 8
  %pending_q.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 11
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %flags.i, align 4
  %6 = ptrtoint ptr %pending_q.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pending_q.i, align 4
  %cmp.i.not19.i = icmp eq ptr %7, %pending_q.i
  br i1 %cmp.i.not19.i, label %do.body.sw.epilog_crit_edge, label %do.body.while.body.i_crit_edge

do.body.while.body.i_crit_edge:                   ; preds = %do.body
  br label %while.body.i

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %do.body.while.body.i_crit_edge
  %8 = phi ptr [ %22, %if.end.i.while.body.i_crit_edge ], [ %7, %do.body.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %8) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cbfn2.i = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %8, i32 0, i32 1
  %17 = ptrtoint ptr %cbfn2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cbfn2.i, align 4
  %cbarg3.i = getelementptr inbounds %struct.bfa_msgq_cmd_entry, ptr %8, i32 0, i32 2
  %19 = ptrtoint ptr %cbarg3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cbarg3.i, align 4
  store ptr null, ptr %cbfn2.i, align 4
  store ptr null, ptr %cbarg3.i, align 4
  %tobool6.not.i = icmp eq ptr %18, null
  br i1 %tobool6.not.i, label %list_del.exit.i.if.end.i_crit_edge, label %if.then.i

list_del.exit.i.if.end.i_crit_edge:               ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %18(ptr noundef %20, i32 noundef 1) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %list_del.exit.i.if.end.i_crit_edge
  %21 = ptrtoint ptr %pending_q.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %pending_q.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %pending_q.i
  br i1 %cmp.i.not.i, label %if.end.i.sw.epilog_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %23 = ptrtoint ptr %cmdq to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @cmdq_sm_dbell_wait, ptr %cmdq, align 8
  %dbell_mb.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 6
  %msg.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 6, i32 3
  %24 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 23, ptr %msg.i.i, align 1
  %msg_id.i.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 2, ptr %msg_id.i.i, align 1
  %mtag.i.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %mtag.i.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 0, ptr %mtag.i.i, align 1
  %producer_index.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 2
  %27 = ptrtoint ptr %producer_index.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %producer_index.i.i, align 8
  %idx.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 6, i32 3, i32 1
  %29 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %idx.i.i, align 1
  %msgq.i.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %cmdq, i32 0, i32 12
  %30 = ptrtoint ptr %msgq.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %msgq.i.i, align 4
  %ioc.i.i = getelementptr inbounds %struct.bfa_msgq, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %ioc.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ioc.i.i, align 4
  %call.i.i = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %33, ptr noundef %dbell_mb.i.i, ptr noundef nonnull @bfa_msgq_cmdq_dbell_ready, ptr noundef %cmdq) #7
  br i1 %call.i.i, label %do.body2.sw.epilog_crit_edge, label %if.then.i.i

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i.i:                                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %cmdq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cmdq, align 8
  tail call void %35(ptr noundef %cmdq, i32 noundef 6) #7
  br label %sw.epilog

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 141, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end7, %if.then.i.i, %do.body2.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %do.body.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_msgq_cmdq_dbell_ready(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  tail call void %1(ptr noundef %arg, i32 noundef 6) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rspq_sm_stopped(ptr nocapture noundef %rspq, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %event, label %do.end4 [
    i32 1, label %do.body
    i32 2, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge8
  ]

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %rspq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @rspq_sm_init_wait, ptr %rspq, align 8
  %msgq.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 9
  %2 = ptrtoint ptr %msgq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msgq.i, align 4
  %wc_count.i.i = getelementptr inbounds %struct.bfa_msgq, ptr %3, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %wc_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wc_count.i.i, align 4
  %dec.i.i = add i32 %5, -1
  store i32 %dec.i.i, ptr %wc_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %cmp.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %do.body.sw.epilog_crit_edge

do.body.sw.epilog_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %init_wc.i = getelementptr inbounds %struct.bfa_msgq, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %init_wc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_wc.i, align 4
  %wc_cbarg.i.i = getelementptr inbounds %struct.bfa_msgq, ptr %3, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %wc_cbarg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wc_cbarg.i.i, align 4
  tail call void %7(ptr noundef %9) #7
  br label %sw.epilog

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 351, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end4, %if.then.i.i, %do.body.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rspq_sm_init_wait(ptr nocapture noundef writeonly %rspq, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %event, label %do.end7 [
    i32 3, label %entry.do.body_crit_edge
    i32 2, label %entry.do.body_crit_edge13
    i32 5, label %do.body2
  ]

entry.do.body_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge13
  %1 = ptrtoint ptr %rspq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @rspq_sm_stopped, ptr %rspq, align 8
  %flags.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %flags.i, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %rspq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rspq_sm_ready, ptr %rspq, align 8
  br label %sw.epilog

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 375, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end7, %do.body2, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rspq_sm_ready(ptr noundef %rspq, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %event, label %do.end7 [
    i32 2, label %entry.do.body_crit_edge
    i32 3, label %entry.do.body_crit_edge13
    i32 4, label %do.body2
  ]

entry.do.body_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge13
  %1 = ptrtoint ptr %rspq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @rspq_sm_stopped, ptr %rspq, align 8
  %flags.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %flags.i, align 4
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  %3 = ptrtoint ptr %rspq to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rspq_sm_dbell_wait, ptr %rspq, align 8
  %msgq.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 9
  %4 = ptrtoint ptr %msgq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msgq.i, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_msgq, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioc.i, align 4
  %call.i = tail call zeroext i1 @bfa_nw_ioc_is_disabled(ptr noundef %7) #7
  br i1 %call.i, label %do.body2.sw.epilog_crit_edge, label %if.then.i

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %do.body2
  %dbell_mb.i.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 6
  %msg.i.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 23, ptr %msg.i.i, align 1
  %msg_id.i.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %msg_id.i.i, align 1
  %mtag.i.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %mtag.i.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 0, ptr %mtag.i.i, align 1
  %consumer_index.i.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 3
  %11 = ptrtoint ptr %consumer_index.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %consumer_index.i.i, align 2
  %idx.i.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 6, i32 3, i32 1
  %13 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 2)
  store i16 %12, ptr %idx.i.i, align 1
  %14 = ptrtoint ptr %msgq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msgq.i, align 4
  %ioc.i.i = getelementptr inbounds %struct.bfa_msgq, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %ioc.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioc.i.i, align 4
  %call.i.i = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %17, ptr noundef %dbell_mb.i.i, ptr noundef nonnull @bfa_msgq_rspq_dbell_ready, ptr noundef %rspq) #7
  br i1 %call.i.i, label %if.then.i.sw.epilog_crit_edge, label %if.then.i.i

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %rspq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rspq, align 8
  tail call void %19(ptr noundef %rspq, i32 noundef 6) #7
  br label %sw.epilog

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 398, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end7, %if.then.i.i, %if.then.i.sw.epilog_crit_edge, %do.body2.sw.epilog_crit_edge, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rspq_sm_dbell_wait(ptr noundef %rspq, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %event, label %do.end14 [
    i32 2, label %entry.do.body_crit_edge
    i32 3, label %entry.do.body_crit_edge25
    i32 4, label %sw.bb1
    i32 6, label %sw.bb2
  ]

entry.do.body_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge25
  %1 = ptrtoint ptr %rspq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @rspq_sm_stopped, ptr %rspq, align 8
  %flags.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %flags.i, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %flags = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %or = or i32 %4, 1
  store i32 %or, ptr %flags, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %flags3 = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 1
  %5 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags3, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body9, label %if.then

if.then:                                          ; preds = %sw.bb2
  %and5 = and i32 %6, -2
  %7 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and5, ptr %flags3, align 4
  %8 = ptrtoint ptr %rspq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rspq_sm_dbell_wait, ptr %rspq, align 8
  %msgq.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 9
  %9 = ptrtoint ptr %msgq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msgq.i, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_msgq, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioc.i, align 4
  %call.i = tail call zeroext i1 @bfa_nw_ioc_is_disabled(ptr noundef %12) #7
  br i1 %call.i, label %if.then.sw.epilog_crit_edge, label %if.then.i

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i:                                        ; preds = %if.then
  %dbell_mb.i.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 6
  %msg.i.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 23, ptr %msg.i.i, align 1
  %msg_id.i.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %msg_id.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %msg_id.i.i, align 1
  %mtag.i.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %mtag.i.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 0, ptr %mtag.i.i, align 1
  %consumer_index.i.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 3
  %16 = ptrtoint ptr %consumer_index.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %consumer_index.i.i, align 2
  %idx.i.i = getelementptr inbounds %struct.bfa_msgq_rspq, ptr %rspq, i32 0, i32 6, i32 3, i32 1
  %18 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %idx.i.i, align 1
  %19 = ptrtoint ptr %msgq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msgq.i, align 4
  %ioc.i.i = getelementptr inbounds %struct.bfa_msgq, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %ioc.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ioc.i.i, align 4
  %call.i.i = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %22, ptr noundef %dbell_mb.i.i, ptr noundef nonnull @bfa_msgq_rspq_dbell_ready, ptr noundef %rspq) #7
  br i1 %call.i.i, label %if.then.i.sw.epilog_crit_edge, label %if.then.i.i

if.then.i.sw.epilog_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %rspq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rspq, align 8
  tail call void %24(ptr noundef %rspq, i32 noundef 6) #7
  br label %sw.epilog

do.body9:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %rspq to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @rspq_sm_ready, ptr %rspq, align 8
  br label %sw.epilog

do.end14:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i32 noundef 431, i32 noundef %event) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end14, %do.body9, %if.then.i.i, %if.then.i.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %sw.bb1, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bfa_nw_ioc_is_disabled(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_msgq_rspq_dbell_ready(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 8
  tail call void %1(ptr noundef %arg, i32 noundef 6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_msgq_cmdq_copy_next(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bytes_to_copy = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %arg, i32 0, i32 9
  %0 = ptrtoint ptr %bytes_to_copy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bytes_to_copy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %copy_mb.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %arg, i32 0, i32 10
  %msg.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %arg, i32 0, i32 10, i32 3
  %addr1.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %arg, i32 0, i32 5
  %msg_id.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i, i32 0, i32 1
  %mtag.i = getelementptr inbounds %struct.bfi_mhdr, ptr %msg.i, i32 0, i32 2
  %token.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %arg, i32 0, i32 7
  %offset.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %arg, i32 0, i32 8
  %data.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %arg, i32 0, i32 10, i32 3, i32 1
  %msgq.i = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %arg, i32 0, i32 12
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %if.then.i.tailrecurse.i_crit_edge, %if.then
  %2 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %addr1.i, align 8
  %4 = call ptr @memset(ptr %data.i, i32 0, i32 28)
  %5 = ptrtoint ptr %msg.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 23, ptr %msg.i, align 1
  %6 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %msg_id.i, align 1
  %7 = ptrtoint ptr %token.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %token.i, align 8
  %9 = ptrtoint ptr %mtag.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %mtag.i, align 1
  %10 = ptrtoint ptr %bytes_to_copy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bytes_to_copy, align 8
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 28) #7
  %13 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %14
  %15 = call ptr @memcpy(ptr %data.i, ptr %add.ptr.i, i32 %12)
  %inc.i = add i16 %8, 1
  %16 = ptrtoint ptr %token.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %inc.i, ptr %token.i, align 8
  %add.i = add i32 %14, %12
  store i32 %add.i, ptr %offset.i, align 4
  %sub.i = sub i32 %11, %12
  %17 = ptrtoint ptr %bytes_to_copy to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i, ptr %bytes_to_copy, align 8
  %18 = ptrtoint ptr %msgq.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %msgq.i, align 4
  %ioc.i = getelementptr inbounds %struct.bfa_msgq, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %ioc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ioc.i, align 4
  %call.i = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %21, ptr noundef %copy_mb.i, ptr noundef nonnull @bfa_msgq_cmdq_copy_next, ptr noundef %arg) #7
  br i1 %call.i, label %tailrecurse.i.if.end_crit_edge, label %if.then.i

tailrecurse.i.if.end_crit_edge:                   ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then.i:                                        ; preds = %tailrecurse.i
  %22 = ptrtoint ptr %bytes_to_copy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bytes_to_copy, align 8
  %tobool.not.i.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end_crit_edge, label %if.then.i.tailrecurse.i_crit_edge

if.then.i.tailrecurse.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tailrecurse.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %tailrecurse.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bfa_msgq_init(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %init_mb = getelementptr inbounds %struct.bfa_msgq, ptr %arg, i32 0, i32 3
  %msg = getelementptr inbounds %struct.bfa_msgq, ptr %arg, i32 0, i32 3, i32 3
  %0 = getelementptr inbounds i8, ptr %msg, i32 14
  %1 = call ptr @memset(ptr %0, i32 0, i32 14)
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 23, ptr %msg, align 1
  %msg_id = getelementptr inbounds %struct.bfi_mhdr, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %msg_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %msg_id, align 1
  %mtag = getelementptr inbounds %struct.bfi_mhdr, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %mtag to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 0, ptr %mtag, align 1
  %cmdq = getelementptr inbounds %struct.bfa_msgq, ptr %arg, i32 0, i32 3, i32 3, i32 1
  %pa = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %arg, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %pa to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %pa, align 8
  %conv.i = trunc i64 %6 to i32
  %7 = ptrtoint ptr %cmdq to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %conv.i, ptr %cmdq, align 1
  %shr.i = lshr i64 %6, 32
  %conv2.i = trunc i64 %shr.i to i32
  %addr_hi.i = getelementptr inbounds %struct.bfa_msgq, ptr %arg, i32 0, i32 3, i32 3, i32 2
  %8 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %conv2.i, ptr %addr_hi.i, align 1
  %depth = getelementptr inbounds %struct.bfa_msgq_cmdq, ptr %arg, i32 0, i32 4
  %9 = ptrtoint ptr %depth to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %depth, align 4
  %q_depth = getelementptr inbounds %struct.bfa_msgq, ptr %arg, i32 0, i32 3, i32 3, i32 3
  %11 = ptrtoint ptr %q_depth to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %10, ptr %q_depth, align 1
  %rspq = getelementptr inbounds %struct.bfa_msgq, ptr %arg, i32 0, i32 3, i32 3, i32 4
  %pa12 = getelementptr inbounds %struct.bfa_msgq, ptr %arg, i32 0, i32 1, i32 5, i32 1
  %12 = ptrtoint ptr %pa12 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %pa12, align 8
  %conv.i32 = trunc i64 %13 to i32
  %14 = ptrtoint ptr %rspq to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %conv.i32, ptr %rspq, align 1
  %shr.i33 = lshr i64 %13, 32
  %conv2.i34 = trunc i64 %shr.i33 to i32
  %addr_hi.i35 = getelementptr inbounds %struct.bfa_msgq, ptr %arg, i32 0, i32 3, i32 3, i32 5
  %15 = ptrtoint ptr %addr_hi.i35 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %conv2.i34, ptr %addr_hi.i35, align 1
  %depth14 = getelementptr inbounds %struct.bfa_msgq, ptr %arg, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %depth14 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %depth14, align 4
  %q_depth16 = getelementptr inbounds %struct.bfa_msgq, ptr %arg, i32 0, i32 3, i32 3, i32 6
  %18 = ptrtoint ptr %q_depth16 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %q_depth16, align 1
  %ioc = getelementptr inbounds %struct.bfa_msgq, ptr %arg, i32 0, i32 5
  %19 = ptrtoint ptr %ioc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioc, align 4
  %call = tail call zeroext i1 @bfa_nw_ioc_mbox_queue(ptr noundef %20, ptr noundef %init_mb, ptr noundef null, ptr noundef null) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/brocade/bna/bfa_msgq.c", i32 86, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cmdq_sm_stopped._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cmdq_sm_stopped._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/brocade/bna/bfa_msgq.c", i32 118, i32 3}
!8 = !{ptr @cmdq_sm_init_wait._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cmdq_sm_init_wait._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/brocade/bna/bfa_msgq.c", i32 173, i32 3}
!12 = !{ptr @cmdq_sm_dbell_wait._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @cmdq_sm_dbell_wait._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/brocade/bna/bfa_msgq.c", i32 141, i32 3}
!16 = !{ptr @cmdq_sm_ready._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @cmdq_sm_ready._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/brocade/bna/bfa_msgq.c", i32 351, i32 3}
!20 = !{ptr @rspq_sm_stopped._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rspq_sm_stopped._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/brocade/bna/bfa_msgq.c", i32 375, i32 3}
!24 = !{ptr @rspq_sm_init_wait._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rspq_sm_init_wait._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/brocade/bna/bfa_msgq.c", i32 398, i32 3}
!28 = !{ptr @rspq_sm_ready._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rspq_sm_ready._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/brocade/bna/bfa_msgq.c", i32 431, i32 3}
!32 = !{ptr @rspq_sm_dbell_wait._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @rspq_sm_dbell_wait._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 2156466934, i64 2156467442, i64 2156466971, i64 2156467027, i64 2156467061, i64 2156467085, i64 2156467126, i64 2156467147, i64 2156467175, i64 2156467209}
