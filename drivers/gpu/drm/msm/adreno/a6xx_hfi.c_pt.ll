; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/adreno/a6xx_hfi.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a6xx_hfi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.a6xx_hfi_gx_bw_perf_vote_cmd = type { i32, i32, i32, i32 }
%struct.a6xx_hfi_msg_response = type { i32, i32, i32, [16 x i32] }
%struct.a6xx_gmu = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, i32, ptr, i32, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, i32, ptr, ptr, ptr, i32, i32, [16 x i32], [16 x i32], i32, [4 x i32], [4 x i32], i32, [2 x %struct.a6xx_hfi_queue], i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.a6xx_gmu_bo = type { ptr, ptr, i32, i64 }
%struct.a6xx_hfi_queue = type { ptr, %struct.spinlock, ptr, %struct.atomic_t, [8 x i32], i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.a6xx_hfi_queue_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.a6xx_hfi_prep_slumber_cmd = type { i32, i32, i32 }
%struct.a6xx_hfi_msg_start = type { i32 }
%struct.a6xx_hfi_msg_core_fw_start = type { i32, i32 }
%struct.a6xx_hfi_msg_perf_table = type { i32, i32, i32, [16 x %struct.perf_gx_level], [4 x %struct.perf_level] }
%struct.perf_gx_level = type { i32, i32, i32 }
%struct.perf_level = type { i32, i32 }
%struct.a6xx_hfi_msg_test = type { i32 }
%struct.a6xx_hfi_msg_perf_table_v1 = type { i32, i32, i32, [16 x %struct.perf_level], [4 x %struct.perf_level] }
%struct.a6xx_hfi_msg_fw_version = type { i32, i32 }
%struct.a6xx_hfi_msg_gmu_init_cmd = type { i32, i32, i32, i32, i32 }
%struct.a6xx_hfi_msg_bw_table = type { i32, i32, i32, i32, i32, i32, [6 x i32], [2 x [6 x i32]], [8 x i32], [16 x [8 x i32]] }
%struct.a6xx_hfi_queue_table_header = type { i32, i32, i32, i32, i32, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* HFI queue %d is not empty\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* Unable to send message %s id %d\0A\00", [55 x i8] zeroinitializer }, align 32
@a6xx_hfi_msg_id = internal constant { [34 x ptr], [56 x i8] } { [34 x ptr] [ptr @.str.3, ptr @.str.4, ptr null, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr @.str.8, ptr null, ptr null, ptr null, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.10, ptr null, ptr null, ptr @.str.11], [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HFI_H2F_MSG_INIT\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HFI_H2F_MSG_FW_VERSION\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HFI_H2F_MSG_BW_TABLE\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HFI_H2F_MSG_PERF_TABLE\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HFI_H2F_MSG_TEST\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HFI_H2F_MSG_START\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HFI_H2F_MSG_CORE_FW_START\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HFI_H2F_MSG_GX_BW_PERF_VOTE\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HFI_H2F_MSG_PREPARE_SLUMBER\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/msm/adreno/a6xx_hfi.c\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"*ERROR* Message %s id %d timed out waiting for response\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"*ERROR* The HFI response queue is unexpectedly empty\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* GMU firmware error %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"*ERROR* Unexpected message id %d on the response queue\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* Message %s id %d returned error %d\0A\00", [52 x i8] zeroinitializer }, align 32
@a6xx_hfi_queue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&queue->lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 618, i64 640, i64 650, i64 680]
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 603, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 184, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"a6xx_hfi_msg_id\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 14, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 15, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 16, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 17, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 18, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 19, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 20, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 21, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 22, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 23, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 108, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 112, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 131, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 141, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 147, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 154, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [41 x i8] c"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 617, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @a6xx_hfi_msg_id, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @a6xx_hfi_queue_init.__key, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_hfi_msg_id to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a6xx_hfi_queue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @a6xx_hfi_set_freq(ptr noundef %gmu, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.a6xx_hfi_gx_bw_perf_vote_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #5
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %msg, align 4
  %ack_type = getelementptr inbounds %struct.a6xx_hfi_gx_bw_perf_vote_cmd, ptr %msg, i32 0, i32 1
  %1 = ptrtoint ptr %ack_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %ack_type, align 4
  %freq = getelementptr inbounds %struct.a6xx_hfi_gx_bw_perf_vote_cmd, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %index, ptr %freq, align 4
  %bw = getelementptr inbounds %struct.a6xx_hfi_gx_bw_perf_vote_cmd, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bw, align 4
  %call = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %gmu, i32 noundef 30, ptr noundef nonnull %msg, i32 noundef 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #5
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a6xx_hfi_send_msg(ptr noundef %gmu, i32 noundef %id, ptr nocapture noundef %data, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  %resp.i = alloca %struct.a6xx_hfi_msg_response, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %queues = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27
  %shr = lshr i32 %size, 2
  %seqnum1 = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %seqnum1, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @llvm.prefetch.p0(ptr %seqnum1, i32 1, i32 3, i32 1) #5
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %seqnum1, ptr %seqnum1, i32 1, ptr elementtype(i32) %seqnum1) #5, !srcloc !50
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !51
  %rem = srem i32 %asmresult.i.i.i.i, 4095
  %shl = shl i32 %rem, 20
  %shl2 = shl i32 %shr, 8
  %or3 = or i32 %shl2, %id
  %or4 = or i32 %or3, %shl
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or4, ptr %data, align 4
  %2 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queues, align 4
  %write_index.i = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %write_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_index.i, align 4
  %lock.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #5
  %read_index.i = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %read_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %read_index.i, align 4
  %8 = ptrtoint ptr %write_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %write_index.i, align 4
  %add.neg.i = xor i32 %9, -1
  %sub.i = add i32 %7, %add.neg.i
  %size.i = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i, align 4
  %sub3.i = add i32 %11, -1
  %and.i = and i32 %sub3.i, %sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %shr)
  %cmp.i = icmp ult i32 %and.i, %shr
  br i1 %cmp.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %entry
  %history_idx.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 0, i32 5
  %12 = ptrtoint ptr %history_idx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %history_idx.i, align 4
  %inc5.i = add i8 %13, 1
  store i8 %inc5.i, ptr %history_idx.i, align 4
  %14 = and i8 %13, 7
  %rem.i = zext i8 %14 to i32
  %arrayidx.i = getelementptr %struct.a6xx_hfi_queue, ptr %queues, i32 0, i32 4, i32 %rem.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %5, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp657.not.i = icmp ult i32 %size, 4
  br i1 %cmp657.not.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %data9.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %index.059.i = phi i32 [ %5, %for.body.lr.ph.i ], [ %rem13.i, %for.body.i.for.body.i_crit_edge ]
  %i.058.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc14.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx8.i = getelementptr i32, ptr %data, i32 %i.058.i
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.i, align 4
  %18 = ptrtoint ptr %data9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data9.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %19, i32 %index.059.i
  %20 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %17, ptr %arrayidx10.i, align 4
  %add11.i = add i32 %index.059.i, 1
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  %rem13.i = urem i32 %add11.i, %22
  %inc14.i = add nuw nsw i32 %i.058.i, 1
  %exitcond.not.i = icmp eq i32 %inc14.i, %shr
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %index.0.lcssa.i = phi i32 [ %5, %if.end.i.for.end.i_crit_edge ], [ %rem13.i, %for.body.i.for.end.i_crit_edge ]
  %legacy.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 30
  %23 = ptrtoint ptr %legacy.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %legacy.i, align 2, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp ne i8 %24, 0
  %rem1760.i = and i32 %index.0.lcssa.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem1760.i)
  %tobool18.not61.i = icmp eq i32 %rem1760.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool18.not61.i
  br i1 %or.cond.i, label %for.end.i.if.end_crit_edge, label %for.body19.lr.ph.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body19.lr.ph.i:                               ; preds = %for.end.i
  %data20.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 0, i32 2
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.body19.lr.ph.i
  %index.162.i = phi i32 [ %index.0.lcssa.i, %for.body19.lr.ph.i ], [ %rem25.i, %for.body19.i.for.body19.i_crit_edge ]
  %25 = ptrtoint ptr %data20.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data20.i, align 4
  %arrayidx21.i = getelementptr i32, ptr %26, i32 %index.162.i
  %27 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -84215046, ptr %arrayidx21.i, align 4
  %add23.i = add i32 %index.162.i, 1
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i, align 4
  %rem25.i = urem i32 %add23.i, %29
  %rem17.i = and i32 %rem25.i, 3
  %tobool18.not.i = icmp eq i32 %rem17.i, 0
  br i1 %tobool18.not.i, label %for.body19.i.if.end_crit_edge, label %for.body19.i.for.body19.i_crit_edge

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19.i

for.body19.i.if.end_crit_edge:                    ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dropped.i = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %3, i32 0, i32 5
  %30 = ptrtoint ptr %dropped.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dropped.i, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %dropped.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  %32 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %gmu, align 8
  %arrayidx6 = getelementptr [34 x ptr], ptr @a6xx_hfi_msg_id, i32 0, i32 %id
  %34 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %33, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef %35, i32 noundef %rem) #5
  br label %cleanup

if.end:                                           ; preds = %for.body19.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  %index.2.i = phi i32 [ %index.0.lcssa.i, %for.end.i.if.end_crit_edge ], [ %rem25.i, %for.body19.i.if.end_crit_edge ]
  %36 = ptrtoint ptr %write_index.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %index.2.i, ptr %write_index.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #5
  %mmio.i.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 3
  %37 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 83536
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i.i) #5
  %arrayidx.i1 = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 1
  %call.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call.i, 5000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.12, i32 noundef 109) #5
  %39 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %40, i32 83528
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #5, !srcloc !53
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  %and17.i = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool.not18.i = icmp eq i32 %and17.i, 0
  br i1 %tobool.not18.i, label %if.end.land.lhs.true.i_crit_edge, label %if.end.for.end.i4_crit_edge

if.end.for.end.i4_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i4

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then26.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call13.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call13.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then16.i, label %if.then26.i

if.then16.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %44, i32 83528
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #5, !srcloc !53
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  br label %for.end.i4

if.then26.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #5
  %47 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %48, i32 83528
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !53
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  %and.i2 = and i32 %50, 1
  %tobool.not.i3 = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i3, label %if.then26.i.land.lhs.true.i_crit_edge, label %if.then26.i.for.end.i4_crit_edge

if.then26.i.for.end.i4_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i4

if.then26.i.land.lhs.true.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

for.end.i4:                                       ; preds = %if.then26.i.for.end.i4_crit_edge, %if.then16.i, %if.end.for.end.i4_crit_edge
  %val.0.i = phi i32 [ %46, %if.then16.i ], [ %42, %if.end.for.end.i4_crit_edge ], [ %50, %if.then26.i.for.end.i4_crit_edge ]
  %and29.i = and i32 %val.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.then32.i, label %if.end34.i

if.then32.i:                                      ; preds = %for.end.i4
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %gmu, align 8
  %arrayidx33.i = getelementptr [34 x ptr], ptr @a6xx_hfi_msg_id, i32 0, i32 %id
  %53 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx33.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %52, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, ptr noundef %54, i32 noundef %rem) #5
  br label %cleanup

if.end34.i:                                       ; preds = %for.end.i4
  %55 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i5 = getelementptr i8, ptr %56, i32 83524
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i.i5) #5
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %resp.i) #5
  %57 = call ptr @memset(ptr %resp.i, i32 255, i32 76)
  %58 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i1, align 4
  %read_index.i19.i = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %59, i32 0, i32 10
  %60 = ptrtoint ptr %read_index.i19.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %read_index.i19.i, align 4
  %write_index.i20.i = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %59, i32 0, i32 11
  %62 = ptrtoint ptr %write_index.i20.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %write_index.i20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp.i121.i = icmp eq i32 %61, %63
  br i1 %cmp.i121.i, label %if.end34.i.a6xx_hfi_queue_read.exit.thread.i_crit_edge, label %if.end.i.lr.ph.i

if.end34.i.a6xx_hfi_queue_read.exit.thread.i_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %a6xx_hfi_queue_read.exit.thread.i

if.end.i.lr.ph.i:                                 ; preds = %if.end34.i
  %data3.i.i = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 1, i32 2
  %history_idx.i.i = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 1, i32 5
  %ret_header.i = getelementptr inbounds %struct.a6xx_hfi_msg_response, ptr %resp.i, i32 0, i32 1
  br label %if.end.i.i

a6xx_hfi_queue_read.exit.thread.i:                ; preds = %cleanup.i.a6xx_hfi_queue_read.exit.thread.i_crit_edge, %if.end34.i.a6xx_hfi_queue_read.exit.thread.i_crit_edge
  %.lcssa.i = phi ptr [ %59, %if.end34.i.a6xx_hfi_queue_read.exit.thread.i_crit_edge ], [ %105, %cleanup.i.a6xx_hfi_queue_read.exit.thread.i_crit_edge ]
  %rx_request.i.i = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %.lcssa.i, i32 0, i32 8
  %64 = ptrtoint ptr %rx_request.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %rx_request.i.i, align 4
  br label %if.then38.i

if.end.i.i:                                       ; preds = %cleanup.i.if.end.i.i_crit_edge, %if.end.i.lr.ph.i
  %65 = phi i32 [ %61, %if.end.i.lr.ph.i ], [ %107, %cleanup.i.if.end.i.i_crit_edge ]
  %read_index.i22.i = phi ptr [ %read_index.i19.i, %if.end.i.lr.ph.i ], [ %read_index.i.i, %cleanup.i.if.end.i.i_crit_edge ]
  %66 = phi ptr [ %59, %if.end.i.lr.ph.i ], [ %105, %cleanup.i.if.end.i.i_crit_edge ]
  %67 = ptrtoint ptr %data3.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data3.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %68, i32 %65
  %69 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i.i, align 4
  %71 = ptrtoint ptr %history_idx.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %history_idx.i.i, align 4
  %inc.i.i = add i8 %72, 1
  store i8 %inc.i.i, ptr %history_idx.i.i, align 4
  %73 = and i8 %72, 7
  %rem.i.i = zext i8 %73 to i32
  %arrayidx4.i.i = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 1, i32 4, i32 %rem.i.i
  %74 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %65, ptr %arrayidx4.i.i, align 4
  %shr.i.i = lshr i32 %70, 8
  %and.i.i = and i32 %shr.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %and.i.i)
  %cmp5.i.i = icmp ugt i32 %and.i.i, 19
  br i1 %cmp5.i.i, label %do.body9.i.i, label %for.cond.preheader.i.i, !prof !56

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp181.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp181.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %size.i.i = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %66, i32 0, i32 3
  %75 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size.i.i, align 4
  br label %for.body.i.i

do.body9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/adreno/a6xx_hfi.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 50, 0\0A.popsection", ""() #5, !srcloc !57
  unreachable

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %index.03.i.i = phi i32 [ %65, %for.body.lr.ph.i.i ], [ %rem23.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.02.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc24.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx21.i.i = getelementptr i32, ptr %68, i32 %index.03.i.i
  %77 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx21.i.i, align 4
  %arrayidx22.i.i = getelementptr i32, ptr %resp.i, i32 %i.02.i.i
  %79 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx22.i.i, align 4
  %add.i2.i = add i32 %index.03.i.i, 1
  %rem23.i.i = urem i32 %add.i2.i, %76
  %inc24.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc24.i.i, %and.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %index.0.lcssa.i.i = phi i32 [ %65, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %rem23.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %80 = ptrtoint ptr %legacy.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %legacy.i, align 2, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool25.not.i.i = icmp eq i8 %81, 0
  br i1 %tobool25.not.i.i, label %if.then26.i.i, label %for.end.i.i.a6xx_hfi_queue_read.exit.i_crit_edge

for.end.i.i.a6xx_hfi_queue_read.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %a6xx_hfi_queue_read.exit.i

if.then26.i.i:                                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %add27.i.i = add i32 %index.0.lcssa.i.i, 3
  %and28.i.i = and i32 %add27.i.i, -4
  %size29.i.i = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %66, i32 0, i32 3
  %82 = ptrtoint ptr %size29.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %size29.i.i, align 4
  %rem30.i.i = urem i32 %and28.i.i, %83
  br label %a6xx_hfi_queue_read.exit.i

a6xx_hfi_queue_read.exit.i:                       ; preds = %if.then26.i.i, %for.end.i.i.a6xx_hfi_queue_read.exit.i_crit_edge
  %index.1.i.i = phi i32 [ %index.0.lcssa.i.i, %for.end.i.i.a6xx_hfi_queue_read.exit.i_crit_edge ], [ %rem30.i.i, %if.then26.i.i ]
  %84 = ptrtoint ptr %read_index.i22.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %index.1.i.i, ptr %read_index.i22.i, align 4
  br i1 %cmp181.not.i.i, label %a6xx_hfi_queue_read.exit.i.if.then38.i_crit_edge, label %if.end40.i

a6xx_hfi_queue_read.exit.i.if.then38.i_crit_edge: ; preds = %a6xx_hfi_queue_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then38.i:                                      ; preds = %a6xx_hfi_queue_read.exit.i.if.then38.i_crit_edge, %a6xx_hfi_queue_read.exit.thread.i
  %85 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %gmu, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %86, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14) #5
  br label %cleanup.thread.i

if.end40.i:                                       ; preds = %a6xx_hfi_queue_read.exit.i
  %87 = ptrtoint ptr %resp.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %resp.i, align 4
  %and41.i = and i32 %88, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %and41.i)
  %cmp42.i = icmp eq i32 %and41.i, 100
  br i1 %cmp42.i, label %if.then43.i, label %if.end45.i

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %gmu, align 8
  %91 = ptrtoint ptr %ret_header.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ret_header.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %90, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef %92) #5
  br label %cleanup.i

if.end45.i:                                       ; preds = %if.end40.i
  %93 = ptrtoint ptr %ret_header.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ret_header.i, align 4
  %shr46.i = lshr i32 %94, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %shr46.i, i32 %rem)
  %cmp48.not.i = icmp eq i32 %shr46.i, %rem
  br i1 %cmp48.not.i, label %if.end54.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %gmu, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %96, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, i32 noundef %shr46.i) #5
  br label %cleanup.i

if.end54.i:                                       ; preds = %if.end45.i
  %error55.i = getelementptr inbounds %struct.a6xx_hfi_msg_response, ptr %resp.i, i32 0, i32 2
  %97 = ptrtoint ptr %error55.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %error55.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool56.not.i = icmp eq i32 %98, 0
  br i1 %tobool56.not.i, label %if.end54.i.cleanup.thread.i_crit_edge, label %if.then57.i

if.end54.i.cleanup.thread.i_crit_edge:            ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %gmu, align 8
  %arrayidx59.i = getelementptr [34 x ptr], ptr @a6xx_hfi_msg_id, i32 0, i32 %id
  %101 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx59.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %100, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, ptr noundef %102, i32 noundef %rem, i32 noundef %98) #5
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then57.i, %if.end54.i.cleanup.thread.i_crit_edge, %if.then38.i
  %retval.1.ph.i = phi i32 [ 0, %if.end54.i.cleanup.thread.i_crit_edge ], [ -2, %if.then38.i ], [ -22, %if.then57.i ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %resp.i) #5
  br label %cleanup

cleanup.i:                                        ; preds = %if.then49.i, %if.then43.i
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %resp.i) #5
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %resp.i) #5
  %103 = call ptr @memset(ptr %resp.i, i32 255, i32 76)
  %104 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i1, align 4
  %read_index.i.i = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %105, i32 0, i32 10
  %106 = ptrtoint ptr %read_index.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %read_index.i.i, align 4
  %write_index.i.i = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %105, i32 0, i32 11
  %108 = ptrtoint ptr %write_index.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %write_index.i.i, align 4
  %cmp.i1.i = icmp eq i32 %107, %109
  br i1 %cmp.i1.i, label %cleanup.i.a6xx_hfi_queue_read.exit.thread.i_crit_edge, label %cleanup.i.if.end.i.i_crit_edge

cleanup.i.if.end.i.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

cleanup.i.a6xx_hfi_queue_read.exit.thread.i_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %a6xx_hfi_queue_read.exit.thread.i

cleanup:                                          ; preds = %cleanup.thread.i, %if.then32.i, %if.then
  %retval.0 = phi i32 [ -28, %if.then ], [ -110, %if.then32.i ], [ %retval.1.ph.i, %cleanup.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @a6xx_hfi_send_prep_slumber(ptr noundef %gmu) local_unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.a6xx_hfi_prep_slumber_cmd, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #5
  %0 = call ptr @memset(ptr %msg, i32 0, i32 12)
  %call = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %gmu, i32 noundef 33, ptr noundef nonnull %msg, i32 noundef 12)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @a6xx_hfi_start(ptr noundef %gmu, i32 noundef %boot_state) local_unnamed_addr #0 align 64 {
entry:
  %msg.i31 = alloca %struct.a6xx_hfi_msg_start, align 4
  %msg.i29 = alloca %struct.a6xx_hfi_msg_core_fw_start, align 8
  %msg.i = alloca %struct.a6xx_hfi_msg_perf_table, align 4
  %msg.i29.i = alloca %struct.a6xx_hfi_msg_test, align 4
  %msg.i27.i = alloca %struct.a6xx_hfi_msg_perf_table_v1, align 4
  %msg.i25.i = alloca %struct.a6xx_hfi_msg_fw_version, align 8
  %msg.i.i = alloca %struct.a6xx_hfi_msg_gmu_init_cmd, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %legacy = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 30
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %legacy, align 2, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %msg.i.i) #5
  %2 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %msg.i.i, align 8
  %iova.i.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 10, i32 3
  %3 = ptrtoint ptr %iova.i.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %iova.i.i, align 8
  %conv.i.i = trunc i64 %4 to i32
  %dbg_buffer_addr.i.i = getelementptr inbounds %struct.a6xx_hfi_msg_gmu_init_cmd, ptr %msg.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %dbg_buffer_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv.i.i, ptr %dbg_buffer_addr.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i.i, align 8
  %dbg_buffer_size.i.i = getelementptr inbounds %struct.a6xx_hfi_msg_gmu_init_cmd, ptr %msg.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %dbg_buffer_size.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %dbg_buffer_size.i.i, align 4
  %boot_state2.i.i = getelementptr inbounds %struct.a6xx_hfi_msg_gmu_init_cmd, ptr %msg.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %boot_state2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %boot_state, ptr %boot_state2.i.i, align 8
  %call.i.i = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %gmu, i32 noundef 0, ptr noundef nonnull %msg.i.i, i32 noundef 20) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %msg.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i25.i) #5
  %10 = ptrtoint ptr %msg.i25.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 268500992, ptr %msg.i25.i, align 8
  %call.i26.i = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %gmu, i32 noundef 1, ptr noundef nonnull %msg.i25.i, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i25.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i)
  %tobool2.not.i = icmp eq i32 %call.i26.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %msg.i27.i) #5
  %11 = call ptr @memset(ptr %msg.i27.i, i32 0, i32 172)
  %nr_gpu_freqs.i.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 20
  %12 = ptrtoint ptr %nr_gpu_freqs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_gpu_freqs.i.i, align 4
  %num_gpu_levels.i.i = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table_v1, ptr %msg.i27.i, i32 0, i32 1
  %14 = ptrtoint ptr %num_gpu_levels.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_gpu_levels.i.i, align 4
  %nr_gmu_freqs.i.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 23
  %15 = ptrtoint ptr %nr_gmu_freqs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_gmu_freqs.i.i, align 8
  %num_gmu_levels.i.i = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table_v1, ptr %msg.i27.i, i32 0, i32 2
  %17 = ptrtoint ptr %num_gmu_levels.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %num_gmu_levels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp40.i.i = icmp sgt i32 %13, 0
  br i1 %cmp40.i.i, label %if.end4.i.for.body.i.i_crit_edge, label %if.end4.i.for.cond6.preheader.i.i_crit_edge

if.end4.i.for.cond6.preheader.i.i_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond6.preheader.i.i

if.end4.i.for.body.i.i_crit_edge:                 ; preds = %if.end4.i
  br label %for.body.i.i

for.cond6.preheader.i.i:                          ; preds = %for.body.i.i.for.cond6.preheader.i.i_crit_edge, %if.end4.i.for.cond6.preheader.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp842.i.i = icmp sgt i32 %16, 0
  br i1 %cmp842.i.i, label %for.cond6.preheader.i.i.for.body9.i.i_crit_edge, label %for.cond6.preheader.i.i.a6xx_hfi_send_perf_table_v1.exit.i_crit_edge

for.cond6.preheader.i.i.a6xx_hfi_send_perf_table_v1.exit.i_crit_edge: ; preds = %for.cond6.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %a6xx_hfi_send_perf_table_v1.exit.i

for.cond6.preheader.i.i.for.body9.i.i_crit_edge:  ; preds = %for.cond6.preheader.i.i
  br label %for.body9.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end4.i.for.body.i.i_crit_edge
  %i.041.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end4.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 22, i32 %i.041.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.a6xx_hfi_msg_perf_table_v1, ptr %msg.i27.i, i32 0, i32 3, i32 %i.041.i.i
  %20 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx2.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 21, i32 %i.041.i.i
  %21 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx3.i.i, align 4
  %div.i.i = udiv i32 %22, 1000
  %freq.i.i = getelementptr %struct.a6xx_hfi_msg_perf_table_v1, ptr %msg.i27.i, i32 0, i32 3, i32 %i.041.i.i, i32 1
  %23 = ptrtoint ptr %freq.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div.i.i, ptr %freq.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.041.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %13
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.cond6.preheader.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.body.i.i.for.cond6.preheader.i.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond6.preheader.i.i

for.body9.i.i:                                    ; preds = %for.body9.i.i.for.body9.i.i_crit_edge, %for.cond6.preheader.i.i.for.body9.i.i_crit_edge
  %i.143.i.i = phi i32 [ %inc19.i.i, %for.body9.i.i.for.body9.i.i_crit_edge ], [ 0, %for.cond6.preheader.i.i.for.body9.i.i_crit_edge ]
  %arrayidx10.i.i = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 25, i32 %i.143.i.i
  %24 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx10.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.a6xx_hfi_msg_perf_table_v1, ptr %msg.i27.i, i32 0, i32 4, i32 %i.143.i.i
  %26 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx11.i.i, align 4
  %arrayidx13.i.i = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 24, i32 %i.143.i.i
  %27 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx13.i.i, align 4
  %div14.i.i = udiv i32 %28, 1000
  %freq17.i.i = getelementptr %struct.a6xx_hfi_msg_perf_table_v1, ptr %msg.i27.i, i32 0, i32 4, i32 %i.143.i.i, i32 1
  %29 = ptrtoint ptr %freq17.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div14.i.i, ptr %freq17.i.i, align 4
  %inc19.i.i = add nuw nsw i32 %i.143.i.i, 1
  %exitcond44.not.i.i = icmp eq i32 %inc19.i.i, %16
  br i1 %exitcond44.not.i.i, label %for.body9.i.i.a6xx_hfi_send_perf_table_v1.exit.i_crit_edge, label %for.body9.i.i.for.body9.i.i_crit_edge

for.body9.i.i.for.body9.i.i_crit_edge:            ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body9.i.i

for.body9.i.i.a6xx_hfi_send_perf_table_v1.exit.i_crit_edge: ; preds = %for.body9.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %a6xx_hfi_send_perf_table_v1.exit.i

a6xx_hfi_send_perf_table_v1.exit.i:               ; preds = %for.body9.i.i.a6xx_hfi_send_perf_table_v1.exit.i_crit_edge, %for.cond6.preheader.i.i.a6xx_hfi_send_perf_table_v1.exit.i_crit_edge
  %call.i28.i = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %gmu, i32 noundef 4, ptr noundef nonnull %msg.i27.i, i32 noundef 172) #5
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %msg.i27.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i)
  %tobool6.not.i = icmp eq i32 %call.i28.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %a6xx_hfi_send_perf_table_v1.exit.i.cleanup_crit_edge

a6xx_hfi_send_perf_table_v1.exit.i.cleanup_crit_edge: ; preds = %a6xx_hfi_send_perf_table_v1.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.i:                                        ; preds = %a6xx_hfi_send_perf_table_v1.exit.i
  %call9.i = tail call fastcc i32 @a6xx_hfi_send_bw_table(ptr noundef %gmu) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg.i29.i) #5
  %30 = ptrtoint ptr %msg.i29.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %msg.i29.i, align 4
  %call.i30.i = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %gmu, i32 noundef 5, ptr noundef nonnull %msg.i29.i, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg.i29.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 236, ptr nonnull %msg.i) #5
  %31 = call ptr @memset(ptr %msg.i, i32 0, i32 236)
  %nr_gpu_freqs.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 20
  %32 = ptrtoint ptr %nr_gpu_freqs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_gpu_freqs.i, align 4
  %num_gpu_levels.i = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table, ptr %msg.i, i32 0, i32 1
  %34 = ptrtoint ptr %num_gpu_levels.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %num_gpu_levels.i, align 4
  %nr_gmu_freqs.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 23
  %35 = ptrtoint ptr %nr_gmu_freqs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_gmu_freqs.i, align 8
  %num_gmu_levels.i = getelementptr inbounds %struct.a6xx_hfi_msg_perf_table, ptr %msg.i, i32 0, i32 2
  %37 = ptrtoint ptr %num_gmu_levels.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %num_gmu_levels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp43.i = icmp sgt i32 %33, 0
  br i1 %cmp43.i, label %if.end.for.body.i_crit_edge, label %if.end.for.cond8.preheader.i_crit_edge

if.end.for.cond8.preheader.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond8.preheader.i

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.cond8.preheader.i:                            ; preds = %for.body.i.for.cond8.preheader.i_crit_edge, %if.end.for.cond8.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp1045.i = icmp sgt i32 %36, 0
  br i1 %cmp1045.i, label %for.cond8.preheader.i.for.body11.i_crit_edge, label %for.cond8.preheader.i.a6xx_hfi_send_perf_table.exit_crit_edge

for.cond8.preheader.i.a6xx_hfi_send_perf_table.exit_crit_edge: ; preds = %for.cond8.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %a6xx_hfi_send_perf_table.exit

for.cond8.preheader.i.for.body11.i_crit_edge:     ; preds = %for.cond8.preheader.i
  br label %for.body11.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.044.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 22, i32 %i.044.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.a6xx_hfi_msg_perf_table, ptr %msg.i, i32 0, i32 3, i32 %i.044.i
  %40 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx2.i, align 4
  %acd.i = getelementptr %struct.a6xx_hfi_msg_perf_table, ptr %msg.i, i32 0, i32 3, i32 %i.044.i, i32 1
  %41 = ptrtoint ptr %acd.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %acd.i, align 4
  %arrayidx5.i = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 21, i32 %i.044.i
  %42 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx5.i, align 4
  %div.i = udiv i32 %43, 1000
  %freq.i = getelementptr %struct.a6xx_hfi_msg_perf_table, ptr %msg.i, i32 0, i32 3, i32 %i.044.i, i32 2
  %44 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div.i, ptr %freq.i, align 4
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %33
  br i1 %exitcond.not.i, label %for.body.i.for.cond8.preheader.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.for.cond8.preheader.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond8.preheader.i

for.body11.i:                                     ; preds = %for.body11.i.for.body11.i_crit_edge, %for.cond8.preheader.i.for.body11.i_crit_edge
  %i.146.i = phi i32 [ %inc21.i, %for.body11.i.for.body11.i_crit_edge ], [ 0, %for.cond8.preheader.i.for.body11.i_crit_edge ]
  %arrayidx12.i = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 25, i32 %i.146.i
  %45 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx12.i, align 4
  %arrayidx13.i = getelementptr %struct.a6xx_hfi_msg_perf_table, ptr %msg.i, i32 0, i32 4, i32 %i.146.i
  %47 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx13.i, align 4
  %arrayidx15.i = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 24, i32 %i.146.i
  %48 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx15.i, align 4
  %div16.i = udiv i32 %49, 1000
  %freq19.i = getelementptr %struct.a6xx_hfi_msg_perf_table, ptr %msg.i, i32 0, i32 4, i32 %i.146.i, i32 1
  %50 = ptrtoint ptr %freq19.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div16.i, ptr %freq19.i, align 4
  %inc21.i = add nuw nsw i32 %i.146.i, 1
  %exitcond47.not.i = icmp eq i32 %inc21.i, %36
  br i1 %exitcond47.not.i, label %for.body11.i.a6xx_hfi_send_perf_table.exit_crit_edge, label %for.body11.i.for.body11.i_crit_edge

for.body11.i.for.body11.i_crit_edge:              ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11.i

for.body11.i.a6xx_hfi_send_perf_table.exit_crit_edge: ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %a6xx_hfi_send_perf_table.exit

a6xx_hfi_send_perf_table.exit:                    ; preds = %for.body11.i.a6xx_hfi_send_perf_table.exit_crit_edge, %for.cond8.preheader.i.a6xx_hfi_send_perf_table.exit_crit_edge
  %call.i = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %gmu, i32 noundef 4, ptr noundef nonnull %msg.i, i32 noundef 236) #5
  call void @llvm.lifetime.end.p0(i64 236, ptr nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %a6xx_hfi_send_perf_table.exit.cleanup_crit_edge

a6xx_hfi_send_perf_table.exit.cleanup_crit_edge:  ; preds = %a6xx_hfi_send_perf_table.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %a6xx_hfi_send_perf_table.exit
  %call5 = tail call fastcc i32 @a6xx_hfi_send_bw_table(ptr noundef %gmu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %msg.i29) #5
  %51 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 0, ptr %msg.i29, align 8
  %call.i30 = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %gmu, i32 noundef 14, ptr noundef nonnull %msg.i29, i32 noundef 8) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %msg.i29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool10.not = icmp eq i32 %call.i30, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msg.i31) #5
  %52 = ptrtoint ptr %msg.i31 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %msg.i31, align 4
  %call.i32 = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %gmu, i32 noundef 10, ptr noundef nonnull %msg.i31, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msg.i31) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %a6xx_hfi_send_perf_table.exit.cleanup_crit_edge, %if.end12.i, %if.end8.i.cleanup_crit_edge, %a6xx_hfi_send_perf_table_v1.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %a6xx_hfi_send_perf_table.exit.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call.i30, %if.end8.cleanup_crit_edge ], [ %call.i32, %if.end12 ], [ 0, %if.end12.i ], [ %call.i.i, %if.then.cleanup_crit_edge ], [ %call.i26.i, %if.end.i.cleanup_crit_edge ], [ %call.i28.i, %a6xx_hfi_send_perf_table_v1.exit.i.cleanup_crit_edge ], [ %call9.i, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a6xx_hfi_send_bw_table(ptr noundef %gmu) unnamed_addr #0 align 64 {
entry:
  %msg = alloca %struct.a6xx_hfi_msg_bw_table, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %msg) #5
  %0 = call ptr @memset(ptr %msg, i32 0, i32 640)
  %revn.i = getelementptr i8, ptr %gmu, i32 -60
  %1 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %revn.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %if.else8 [
    i32 618, label %if.then
    i32 680, label %entry.if.then3_crit_edge
    i32 640, label %entry.if.then3_crit_edge112
    i32 650, label %if.then7
  ]

entry.if.then3_crit_edge112:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bw_level_num.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %bw_level_num.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %bw_level_num.i, align 4
  %ddr_cmds_num.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 3
  %5 = ptrtoint ptr %ddr_cmds_num.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %ddr_cmds_num.i, align 4
  %ddr_wait_bitmask.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 5
  %6 = ptrtoint ptr %ddr_wait_bitmask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ddr_wait_bitmask.i, align 4
  %ddr_cmds_addrs.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8
  %7 = ptrtoint ptr %ddr_cmds_addrs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 327680, ptr %ddr_cmds_addrs.i, align 4
  %arrayidx2.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 327740, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8, i32 2
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 327692, ptr %arrayidx4.i, align 4
  %ddr_cmds_data.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9
  %10 = ptrtoint ptr %ddr_cmds_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1073741824, ptr %ddr_cmds_data.i, align 4
  %arrayidx9.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1073741824, ptr %arrayidx9.i, align 4
  %arrayidx12.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1073741824, ptr %arrayidx12.i, align 4
  %cnoc_cmds_num.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %cnoc_cmds_num.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %cnoc_cmds_num.i, align 4
  %cnoc_wait_bitmask.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 4
  %14 = ptrtoint ptr %cnoc_wait_bitmask.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %cnoc_wait_bitmask.i, align 4
  %cnoc_cmds_addrs.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 6
  %15 = ptrtoint ptr %cnoc_cmds_addrs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 327804, ptr %cnoc_cmds_addrs.i, align 4
  %cnoc_cmds_data.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7
  %16 = ptrtoint ptr %cnoc_cmds_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1073741824, ptr %cnoc_cmds_data.i, align 4
  %arrayidx17.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7, i32 1
  br label %if.end20

if.then3:                                         ; preds = %entry.if.then3_crit_edge, %entry.if.then3_crit_edge112
  %bw_level_num.i29 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 1
  %17 = ptrtoint ptr %bw_level_num.i29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %bw_level_num.i29, align 4
  %ddr_cmds_num.i30 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 3
  %18 = ptrtoint ptr %ddr_cmds_num.i30 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %ddr_cmds_num.i30, align 4
  %ddr_wait_bitmask.i31 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 5
  %19 = ptrtoint ptr %ddr_wait_bitmask.i31 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %ddr_wait_bitmask.i31, align 4
  %ddr_cmds_addrs.i32 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8
  %20 = ptrtoint ptr %ddr_cmds_addrs.i32 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 327680, ptr %ddr_cmds_addrs.i32, align 4
  %arrayidx2.i33 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %arrayidx2.i33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 327740, ptr %arrayidx2.i33, align 4
  %arrayidx4.i34 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8, i32 2
  %22 = ptrtoint ptr %arrayidx4.i34 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 327692, ptr %arrayidx4.i34, align 4
  %ddr_cmds_data.i35 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9
  %23 = ptrtoint ptr %ddr_cmds_data.i35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1073741824, ptr %ddr_cmds_data.i35, align 4
  %arrayidx9.i36 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx9.i36 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1073741824, ptr %arrayidx9.i36, align 4
  %arrayidx12.i37 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx12.i37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1073741824, ptr %arrayidx12.i37, align 4
  %cnoc_cmds_num.i38 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 2
  %26 = ptrtoint ptr %cnoc_cmds_num.i38 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %cnoc_cmds_num.i38, align 4
  %cnoc_wait_bitmask.i39 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 4
  %27 = ptrtoint ptr %cnoc_wait_bitmask.i39 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %cnoc_wait_bitmask.i39, align 4
  %cnoc_cmds_addrs.i40 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 6
  %28 = ptrtoint ptr %cnoc_cmds_addrs.i40 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 327732, ptr %cnoc_cmds_addrs.i40, align 4
  %arrayidx15.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 327804, ptr %arrayidx15.i, align 4
  %arrayidx17.i41 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 6, i32 2
  %30 = ptrtoint ptr %arrayidx17.i41 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 327756, ptr %arrayidx17.i41, align 4
  %cnoc_cmds_data.i42 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7
  %31 = ptrtoint ptr %cnoc_cmds_data.i42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1073741824, ptr %cnoc_cmds_data.i42, align 4
  %arrayidx25.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1073741824, ptr %arrayidx25.i, align 4
  %arrayidx27.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1610612737, ptr %arrayidx27.i, align 4
  %arrayidx31.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7, i32 1, i32 1
  %34 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 536870913, ptr %arrayidx31.i, align 4
  %arrayidx34.i = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7, i32 1, i32 2
  br label %if.end20

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %bw_level_num.i46 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 1
  %35 = ptrtoint ptr %bw_level_num.i46 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %bw_level_num.i46, align 4
  %ddr_cmds_num.i47 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 3
  %36 = ptrtoint ptr %ddr_cmds_num.i47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %ddr_cmds_num.i47, align 4
  %ddr_wait_bitmask.i48 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 5
  %37 = ptrtoint ptr %ddr_wait_bitmask.i48 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %ddr_wait_bitmask.i48, align 4
  %ddr_cmds_addrs.i49 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8
  %38 = ptrtoint ptr %ddr_cmds_addrs.i49 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 327680, ptr %ddr_cmds_addrs.i49, align 4
  %arrayidx2.i50 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8, i32 1
  %39 = ptrtoint ptr %arrayidx2.i50 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 327684, ptr %arrayidx2.i50, align 4
  %arrayidx4.i51 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8, i32 2
  %40 = ptrtoint ptr %arrayidx4.i51 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 327804, ptr %arrayidx4.i51, align 4
  %ddr_cmds_data.i52 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9
  %41 = ptrtoint ptr %ddr_cmds_data.i52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1073741824, ptr %ddr_cmds_data.i52, align 4
  %arrayidx9.i53 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx9.i53 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1073741824, ptr %arrayidx9.i53, align 4
  %arrayidx12.i54 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9, i32 0, i32 2
  %43 = ptrtoint ptr %arrayidx12.i54 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1073741824, ptr %arrayidx12.i54, align 4
  %cnoc_cmds_num.i55 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 2
  %44 = ptrtoint ptr %cnoc_cmds_num.i55 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %cnoc_cmds_num.i55, align 4
  %cnoc_wait_bitmask.i56 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 4
  %45 = ptrtoint ptr %cnoc_wait_bitmask.i56 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %cnoc_wait_bitmask.i56, align 4
  %cnoc_cmds_addrs.i57 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 6
  %46 = ptrtoint ptr %cnoc_cmds_addrs.i57 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 327844, ptr %cnoc_cmds_addrs.i57, align 4
  %cnoc_cmds_data.i58 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7
  %47 = ptrtoint ptr %cnoc_cmds_data.i58 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1073741824, ptr %cnoc_cmds_data.i58, align 4
  %arrayidx17.i59 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7, i32 1
  br label %if.end20

if.else8:                                         ; preds = %entry
  %rev.i = getelementptr i8, ptr %gmu, i32 -72
  %48 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.unpack.i = load i32, ptr %rev.i, align 8
  %49 = insertvalue [1 x i32] undef, i32 %.unpack.i, 0
  %call.i = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 100861439], [1 x i32] %49) #5
  br i1 %call.i, label %if.then11, label %if.else12

if.then11:                                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #7
  %bw_level_num.i61 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 1
  %50 = ptrtoint ptr %bw_level_num.i61 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %bw_level_num.i61, align 4
  %ddr_cmds_num.i62 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 3
  %51 = ptrtoint ptr %ddr_cmds_num.i62 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %ddr_cmds_num.i62, align 4
  %ddr_wait_bitmask.i63 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 5
  %52 = ptrtoint ptr %ddr_wait_bitmask.i63 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 7, ptr %ddr_wait_bitmask.i63, align 4
  %ddr_cmds_addrs.i64 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8
  %53 = ptrtoint ptr %ddr_cmds_addrs.i64 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 327684, ptr %ddr_cmds_addrs.i64, align 4
  %arrayidx2.i65 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %arrayidx2.i65 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 327680, ptr %arrayidx2.i65, align 4
  %arrayidx4.i66 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8, i32 2
  %55 = ptrtoint ptr %arrayidx4.i66 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 327816, ptr %arrayidx4.i66, align 4
  %ddr_cmds_data.i67 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9
  %56 = ptrtoint ptr %ddr_cmds_data.i67 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1073741824, ptr %ddr_cmds_data.i67, align 4
  %arrayidx9.i68 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9, i32 0, i32 1
  %57 = ptrtoint ptr %arrayidx9.i68 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1073741824, ptr %arrayidx9.i68, align 4
  %arrayidx12.i69 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9, i32 0, i32 2
  %58 = ptrtoint ptr %arrayidx12.i69 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1073741824, ptr %arrayidx12.i69, align 4
  %cnoc_cmds_num.i70 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 2
  %59 = ptrtoint ptr %cnoc_cmds_num.i70 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %cnoc_cmds_num.i70, align 4
  %cnoc_wait_bitmask.i71 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 4
  %60 = ptrtoint ptr %cnoc_wait_bitmask.i71 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %cnoc_wait_bitmask.i71, align 4
  %cnoc_cmds_addrs.i72 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 6
  %61 = ptrtoint ptr %cnoc_cmds_addrs.i72 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 327788, ptr %cnoc_cmds_addrs.i72, align 4
  %cnoc_cmds_data.i73 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7
  %62 = ptrtoint ptr %cnoc_cmds_data.i73 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1073741824, ptr %cnoc_cmds_data.i73, align 4
  %arrayidx17.i74 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7, i32 1
  br label %if.end20

if.else12:                                        ; preds = %if.else8
  %63 = ptrtoint ptr %revn.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %revn.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 660, i32 %64)
  %cmp.i76.not = icmp eq i32 %64, 660
  %bw_level_num.i78 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 1
  %65 = ptrtoint ptr %bw_level_num.i78 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %bw_level_num.i78, align 4
  %ddr_cmds_num.i79 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 3
  %66 = ptrtoint ptr %ddr_cmds_num.i79 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 3, ptr %ddr_cmds_num.i79, align 4
  %ddr_wait_bitmask.i80 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 5
  br i1 %cmp.i76.not, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %ddr_wait_bitmask.i80 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %ddr_wait_bitmask.i80, align 4
  %ddr_cmds_addrs.i81 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8
  %68 = ptrtoint ptr %ddr_cmds_addrs.i81 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 327684, ptr %ddr_cmds_addrs.i81, align 4
  %arrayidx2.i82 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8, i32 1
  %69 = ptrtoint ptr %arrayidx2.i82 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 327840, ptr %arrayidx2.i82, align 4
  %arrayidx4.i83 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8, i32 2
  %70 = ptrtoint ptr %arrayidx4.i83 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 327680, ptr %arrayidx4.i83, align 4
  %ddr_cmds_data.i84 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9
  %71 = ptrtoint ptr %ddr_cmds_data.i84 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1073741824, ptr %ddr_cmds_data.i84, align 4
  %arrayidx9.i85 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9, i32 0, i32 1
  %72 = ptrtoint ptr %arrayidx9.i85 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1073741824, ptr %arrayidx9.i85, align 4
  %arrayidx12.i86 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9, i32 0, i32 2
  %73 = ptrtoint ptr %arrayidx12.i86 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1073741824, ptr %arrayidx12.i86, align 4
  %cnoc_cmds_num.i87 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 2
  %74 = ptrtoint ptr %cnoc_cmds_num.i87 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %cnoc_cmds_num.i87, align 4
  %cnoc_wait_bitmask.i88 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 4
  %75 = ptrtoint ptr %cnoc_wait_bitmask.i88 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %cnoc_wait_bitmask.i88, align 4
  %cnoc_cmds_addrs.i89 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 6
  %76 = ptrtoint ptr %cnoc_cmds_addrs.i89 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 327792, ptr %cnoc_cmds_addrs.i89, align 4
  %cnoc_cmds_data.i90 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7
  %77 = ptrtoint ptr %cnoc_cmds_data.i90 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1073741824, ptr %cnoc_cmds_data.i90, align 4
  %arrayidx17.i91 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7, i32 1
  br label %if.end20

if.else16:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %ddr_wait_bitmask.i80 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 7, ptr %ddr_wait_bitmask.i80, align 4
  %ddr_cmds_addrs.i95 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8
  %79 = ptrtoint ptr %ddr_cmds_addrs.i95 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 327680, ptr %ddr_cmds_addrs.i95, align 4
  %arrayidx2.i96 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8, i32 1
  %80 = ptrtoint ptr %arrayidx2.i96 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 327772, ptr %arrayidx2.i96, align 4
  %arrayidx4.i97 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 8, i32 2
  %81 = ptrtoint ptr %arrayidx4.i97 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 327692, ptr %arrayidx4.i97, align 4
  %ddr_cmds_data.i98 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9
  %82 = ptrtoint ptr %ddr_cmds_data.i98 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1073741824, ptr %ddr_cmds_data.i98, align 4
  %arrayidx9.i99 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9, i32 0, i32 1
  %83 = ptrtoint ptr %arrayidx9.i99 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1073741824, ptr %arrayidx9.i99, align 4
  %arrayidx12.i100 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 9, i32 0, i32 2
  %84 = ptrtoint ptr %arrayidx12.i100 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1073741824, ptr %arrayidx12.i100, align 4
  %cnoc_cmds_num.i101 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 2
  %85 = ptrtoint ptr %cnoc_cmds_num.i101 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 3, ptr %cnoc_cmds_num.i101, align 4
  %cnoc_wait_bitmask.i102 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 4
  %86 = ptrtoint ptr %cnoc_wait_bitmask.i102 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 5, ptr %cnoc_wait_bitmask.i102, align 4
  %cnoc_cmds_addrs.i103 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 6
  %87 = ptrtoint ptr %cnoc_cmds_addrs.i103 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 327732, ptr %cnoc_cmds_addrs.i103, align 4
  %arrayidx15.i104 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 6, i32 1
  %88 = ptrtoint ptr %arrayidx15.i104 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 327804, ptr %arrayidx15.i104, align 4
  %arrayidx17.i105 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 6, i32 2
  %89 = ptrtoint ptr %arrayidx17.i105 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 327756, ptr %arrayidx17.i105, align 4
  %cnoc_cmds_data.i106 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7
  %90 = ptrtoint ptr %cnoc_cmds_data.i106 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1073741824, ptr %cnoc_cmds_data.i106, align 4
  %arrayidx22.i107 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx22.i107 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %arrayidx22.i107, align 4
  %arrayidx25.i108 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7, i32 0, i32 2
  %92 = ptrtoint ptr %arrayidx25.i108 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1073741824, ptr %arrayidx25.i108, align 4
  %arrayidx27.i109 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7, i32 1
  %93 = ptrtoint ptr %arrayidx27.i109 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1610612737, ptr %arrayidx27.i109, align 4
  %arrayidx31.i110 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7, i32 1, i32 1
  %94 = ptrtoint ptr %arrayidx31.i110 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 536870913, ptr %arrayidx31.i110, align 4
  %arrayidx34.i111 = getelementptr inbounds %struct.a6xx_hfi_msg_bw_table, ptr %msg, i32 0, i32 7, i32 1, i32 2
  br label %if.end20

if.end20:                                         ; preds = %if.else16, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %arrayidx34.i.sink = phi ptr [ %arrayidx34.i, %if.then3 ], [ %arrayidx17.i74, %if.then11 ], [ %arrayidx34.i111, %if.else16 ], [ %arrayidx17.i91, %if.then15 ], [ %arrayidx17.i59, %if.then7 ], [ %arrayidx17.i, %if.then ]
  %95 = ptrtoint ptr %arrayidx34.i.sink to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1610612737, ptr %arrayidx34.i.sink, align 4
  %call21 = call fastcc i32 @a6xx_hfi_send_msg(ptr noundef %gmu, i32 noundef 3, ptr noundef nonnull %msg, i32 noundef 640)
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %msg) #5
  ret i32 %call21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a6xx_hfi_stop(ptr nocapture noundef %gmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_index = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %read_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read_index, align 4
  %write_index = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %write_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp3.not = icmp eq i32 %3, %5
  br i1 %cmp3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gmu, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 0) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %read_index7 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %read_index7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %read_index7, align 4
  %11 = load ptr, ptr %arrayidx, align 4
  %write_index9 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %write_index9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %write_index9, align 4
  %history = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 0, i32 4
  %13 = call ptr @memset(ptr %history, i32 255, i32 32)
  %history_idx = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 0, i32 5
  %14 = ptrtoint ptr %history_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %history_idx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %arrayidx.1 = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %16, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  %read_index.1 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %read_index.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %read_index.1, align 4
  %write_index.1 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %16, i32 0, i32 11
  %19 = ptrtoint ptr %write_index.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %write_index.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp3.not.1 = icmp eq i32 %18, %20
  br i1 %cmp3.not.1, label %if.end.1.if.end5.1_crit_edge, label %if.then4.1

if.end.1.if.end5.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.1

if.then4.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %gmu to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gmu, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %22, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1) #5
  br label %if.end5.1

if.end5.1:                                        ; preds = %if.then4.1, %if.end.1.if.end5.1_crit_edge
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.1, align 4
  %read_index7.1 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %read_index7.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %read_index7.1, align 4
  %26 = load ptr, ptr %arrayidx.1, align 4
  %write_index9.1 = getelementptr inbounds %struct.a6xx_hfi_queue_header, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %write_index9.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %write_index9.1, align 4
  %history.1 = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 1, i32 4
  %28 = call ptr @memset(ptr %history.1, i32 255, i32 32)
  %history_idx.1 = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 1, i32 5
  %29 = ptrtoint ptr %history_idx.1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %history_idx.1, align 4
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end5.1, %cleanup.cleanup.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @a6xx_hfi_init(ptr noundef %gmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %virt = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %1, align 4
  %size = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 120, ptr %size, align 4
  %qhdr0_offset = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %qhdr0_offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %qhdr0_offset, align 4
  %qhdr_size = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %qhdr_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 12, ptr %qhdr_size, align 4
  %num_queues = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %num_queues to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %num_queues, align 4
  %active_queues = getelementptr inbounds %struct.a6xx_hfi_queue_table_header, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %active_queues to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %active_queues, align 4
  %queues = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27
  %8 = load ptr, ptr %virt, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 4096
  %iova = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 9, i32 3
  %9 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %iova, align 8
  %lock.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @a6xx_hfi_queue_init.__key, i16 noundef signext 3) #5
  %11 = ptrtoint ptr %queues to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr, ptr %queues, align 4
  %data.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 0, i32 2
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %add.ptr5, ptr %data.i, align 4
  %seqnum.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %seqnum.i, i32 noundef 4) #5
  %13 = ptrtoint ptr %seqnum.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile i32 0, ptr %seqnum.i, align 4
  %history.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 0, i32 4
  %14 = call ptr @memset(ptr %history.i, i32 255, i32 32)
  %history_idx.i = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 0, i32 5
  %15 = ptrtoint ptr %history_idx.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %history_idx.i, align 4
  %16 = trunc i64 %10 to i32
  %conv.i = add i32 %16, 4096
  %iova2.i = getelementptr i8, ptr %1, i32 28
  %17 = ptrtoint ptr %iova2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv.i, ptr %iova2.i, align 4
  %type.i = getelementptr i8, ptr %1, i32 32
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2560, ptr %type.i, align 4
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %add.ptr, align 4
  %size.i = getelementptr i8, ptr %1, i32 36
  %20 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1024, ptr %size.i, align 4
  %msg_size.i = getelementptr i8, ptr %1, i32 40
  %21 = ptrtoint ptr %msg_size.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %msg_size.i, align 4
  %dropped.i = getelementptr i8, ptr %1, i32 44
  %22 = ptrtoint ptr %dropped.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %dropped.i, align 4
  %rx_watermark.i = getelementptr i8, ptr %1, i32 48
  %23 = ptrtoint ptr %rx_watermark.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %rx_watermark.i, align 4
  %tx_watermark.i = getelementptr i8, ptr %1, i32 52
  %24 = ptrtoint ptr %tx_watermark.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %tx_watermark.i, align 4
  %rx_request.i = getelementptr i8, ptr %1, i32 56
  %25 = ptrtoint ptr %rx_request.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %rx_request.i, align 4
  %tx_request.i = getelementptr i8, ptr %1, i32 60
  %26 = ptrtoint ptr %tx_request.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %tx_request.i, align 4
  %read_index.i = getelementptr i8, ptr %1, i32 64
  %27 = ptrtoint ptr %read_index.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %read_index.i, align 4
  %write_index.i = getelementptr i8, ptr %1, i32 68
  %28 = ptrtoint ptr %write_index.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %write_index.i, align 4
  %arrayidx9 = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 1
  %arrayidx10 = getelementptr i8, ptr %1, i32 72
  %29 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %virt, align 4
  %add.ptr13 = getelementptr i8, ptr %30, i32 8192
  %31 = ptrtoint ptr %iova to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %iova, align 8
  %legacy = getelementptr inbounds %struct.a6xx_gmu, ptr %gmu, i32 0, i32 30
  %33 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %legacy, align 2, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not = icmp eq i8 %34, 0
  %lock.i35 = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i35, ptr noundef nonnull @.str.18, ptr noundef nonnull @a6xx_hfi_queue_init.__key, i16 noundef signext 3) #5
  %35 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx10, ptr %arrayidx9, align 4
  %data.i36 = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 1, i32 2
  %36 = ptrtoint ptr %data.i36 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr13, ptr %data.i36, align 4
  %seqnum.i37 = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 1, i32 3
  %call.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %seqnum.i37, i32 noundef 4) #5
  %37 = ptrtoint ptr %seqnum.i37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile i32 0, ptr %seqnum.i37, align 4
  %history.i39 = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 1, i32 4
  %38 = call ptr @memset(ptr %history.i39, i32 255, i32 32)
  %history_idx.i40 = getelementptr %struct.a6xx_gmu, ptr %gmu, i32 0, i32 27, i32 1, i32 5
  %39 = ptrtoint ptr %history_idx.i40 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %history_idx.i40, align 4
  %40 = trunc i64 %32 to i32
  %conv.i41 = add i32 %40, 8192
  %iova2.i42 = getelementptr i8, ptr %1, i32 76
  %41 = ptrtoint ptr %iova2.i42 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv.i41, ptr %iova2.i42, align 4
  %or.i = select i1 %tobool.not, i32 2561, i32 2564
  %type.i43 = getelementptr i8, ptr %1, i32 80
  %42 = ptrtoint ptr %type.i43 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i, ptr %type.i43, align 4
  %43 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %arrayidx10, align 4
  %size.i44 = getelementptr i8, ptr %1, i32 84
  %44 = ptrtoint ptr %size.i44 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1024, ptr %size.i44, align 4
  %msg_size.i45 = getelementptr i8, ptr %1, i32 88
  %45 = ptrtoint ptr %msg_size.i45 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %msg_size.i45, align 4
  %dropped.i46 = getelementptr i8, ptr %1, i32 92
  %46 = ptrtoint ptr %dropped.i46 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %dropped.i46, align 4
  %rx_watermark.i47 = getelementptr i8, ptr %1, i32 96
  %47 = ptrtoint ptr %rx_watermark.i47 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %rx_watermark.i47, align 4
  %tx_watermark.i48 = getelementptr i8, ptr %1, i32 100
  %48 = ptrtoint ptr %tx_watermark.i48 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %tx_watermark.i48, align 4
  %rx_request.i49 = getelementptr i8, ptr %1, i32 104
  %49 = ptrtoint ptr %rx_request.i49 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %rx_request.i49, align 4
  %tx_request.i50 = getelementptr i8, ptr %1, i32 108
  %50 = ptrtoint ptr %tx_request.i50 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %tx_request.i50, align 4
  %read_index.i51 = getelementptr i8, ptr %1, i32 112
  %51 = ptrtoint ptr %read_index.i51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %read_index.i51, align 4
  %write_index.i52 = getelementptr i8, ptr %1, i32 116
  %52 = ptrtoint ptr %write_index.i52 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %write_index.i52, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_cmp_rev([1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 603, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 184, i32 3}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 15, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 16, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 17, i32 2}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 18, i32 2}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 19, i32 2}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 20, i32 2}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 21, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 22, i32 2}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 23, i32 2}
!23 = !{ptr @a6xx_hfi_msg_id, !24, !"a6xx_hfi_msg_id", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 14, i32 27}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 108, i32 8}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 112, i32 3}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 131, i32 4}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 141, i32 4}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 147, i32 4}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 154, i32 4}
!37 = !{ptr @a6xx_hfi_queue_init.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/adreno/a6xx_hfi.c", i32 617, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2148591783}
!50 = !{i64 2148507068, i64 2148507100, i64 2148507129, i64 2148507163, i64 2148507194, i64 2148507217}
!51 = !{i64 2148592012}
!52 = !{i8 0, i8 2}
!53 = !{i64 3020225}
!54 = !{i64 2157920838}
!55 = !{i64 2157921404}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i64 2157917215, i64 2157917716, i64 2157917252, i64 2157917308, i64 2157917342, i64 2157917366, i64 2157917407, i64 2157917428, i64 2157917456, i64 2157917490}
