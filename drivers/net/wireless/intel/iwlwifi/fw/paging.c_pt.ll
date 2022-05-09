; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/intel/iwlwifi/fw/paging.c_pt.bc'
source_filename = "../drivers/net/wireless/intel/iwlwifi/fw/paging.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.iwl_fw_runtime = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [33 x %struct.iwl_fw_paging], i16, i16, i32, %struct.iwl_fwrt_shared_mem_cfg, %struct.anon.130, %struct.anon.135, i8 }
%struct.iwl_fw_paging = type { i32, ptr, i32, i32 }
%struct.iwl_fwrt_shared_mem_cfg = type { i32, i32, [2 x %struct.anon.129], i32, i32, i32, [6 x i32] }
%struct.anon.129 = type { [15 x i32], i32 }
%struct.anon.130 = type { [5 x %struct.iwl_fwrt_wk_data], i32, i8, [27 x i32], ptr, [2 x i32], i32, %struct.iwl_txf_iter_data, %struct.anon.134 }
%struct.iwl_fwrt_wk_data = type { i8, %struct.delayed_work, %struct.iwl_fwrt_dump_data }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.iwl_fwrt_dump_data = type { %union.anon.131 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { ptr, ptr }
%struct.iwl_txf_iter_data = type { i32, i32, i32, i8 }
%struct.anon.134 = type { i8, i8, i32, i32, i32, i32 }
%struct.anon.135 = type { %struct.delayed_work, i32, i64 }
%struct.iwl_trans = type { i8, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, [52 x i8], [3 x i32], i8, i8, i8, i8, i8, ptr, i32, i8, %struct.wait_queue_head, i8, i32, ptr, ptr, [50 x i8], ptr, %struct.lockdep_map, %struct.iwl_trans_debug, %struct.iwl_self_init_dram, i32, ptr, %struct.iwl_trans_txqs, [0 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.iwl_trans_debug = type { i8, i8, ptr, [32 x ptr], ptr, [2 x i32], i32, [2 x i32], [2 x i32], i32, i32, i32, [5 x %struct.iwl_fw_ini_allocation_tlv], [5 x %struct.iwl_fw_mon], %struct.iwl_dram_data, i8, i32, i64, [64 x ptr], %struct.list_head, [27 x %struct.iwl_dbg_tlv_time_point_data], %struct.list_head, i32, i32, i8, i32 }
%struct.iwl_fw_ini_allocation_tlv = type { %struct.iwl_fw_ini_header, i32, i32, i32, i32, i32 }
%struct.iwl_fw_ini_header = type { i32, i32 }
%struct.iwl_fw_mon = type { i32, ptr }
%struct.iwl_dram_data = type { i32, ptr, i32 }
%struct.iwl_dbg_tlv_time_point_data = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.iwl_self_init_dram = type { ptr, i32, ptr, i32 }
%struct.iwl_trans_txqs = type { [16 x i32], [16 x i32], [512 x ptr], ptr, i32, i8, i8, i8, ptr, %struct.anon.127, %struct.anon.128, %struct.iwl_dma_ptr }
%struct.anon.127 = type { i8, i8, i32 }
%struct.anon.128 = type { i8, i16, i8 }
%struct.iwl_dma_ptr = type { i32, ptr, i32 }
%struct.iwl_fw_paging_cmd = type { i32, i32, i32, [33 x i32] }
%struct.iwl_host_cmd = type { [2 x ptr], ptr, i32, i32, i32, i32, [2 x i16], [2 x i8] }
%struct.iwl_fw = type { i32, [64 x i8], [4 x %struct.fw_img], i32, ptr, %struct.iwl_ucode_capabilities, i8, i32, i32, i32, i32, i32, i32, [4 x %struct.iwl_tlv_calib_ctrl], i32, i8, i8, i32, [1 x %struct.iwl_fw_cipher_scheme], [64 x i8], %struct.iwl_fw_dbg, ptr, i32, [2 x %struct.iwl_dump_exclude], [2 x %struct.iwl_dump_exclude] }
%struct.fw_img = type { ptr, i32, i8, i32 }
%struct.iwl_ucode_capabilities = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], ptr, i32 }
%struct.iwl_tlv_calib_ctrl = type { i32, i32 }
%struct.iwl_fw_cipher_scheme = type <{ i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }>
%struct.iwl_fw_dbg = type { ptr, i8, [32 x ptr], [17 x ptr], [17 x i32], ptr, i32, i32 }
%struct.iwl_dump_exclude = type { i32, i32 }
%struct.iwl_cfg_trans_params = type { ptr, i32, i32, i32, i32, i16 }
%struct.fw_desc = type { ptr, i32, i32 }

@__func__.iwl_free_fw_paging = private unnamed_addr constant [19 x i8] c"iwl_free_fw_paging\00", align 1
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Paging: block %d already freed, continue to next page\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to save the FW paging image\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to send the paging cmd\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.iwl_alloc_fw_paging_mem = private unnamed_addr constant [24 x i8] c"iwl_alloc_fw_paging_mem\00", align 1
@.str.3 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"Paging: allocating mem for %d paging blocks, each block holds 8 pages, last block holds %d pages\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Paging: allocated 4K(CSS) bytes (order %d) for firmware paging.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"Paging: allocated 32K bytes (order %d) for firmware paging.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Paging: Missing CSS and/or paging sections\0A\00", [52 x i8] zeroinitializer }, align 32
@__func__.iwl_fill_paging_mem = private unnamed_addr constant [20 x i8] c"iwl_fill_paging_mem\00", align 1
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Paging: load paging CSS to FW, sec = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"CSS block is larger than paging size\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Paging: copied %d CSS bytes to first block\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Paging: last block contains more data than expected %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Paging: not enough data in other in block %d (%d)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Paging: copied %d paging bytes to block %d\0A\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 22, i32 4 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 283, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 289, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 60, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 96, i32 4 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 100, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 137, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 143, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 147, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 161, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 185, i32 5 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 192, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [50 x i8] c"../drivers/net/wireless/intel/iwlwifi/fw/paging.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 207, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iwl_free_fw_paging(ptr nocapture noundef %fwrt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_paging_db = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7
  %fw_paging_block = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 0, i32 1
  %0 = ptrtoint ptr %fw_paging_block to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_paging_block, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup15_crit_edge, label %for.cond.preheader

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup15

for.cond.preheader:                               ; preds = %entry
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader
  %i.030 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %cleanup.for.body_crit_edge ]
  %fw_paging_block3 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %i.030, i32 1
  %2 = ptrtoint ptr %fw_paging_block3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_paging_block3, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %do.end, label %if.end9

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %5, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_free_fw_paging, ptr noundef nonnull @.str, i32 noundef %i.030) #4
  br label %cleanup

if.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx2 = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %i.030
  %6 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fwrt, align 8
  %dev10 = getelementptr inbounds %struct.iwl_trans, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10, align 8
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  %fw_paging_size = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %i.030, i32 2
  %12 = ptrtoint ptr %fw_paging_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_paging_size, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 0, i32 noundef 0) #4
  %14 = ptrtoint ptr %fw_paging_block3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw_paging_block3, align 4
  %16 = ptrtoint ptr %fw_paging_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_paging_size, align 4
  %dec.i = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %18 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #4, !range !41
  %sub.i.i = sub nuw nsw i32 32, %18
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  tail call void @__free_pages(ptr noundef %15, i32 noundef %cond.i.i) #4
  %19 = ptrtoint ptr %fw_paging_block3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %fw_paging_block3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  %20 = call ptr @memset(ptr %fw_paging_db, i32 0, i32 528)
  br label %cleanup15

cleanup15:                                        ; preds = %for.end, %entry.cleanup15_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_dbg(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iwl_init_paging(ptr noundef %fwrt, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %paging_cmd.i = alloca %struct.iwl_fw_paging_cmd, align 4
  %hcmd.i = alloca %struct.iwl_host_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %fw1 = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 1
  %0 = ptrtoint ptr %fw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw1, align 4
  %arrayidx = getelementptr %struct.iwl_fw, ptr %1, i32 0, i32 2, i32 %type
  %2 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwrt, align 8
  %trans_cfg = getelementptr inbounds %struct.iwl_trans, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %trans_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %trans_cfg, align 4
  %gen2 = getelementptr inbounds %struct.iwl_cfg_trans_params, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %gen2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %gen2, align 4
  %7 = and i16 %bf.load, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not = icmp eq i16 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %paging_mem_size = getelementptr %struct.iwl_fw, ptr %1, i32 0, i32 2, i32 %type, i32 3
  %8 = ptrtoint ptr %paging_mem_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %paging_mem_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fw_paging_block.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 0, i32 1
  %10 = ptrtoint ptr %fw_paging_block.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fw_paging_block.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end4.if.end.i_crit_edge

if.end4.if.end.i_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i.i:                                       ; preds = %if.end4
  %12 = ptrtoint ptr %paging_mem_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %paging_mem_size, align 4
  %div93.i.i = lshr i32 %13, 12
  %sub.i.i = add nuw nsw i32 %div93.i.i, 7
  %div194.i.i = lshr i32 %sub.i.i, 3
  %conv.i.i = trunc i32 %div194.i.i to i16
  %num_of_paging_blk.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 8
  %14 = ptrtoint ptr %num_of_paging_blk.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i.i, ptr %num_of_paging_blk.i.i, align 4
  %sub4.i.i = and i32 %sub.i.i, 65528
  %mul.neg.i.i = add nsw i32 %div93.i.i, -65528
  %sub5.i.i = sub nsw i32 %mul.neg.i.i, %sub4.i.i
  %conv6.i.i = trunc i32 %sub5.i.i to i16
  %num_of_pages_in_last_blk.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 9
  %15 = ptrtoint ptr %num_of_pages_in_last_blk.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv6.i.i, ptr %num_of_pages_in_last_blk.i.i, align 2
  %dev.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %16 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i, align 8
  %conv12.i.i = and i32 %div194.i.i, 65535
  %conv14.i.i = and i32 %sub5.i.i, 65535
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %17, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_alloc_fw_paging_mem, ptr noundef nonnull @.str.3, i32 noundef %conv12.i.i, i32 noundef %conv14.i.i) #4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end38.i.i.for.body.i.i_crit_edge, %do.end.i.i
  %blk_idx.096.i.i = phi i32 [ 0, %do.end.i.i ], [ %inc.i.i, %if.end38.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %blk_idx.096.i.i)
  %tobool21.not.i.i = icmp eq i32 %blk_idx.096.i.i, 0
  %cond.i.i = select i1 %tobool21.not.i.i, i32 4096, i32 32768
  %sub.i.i.i = add nsw i32 %cond.i.i, -1
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i.i.i, 4095
  %18 = tail call i32 @llvm.ctlz.i32(i32 %shr.i.i.i, i1 true) #4, !range !41
  %sub.i.i.i.i = sub nuw nsw i32 32, %18
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 0, i32 %sub.i.i.i.i
  %call38.i.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef %cond.i.i.i.i, i32 noundef 0, ptr noundef null) #4
  %tobool23.not.i.i = icmp eq ptr %call38.i.i.i.i.i, null
  br i1 %tobool23.not.i.i, label %for.body.i.i.do.end_crit_edge, label %if.end25.i.i

for.body.i.i.do.end_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end25.i.i:                                     ; preds = %for.body.i.i
  %fw_paging_block28.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %blk_idx.096.i.i, i32 1
  %19 = ptrtoint ptr %fw_paging_block28.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call38.i.i.i.i.i, ptr %fw_paging_block28.i.i, align 4
  %fw_paging_size.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %blk_idx.096.i.i, i32 2
  %20 = ptrtoint ptr %fw_paging_size.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cond.i.i, ptr %fw_paging_size.i.i, align 4
  %21 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fwrt, align 8
  %dev31.i.i = getelementptr inbounds %struct.iwl_trans, ptr %22, i32 0, i32 8
  %23 = ptrtoint ptr %dev31.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev31.i.i, align 8
  %shl.i.i = shl i32 4096, %cond.i.i.i.i
  %call32.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %24, ptr noundef nonnull %call38.i.i.i.i.i, i32 noundef 0, i32 noundef %shl.i.i, i32 noundef 0, i32 noundef 0) #4
  %25 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fwrt, align 8
  %dev34.i.i = getelementptr inbounds %struct.iwl_trans, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %dev34.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev34.i.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %28, i32 noundef %call32.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call32.i.i)
  %cmp.i.not.i.i = icmp eq i32 %call32.i.i, -1
  br i1 %cmp.i.not.i.i, label %if.end25.i.i.do.end_crit_edge, label %if.end38.i.i

if.end25.i.i.do.end_crit_edge:                    ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end38.i.i:                                     ; preds = %if.end25.i.i
  %arrayidx27.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %blk_idx.096.i.i
  %29 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call32.i.i, ptr %arrayidx27.i.i, align 4
  %30 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i, align 8
  %.str.4..str.5.i.i = select i1 %tobool21.not.i.i, ptr @.str.4, ptr @.str.5
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %31, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_alloc_fw_paging_mem, ptr noundef nonnull %.str.4..str.5.i.i, i32 noundef %cond.i.i.i.i) #4
  %inc.i.i = add nuw nsw i32 %blk_idx.096.i.i, 1
  %32 = ptrtoint ptr %num_of_paging_blk.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_of_paging_blk.i.i, align 4
  %conv18.i.i = zext i16 %33 to i32
  %cmp.not.not.i.i = icmp ult i32 %blk_idx.096.i.i, %conv18.i.i
  br i1 %cmp.not.not.i.i, label %if.end38.i.i.for.body.i.i_crit_edge, label %if.end38.i.i.if.end.i_crit_edge

if.end38.i.i.if.end.i_crit_edge:                  ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end38.i.i.for.body.i.i_crit_edge:              ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

if.end.i:                                         ; preds = %if.end38.i.i.if.end.i_crit_edge, %if.end4.if.end.i_crit_edge
  %num_sec.i.i = getelementptr %struct.iwl_fw, ptr %1, i32 0, i32 2, i32 %type, i32 1
  %34 = ptrtoint ptr %num_sec.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_sec.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp202.i.i = icmp sgt i32 %35, 0
  br i1 %cmp202.i.i, label %for.body.lr.ph.i.i, label %if.end.i.for.end.i.i_crit_edge

if.end.i.for.end.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  br label %for.body.i5.i

for.body.i5.i:                                    ; preds = %for.inc.i.i.for.body.i5.i_crit_edge, %for.body.lr.ph.i.i
  %sec_idx.0203.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i6.i, %for.inc.i.i.for.body.i5.i_crit_edge ]
  %offset1.i.i = getelementptr %struct.fw_desc, ptr %37, i32 %sec_idx.0203.i.i, i32 2
  %38 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offset1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1431651397, i32 %39)
  %cmp2.i.i = icmp eq i32 %39, -1431651397
  %inc.i6.i = add nuw nsw i32 %sec_idx.0203.i.i, 1
  br i1 %cmp2.i.i, label %for.body.i5.i.for.end.i.i_crit_edge, label %for.inc.i.i

for.body.i5.i.for.end.i.i_crit_edge:              ; preds = %for.body.i5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

for.inc.i.i:                                      ; preds = %for.body.i5.i
  %exitcond.not.i.i = icmp eq i32 %inc.i6.i, %35
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i5.i_crit_edge

for.inc.i.i.for.body.i5.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i5.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i5.i.for.end.i.i_crit_edge, %if.end.i.for.end.i.i_crit_edge
  %sec_idx.1.i.i = phi i32 [ 0, %if.end.i.for.end.i.i_crit_edge ], [ %35, %for.inc.i.i.for.end.i.i_crit_edge ], [ %inc.i6.i, %for.body.i5.i.for.end.i.i_crit_edge ]
  %sub.i7.i = add i32 %35, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sec_idx.1.i.i, i32 %sub.i7.i)
  %cmp5.not.i.i = icmp slt i32 %sec_idx.1.i.i, %sub.i7.i
  %dev15.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %40 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev15.i.i, align 8
  br i1 %cmp5.not.i.i, label %do.end14.i.i, label %do.end.i8.i

do.end.i8.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %41, i32 noundef 0, ptr noundef nonnull @.str.7) #4
  br label %do.end

do.end14.i.i:                                     ; preds = %for.end.i.i
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %41, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_fill_paging_mem, ptr noundef nonnull @.str.8, i32 noundef %sec_idx.1.i.i) #4
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %len.i.i = getelementptr %struct.fw_desc, ptr %43, i32 %sec_idx.1.i.i, i32 1
  %44 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i.i, align 4
  %fw_paging_size.i9.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 0, i32 2
  %46 = ptrtoint ptr %fw_paging_size.i9.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fw_paging_size.i9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp21.i.i = icmp ugt i32 %45, %47
  br i1 %cmp21.i.i, label %do.end26.i.i, label %if.end30.i.i

do.end26.i.i:                                     ; preds = %do.end14.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev15.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %49, i32 noundef 0, ptr noundef nonnull @.str.9) #4
  br label %do.end

if.end30.i.i:                                     ; preds = %do.end14.i.i
  %fw_paging_db.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7
  %50 = ptrtoint ptr %fw_paging_block.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fw_paging_block.i.i, align 4
  %call.i.i = tail call ptr @page_address(ptr noundef %51) #4
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  %arrayidx34.i.i = getelementptr %struct.fw_desc, ptr %53, i32 %sec_idx.1.i.i
  %54 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx34.i.i, align 4
  %len37.i.i = getelementptr %struct.fw_desc, ptr %53, i32 %sec_idx.1.i.i, i32 1
  %56 = ptrtoint ptr %len37.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len37.i.i, align 4
  %58 = call ptr @memcpy(ptr %call.i.i, ptr %55, i32 %57)
  %59 = load ptr, ptr %arrayidx, align 4
  %offset40.i.i = getelementptr %struct.fw_desc, ptr %59, i32 %sec_idx.1.i.i, i32 2
  %60 = ptrtoint ptr %offset40.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %offset40.i.i, align 4
  %fw_offs.i.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 0, i32 3
  %62 = ptrtoint ptr %fw_offs.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %fw_offs.i.i, align 4
  %63 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fwrt, align 8
  %dev43.i.i = getelementptr inbounds %struct.iwl_trans, ptr %64, i32 0, i32 8
  %65 = ptrtoint ptr %dev43.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev43.i.i, align 8
  %67 = ptrtoint ptr %fw_paging_db.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fw_paging_db.i.i, align 4
  %69 = ptrtoint ptr %fw_paging_size.i9.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %fw_paging_size.i9.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %66, i32 noundef %68, i32 noundef %70, i32 noundef 0) #4
  %71 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev15.i.i, align 8
  %73 = ptrtoint ptr %fw_paging_size.i9.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %fw_paging_size.i9.i, align 4
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %72, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_fill_paging_mem, ptr noundef nonnull @.str.10, i32 noundef %74) #4
  %inc59.i.i = add nsw i32 %sec_idx.1.i.i, 1
  %num_of_paging_blk.i11.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 8
  %75 = ptrtoint ptr %num_of_paging_blk.i11.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %num_of_paging_blk.i11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %cmp61.not206.i.i = icmp eq i16 %76, 0
  br i1 %cmp61.not206.i.i, label %if.end30.i.i.if.end10_crit_edge, label %for.body63.lr.ph.i.i

if.end30.i.i.if.end10_crit_edge:                  ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

for.body63.lr.ph.i.i:                             ; preds = %if.end30.i.i
  %conv205.i.i = zext i16 %76 to i32
  %num_of_pages_in_last_blk.i12.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 9
  br label %for.body63.i.i

for.body63.i.i:                                   ; preds = %for.inc127.i.i.for.body63.i.i_crit_edge, %for.body63.lr.ph.i.i
  %conv210.i.i = phi i32 [ %conv205.i.i, %for.body63.lr.ph.i.i ], [ %conv.i13.i, %for.inc127.i.i.for.body63.i.i_crit_edge ]
  %offset.0209.i.i = phi i32 [ 0, %for.body63.lr.ph.i.i ], [ %add124.i.i, %for.inc127.i.i.for.body63.i.i_crit_edge ]
  %idx.0207.i.i = phi i32 [ 1, %for.body63.lr.ph.i.i ], [ %inc128.i.i, %for.inc127.i.i.for.body63.i.i_crit_edge ]
  %arrayidx65.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %idx.0207.i.i
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx, align 4
  %len68.i.i = getelementptr %struct.fw_desc, ptr %78, i32 %inc59.i.i, i32 1
  %79 = ptrtoint ptr %len68.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len68.i.i, align 4
  %sub69.i.i = sub i32 %80, %offset.0209.i.i
  %fw_paging_size71.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %idx.0207.i.i, i32 2
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0207.i.i, i32 %conv210.i.i)
  %cmp74.i.i = icmp eq i32 %idx.0207.i.i, %conv210.i.i
  br i1 %cmp74.i.i, label %if.then76.i.i, label %if.else.i.i

if.then76.i.i:                                    ; preds = %for.body63.i.i
  %81 = ptrtoint ptr %num_of_pages_in_last_blk.i12.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %num_of_pages_in_last_blk.i12.i, align 2
  %conv77.i.i = zext i16 %82 to i32
  %mul.i.i = shl nuw nsw i32 %conv77.i.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %sub69.i.i, i32 %mul.i.i)
  %cmp78.not.i.i = icmp eq i32 %sub69.i.i, %mul.i.i
  br i1 %cmp78.not.i.i, label %if.then76.i.i.for.inc127.i.i_crit_edge, label %do.end84.i.i

if.then76.i.i.for.inc127.i.i_crit_edge:           ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc127.i.i

do.end84.i.i:                                     ; preds = %if.then76.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev15.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %84, i32 noundef 0, ptr noundef nonnull @.str.11, i32 noundef %sub69.i.i) #4
  br label %do.end

if.else.i.i:                                      ; preds = %for.body63.i.i
  %85 = ptrtoint ptr %fw_paging_size71.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %fw_paging_size71.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %sub69.i.i)
  %cmp90.i.i = icmp ugt i32 %86, %sub69.i.i
  br i1 %cmp90.i.i, label %do.end96.i.i, label %if.else.i.i.for.inc127.i.i_crit_edge

if.else.i.i.for.inc127.i.i_crit_edge:             ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc127.i.i

do.end96.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %87 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev15.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %88, i32 noundef 0, ptr noundef nonnull @.str.12, i32 noundef %idx.0207.i.i, i32 noundef %sub69.i.i) #4
  br label %do.end

for.inc127.i.i:                                   ; preds = %if.else.i.i.for.inc127.i.i_crit_edge, %if.then76.i.i.for.inc127.i.i_crit_edge
  %len70.0.i.i = phi i32 [ %sub69.i.i, %if.then76.i.i.for.inc127.i.i_crit_edge ], [ %86, %if.else.i.i.for.inc127.i.i_crit_edge ]
  %fw_paging_block102.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %idx.0207.i.i, i32 1
  %89 = ptrtoint ptr %fw_paging_block102.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %fw_paging_block102.i.i, align 4
  %call103.i.i = tail call ptr @page_address(ptr noundef %90) #4
  %91 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx, align 4
  %arrayidx105.i.i = getelementptr %struct.fw_desc, ptr %92, i32 %inc59.i.i
  %93 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx105.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %94, i32 %offset.0209.i.i
  %95 = call ptr @memcpy(ptr %call103.i.i, ptr %add.ptr.i.i, i32 %len70.0.i.i)
  %96 = load ptr, ptr %arrayidx, align 4
  %offset109.i.i = getelementptr %struct.fw_desc, ptr %96, i32 %inc59.i.i, i32 2
  %97 = ptrtoint ptr %offset109.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %offset109.i.i, align 4
  %add110.i.i = add i32 %98, %offset.0209.i.i
  %fw_offs111.i.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %idx.0207.i.i, i32 3
  %99 = ptrtoint ptr %fw_offs111.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add110.i.i, ptr %fw_offs111.i.i, align 4
  %100 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fwrt, align 8
  %dev113.i.i = getelementptr inbounds %struct.iwl_trans, ptr %101, i32 0, i32 8
  %102 = ptrtoint ptr %dev113.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev113.i.i, align 8
  %104 = ptrtoint ptr %arrayidx65.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx65.i.i, align 4
  %106 = ptrtoint ptr %fw_paging_size71.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %fw_paging_size71.i.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %103, i32 noundef %105, i32 noundef %107, i32 noundef 0) #4
  %108 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev15.i.i, align 8
  tail call void (ptr, i32, i1, ptr, ptr, ...) @__iwl_dbg(ptr noundef %109, i32 noundef 65536, i1 noundef zeroext false, ptr noundef nonnull @__func__.iwl_fill_paging_mem, ptr noundef nonnull @.str.13, i32 noundef %len70.0.i.i, i32 noundef %idx.0207.i.i) #4
  %110 = ptrtoint ptr %fw_paging_size71.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %fw_paging_size71.i.i, align 4
  %add124.i.i = add i32 %111, %offset.0209.i.i
  %inc128.i.i = add nuw nsw i32 %idx.0207.i.i, 1
  %112 = ptrtoint ptr %num_of_paging_blk.i11.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %num_of_paging_blk.i11.i, align 4
  %conv.i13.i = zext i16 %113 to i32
  %cmp61.not.not.i.i = icmp ult i32 %idx.0207.i.i, %conv.i13.i
  br i1 %cmp61.not.not.i.i, label %for.inc127.i.i.for.body63.i.i_crit_edge, label %for.inc127.i.i.if.end10_crit_edge

for.inc127.i.i.if.end10_crit_edge:                ; preds = %for.inc127.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

for.inc127.i.i.for.body63.i.i_crit_edge:          ; preds = %for.inc127.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body63.i.i

do.end:                                           ; preds = %do.end96.i.i, %do.end84.i.i, %do.end26.i.i, %do.end.i8.i, %if.end25.i.i.do.end_crit_edge, %for.body.i.i.do.end_crit_edge
  %retval.0.ph.i = phi i32 [ -22, %do.end96.i.i ], [ -22, %do.end84.i.i ], [ -22, %do.end26.i.i ], [ -22, %do.end.i8.i ], [ -12, %for.body.i.i.do.end_crit_edge ], [ -12, %if.end25.i.i.do.end_crit_edge ]
  tail call void @iwl_free_fw_paging(ptr noundef %fwrt) #4
  %dev = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 2
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %115, i32 noundef 0, ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end10:                                         ; preds = %for.inc127.i.i.if.end10_crit_edge, %if.end30.i.i.if.end10_crit_edge
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %paging_cmd.i) #4
  %116 = getelementptr inbounds i8, ptr %paging_cmd.i, i32 12
  %117 = call ptr @memset(ptr %116, i32 0, i32 132)
  %num_of_pages_in_last_blk.i = getelementptr inbounds %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 9
  %118 = ptrtoint ptr %num_of_pages_in_last_blk.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %num_of_pages_in_last_blk.i, align 2
  %120 = or i16 %119, 768
  %or.i = zext i16 %120 to i32
  %121 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %122 = ptrtoint ptr %paging_cmd.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %paging_cmd.i, align 4
  %block_size.i = getelementptr inbounds %struct.iwl_fw_paging_cmd, ptr %paging_cmd.i, i32 0, i32 1
  %123 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 251658240, ptr %block_size.i, align 4
  %block_num.i = getelementptr inbounds %struct.iwl_fw_paging_cmd, ptr %paging_cmd.i, i32 0, i32 2
  %124 = ptrtoint ptr %num_of_paging_blk.i11.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %num_of_paging_blk.i11.i, align 4
  %conv1.i = zext i16 %125 to i32
  %126 = tail call i32 @llvm.bswap.i32(i32 %conv1.i) #4
  %127 = ptrtoint ptr %block_num.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %block_num.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %hcmd.i) #4
  %128 = getelementptr inbounds i8, ptr %hcmd.i, i32 32
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 65535, ptr %128, align 4, !annotation !42
  %130 = ptrtoint ptr %hcmd.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %paging_cmd.i, ptr %hcmd.i, align 4
  %arrayinit.cur.ptr.i = getelementptr inbounds ptr, ptr %hcmd.i, i32 1
  %id.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 5
  %131 = call ptr @memset(ptr %arrayinit.cur.ptr.i, i32 0, i32 20)
  %132 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 335, ptr %id.i, align 4
  %len.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 6
  %133 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 144, ptr %len.i, align 4
  %arrayinit.start5.i = getelementptr inbounds %struct.iwl_host_cmd, ptr %hcmd.i, i32 0, i32 6, i32 1
  %134 = ptrtoint ptr %arrayinit.start5.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 0, ptr %arrayinit.start5.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end10
  %blk_idx.01.i = phi i32 [ 0, %if.end10 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.iwl_fw_runtime, ptr %fwrt, i32 0, i32 7, i32 %blk_idx.01.i
  %135 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i, align 4
  %shr.i = lshr i32 %136, 12
  %137 = call i32 @llvm.bswap.i32(i32 %shr.i) #4
  %arrayidx15.i = getelementptr %struct.iwl_fw_paging_cmd, ptr %paging_cmd.i, i32 0, i32 3, i32 %blk_idx.01.i
  %138 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %arrayidx15.i, align 4
  %inc.i = add nuw nsw i32 %blk_idx.01.i, 1
  %exitcond.i = icmp eq i32 %blk_idx.01.i, %conv1.i
  br i1 %exitcond.i, label %iwl_send_paging_cmd.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

iwl_send_paging_cmd.exit:                         ; preds = %for.body.i
  %139 = ptrtoint ptr %fwrt to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %fwrt, align 8
  %call16.i = call i32 @iwl_trans_send_cmd(ptr noundef %140, ptr noundef nonnull %hcmd.i) #4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %hcmd.i) #4
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %paging_cmd.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool12.not = icmp eq i32 %call16.i, 0
  br i1 %tobool12.not, label %iwl_send_paging_cmd.exit.cleanup_crit_edge, label %do.end17

iwl_send_paging_cmd.exit.cleanup_crit_edge:       ; preds = %iwl_send_paging_cmd.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end17:                                         ; preds = %iwl_send_paging_cmd.exit
  call void @__sanitizer_cov_trace_pc() #6
  %141 = ptrtoint ptr %dev15.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev15.i.i, align 8
  call void (ptr, i32, ptr, ...) @__iwl_err(ptr noundef %142, i32 noundef 0, ptr noundef nonnull @.str.2) #4
  call void @iwl_free_fw_paging(ptr noundef %fwrt)
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %iwl_send_paging_cmd.exit.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph.i, %do.end ], [ %call16.i, %do.end17 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %iwl_send_paging_cmd.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iwl_err(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwl_trans_send_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__func__.iwl_free_fw_paging, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/paging.c", i32 22, i32 4}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/paging.c", i32 283, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/paging.c", i32 289, i32 3}
!7 = !{ptr @__func__.iwl_alloc_fw_paging_mem, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/paging.c", i32 60, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/paging.c", i32 96, i32 4}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/paging.c", i32 100, i32 4}
!14 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/paging.c", i32 137, i32 3}
!18 = !{ptr @__func__.iwl_fill_paging_mem, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/paging.c", i32 143, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/paging.c", i32 147, i32 3}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/paging.c", i32 161, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/paging.c", i32 185, i32 5}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/paging.c", i32 192, i32 4}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/wireless/intel/iwlwifi/fw/paging.c", i32 207, i32 3}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i32 0, i32 33}
!42 = !{!"auto-init"}
