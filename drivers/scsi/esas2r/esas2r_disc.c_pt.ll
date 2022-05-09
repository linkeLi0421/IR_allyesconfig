; ModuleID = '/llk/IR_all_yes/drivers/scsi/esas2r/esas2r_disc.c_pt.bc'
source_filename = "../drivers/scsi/esas2r/esas2r_disc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.esas2r_adapter = type { [256 x %struct.esas2r_target], ptr, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %union.anon.101, i32, i64, ptr, ptr, %struct.esas2r_request, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i16, i16, %struct.esas2r_mem_desc, %struct.esas2r_mem_desc, %struct.esas2r_disc_context, ptr, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], %struct.esas2r_flash_context, i32, i32, %struct.tasklet_struct, ptr, ptr, i32, [32 x i8], %struct.timer_list, %struct.esas2r_firmware, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, ptr, i64, %struct.wait_queue_head, i32, i64, ptr, i32, %struct.wait_queue_head, i32, i32, ptr, %struct.list_head, %struct.spinlock, i8, [20 x i8], i32, %struct.esas2r_sg_context, ptr, %struct.list_head, ptr, i32, %struct.mutex, %struct.mutex, %struct.semaphore, ptr, [524288 x i8], i8 }
%struct.esas2r_target = type { i8, i8, i8, i8, i32, i32, i32, i16, i16, i8, i64, [60 x i8], %struct.atto_vda_ae_lu }
%struct.atto_vda_ae_lu = type { %struct.atto_vda_ae_hdr, i32, i8, i8, i16, %union.anon }
%struct.atto_vda_ae_hdr = type { i8, i8, i8, i8 }
%union.anon = type { %struct.atto_vda_ae_lu_tgt_lun_raid }
%struct.atto_vda_ae_lu_tgt_lun_raid = type { i16, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%union.anon.101 = type { i32 }
%struct.esas2r_request = type { %struct.list_head, %struct.list_head, ptr, ptr, %union.anon.15, ptr, %struct.list_head, ptr, i32, i16, i8, i8, %union.atto_vda_func_rsp, ptr, ptr, ptr, i8, i8, i16, i64, ptr, ptr, i32, i32, %union.anon.23 }
%union.anon.15 = type { ptr }
%union.atto_vda_func_rsp = type { %struct.atto_vda_scsi_rsp }
%struct.atto_vda_scsi_rsp = type { i8, i8, [2 x i8], i32 }
%union.anon.23 = type { ptr }
%struct.esas2r_mem_desc = type { %struct.list_head, ptr, i64, ptr, ptr, i32, i32 }
%struct.esas2r_disc_context = type { i8, i8, i16, i32, i32, i16, i8, i8, [16 x i8], ptr, i16, i16, i8, i8, i64 }
%struct.esas2r_flash_context = type { ptr, ptr, ptr, ptr, i32, i8, i8, i16, i32, i32, i32, i8, %struct.esas2r_sg_context }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.105, i32 }
%union.anon.105 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.esas2r_firmware = type { i32, %struct.esas2r_flash_img, ptr, i64, i32, ptr, i64 }
%struct.esas2r_flash_img = type { i8, i8, i8, i8, i32, i16, i16, i16, i16, [16 x i8], [6 x %struct.esas2r_component_header], [2048 x i8] }
%struct.esas2r_component_header = type { i8, i8, [2 x i8], i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.esas2r_sg_context = type { ptr, ptr, i32, ptr, ptr, %union.anon.102, ptr, ptr, i32, i32 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.esas2r_sas_nvram = type { [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [16 x i8], [16 x i8], [16 x i8], i8, i8, i8, i8, [16 x i8], i8, i8, i8, [161 x i8] }
%struct.atto_vda_scsi_req = type { i32, i8, i8, i8, i8, i32, i32, [16 x i8], %union.anon.3, %union.anon.5 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type <{ i64, i16, i8, i8 }>
%union.anon.5 = type { [245 x i32] }
%union.atto_vda_req = type { %struct.atto_vda_scsi_req }
%struct.atto_vdapart_info = type { i8, [15 x i8], i64, i64, i32, i16, i8, [41 x i8], i8, [7 x i8] }
%struct.atto_vda_ioctl_req = type { i32, i8, i8, i8, i8, i32, %union.anon.9, %union.anon.10, %union.anon.12 }
%union.anon.9 = type { %struct.atto_vda_sge }
%struct.atto_vda_sge = type <{ i32, i64 }>
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { i32, i16, i8, i8 }
%union.anon.12 = type { [1 x %struct.atto_vda_sge] }
%struct.atto_ioctl = type { i8, i8, i8, i8, i32, [56 x i8], %union.anon.107 }
%union.anon.107 = type { %struct.atto_hba_get_adapter_info }
%struct.atto_hba_get_adapter_info = type { %struct.anon.108, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8], [32 x i8], [16 x i8], [16 x i8], [16 x i8], [32 x i8], i32, i32, i32, i8, i8, i8, i8, i32, i32, [312 x i8] }
%struct.anon.108 = type { i16, i16, i16, i16, [3 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [19 x i8] }
%struct.atto_vda_mgmt_rsp = type <{ i32, i16, i8 }>
%struct.atto_vda_grp_info = type { i8, [15 x i8], i64, i32, i32, i8, %union.anon.19, i8, i8, i8, i8, i8, i8, %union.anon.20, i16, i8, i8, i8, [3 x i8] }
%union.anon.19 = type { i8 }
%union.anon.20 = type { [32 x i16] }
%struct.atto_vda_devinfo = type { %struct.atto_dev_addr, [8 x i8], [16 x i8], [4 x i8], i64, i32, i8, %union.anon.17, i8, i8, i8, i8, i16, [32 x i8], %union.anon.18, i16, i16, i8, i8, i16, [2 x i8] }
%struct.atto_dev_addr = type <{ i64, i64, i8, i8, i8, [1 x i8] }>
%union.anon.17 = type { i8 }
%union.anon.18 = type { i16 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"luevt->dwevent does not have the VDAAE_LU_PHYS_ID bit set (%s:%d)\00", [62 x i8] zeroinitializer }, align 32
@__func__.esas2r_disc_dev_add = private unnamed_addr constant [20 x i8] c"esas2r_disc_dev_add\00", align 1
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"A request for RAID group info failed - returned with %x\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"A request for RAID group partition info failed - status:%d\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"A request for device information failed - status:%d\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"an error occurred retrieving the back end data (%s:%d)\00", [41 x i8] zeroinitializer }, align 32
@__func__.esas2r_disc_passthru_dev_addr_cb = private unnamed_addr constant [33 x i8] c"esas2r_disc_passthru_dev_addr_cb\00", align 1
@.str.5 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"an error occurred retrieving the back end data - rq->req_stat:%d hi->status:%d\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 255]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 133, i64 136]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 133, i64 152]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 129, i64 133]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1126, i32 9 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 664, i32 8 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 768, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 862, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 990, i32 9 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private constant [37 x i8] c"../drivers/scsi/esas2r/esas2r_disc.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 1000, i32 7 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_disc_initialize(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %nvram = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 25
  %0 = ptrtoint ptr %nvram to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nvram, align 4
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 22, ptr noundef %flags) #5
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags2) #5
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags2) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %2) #5
  %disc_start_time = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 45
  %3 = ptrtoint ptr %disc_start_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %disc_start_time, align 4
  %dev_wait_time = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %dev_wait_time to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dev_wait_time, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %disc_wait_time = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 46
  %6 = ptrtoint ptr %disc_wait_time to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %disc_wait_time, align 8
  %dev_wait_count = getelementptr inbounds %struct.esas2r_sas_nvram, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %dev_wait_count to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dev_wait_count, align 1
  %conv2 = zext i8 %8 to i16
  %disc_wait_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 40
  %9 = ptrtoint ptr %disc_wait_cnt to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv2, ptr %disc_wait_cnt, align 2
  %interrupt_cx = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 15
  %10 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %interrupt_cx, align 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then12_crit_edge

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

lor.lhs.false:                                    ; preds = %entry
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end26_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

lor.lhs.false.if.end26_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %entry.if.then12_crit_edge
  %17 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 21
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp14 = icmp eq i16 %19, 0
  br i1 %cmp14, label %if.end26.thread, label %if.else

if.end26.thread:                                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %disc_wait_time to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %disc_wait_time, align 8
  br label %if.then30

if.else:                                          ; preds = %if.then12
  %21 = ptrtoint ptr %disc_wait_cnt to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %19, ptr %disc_wait_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15000, i32 %mul)
  %cmp20 = icmp ult i32 %mul, 15000
  br i1 %cmp20, label %if.end26.thread55, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.end26.thread55:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %disc_wait_time to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 15000, ptr %disc_wait_time, align 8
  br label %if.end31

if.end26:                                         ; preds = %if.else.if.end26_crit_edge, %lor.lhs.false.if.end26_crit_edge
  %23 = ptrtoint ptr %disc_wait_time to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %disc_wait_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp28 = icmp eq i32 %.pr, 0
  br i1 %cmp28, label %if.end26.if.then30_crit_edge, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.end26.if.then30_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then30

if.then30:                                        ; preds = %if.end26.if.then30_crit_edge, %if.end26.thread
  tail call void @esas2r_disc_check_complete(ptr noundef %a)
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26.if.end31_crit_edge, %if.end26.thread55
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_disc_check_complete(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_wait_time = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 46
  %0 = ptrtoint ptr %disc_wait_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %disc_wait_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %2) #5
  %disc_start_time = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 45
  %3 = ptrtoint ptr %disc_start_time to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %disc_start_time, align 4
  %sub = sub i32 %call, %4
  %5 = ptrtoint ptr %disc_wait_time to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %disc_wait_time, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %6)
  %cmp = icmp ult i32 %sub, %6
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end25_crit_edge

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

land.lhs.true:                                    ; preds = %if.then
  %call2 = tail call zeroext i16 @esas2r_targ_db_get_tgt_cnt(ptr noundef %a) #5
  %disc_wait_cnt = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 40
  %7 = ptrtoint ptr %disc_wait_cnt to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %disc_wait_cnt, align 2
  %9 = add i16 %8, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %call2)
  %.not = icmp ult i16 %9, %call2
  br i1 %.not, label %land.lhs.true.if.end25_crit_edge, label %if.then10

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %sub)
  %cmp11 = icmp ugt i32 %sub, 2999
  br i1 %cmp11, label %land.lhs.true13, label %if.then10.cleanup92_crit_edge

if.then10.cleanup92_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup92

land.lhs.true13:                                  ; preds = %if.then10
  %flags2 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %call14 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body17, label %land.lhs.true13.cleanup92_crit_edge

land.lhs.true13.cleanup92_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup92

do.body17:                                        ; preds = %land.lhs.true13
  %mem_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock) #5
  %disc_ctx.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 43
  %10 = ptrtoint ptr %disc_ctx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %disc_ctx.i, align 8
  %or11.i = or i8 %11, 2
  store i8 %or11.i, ptr %disc_ctx.i, align 8
  %flags.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %flags.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body17.esas2r_disc_queue_event.exit_crit_edge

do.body17.esas2r_disc_queue_event.exit_crit_edge: ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_queue_event.exit

land.lhs.true.i:                                  ; preds = %do.body17
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %flags.i, align 4
  %17 = and i32 %16, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not.i = icmp eq i32 %17, 0
  br i1 %tobool6.not.i, label %if.then.i, label %land.lhs.true.i.esas2r_disc_queue_event.exit_crit_edge

land.lhs.true.i.esas2r_disc_queue_event.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_queue_event.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i = tail call zeroext i1 @esas2r_disc_start_port(ptr noundef %a) #5
  br label %esas2r_disc_queue_event.exit

esas2r_disc_queue_event.exit:                     ; preds = %if.then.i, %land.lhs.true.i.esas2r_disc_queue_event.exit_crit_edge, %do.body17.esas2r_disc_queue_event.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock, i32 noundef %call21) #5
  br label %cleanup92

if.end25:                                         ; preds = %land.lhs.true.if.end25_crit_edge, %if.then.if.end25_crit_edge
  %flags226 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %call27 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %flags226) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end25.if.end31_crit_edge

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %add = add i32 %sub, 3000
  %18 = ptrtoint ptr %disc_wait_time to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %disc_wait_time, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25.if.end31_crit_edge
  %call33 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags226) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.body37, label %if.end51

do.body37:                                        ; preds = %if.end31
  %mem_lock43 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %call45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock43) #5
  %disc_ctx.i131 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 43
  %19 = ptrtoint ptr %disc_ctx.i131 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %disc_ctx.i131, align 8
  %or11.i132 = or i8 %20, 2
  store i8 %or11.i132, ptr %disc_ctx.i131, align 8
  %flags.i133 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %21 = ptrtoint ptr %flags.i133 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i133, align 4
  %23 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i134 = icmp eq i32 %23, 0
  br i1 %tobool.not.i134, label %land.lhs.true.i136, label %do.body37.esas2r_disc_queue_event.exit139_crit_edge

do.body37.esas2r_disc_queue_event.exit139_crit_edge: ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_queue_event.exit139

land.lhs.true.i136:                               ; preds = %do.body37
  %24 = ptrtoint ptr %flags.i133 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i133, align 4
  %26 = and i32 %25, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool6.not.i135 = icmp eq i32 %26, 0
  br i1 %tobool6.not.i135, label %if.then.i138, label %land.lhs.true.i136.esas2r_disc_queue_event.exit139_crit_edge

land.lhs.true.i136.esas2r_disc_queue_event.exit139_crit_edge: ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_queue_event.exit139

if.then.i138:                                     ; preds = %land.lhs.true.i136
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i137 = tail call zeroext i1 @esas2r_disc_start_port(ptr noundef %a) #5
  br label %esas2r_disc_queue_event.exit139

esas2r_disc_queue_event.exit139:                  ; preds = %if.then.i138, %land.lhs.true.i136.esas2r_disc_queue_event.exit139_crit_edge, %do.body37.esas2r_disc_queue_event.exit139_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock43, i32 noundef %call45) #5
  br label %cleanup92

if.end51:                                         ; preds = %if.end31
  %27 = ptrtoint ptr %disc_wait_time to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %disc_wait_time, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %28)
  %cmp53.not = icmp ult i32 %sub, %28
  br i1 %cmp53.not, label %if.end51.cleanup92_crit_edge, label %if.end51.if.end78_crit_edge

if.end51.if.end78_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.end51.cleanup92_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup92

if.else:                                          ; preds = %entry
  %flags258 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 5
  %call59 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %flags258) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %do.body63, label %if.else.if.end78_crit_edge

if.else.if.end78_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

do.body63:                                        ; preds = %if.else
  %mem_lock69 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %call71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock69) #5
  %disc_ctx.i140 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 43
  %29 = ptrtoint ptr %disc_ctx.i140 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %disc_ctx.i140, align 8
  %or11.i141 = or i8 %30, 2
  store i8 %or11.i141, ptr %disc_ctx.i140, align 8
  %flags.i142 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %31 = ptrtoint ptr %flags.i142 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %flags.i142, align 4
  %33 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i143 = icmp eq i32 %33, 0
  br i1 %tobool.not.i143, label %land.lhs.true.i145, label %do.body63.esas2r_disc_queue_event.exit148_crit_edge

do.body63.esas2r_disc_queue_event.exit148_crit_edge: ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_queue_event.exit148

land.lhs.true.i145:                               ; preds = %do.body63
  %34 = ptrtoint ptr %flags.i142 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags.i142, align 4
  %36 = and i32 %35, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool6.not.i144 = icmp eq i32 %36, 0
  br i1 %tobool6.not.i144, label %if.then.i147, label %land.lhs.true.i145.esas2r_disc_queue_event.exit148_crit_edge

land.lhs.true.i145.esas2r_disc_queue_event.exit148_crit_edge: ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_queue_event.exit148

if.then.i147:                                     ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #7
  %call7.i146 = tail call zeroext i1 @esas2r_disc_start_port(ptr noundef %a) #5
  br label %esas2r_disc_queue_event.exit148

esas2r_disc_queue_event.exit148:                  ; preds = %if.then.i147, %land.lhs.true.i145.esas2r_disc_queue_event.exit148_crit_edge, %do.body63.esas2r_disc_queue_event.exit148_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock69, i32 noundef %call71) #5
  br label %if.end78

if.end78:                                         ; preds = %esas2r_disc_queue_event.exit148, %if.else.if.end78_crit_edge, %if.end51.if.end78_crit_edge
  %37 = ptrtoint ptr %disc_wait_time to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %disc_wait_time, align 8
  %flags80 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %38 = ptrtoint ptr %flags80 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %flags80, align 4
  %40 = and i32 %39, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool82.not = icmp eq i32 %40, 0
  br i1 %tobool82.not, label %if.end78.if.else88_crit_edge, label %land.lhs.true83

if.end78.if.else88_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else88

land.lhs.true83:                                  ; preds = %if.end78
  %41 = ptrtoint ptr %flags80 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags80, align 4
  %43 = and i32 %42, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool86.not = icmp eq i32 %43, 0
  br i1 %tobool86.not, label %land.lhs.true83.if.else88_crit_edge, label %land.lhs.true83.cleanup92_crit_edge

land.lhs.true83.cleanup92_crit_edge:              ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup92

land.lhs.true83.if.else88_crit_edge:              ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else88

if.else88:                                        ; preds = %land.lhs.true83.if.else88_crit_edge, %if.end78.if.else88_crit_edge
  %queue_lock.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 14
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #5
  %defer_list.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 19
  %44 = ptrtoint ptr %defer_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %element.032.i = load ptr, ptr %defer_list.i, align 4
  %cmp.i.not33.i = icmp eq ptr %element.032.i, %defer_list.i
  br i1 %cmp.i.not33.i, label %if.else88.esas2r_disc_fix_curr_requests.exit_crit_edge, label %if.else88.for.body.i_crit_edge

if.else88.for.body.i_crit_edge:                   ; preds = %if.else88
  br label %for.body.i

if.else88.esas2r_disc_fix_curr_requests.exit_crit_edge: ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_fix_curr_requests.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else88.for.body.i_crit_edge
  %element.034.i = phi ptr [ %element.0.i, %for.inc.i.for.body.i_crit_edge ], [ %element.032.i, %if.else88.for.body.i_crit_edge ]
  %vrq.i = getelementptr i8, ptr %element.034.i, i32 8
  %45 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vrq.i, align 8
  %function.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %function.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %function.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp9.i = icmp eq i8 %48, 0
  br i1 %cmp9.i, label %if.then.i149, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i149:                                     ; preds = %for.body.i
  %target_id.i = getelementptr i8, ptr %element.034.i, i32 40
  %49 = ptrtoint ptr %target_id.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %target_id.i, align 8
  %conv11.i = zext i16 %50 to i32
  %target_state.i = getelementptr %struct.esas2r_target, ptr %a, i32 %conv11.i, i32 2
  %51 = ptrtoint ptr %target_state.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %target_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %52)
  %cmp14.i = icmp eq i8 %52, 5
  br i1 %cmp14.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #7
  %virt_targ_id.i = getelementptr %struct.esas2r_target, ptr %a, i32 %conv11.i, i32 7
  %53 = ptrtoint ptr %virt_targ_id.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %virt_targ_id.i, align 8
  %55 = tail call i16 @llvm.bswap.i16(i16 %54) #5
  %target_id18.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %46, i32 0, i32 8, i32 0, i32 1
  %56 = ptrtoint ptr %target_id18.i to i32
  call void @__asan_storeN_noabort(i32 %56, i32 2)
  store i16 %55, ptr %target_id18.i, align 1
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then.i149
  call void @__sanitizer_cov_trace_pc() #7
  %req_stat.i = getelementptr i8, ptr %element.034.i, i32 65
  %57 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 3, ptr %req_stat.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then16.i, %for.body.i.for.inc.i_crit_edge
  %58 = ptrtoint ptr %element.034.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %element.0.i = load ptr, ptr %element.034.i, align 4
  %cmp.i.not.i = icmp eq ptr %element.0.i, %defer_list.i
  br i1 %cmp.i.not.i, label %for.inc.i.esas2r_disc_fix_curr_requests.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.esas2r_disc_fix_curr_requests.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_fix_curr_requests.exit

esas2r_disc_fix_curr_requests.exit:               ; preds = %for.inc.i.esas2r_disc_fix_curr_requests.exit_crit_edge, %if.else88.esas2r_disc_fix_curr_requests.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call2.i) #5
  tail call void @_clear_bit(i32 noundef 14, ptr noundef %flags80) #5
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags80) #5
  br label %cleanup92

cleanup92:                                        ; preds = %esas2r_disc_fix_curr_requests.exit, %land.lhs.true83.cleanup92_crit_edge, %if.end51.cleanup92_crit_edge, %esas2r_disc_queue_event.exit139, %esas2r_disc_queue_event.exit, %land.lhs.true13.cleanup92_crit_edge, %if.then10.cleanup92_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_disc_start_waiting(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock) #5
  %disc_ctx = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 43
  %0 = ptrtoint ptr %disc_ctx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disc_ctx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call zeroext i1 @esas2r_disc_start_port(ptr noundef %a)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @esas2r_disc_start_port(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %general_req = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26
  %disc_ctx = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 43
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %2 = and i32 %1, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %disc_ctx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %disc_ctx, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool1.not = icmp eq i8 %4, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.then2.if.end9_crit_edge, label %land.lhs.true

if.then2.if.end9_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %if.then2
  %disc_wait_time = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 46
  %8 = ptrtoint ptr %disc_wait_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %disc_wait_time, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #5
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.then2.if.end9_crit_edge
  tail call void @_set_bit(i32 noundef 22, ptr noundef %flags) #5
  %flags11 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 43, i32 2
  %10 = ptrtoint ptr %flags11 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags11, align 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not = icmp eq i32 %13, 0
  br i1 %tobool14.not, label %if.end9.if.end18_crit_edge, label %if.then15

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %flags11 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -32768, ptr %flags11, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end9.if.end18_crit_edge
  %interrupt_cx = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 15
  %15 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %disc_ctx, ptr %interrupt_cx, align 4
  %req_stat = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 17
  %16 = ptrtoint ptr %req_stat to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %req_stat, align 1
  %17 = ptrtoint ptr %disc_ctx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %disc_ctx, align 8
  %conv20 = zext i8 %18 to i32
  %and = and i32 %conv20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.else31, label %if.end18.if.end47.sink.split_crit_edge

if.end18.if.end47.sink.split_crit_edge:           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.sink.split

if.else31:                                        ; preds = %if.end18
  %and34 = and i32 %conv20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.else31.if.end47_crit_edge, label %if.else31.if.end47.sink.split_crit_edge

if.else31.if.end47.sink.split_crit_edge:          ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47.sink.split

if.else31.if.end47_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end47.sink.split:                              ; preds = %if.else31.if.end47.sink.split_crit_edge, %if.end18.if.end47.sink.split_crit_edge
  %.sink89 = phi i8 [ -3, %if.end18.if.end47.sink.split_crit_edge ], [ -2, %if.else31.if.end47.sink.split_crit_edge ]
  %.sink88 = phi i16 [ 2, %if.end18.if.end47.sink.split_crit_edge ], [ 1, %if.else31.if.end47.sink.split_crit_edge ]
  %.sink = phi i8 [ 2, %if.end18.if.end47.sink.split_crit_edge ], [ 0, %if.else31.if.end47.sink.split_crit_edge ]
  %and39 = and i8 %18, %.sink89
  %19 = ptrtoint ptr %disc_ctx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %and39, ptr %disc_ctx, align 8
  %20 = ptrtoint ptr %flags11 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags11, align 2
  %22 = or i16 %21, %.sink88
  store i16 %22, ptr %flags11, align 2
  %state45 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 43, i32 1
  %23 = ptrtoint ptr %state45 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %.sink, ptr %state45, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.end47.sink.split, %if.else31.if.end47_crit_edge
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags, align 4
  %26 = and i32 %25, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool50.not = icmp eq i32 %26, 0
  br i1 %tobool50.not, label %if.then51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  %call52 = tail call fastcc zeroext i1 @esas2r_disc_continue(ptr noundef %a, ptr noundef %general_req)
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %if.end47.cleanup_crit_edge, %if.else, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.else ], [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ], [ %call52, %if.then51 ], [ true, %if.end47.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_disc_check_for_work(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %general_req = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26
  tail call void @esas2r_polled_interrupt(ptr noundef %a) #5
  %mem_lock.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock.i) #5
  %disc_ctx.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 43
  %0 = ptrtoint ptr %disc_ctx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disc_ctx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.esas2r_disc_start_waiting.exit_crit_edge, label %if.then.i

entry.esas2r_disc_start_waiting.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_start_waiting.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call5.i = tail call zeroext i1 @esas2r_disc_start_port(ptr noundef %a) #5
  br label %esas2r_disc_start_waiting.exit

esas2r_disc_start_waiting.exit:                   ; preds = %if.then.i, %entry.esas2r_disc_start_waiting.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock.i, i32 noundef %call2.i) #5
  %interrupt_cx = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 15
  %2 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interrupt_cx, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %esas2r_disc_start_waiting.exit.cleanup_crit_edge, label %if.end

esas2r_disc_start_waiting.exit.cleanup_crit_edge: ; preds = %esas2r_disc_start_waiting.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %esas2r_disc_start_waiting.exit
  %req_stat = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 17
  %4 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp1 = icmp eq i8 %5, -1
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %timeout = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 26, i32 8
  %6 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %7)
  %cmp3 = icmp ult i32 %7, -2
  br i1 %cmp3, label %if.then5, label %if.end12thread-pre-split

if.then5:                                         ; preds = %land.lhs.true
  tail call void @esas2r_wait_request(ptr noundef %a, ptr noundef %general_req) #5
  %8 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp8 = icmp eq i8 %9, 5
  br i1 %cmp8, label %if.then10, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interrupt_cx, align 4
  %state.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %state.i, align 1
  %flags.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  tail call void @_clear_bit(i32 noundef 17, ptr noundef %flags.i.i) #5
  tail call void @_clear_bit(i32 noundef 16, ptr noundef %flags.i.i) #5
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags.i.i) #5
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags.i.i) #5
  tail call void @_set_bit(i32 noundef 14, ptr noundef %flags.i.i) #5
  br label %cleanup

if.end12thread-pre-split:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %13)
  %.pr = load i8, ptr %req_stat, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.end12thread-pre-split, %if.then5.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %14 = phi i8 [ %.pr, %if.end12thread-pre-split ], [ %9, %if.then5.if.end12_crit_edge ], [ %5, %if.end.if.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %14)
  %switch = icmp ugt i8 %14, -3
  br i1 %switch, label %if.end12.cleanup_crit_edge, label %if.end22

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc zeroext i1 @esas2r_disc_continue(ptr noundef %a, ptr noundef %general_req)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end12.cleanup_crit_edge, %if.then10, %esas2r_disc_start_waiting.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_polled_interrupt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_wait_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @esas2r_disc_continue(ptr noundef %a, ptr noundef %rq) unnamed_addr #0 align 64 {
entry:
  %sgc.i = alloca %struct.esas2r_sg_context, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %0 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_cx, align 4
  %flags = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not236 = icmp eq i16 %4, 0
  br i1 %tobool.not236, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %state = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %sgc.i, i32 20
  %vrq1.i.i188 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %sg_table_head.i.i189 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6
  %prev.i.i.i190 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6, i32 1
  %6 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %interrupt_cb.i.i192 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 14
  %comp_cb.i.i193 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 13
  %flags.i.i194 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 16
  %timeout.i.i195 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 8
  %req_stat.i.i196 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %req_type.i.i197 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 10
  %func_rsp.i.i198 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %arrayidx3.i.i199 = getelementptr %struct.esas2r_request, ptr %rq, i32 0, i32 12, i32 0, i32 3
  %vda_req_sz.i.i200 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 18
  %req_table.i.i201 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 20
  %cmd_ref_no.i.i205 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 28
  %vrq_md.i.i217 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 3
  %cur_offset.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc.i, i32 0, i32 3
  %get_phys_addr.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc.i, i32 0, i32 4
  %length.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc.i, i32 0, i32 2
  %first_req.i.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc.i, i32 0, i32 1
  %limit.i.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc.i, i32 0, i32 5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc.i, i32 0, i32 5, i32 0, i32 1
  %chain.i.i = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc.i, i32 0, i32 5, i32 0, i32 3
  %build_sgl.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 34
  %sg_list_lock.i.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 13
  %free_sg_list_head.i.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16
  %prev.i.i.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16, i32 1
  %targetdb_end.i63 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 1
  %sub.ptr.rhs.cast.i.i68 = ptrtoint ptr %a to i32
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %8 = phi i16 [ %3, %while.body.lr.ph ], [ %340, %while.cond.backedge.while.body_crit_edge ]
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %state, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb5
    i8 3, label %sw.bb8
    i8 4, label %sw.bb11
    i8 5, label %sw.bb14
    i8 6, label %sw.bb17
    i8 -1, label %sw.bb20
  ]

sw.bb:                                            ; preds = %while.body
  %12 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interrupt_cx, align 4
  %14 = ptrtoint ptr %targetdb_end.i63 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %targetdb_end.i63, align 8
  %cmp1.i = icmp ugt ptr %15, %a
  br i1 %cmp1.i, label %sw.bb.for.body.i_crit_edge, label %sw.bb.esas2r_disc_dev_remove.exit_crit_edge

sw.bb.esas2r_disc_dev_remove.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_dev_remove.exit

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %t.02.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %a, %sw.bb.for.body.i_crit_edge ]
  %new_target_state.i = getelementptr inbounds %struct.esas2r_target, ptr %t.02.i, i32 0, i32 1
  %16 = ptrtoint ptr %new_target_state.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %new_target_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp1.not.i = icmp eq i8 %17, 0
  br i1 %cmp1.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %18 = ptrtoint ptr %new_target_state.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %new_target_state.i, align 1
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %t.02.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i68
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 120
  %conv.i.i = trunc i32 %sub.ptr.div.i.i to i16
  %call4.i = call ptr @esas2r_targ_db_find_by_virt_id(ptr noundef %a, i16 noundef zeroext %conv.i.i) #5
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.then5.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @esas2r_targ_db_remove(ptr noundef %a, ptr noundef nonnull %call4.i) #5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.esas2r_target, ptr %t.02.i, i32 1
  %19 = ptrtoint ptr %targetdb_end.i63 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %targetdb_end.i63, align 8
  %cmp.i = icmp ult ptr %incdec.ptr.i, %20
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.esas2r_disc_dev_remove.exit_crit_edge

for.inc.i.esas2r_disc_dev_remove.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_dev_remove.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

esas2r_disc_dev_remove.exit:                      ; preds = %for.inc.i.esas2r_disc_dev_remove.exit_crit_edge, %sw.bb.esas2r_disc_dev_remove.exit_crit_edge
  %state.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %13, i32 0, i32 1
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %state.i, align 1
  %curr_targ.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %13, i32 0, i32 9
  %22 = ptrtoint ptr %curr_targ.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %a, ptr %curr_targ.i, align 8
  br label %while.cond.backedge

sw.bb2:                                           ; preds = %while.body
  %23 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %interrupt_cx, align 4
  %curr_targ.i62 = getelementptr inbounds %struct.esas2r_disc_context, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %curr_targ.i62 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %curr_targ.i62, align 8
  %27 = ptrtoint ptr %targetdb_end.i63 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %targetdb_end.i63, align 8
  %cmp.not.i = icmp ult ptr %26, %28
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %state.i64 = getelementptr inbounds %struct.esas2r_disc_context, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %state.i64 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 -1, ptr %state.i64, align 1
  br label %if.end29.i

if.else.i:                                        ; preds = %sw.bb2
  %new_target_state.i65 = getelementptr inbounds %struct.esas2r_target, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %new_target_state.i65 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %new_target_state.i65, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %31)
  %cmp1.i66 = icmp eq i8 %31, 5
  br i1 %cmp1.i66, label %if.then3.i, label %if.else.i.if.end29.i_crit_edge

if.else.i.if.end29.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then3.i:                                       ; preds = %if.else.i
  %lu_event.i = getelementptr inbounds %struct.esas2r_target, ptr %26, i32 0, i32 12
  %32 = ptrtoint ptr %new_target_state.i65 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %new_target_state.i65, align 1
  %sub.ptr.lhs.cast.i.i67 = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i69 = sub i32 %sub.ptr.lhs.cast.i.i67, %sub.ptr.rhs.cast.i.i68
  %sub.ptr.div.i.i70 = sdiv exact i32 %sub.ptr.sub.i.i69, 120
  %conv.i.i71 = trunc i32 %sub.ptr.div.i.i70 to i16
  %curr_virt_id.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %24, i32 0, i32 10
  %33 = ptrtoint ptr %curr_virt_id.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i71, ptr %curr_virt_id.i, align 4
  %34 = ptrtoint ptr %lu_event.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %lu_event.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %35)
  %cmp6.i = icmp ugt i8 %35, 23
  br i1 %cmp6.i, label %land.lhs.true.i, label %if.then3.i.if.else10.i_crit_edge

if.then3.i.if.else10.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i

land.lhs.true.i:                                  ; preds = %if.then3.i
  %dwevent.i = getelementptr inbounds %struct.esas2r_target, ptr %26, i32 0, i32 12, i32 1
  %36 = ptrtoint ptr %dwevent.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %dwevent.i, align 1
  %and.i = and i32 %37, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i72 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i72, label %if.then8.i, label %land.lhs.true.i.if.else10.i_crit_edge

land.lhs.true.i.if.else10.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %dwblock_size.i = getelementptr inbounds %struct.esas2r_target, ptr %26, i32 0, i32 12, i32 5, i32 0, i32 4
  %38 = ptrtoint ptr %dwblock_size.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %dwblock_size.i, align 1
  %block_size.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %24, i32 0, i32 4
  %40 = ptrtoint ptr %block_size.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %block_size.i, align 8
  %dwinterleave.i = getelementptr inbounds %struct.esas2r_target, ptr %26, i32 0, i32 12, i32 5, i32 0, i32 3
  %41 = ptrtoint ptr %dwinterleave.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %dwinterleave.i, align 1
  br label %if.end.i73

if.else10.i:                                      ; preds = %land.lhs.true.i.if.else10.i_crit_edge, %if.then3.i.if.else10.i_crit_edge
  %block_size11.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %24, i32 0, i32 4
  %43 = ptrtoint ptr %block_size11.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %block_size11.i, align 8
  br label %if.end.i73

if.end.i73:                                       ; preds = %if.else10.i, %if.then8.i
  %.sink.i = phi i32 [ 0, %if.else10.i ], [ %42, %if.then8.i ]
  %interleave12.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %24, i32 0, i32 3
  %44 = ptrtoint ptr %interleave12.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i, ptr %interleave12.i, align 4
  %dwevent13.i = getelementptr inbounds %struct.esas2r_target, ptr %26, i32 0, i32 12, i32 1
  %45 = ptrtoint ptr %dwevent13.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %dwevent13.i, align 1
  %and14.i = and i32 %46, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool15.not.i, label %if.else25.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end.i73
  %and18.i = and i32 %46, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.else22.i, label %if.then20.i

if.then20.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  %state21.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %24, i32 0, i32 1
  %47 = ptrtoint ptr %state21.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 6, ptr %state21.i, align 1
  %dev_addr_type.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %24, i32 0, i32 13
  %48 = ptrtoint ptr %dev_addr_type.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %dev_addr_type.i, align 1
  %wphys_target_id.i = getelementptr inbounds %struct.esas2r_target, ptr %26, i32 0, i32 12, i32 4
  %49 = ptrtoint ptr %wphys_target_id.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %wphys_target_id.i, align 1
  %curr_phys_id.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %24, i32 0, i32 11
  %51 = ptrtoint ptr %curr_phys_id.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %curr_phys_id.i, align 2
  br label %if.end29.i

if.else22.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  %call23.i = call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.esas2r_disc_dev_add, i32 noundef 1128) #5
  br label %if.end29.i

if.else25.i:                                      ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #7
  %raid_grp_name.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %24, i32 0, i32 8
  %52 = ptrtoint ptr %raid_grp_name.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %raid_grp_name.i, align 8
  %call26.i = call ptr @esas2r_targ_db_add_raid(ptr noundef %a, ptr noundef %24) #5
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.else25.i, %if.else22.i, %if.then20.i, %if.else.i.if.end29.i_crit_edge, %if.then.i
  %state30.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %24, i32 0, i32 1
  %53 = ptrtoint ptr %state30.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %state30.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp32.i = icmp eq i8 %54, 1
  br i1 %cmp32.i, label %if.then34.i, label %if.end29.i.while.cond.backedge_crit_edge

if.end29.i.while.cond.backedge_crit_edge:         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.backedge

if.then34.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %curr_targ.i62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %curr_targ.i62, align 8
  %incdec.ptr.i74 = getelementptr %struct.esas2r_target, ptr %56, i32 1
  store ptr %incdec.ptr.i74, ptr %curr_targ.i62, align 8
  br label %while.cond.backedge

sw.bb5:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %interrupt_cx, align 4
  %59 = ptrtoint ptr %vrq1.i.i188 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vrq1.i.i188, align 8
  %61 = ptrtoint ptr %sg_table_head.i.i189 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %sg_table_head.i.i189, ptr %sg_table_head.i.i189, align 4
  %62 = ptrtoint ptr %prev.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %sg_table_head.i.i189, ptr %prev.i.i.i190, align 4
  %add.ptr.i.i = getelementptr %union.atto_vda_req, ptr %60, i32 1
  %63 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %add.ptr.i.i, ptr %6, align 8
  %64 = ptrtoint ptr %interrupt_cb.i.i192 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %interrupt_cb.i.i192, align 8
  %65 = ptrtoint ptr %comp_cb.i.i193 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @esas2r_complete_request_cb, ptr %comp_cb.i.i193, align 4
  %66 = ptrtoint ptr %flags.i.i194 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %flags.i.i194, align 8
  %67 = ptrtoint ptr %timeout.i.i195 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %timeout.i.i195, align 4
  %68 = ptrtoint ptr %req_stat.i.i196 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 -2, ptr %req_stat.i.i196, align 1
  %69 = ptrtoint ptr %req_type.i.i197 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %req_type.i.i197, align 2
  %70 = ptrtoint ptr %func_rsp.i.i198 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %func_rsp.i.i198, align 4
  %71 = ptrtoint ptr %arrayidx3.i.i199 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %arrayidx3.i.i199, align 4
  %72 = ptrtoint ptr %vda_req_sz.i.i200 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %vda_req_sz.i.i200, align 2
  %73 = ptrtoint ptr %req_table.i.i201 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %req_table.i.i201, align 4
  %handle.i.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %60, i32 0, i32 5
  %75 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %76 = load i32, ptr %handle.i.i, align 1
  %idxprom.i.i = and i32 %76, 65535
  %arrayidx4.i.i = getelementptr ptr, ptr %74, i32 %idxprom.i.i
  %77 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %rq, ptr %arrayidx4.i.i, align 4
  %78 = ptrtoint ptr %cmd_ref_no.i.i205 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %cmd_ref_no.i.i205, align 2
  %inc.i.i = add i16 %79, 1
  store i16 %inc.i.i, ptr %cmd_ref_no.i.i205, align 2
  %conv10.i.i = zext i16 %79 to i32
  %shl.i.i = shl nuw i32 %conv10.i.i, 16
  %80 = load i32, ptr %handle.i.i, align 1
  %conv13.i.i = and i32 %80, 65535
  %or.i.i = or i32 %conv13.i.i, %shl.i.i
  store i32 %or.i.i, ptr %handle.i.i, align 1
  %function.i.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %60, i32 0, i32 1
  %81 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %function.i.i, align 1
  %sense_len.i.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %60, i32 0, i32 2
  %82 = ptrtoint ptr %sense_len.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 -4, ptr %sense_len.i.i, align 1
  %sg_list_offset.i.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %60, i32 0, i32 4
  %83 = ptrtoint ptr %sg_list_offset.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %sg_list_offset.i.i, align 1
  %chain_offset.i.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %60, i32 0, i32 3
  %84 = ptrtoint ptr %chain_offset.i.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %chain_offset.i.i, align 1
  %flags15.i.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %60, i32 0, i32 6
  %85 = ptrtoint ptr %flags15.i.i to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 0, ptr %flags15.i.i, align 1
  %86 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %60, i32 0, i32 8
  %reserved.i.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %60, i32 0, i32 8, i32 0, i32 3
  %87 = ptrtoint ptr %reserved.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %reserved.i.i, align 1
  %88 = ptrtoint ptr %vrq_md.i.i217 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vrq_md.i.i217, align 4
  %phys_addr.i.i = getelementptr inbounds %struct.esas2r_mem_desc, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %phys_addr.i.i to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %phys_addr.i.i, align 8
  %add.i.i = add i64 %91, 1024
  %92 = call i64 @llvm.bswap.i64(i64 %add.i.i) #5
  %93 = ptrtoint ptr %86 to i32
  call void @__asan_storeN_noabort(i32 %93, i32 8)
  store i64 %92, ptr %86, align 1
  call void @esas2r_build_mgt_req(ptr noundef %a, ptr noundef %rq, i8 noundef zeroext 0, i8 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef 0, ptr noundef null) #5
  %94 = ptrtoint ptr %comp_cb.i.i193 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @esas2r_disc_block_dev_scan_cb, ptr %comp_cb.i.i193, align 4
  %95 = ptrtoint ptr %timeout.i.i195 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 30000, ptr %timeout.i.i195, align 4
  %96 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %58, ptr %interrupt_cx, align 4
  call fastcc void @esas2r_disc_start_request(ptr noundef %a, ptr noundef %rq) #5
  br label %cleanup

sw.bb8:                                           ; preds = %while.body
  %97 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %interrupt_cx, align 4
  %raid_grp_ix.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %98, i32 0, i32 7
  %99 = ptrtoint ptr %raid_grp_ix.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %raid_grp_ix.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %100)
  %cmp.i77 = icmp ugt i8 %100, 31
  br i1 %cmp.i77, label %sw.epilog, label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %raid_grp_ix.i.le = getelementptr inbounds %struct.esas2r_disc_context, ptr %98, i32 0, i32 7
  %101 = ptrtoint ptr %vrq1.i.i188 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %vrq1.i.i188, align 8
  %103 = ptrtoint ptr %sg_table_head.i.i189 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %sg_table_head.i.i189, ptr %sg_table_head.i.i189, align 4
  %104 = ptrtoint ptr %prev.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %sg_table_head.i.i189, ptr %prev.i.i.i190, align 4
  %add.ptr.i.i83 = getelementptr %union.atto_vda_req, ptr %102, i32 1
  %105 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr.i.i83, ptr %6, align 8
  %106 = ptrtoint ptr %interrupt_cb.i.i192 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr null, ptr %interrupt_cb.i.i192, align 8
  %107 = ptrtoint ptr %comp_cb.i.i193 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @esas2r_complete_request_cb, ptr %comp_cb.i.i193, align 4
  %108 = ptrtoint ptr %flags.i.i194 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %flags.i.i194, align 8
  %109 = ptrtoint ptr %timeout.i.i195 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %timeout.i.i195, align 4
  %110 = ptrtoint ptr %req_stat.i.i196 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -2, ptr %req_stat.i.i196, align 1
  %111 = ptrtoint ptr %req_type.i.i197 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 1, ptr %req_type.i.i197, align 2
  %112 = ptrtoint ptr %func_rsp.i.i198 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %func_rsp.i.i198, align 4
  %113 = ptrtoint ptr %arrayidx3.i.i199 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %arrayidx3.i.i199, align 4
  %114 = ptrtoint ptr %vda_req_sz.i.i200 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %vda_req_sz.i.i200, align 2
  %115 = ptrtoint ptr %req_table.i.i201 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %req_table.i.i201, align 4
  %handle.i.i94 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %102, i32 0, i32 5
  %117 = ptrtoint ptr %handle.i.i94 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %118 = load i32, ptr %handle.i.i94, align 1
  %idxprom.i.i95 = and i32 %118, 65535
  %arrayidx4.i.i96 = getelementptr ptr, ptr %116, i32 %idxprom.i.i95
  %119 = ptrtoint ptr %arrayidx4.i.i96 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %rq, ptr %arrayidx4.i.i96, align 4
  %120 = ptrtoint ptr %cmd_ref_no.i.i205 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %cmd_ref_no.i.i205, align 2
  %inc.i.i98 = add i16 %121, 1
  store i16 %inc.i.i98, ptr %cmd_ref_no.i.i205, align 2
  %conv10.i.i99 = zext i16 %121 to i32
  %shl.i.i100 = shl nuw i32 %conv10.i.i99, 16
  %122 = load i32, ptr %handle.i.i94, align 1
  %conv13.i.i101 = and i32 %122, 65535
  %or.i.i102 = or i32 %conv13.i.i101, %shl.i.i100
  store i32 %or.i.i102, ptr %handle.i.i94, align 1
  %function.i.i103 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %102, i32 0, i32 1
  %123 = ptrtoint ptr %function.i.i103 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %function.i.i103, align 1
  %sense_len.i.i104 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %102, i32 0, i32 2
  %124 = ptrtoint ptr %sense_len.i.i104 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 -4, ptr %sense_len.i.i104, align 1
  %sg_list_offset.i.i105 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %102, i32 0, i32 4
  %125 = ptrtoint ptr %sg_list_offset.i.i105 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %sg_list_offset.i.i105, align 1
  %chain_offset.i.i106 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %102, i32 0, i32 3
  %126 = ptrtoint ptr %chain_offset.i.i106 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %chain_offset.i.i106, align 1
  %flags15.i.i107 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %102, i32 0, i32 6
  %127 = ptrtoint ptr %flags15.i.i107 to i32
  call void @__asan_storeN_noabort(i32 %127, i32 4)
  store i32 0, ptr %flags15.i.i107, align 1
  %128 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %102, i32 0, i32 8
  %reserved.i.i108 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %102, i32 0, i32 8, i32 0, i32 3
  %129 = ptrtoint ptr %reserved.i.i108 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %reserved.i.i108, align 1
  %130 = ptrtoint ptr %vrq_md.i.i217 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %vrq_md.i.i217, align 4
  %phys_addr.i.i110 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %phys_addr.i.i110 to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %phys_addr.i.i110, align 8
  %add.i.i111 = add i64 %133, 1024
  %134 = call i64 @llvm.bswap.i64(i64 %add.i.i111) #5
  %135 = ptrtoint ptr %128 to i32
  call void @__asan_storeN_noabort(i32 %135, i32 8)
  store i64 %134, ptr %128, align 1
  %136 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %6, align 8
  %138 = call ptr @memset(ptr %137, i32 0, i32 112)
  %scan_gen.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %98, i32 0, i32 12
  %139 = ptrtoint ptr %scan_gen.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %scan_gen.i, align 8
  call void @esas2r_build_mgt_req(ptr noundef %a, ptr noundef %rq, i8 noundef zeroext 16, i8 noundef zeroext %140, i16 noundef zeroext 0, i32 noundef 112, ptr noundef null) #5
  %141 = ptrtoint ptr %raid_grp_ix.i.le to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %raid_grp_ix.i.le, align 1
  %143 = ptrtoint ptr %137 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %137, align 1
  %144 = ptrtoint ptr %comp_cb.i.i193 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @esas2r_disc_raid_grp_info_cb, ptr %comp_cb.i.i193, align 4
  %145 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %98, ptr %interrupt_cx, align 4
  call fastcc void @esas2r_disc_start_request(ptr noundef %a, ptr noundef %rq) #5
  br label %cleanup

sw.bb11:                                          ; preds = %while.body
  %146 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %interrupt_cx, align 4
  %part_num.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %147, i32 0, i32 6
  %148 = ptrtoint ptr %part_num.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %part_num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %cmp.i114 = icmp slt i8 %149, 0
  br i1 %cmp.i114, label %esas2r_disc_part_info.exit, label %esas2r_disc_part_info.exit.thread

esas2r_disc_part_info.exit.thread:                ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  %part_num.i.le = getelementptr inbounds %struct.esas2r_disc_context, ptr %147, i32 0, i32 6
  %150 = ptrtoint ptr %vrq1.i.i188 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %vrq1.i.i188, align 8
  %152 = ptrtoint ptr %sg_table_head.i.i189 to i32
  call void @__asan_store4_noabort(i32 %152)
  store volatile ptr %sg_table_head.i.i189, ptr %sg_table_head.i.i189, align 4
  %153 = ptrtoint ptr %prev.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %sg_table_head.i.i189, ptr %prev.i.i.i190, align 4
  %add.ptr.i.i121 = getelementptr %union.atto_vda_req, ptr %151, i32 1
  %154 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %add.ptr.i.i121, ptr %6, align 8
  %155 = ptrtoint ptr %interrupt_cb.i.i192 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr null, ptr %interrupt_cb.i.i192, align 8
  %156 = ptrtoint ptr %comp_cb.i.i193 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr @esas2r_complete_request_cb, ptr %comp_cb.i.i193, align 4
  %157 = ptrtoint ptr %flags.i.i194 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %flags.i.i194, align 8
  %158 = ptrtoint ptr %timeout.i.i195 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %timeout.i.i195, align 4
  %159 = ptrtoint ptr %req_stat.i.i196 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 -2, ptr %req_stat.i.i196, align 1
  %160 = ptrtoint ptr %req_type.i.i197 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 1, ptr %req_type.i.i197, align 2
  %161 = ptrtoint ptr %func_rsp.i.i198 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %func_rsp.i.i198, align 4
  %162 = ptrtoint ptr %arrayidx3.i.i199 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %arrayidx3.i.i199, align 4
  %163 = ptrtoint ptr %vda_req_sz.i.i200 to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 0, ptr %vda_req_sz.i.i200, align 2
  %164 = ptrtoint ptr %req_table.i.i201 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %req_table.i.i201, align 4
  %handle.i.i132 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %151, i32 0, i32 5
  %166 = ptrtoint ptr %handle.i.i132 to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %167 = load i32, ptr %handle.i.i132, align 1
  %idxprom.i.i133 = and i32 %167, 65535
  %arrayidx4.i.i134 = getelementptr ptr, ptr %165, i32 %idxprom.i.i133
  %168 = ptrtoint ptr %arrayidx4.i.i134 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %rq, ptr %arrayidx4.i.i134, align 4
  %169 = ptrtoint ptr %cmd_ref_no.i.i205 to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %cmd_ref_no.i.i205, align 2
  %inc.i.i136 = add i16 %170, 1
  store i16 %inc.i.i136, ptr %cmd_ref_no.i.i205, align 2
  %conv10.i.i137 = zext i16 %170 to i32
  %shl.i.i138 = shl nuw i32 %conv10.i.i137, 16
  %171 = load i32, ptr %handle.i.i132, align 1
  %conv13.i.i139 = and i32 %171, 65535
  %or.i.i140 = or i32 %conv13.i.i139, %shl.i.i138
  store i32 %or.i.i140, ptr %handle.i.i132, align 1
  %function.i.i141 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %151, i32 0, i32 1
  %172 = ptrtoint ptr %function.i.i141 to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %function.i.i141, align 1
  %sense_len.i.i142 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %151, i32 0, i32 2
  %173 = ptrtoint ptr %sense_len.i.i142 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 -4, ptr %sense_len.i.i142, align 1
  %sg_list_offset.i.i143 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %151, i32 0, i32 4
  %174 = ptrtoint ptr %sg_list_offset.i.i143 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %sg_list_offset.i.i143, align 1
  %chain_offset.i.i144 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %151, i32 0, i32 3
  %175 = ptrtoint ptr %chain_offset.i.i144 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 0, ptr %chain_offset.i.i144, align 1
  %flags15.i.i145 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %151, i32 0, i32 6
  %176 = ptrtoint ptr %flags15.i.i145 to i32
  call void @__asan_storeN_noabort(i32 %176, i32 4)
  store i32 0, ptr %flags15.i.i145, align 1
  %177 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %151, i32 0, i32 8
  %reserved.i.i146 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %151, i32 0, i32 8, i32 0, i32 3
  %178 = ptrtoint ptr %reserved.i.i146 to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 0, ptr %reserved.i.i146, align 1
  %179 = ptrtoint ptr %vrq_md.i.i217 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %vrq_md.i.i217, align 4
  %phys_addr.i.i148 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %180, i32 0, i32 2
  %181 = ptrtoint ptr %phys_addr.i.i148 to i32
  call void @__asan_load8_noabort(i32 %181)
  %182 = load i64, ptr %phys_addr.i.i148, align 8
  %add.i.i149 = add i64 %182, 1024
  %183 = call i64 @llvm.bswap.i64(i64 %add.i.i149) #5
  %184 = ptrtoint ptr %177 to i32
  call void @__asan_storeN_noabort(i32 %184, i32 8)
  store i64 %183, ptr %177, align 1
  %185 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %6, align 8
  %187 = call ptr @memset(ptr %186, i32 0, i32 88)
  %scan_gen.i150 = getelementptr inbounds %struct.esas2r_disc_context, ptr %147, i32 0, i32 12
  %188 = ptrtoint ptr %scan_gen.i150 to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %scan_gen.i150, align 8
  call void @esas2r_build_mgt_req(ptr noundef %a, ptr noundef %rq, i8 noundef zeroext 48, i8 noundef zeroext %189, i16 noundef zeroext 0, i32 noundef 88, ptr noundef null) #5
  %190 = ptrtoint ptr %part_num.i.le to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %part_num.i.le, align 2
  %192 = ptrtoint ptr %186 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %191, ptr %186, align 1
  %grp_name.i = getelementptr inbounds %struct.atto_vdapart_info, ptr %186, i32 0, i32 1
  %raid_grp_name.i151 = getelementptr inbounds %struct.esas2r_disc_context, ptr %147, i32 0, i32 8
  %193 = call ptr @memcpy(ptr %grp_name.i, ptr %raid_grp_name.i151, i32 15)
  %194 = ptrtoint ptr %comp_cb.i.i193 to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @esas2r_disc_part_info_cb, ptr %comp_cb.i.i193, align 4
  %195 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %147, ptr %interrupt_cx, align 4
  call fastcc void @esas2r_disc_start_request(ptr noundef %a, ptr noundef %rq) #5
  br label %cleanup

esas2r_disc_part_info.exit:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  %state.i115 = getelementptr inbounds %struct.esas2r_disc_context, ptr %147, i32 0, i32 1
  %196 = ptrtoint ptr %state.i115 to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 3, ptr %state.i115, align 1
  %raid_grp_ix.i116 = getelementptr inbounds %struct.esas2r_disc_context, ptr %147, i32 0, i32 7
  %197 = ptrtoint ptr %raid_grp_ix.i116 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %raid_grp_ix.i116, align 1
  %inc.i = add i8 %198, 1
  store i8 %inc.i, ptr %raid_grp_ix.i116, align 1
  br label %while.cond.backedge

sw.bb14:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %199 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %interrupt_cx, align 4
  %201 = ptrtoint ptr %vrq1.i.i188 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %vrq1.i.i188, align 8
  %203 = ptrtoint ptr %sg_table_head.i.i189 to i32
  call void @__asan_store4_noabort(i32 %203)
  store volatile ptr %sg_table_head.i.i189, ptr %sg_table_head.i.i189, align 4
  %204 = ptrtoint ptr %prev.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %sg_table_head.i.i189, ptr %prev.i.i.i190, align 4
  %add.ptr.i.i157 = getelementptr %union.atto_vda_req, ptr %202, i32 1
  %205 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr %add.ptr.i.i157, ptr %6, align 8
  %206 = ptrtoint ptr %interrupt_cb.i.i192 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %interrupt_cb.i.i192, align 8
  %207 = ptrtoint ptr %comp_cb.i.i193 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @esas2r_complete_request_cb, ptr %comp_cb.i.i193, align 4
  %208 = ptrtoint ptr %flags.i.i194 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %flags.i.i194, align 8
  %209 = ptrtoint ptr %timeout.i.i195 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %timeout.i.i195, align 4
  %210 = ptrtoint ptr %req_stat.i.i196 to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 -2, ptr %req_stat.i.i196, align 1
  %211 = ptrtoint ptr %req_type.i.i197 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 1, ptr %req_type.i.i197, align 2
  %212 = ptrtoint ptr %func_rsp.i.i198 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %func_rsp.i.i198, align 4
  %213 = ptrtoint ptr %arrayidx3.i.i199 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 0, ptr %arrayidx3.i.i199, align 4
  %214 = ptrtoint ptr %vda_req_sz.i.i200 to i32
  call void @__asan_store2_noabort(i32 %214)
  store i16 0, ptr %vda_req_sz.i.i200, align 2
  %215 = ptrtoint ptr %req_table.i.i201 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %req_table.i.i201, align 4
  %handle.i.i168 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %202, i32 0, i32 5
  %217 = ptrtoint ptr %handle.i.i168 to i32
  call void @__asan_loadN_noabort(i32 %217, i32 4)
  %218 = load i32, ptr %handle.i.i168, align 1
  %idxprom.i.i169 = and i32 %218, 65535
  %arrayidx4.i.i170 = getelementptr ptr, ptr %216, i32 %idxprom.i.i169
  %219 = ptrtoint ptr %arrayidx4.i.i170 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %rq, ptr %arrayidx4.i.i170, align 4
  %220 = ptrtoint ptr %cmd_ref_no.i.i205 to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %cmd_ref_no.i.i205, align 2
  %inc.i.i172 = add i16 %221, 1
  store i16 %inc.i.i172, ptr %cmd_ref_no.i.i205, align 2
  %conv10.i.i173 = zext i16 %221 to i32
  %shl.i.i174 = shl nuw i32 %conv10.i.i173, 16
  %222 = load i32, ptr %handle.i.i168, align 1
  %conv13.i.i175 = and i32 %222, 65535
  %or.i.i176 = or i32 %conv13.i.i175, %shl.i.i174
  store i32 %or.i.i176, ptr %handle.i.i168, align 1
  %function.i.i177 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %202, i32 0, i32 1
  %223 = ptrtoint ptr %function.i.i177 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 0, ptr %function.i.i177, align 1
  %sense_len.i.i178 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %202, i32 0, i32 2
  %224 = ptrtoint ptr %sense_len.i.i178 to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 -4, ptr %sense_len.i.i178, align 1
  %sg_list_offset.i.i179 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %202, i32 0, i32 4
  %225 = ptrtoint ptr %sg_list_offset.i.i179 to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 0, ptr %sg_list_offset.i.i179, align 1
  %chain_offset.i.i180 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %202, i32 0, i32 3
  %226 = ptrtoint ptr %chain_offset.i.i180 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 0, ptr %chain_offset.i.i180, align 1
  %flags15.i.i181 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %202, i32 0, i32 6
  %227 = ptrtoint ptr %flags15.i.i181 to i32
  call void @__asan_storeN_noabort(i32 %227, i32 4)
  store i32 0, ptr %flags15.i.i181, align 1
  %228 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %202, i32 0, i32 8
  %reserved.i.i182 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %202, i32 0, i32 8, i32 0, i32 3
  %229 = ptrtoint ptr %reserved.i.i182 to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 0, ptr %reserved.i.i182, align 1
  %230 = ptrtoint ptr %vrq_md.i.i217 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %vrq_md.i.i217, align 4
  %phys_addr.i.i184 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %231, i32 0, i32 2
  %232 = ptrtoint ptr %phys_addr.i.i184 to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %phys_addr.i.i184, align 8
  %add.i.i185 = add i64 %233, 1024
  %234 = call i64 @llvm.bswap.i64(i64 %add.i.i185) #5
  %235 = ptrtoint ptr %228 to i32
  call void @__asan_storeN_noabort(i32 %235, i32 8)
  store i64 %234, ptr %228, align 1
  %236 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %6, align 8
  %238 = call ptr @memset(ptr %237, i32 0, i32 112)
  %scan_gen.i186 = getelementptr inbounds %struct.esas2r_disc_context, ptr %200, i32 0, i32 12
  %239 = ptrtoint ptr %scan_gen.i186 to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %scan_gen.i186, align 8
  %dev_ix.i = getelementptr inbounds %struct.esas2r_disc_context, ptr %200, i32 0, i32 5
  %241 = ptrtoint ptr %dev_ix.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %dev_ix.i, align 4
  call void @esas2r_build_mgt_req(ptr noundef %a, ptr noundef %rq, i8 noundef zeroext 5, i8 noundef zeroext %240, i16 noundef zeroext %242, i32 noundef 112, ptr noundef null) #5
  %243 = ptrtoint ptr %comp_cb.i.i193 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr @esas2r_disc_passthru_dev_info_cb, ptr %comp_cb.i.i193, align 4
  %244 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %200, ptr %interrupt_cx, align 4
  call fastcc void @esas2r_disc_start_request(ptr noundef %a, ptr noundef %rq) #5
  br label %cleanup

sw.bb17:                                          ; preds = %while.body
  %245 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %interrupt_cx, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %sgc.i) #5
  %247 = call ptr @memset(ptr %5, i32 255, i32 32)
  %248 = ptrtoint ptr %vrq1.i.i188 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %vrq1.i.i188, align 8
  %250 = ptrtoint ptr %sg_table_head.i.i189 to i32
  call void @__asan_store4_noabort(i32 %250)
  store volatile ptr %sg_table_head.i.i189, ptr %sg_table_head.i.i189, align 4
  %251 = ptrtoint ptr %prev.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %sg_table_head.i.i189, ptr %prev.i.i.i190, align 4
  %add.ptr.i.i191 = getelementptr %union.atto_vda_req, ptr %249, i32 1
  %252 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %add.ptr.i.i191, ptr %6, align 8
  %253 = ptrtoint ptr %interrupt_cb.i.i192 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr null, ptr %interrupt_cb.i.i192, align 8
  %254 = ptrtoint ptr %comp_cb.i.i193 to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr @esas2r_complete_request_cb, ptr %comp_cb.i.i193, align 4
  %255 = ptrtoint ptr %flags.i.i194 to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 0, ptr %flags.i.i194, align 8
  %256 = ptrtoint ptr %timeout.i.i195 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 0, ptr %timeout.i.i195, align 4
  %257 = ptrtoint ptr %req_stat.i.i196 to i32
  call void @__asan_store1_noabort(i32 %257)
  store i8 -2, ptr %req_stat.i.i196, align 1
  %258 = ptrtoint ptr %req_type.i.i197 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 1, ptr %req_type.i.i197, align 2
  %259 = ptrtoint ptr %func_rsp.i.i198 to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 0, ptr %func_rsp.i.i198, align 4
  %260 = ptrtoint ptr %arrayidx3.i.i199 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 0, ptr %arrayidx3.i.i199, align 4
  %261 = ptrtoint ptr %vda_req_sz.i.i200 to i32
  call void @__asan_store2_noabort(i32 %261)
  store i16 0, ptr %vda_req_sz.i.i200, align 2
  %262 = ptrtoint ptr %req_table.i.i201 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %req_table.i.i201, align 4
  %handle.i.i202 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %249, i32 0, i32 5
  %264 = ptrtoint ptr %handle.i.i202 to i32
  call void @__asan_loadN_noabort(i32 %264, i32 4)
  %265 = load i32, ptr %handle.i.i202, align 1
  %idxprom.i.i203 = and i32 %265, 65535
  %arrayidx4.i.i204 = getelementptr ptr, ptr %263, i32 %idxprom.i.i203
  %266 = ptrtoint ptr %arrayidx4.i.i204 to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %rq, ptr %arrayidx4.i.i204, align 4
  %267 = ptrtoint ptr %cmd_ref_no.i.i205 to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %cmd_ref_no.i.i205, align 2
  %inc.i.i206 = add i16 %268, 1
  store i16 %inc.i.i206, ptr %cmd_ref_no.i.i205, align 2
  %conv10.i.i207 = zext i16 %268 to i32
  %shl.i.i208 = shl nuw i32 %conv10.i.i207, 16
  %269 = load i32, ptr %handle.i.i202, align 1
  %conv13.i.i209 = and i32 %269, 65535
  %or.i.i210 = or i32 %conv13.i.i209, %shl.i.i208
  store i32 %or.i.i210, ptr %handle.i.i202, align 1
  %function.i.i211 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %249, i32 0, i32 1
  %270 = ptrtoint ptr %function.i.i211 to i32
  call void @__asan_store1_noabort(i32 %270)
  store i8 0, ptr %function.i.i211, align 1
  %sense_len.i.i212 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %249, i32 0, i32 2
  %271 = ptrtoint ptr %sense_len.i.i212 to i32
  call void @__asan_store1_noabort(i32 %271)
  store i8 -4, ptr %sense_len.i.i212, align 1
  %sg_list_offset.i.i213 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %249, i32 0, i32 4
  %272 = ptrtoint ptr %sg_list_offset.i.i213 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 0, ptr %sg_list_offset.i.i213, align 1
  %chain_offset.i.i214 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %249, i32 0, i32 3
  %273 = ptrtoint ptr %chain_offset.i.i214 to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 0, ptr %chain_offset.i.i214, align 1
  %flags15.i.i215 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %249, i32 0, i32 6
  %274 = ptrtoint ptr %flags15.i.i215 to i32
  call void @__asan_storeN_noabort(i32 %274, i32 4)
  store i32 0, ptr %flags15.i.i215, align 1
  %275 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %249, i32 0, i32 8
  %reserved.i.i216 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %249, i32 0, i32 8, i32 0, i32 3
  %276 = ptrtoint ptr %reserved.i.i216 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 0, ptr %reserved.i.i216, align 1
  %277 = ptrtoint ptr %vrq_md.i.i217 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %vrq_md.i.i217, align 4
  %phys_addr.i.i218 = getelementptr inbounds %struct.esas2r_mem_desc, ptr %278, i32 0, i32 2
  %279 = ptrtoint ptr %phys_addr.i.i218 to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %phys_addr.i.i218, align 8
  %add.i.i219 = add i64 %280, 1024
  %281 = call i64 @llvm.bswap.i64(i64 %add.i.i219) #5
  %282 = ptrtoint ptr %275 to i32
  call void @__asan_storeN_noabort(i32 %282, i32 8)
  store i64 %281, ptr %275, align 1
  %283 = ptrtoint ptr %cur_offset.i to i32
  call void @__asan_store4_noabort(i32 %283)
  store ptr null, ptr %cur_offset.i, align 4
  %284 = ptrtoint ptr %get_phys_addr.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr @esas2r_disc_get_phys_addr, ptr %get_phys_addr.i, align 4
  %285 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 328, ptr %length.i, align 4
  %286 = ptrtoint ptr %vrq1.i.i188 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %vrq1.i.i188, align 8
  %288 = getelementptr inbounds %struct.atto_vda_ioctl_req, ptr %287, i32 0, i32 8
  %289 = ptrtoint ptr %sgc.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %a, ptr %sgc.i, align 4
  %290 = ptrtoint ptr %first_req.i.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr %rq, ptr %first_req.i.i, align 4
  %add.ptr1.i.i = getelementptr i8, ptr %287, i32 116
  %291 = ptrtoint ptr %limit.i.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store ptr %add.ptr1.i.i, ptr %limit.i.i, align 4
  %292 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %292)
  store ptr %288, ptr %5, align 4
  %293 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %288, ptr %7, align 4
  %sg_list_offset12.i.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %287, i32 0, i32 4
  %294 = ptrtoint ptr %sg_list_offset12.i.i to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 32, ptr %sg_list_offset12.i.i, align 1
  %295 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store ptr null, ptr %chain.i.i, align 4
  %296 = load i32, ptr %length.i, align 4
  call void @esas2r_build_ioctl_req(ptr noundef %a, ptr noundef %rq, i32 noundef %296, i8 noundef zeroext 0) #5
  %297 = ptrtoint ptr %vrq1.i.i188 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %vrq1.i.i188, align 8
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_loadN_noabort(i32 %299, i32 4)
  %300 = load i32, ptr %298, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %cmp.i.i = icmp eq i32 %300, 0
  br i1 %cmp.i.i, label %sw.bb17.esas2r_disc_passthru_dev_addr.exit.thread_crit_edge, label %esas2r_build_sg_list.exit.i, !prof !25

sw.bb17.esas2r_disc_passthru_dev_addr.exit.thread_crit_edge: ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_passthru_dev_addr.exit.thread

esas2r_build_sg_list.exit.i:                      ; preds = %sw.bb17
  %301 = ptrtoint ptr %build_sgl.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %build_sgl.i.i, align 8
  %call.i.i = call zeroext i1 %302(ptr noundef %a, ptr noundef nonnull %sgc.i) #5
  br i1 %call.i.i, label %esas2r_build_sg_list.exit.i.esas2r_disc_passthru_dev_addr.exit.thread_crit_edge, label %if.then.i220

esas2r_build_sg_list.exit.i.esas2r_disc_passthru_dev_addr.exit.thread_crit_edge: ; preds = %esas2r_build_sg_list.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_passthru_dev_addr.exit.thread

if.then.i220:                                     ; preds = %esas2r_build_sg_list.exit.i
  %303 = ptrtoint ptr %sg_table_head.i.i189 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load volatile ptr, ptr %sg_table_head.i.i189, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %304, %sg_table_head.i.i189
  br i1 %cmp.i.not.i.i.i, label %if.then.i220.esas2r_disc_passthru_dev_addr.exit_crit_edge, label %do.body1.i.i.i

if.then.i220.esas2r_disc_passthru_dev_addr.exit_crit_edge: ; preds = %if.then.i220
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_passthru_dev_addr.exit

do.body1.i.i.i:                                   ; preds = %if.then.i220
  %call3.i.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %sg_list_lock.i.i.i) #5
  %305 = ptrtoint ptr %sg_table_head.i.i189 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load volatile ptr, ptr %sg_table_head.i.i189, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %306, %sg_table_head.i.i189
  br i1 %cmp.i.not.i.i.i.i, label %do.body1.i.i.i.list_splice_tail_init.exit.i.i.i_crit_edge, label %if.then.i.i.i.i

do.body1.i.i.i.list_splice_tail_init.exit.i.i.i_crit_edge: ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_splice_tail_init.exit.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %307 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %prev.i.i.i.i, align 4
  %309 = ptrtoint ptr %prev.i.i.i190 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %prev.i.i.i190, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %306, i32 0, i32 1
  %311 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store ptr %308, ptr %prev3.i.i.i.i.i, align 4
  %312 = ptrtoint ptr %308 to i32
  call void @__asan_store4_noabort(i32 %312)
  store ptr %306, ptr %308, align 4
  %313 = ptrtoint ptr %310 to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %free_sg_list_head.i.i.i, ptr %310, align 4
  store ptr %310, ptr %prev.i.i.i.i, align 4
  %314 = ptrtoint ptr %sg_table_head.i.i189 to i32
  call void @__asan_store4_noabort(i32 %314)
  store volatile ptr %sg_table_head.i.i189, ptr %sg_table_head.i.i189, align 4
  store ptr %sg_table_head.i.i189, ptr %prev.i.i.i190, align 4
  br label %list_splice_tail_init.exit.i.i.i

list_splice_tail_init.exit.i.i.i:                 ; preds = %if.then.i.i.i.i, %do.body1.i.i.i.list_splice_tail_init.exit.i.i.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sg_list_lock.i.i.i, i32 noundef %call3.i.i.i) #5
  br label %esas2r_disc_passthru_dev_addr.exit

esas2r_disc_passthru_dev_addr.exit.thread:        ; preds = %esas2r_build_sg_list.exit.i.esas2r_disc_passthru_dev_addr.exit.thread_crit_edge, %sw.bb17.esas2r_disc_passthru_dev_addr.exit.thread_crit_edge
  %315 = ptrtoint ptr %comp_cb.i.i193 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr @esas2r_disc_passthru_dev_addr_cb, ptr %comp_cb.i.i193, align 4
  %316 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr %246, ptr %interrupt_cx, align 4
  %disc_buffer.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 44
  %317 = ptrtoint ptr %disc_buffer.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %disc_buffer.i, align 8
  %function.i = getelementptr inbounds %struct.atto_ioctl, ptr %318, i32 0, i32 1
  %319 = call ptr @memset(ptr %318, i32 0, i32 512)
  %320 = ptrtoint ptr %function.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 5, ptr %function.i, align 1
  %flags.i = getelementptr inbounds %struct.atto_ioctl, ptr %318, i32 0, i32 3
  %321 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 1, ptr %flags.i, align 1
  %curr_phys_id.i221 = getelementptr inbounds %struct.esas2r_disc_context, ptr %246, i32 0, i32 11
  %322 = ptrtoint ptr %curr_phys_id.i221 to i32
  call void @__asan_load2_noabort(i32 %322)
  %323 = load i16, ptr %curr_phys_id.i221, align 2
  %conv.i = zext i16 %323 to i32
  %324 = call i32 @llvm.bswap.i32(i32 %conv.i) #5
  %data.i = getelementptr inbounds %struct.atto_ioctl, ptr %318, i32 0, i32 6
  %target_id.i = getelementptr inbounds %struct.atto_ioctl, ptr %318, i32 0, i32 6, i32 0, i32 0, i32 2
  %325 = ptrtoint ptr %target_id.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %324, ptr %target_id.i, align 4
  %dev_addr_type.i222 = getelementptr inbounds %struct.esas2r_disc_context, ptr %246, i32 0, i32 13
  %326 = ptrtoint ptr %dev_addr_type.i222 to i32
  call void @__asan_load1_noabort(i32 %326)
  %327 = load i8, ptr %dev_addr_type.i222, align 1
  %328 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %328)
  store i8 %327, ptr %data.i, align 4
  call fastcc void @esas2r_disc_start_request(ptr noundef %a, ptr noundef %rq) #5
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sgc.i) #5
  br label %cleanup

esas2r_disc_passthru_dev_addr.exit:               ; preds = %list_splice_tail_init.exit.i.i.i, %if.then.i220.esas2r_disc_passthru_dev_addr.exit_crit_edge
  %329 = ptrtoint ptr %req_table.i.i201 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %req_table.i.i201, align 4
  %331 = ptrtoint ptr %vrq1.i.i188 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %vrq1.i.i188, align 8
  %handle.i34.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %332, i32 0, i32 5
  %333 = ptrtoint ptr %handle.i34.i to i32
  call void @__asan_loadN_noabort(i32 %333, i32 4)
  %334 = load i32, ptr %handle.i34.i, align 1
  %idxprom.i35.i = and i32 %334, 65535
  %arrayidx.i.i = getelementptr ptr, ptr %330, i32 %idxprom.i35.i
  %335 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %335)
  store ptr null, ptr %arrayidx.i.i, align 4
  %336 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr null, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %sgc.i) #5
  br label %while.cond.backedge

sw.bb20:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %and23 = and i16 %8, -4
  %337 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %337)
  store i16 %and23, ptr %flags, align 2
  br label %while.cond.backedge

sw.default:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %338 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 -1, ptr %state, align 1
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %sw.epilog, %sw.default, %sw.bb20, %esas2r_disc_passthru_dev_addr.exit, %esas2r_disc_part_info.exit, %if.then34.i, %if.end29.i.while.cond.backedge_crit_edge, %esas2r_disc_dev_remove.exit
  %339 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %339)
  %340 = load i16, ptr %flags, align 2
  %341 = and i16 %340, 3
  %tobool.not = icmp eq i16 %341, 0
  br i1 %tobool.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

sw.epilog:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  %state.i78 = getelementptr inbounds %struct.esas2r_disc_context, ptr %98, i32 0, i32 1
  %342 = ptrtoint ptr %state.i78 to i32
  call void @__asan_store1_noabort(i32 %342)
  store i8 -1, ptr %state.i78, align 1
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  %343 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_store4_noabort(i32 %343)
  store ptr null, ptr %interrupt_cx, align 4
  %flags28 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %344 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load volatile i32, ptr %flags28, align 4
  %346 = and i32 %345, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %346)
  %tobool30.not = icmp eq i32 %346, 0
  br i1 %tobool30.not, label %if.then31, label %while.end.if.end32_crit_edge

while.end.if.end32_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then31:                                        ; preds = %while.end
  %queue_lock.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 14
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #5
  %defer_list.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 19
  %347 = ptrtoint ptr %defer_list.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %element.032.i = load ptr, ptr %defer_list.i, align 4
  %cmp.i.not33.i = icmp eq ptr %element.032.i, %defer_list.i
  br i1 %cmp.i.not33.i, label %if.then31.esas2r_disc_fix_curr_requests.exit_crit_edge, label %if.then31.for.body.i225_crit_edge

if.then31.for.body.i225_crit_edge:                ; preds = %if.then31
  br label %for.body.i225

if.then31.esas2r_disc_fix_curr_requests.exit_crit_edge: ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_fix_curr_requests.exit

for.body.i225:                                    ; preds = %for.inc.i230.for.body.i225_crit_edge, %if.then31.for.body.i225_crit_edge
  %element.034.i = phi ptr [ %element.0.i, %for.inc.i230.for.body.i225_crit_edge ], [ %element.032.i, %if.then31.for.body.i225_crit_edge ]
  %vrq.i = getelementptr i8, ptr %element.034.i, i32 8
  %348 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %vrq.i, align 8
  %function.i224 = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %349, i32 0, i32 1
  %350 = ptrtoint ptr %function.i224 to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %function.i224, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %cmp9.i = icmp eq i8 %351, 0
  br i1 %cmp9.i, label %if.then.i227, label %for.body.i225.for.inc.i230_crit_edge

for.body.i225.for.inc.i230_crit_edge:             ; preds = %for.body.i225
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i230

if.then.i227:                                     ; preds = %for.body.i225
  %target_id.i226 = getelementptr i8, ptr %element.034.i, i32 40
  %352 = ptrtoint ptr %target_id.i226 to i32
  call void @__asan_load2_noabort(i32 %352)
  %353 = load i16, ptr %target_id.i226, align 8
  %conv11.i = zext i16 %353 to i32
  %target_state.i = getelementptr %struct.esas2r_target, ptr %a, i32 %conv11.i, i32 2
  %354 = ptrtoint ptr %target_state.i to i32
  call void @__asan_load1_noabort(i32 %354)
  %355 = load i8, ptr %target_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %355)
  %cmp14.i = icmp eq i8 %355, 5
  br i1 %cmp14.i, label %if.then16.i228, label %if.else.i229

if.then16.i228:                                   ; preds = %if.then.i227
  call void @__sanitizer_cov_trace_pc() #7
  %virt_targ_id.i = getelementptr %struct.esas2r_target, ptr %a, i32 %conv11.i, i32 7
  %356 = ptrtoint ptr %virt_targ_id.i to i32
  call void @__asan_load2_noabort(i32 %356)
  %357 = load i16, ptr %virt_targ_id.i, align 8
  %358 = call i16 @llvm.bswap.i16(i16 %357) #5
  %target_id18.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %349, i32 0, i32 8, i32 0, i32 1
  %359 = ptrtoint ptr %target_id18.i to i32
  call void @__asan_storeN_noabort(i32 %359, i32 2)
  store i16 %358, ptr %target_id18.i, align 1
  br label %for.inc.i230

if.else.i229:                                     ; preds = %if.then.i227
  call void @__sanitizer_cov_trace_pc() #7
  %req_stat.i = getelementptr i8, ptr %element.034.i, i32 65
  %360 = ptrtoint ptr %req_stat.i to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 3, ptr %req_stat.i, align 1
  br label %for.inc.i230

for.inc.i230:                                     ; preds = %if.else.i229, %if.then16.i228, %for.body.i225.for.inc.i230_crit_edge
  %361 = ptrtoint ptr %element.034.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %element.0.i = load ptr, ptr %element.034.i, align 4
  %cmp.i.not.i = icmp eq ptr %element.0.i, %defer_list.i
  br i1 %cmp.i.not.i, label %for.inc.i230.esas2r_disc_fix_curr_requests.exit_crit_edge, label %for.inc.i230.for.body.i225_crit_edge

for.inc.i230.for.body.i225_crit_edge:             ; preds = %for.inc.i230
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i225

for.inc.i230.esas2r_disc_fix_curr_requests.exit_crit_edge: ; preds = %for.inc.i230
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_fix_curr_requests.exit

esas2r_disc_fix_curr_requests.exit:               ; preds = %for.inc.i230.esas2r_disc_fix_curr_requests.exit_crit_edge, %if.then31.esas2r_disc_fix_curr_requests.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call2.i) #5
  br label %if.end32

if.end32:                                         ; preds = %esas2r_disc_fix_curr_requests.exit, %while.end.if.end32_crit_edge
  call void @_clear_bit(i32 noundef 22, ptr noundef %flags28) #5
  %call34 = call zeroext i1 @esas2r_disc_start_port(ptr noundef %a)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %esas2r_disc_passthru_dev_addr.exit.thread, %sw.bb14, %esas2r_disc_part_info.exit.thread, %sw.epilog.thread, %sw.bb5
  %retval.0 = phi i1 [ %call34, %if.end32 ], [ true, %sw.bb5 ], [ true, %sw.bb14 ], [ true, %sw.epilog.thread ], [ true, %esas2r_disc_part_info.exit.thread ], [ true, %esas2r_disc_passthru_dev_addr.exit.thread ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @esas2r_targ_db_get_tgt_cnt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_disc_queue_event(ptr noundef %a, i8 noundef zeroext %disc_evt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_ctx = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 43
  %0 = ptrtoint ptr %disc_ctx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %disc_ctx, align 8
  %or11 = or i8 %1, %disc_evt
  store i8 %or11, ptr %disc_ctx, align 8
  %flags = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags, align 4
  %4 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call zeroext i1 @esas2r_disc_start_port(ptr noundef %a)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_disc_local_start_request(ptr noundef %a, ptr noundef %rq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %req_list = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %active_list = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 18
  %prev.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 18, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req_list, ptr noundef %1, ptr noundef %active_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %req_list, ptr %prev.i, align 4
  %3 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %active_list, ptr %req_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %req_list, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @esas2r_start_vda_request(ptr noundef %a, ptr noundef %rq) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_start_vda_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esas2r_targ_db_find_by_virt_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_targ_db_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @esas2r_log(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esas2r_targ_db_add_raid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_build_mgt_req(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_disc_block_dev_scan_cb(ptr noundef %a, ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %0 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_cx, align 4
  %mem_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock) #5
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %2 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp6 = icmp eq i8 %3, 0
  br i1 %cmp6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %func_rsp = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %scan_generation = getelementptr inbounds %struct.atto_vda_mgmt_rsp, ptr %func_rsp, i32 0, i32 2
  %4 = ptrtoint ptr %scan_generation to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %scan_generation, align 2
  %scan_gen = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %scan_gen to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %scan_gen, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %state, align 1
  %raid_grp_ix = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %raid_grp_ix to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %raid_grp_ix, align 1
  %sg_table_head.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6
  %9 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %10, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i, label %if.end.esas2r_rq_destroy_request.exit_crit_edge, label %do.body1.i.i

if.end.esas2r_rq_destroy_request.exit_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_rq_destroy_request.exit

do.body1.i.i:                                     ; preds = %if.end
  %sg_list_lock.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 13
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sg_list_lock.i.i) #5
  %11 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %12, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i.i, label %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %free_sg_list_head.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16
  %prev.i.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6, i32 1
  %15 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %14, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %free_sg_list_head.i.i, ptr %16, align 4
  store ptr %16, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %sg_table_head.i.i, ptr %sg_table_head.i.i, align 4
  store ptr %sg_table_head.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sg_list_lock.i.i, i32 noundef %call3.i.i) #5
  br label %esas2r_rq_destroy_request.exit

esas2r_rq_destroy_request.exit:                   ; preds = %list_splice_tail_init.exit.i.i, %if.end.esas2r_rq_destroy_request.exit_crit_edge
  %req_table.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 20
  %21 = ptrtoint ptr %req_table.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %req_table.i, align 4
  %vrq.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %23 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vrq.i, align 8
  %handle.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %handle.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %26 = load i32, ptr %handle.i, align 1
  %idxprom.i = and i32 %26, 65535
  %arrayidx.i = getelementptr ptr, ptr %22, i32 %idxprom.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.i, align 4
  %28 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %28, align 8
  %flags8 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %flags8 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %flags8, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %tobool.not = icmp sgt i16 %31, -1
  br i1 %tobool.not, label %if.then10, label %esas2r_rq_destroy_request.exit.if.end12_crit_edge

esas2r_rq_destroy_request.exit.if.end12_crit_edge: ; preds = %esas2r_rq_destroy_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %esas2r_rq_destroy_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call fastcc zeroext i1 @esas2r_disc_continue(ptr noundef %a, ptr noundef %rq)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %esas2r_rq_destroy_request.exit.if.end12_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @esas2r_disc_start_request(ptr noundef %a, ptr noundef %rq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 8
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %1)
  %cmp = icmp ult i32 %1, 5000
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5000, ptr %timeout, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %req_type = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 10
  %3 = ptrtoint ptr %req_type to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %req_type, align 2
  %queue_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 14
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #5
  %flags7 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %4 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags7, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags7, align 4
  %9 = and i32 %8, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then12:                                        ; preds = %land.lhs.true
  %req_list.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %active_list.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 18
  %prev.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 18, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req_list.i, ptr noundef %11, ptr noundef %active_list.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then12.esas2r_disc_local_start_request.exit_crit_edge

if.then12.esas2r_disc_local_start_request.exit_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_disc_local_start_request.exit

if.end.i.i.i:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %req_list.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %req_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %active_list.i, ptr %req_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %req_list.i, ptr %11, align 4
  br label %esas2r_disc_local_start_request.exit

esas2r_disc_local_start_request.exit:             ; preds = %if.end.i.i.i, %if.then12.esas2r_disc_local_start_request.exit_crit_edge
  tail call void @esas2r_start_vda_request(ptr noundef %a, ptr noundef %rq) #5
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %req_list = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1
  %defer_list = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 19
  %prev.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 19, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %req_list, ptr noundef %17, ptr noundef %defer_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %req_list, ptr %prev.i, align 4
  %19 = ptrtoint ptr %req_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %defer_list, ptr %req_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %req_list, ptr %17, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end.i.i, %if.else.if.end13_crit_edge, %esas2r_disc_local_start_request.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_complete_request_cb(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_disc_raid_grp_info_cb(ptr noundef %a, ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %0 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_cx, align 4
  %mem_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock) #5
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %2 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %req_stat, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %3, label %if.then30 [
    i8 -123, label %if.then
    i8 0, label %if.then12
    i8 -120, label %entry.if.end34_crit_edge
  ]

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %func_rsp = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %scan_generation = getelementptr inbounds %struct.atto_vda_mgmt_rsp, ptr %func_rsp, i32 0, i32 2
  %5 = ptrtoint ptr %scan_generation to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %scan_generation, align 2
  %scan_gen = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %scan_gen to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %scan_gen, align 8
  %raid_grp_ix = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %raid_grp_ix to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %raid_grp_ix, align 1
  br label %done

if.then12:                                        ; preds = %entry
  %9 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = getelementptr inbounds %struct.atto_vda_grp_info, ptr %11, i32 0, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %.off = add i8 %14, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %raid_grp_ix20 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %raid_grp_ix20 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %raid_grp_ix20, align 1
  %inc = add i8 %16, 1
  store i8 %inc, ptr %raid_grp_ix20, align 1
  br label %done

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %raid_grp_name = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 8
  %grp_name = getelementptr inbounds %struct.atto_vda_grp_info, ptr %11, i32 0, i32 1
  %17 = call ptr @memcpy(ptr %raid_grp_name, ptr %grp_name, i32 15)
  %interleave = getelementptr inbounds %struct.atto_vda_grp_info, ptr %11, i32 0, i32 4
  %18 = ptrtoint ptr %interleave to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %interleave, align 1
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %interleave22 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %interleave22 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %interleave22, align 4
  %block_size = getelementptr inbounds %struct.atto_vda_grp_info, ptr %11, i32 0, i32 3
  %22 = ptrtoint ptr %block_size to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %block_size, align 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %block_size23 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %block_size23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %block_size23, align 8
  %state = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %state, align 1
  %part_num = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %part_num to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %part_num, align 2
  br label %done

if.then30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv5 = zext i8 %3 to i32
  %call33 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %conv5) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %entry.if.end34_crit_edge
  %dev_ix = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %dev_ix to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %dev_ix, align 4
  %state35 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %state35 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 5, ptr %state35, align 1
  br label %done

done:                                             ; preds = %if.end34, %if.else, %if.then19, %if.then
  %sg_table_head.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6
  %30 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %31, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i, label %done.esas2r_rq_destroy_request.exit_crit_edge, label %do.body1.i.i

done.esas2r_rq_destroy_request.exit_crit_edge:    ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_rq_destroy_request.exit

do.body1.i.i:                                     ; preds = %done
  %sg_list_lock.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 13
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sg_list_lock.i.i) #5
  %32 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %33, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i.i, label %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %free_sg_list_head.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16
  %prev.i.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %33, ptr %35, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %free_sg_list_head.i.i, ptr %37, align 4
  store ptr %37, ptr %prev.i.i.i, align 4
  %41 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %sg_table_head.i.i, ptr %sg_table_head.i.i, align 4
  store ptr %sg_table_head.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sg_list_lock.i.i, i32 noundef %call3.i.i) #5
  br label %esas2r_rq_destroy_request.exit

esas2r_rq_destroy_request.exit:                   ; preds = %list_splice_tail_init.exit.i.i, %done.esas2r_rq_destroy_request.exit_crit_edge
  %req_table.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 20
  %42 = ptrtoint ptr %req_table.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %req_table.i, align 4
  %vrq.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %44 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vrq.i, align 8
  %handle.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %handle.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %handle.i, align 1
  %idxprom.i = and i32 %47, 65535
  %arrayidx.i = getelementptr ptr, ptr %43, i32 %idxprom.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx.i, align 4
  %49 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %49, align 8
  %flags37 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %flags37 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags37, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %52)
  %tobool.not = icmp sgt i16 %52, -1
  br i1 %tobool.not, label %if.then39, label %esas2r_rq_destroy_request.exit.if.end41_crit_edge

esas2r_rq_destroy_request.exit.if.end41_crit_edge: ; preds = %esas2r_rq_destroy_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then39:                                        ; preds = %esas2r_rq_destroy_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = tail call fastcc zeroext i1 @esas2r_disc_continue(ptr noundef %a, ptr noundef %rq)
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %esas2r_rq_destroy_request.exit.if.end41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_disc_part_info_cb(ptr noundef %a, ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %0 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_cx, align 4
  %mem_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock) #5
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %2 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %req_stat, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %3, label %if.then20 [
    i8 -123, label %if.then
    i8 0, label %if.then12
    i8 -104, label %entry.if.end_crit_edge
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %func_rsp = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %scan_generation = getelementptr inbounds %struct.atto_vda_mgmt_rsp, ptr %func_rsp, i32 0, i32 2
  %5 = ptrtoint ptr %scan_generation to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %scan_generation, align 2
  %scan_gen = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %scan_gen to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %scan_gen, align 8
  %raid_grp_ix = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %raid_grp_ix to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %raid_grp_ix, align 1
  %state = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %state, align 1
  br label %if.end28

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %part_num = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %part_num to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %part_num, align 2
  %target_id = getelementptr inbounds %struct.atto_vdapart_info, ptr %12, i32 0, i32 5
  %16 = ptrtoint ptr %target_id to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %target_id, align 1
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  %curr_virt_id = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %curr_virt_id to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %curr_virt_id, align 4
  %call13 = tail call ptr @esas2r_targ_db_add_raid(ptr noundef %a, ptr noundef %1) #5
  %20 = ptrtoint ptr %part_num to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %part_num, align 2
  %inc = add i8 %21, 1
  store i8 %inc, ptr %part_num, align 2
  br label %if.end28

if.then20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv5 = zext i8 %3 to i32
  %call23 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %conv5) #5
  br label %if.end

if.end:                                           ; preds = %if.then20, %entry.if.end_crit_edge
  %state24 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %state24 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %state24, align 1
  %raid_grp_ix25 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %raid_grp_ix25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %raid_grp_ix25, align 1
  %inc26 = add i8 %24, 1
  store i8 %inc26, ptr %raid_grp_ix25, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.end, %if.then12, %if.then
  %sg_table_head.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6
  %25 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %26, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i, label %if.end28.esas2r_rq_destroy_request.exit_crit_edge, label %do.body1.i.i

if.end28.esas2r_rq_destroy_request.exit_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_rq_destroy_request.exit

do.body1.i.i:                                     ; preds = %if.end28
  %sg_list_lock.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 13
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sg_list_lock.i.i) #5
  %27 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %28, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i.i, label %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %free_sg_list_head.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16
  %prev.i.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %28, ptr %30, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %free_sg_list_head.i.i, ptr %32, align 4
  store ptr %32, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %sg_table_head.i.i, ptr %sg_table_head.i.i, align 4
  store ptr %sg_table_head.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sg_list_lock.i.i, i32 noundef %call3.i.i) #5
  br label %esas2r_rq_destroy_request.exit

esas2r_rq_destroy_request.exit:                   ; preds = %list_splice_tail_init.exit.i.i, %if.end28.esas2r_rq_destroy_request.exit_crit_edge
  %req_table.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 20
  %37 = ptrtoint ptr %req_table.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %req_table.i, align 4
  %vrq.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %39 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vrq.i, align 8
  %handle.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %handle.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %handle.i, align 1
  %idxprom.i = and i32 %42, 65535
  %arrayidx.i = getelementptr ptr, ptr %38, i32 %idxprom.i
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx.i, align 4
  %44 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %44, align 8
  %flags29 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %flags29 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %flags29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %47)
  %tobool.not = icmp sgt i16 %47, -1
  br i1 %tobool.not, label %if.then31, label %esas2r_rq_destroy_request.exit.if.end33_crit_edge

esas2r_rq_destroy_request.exit.if.end33_crit_edge: ; preds = %esas2r_rq_destroy_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then31:                                        ; preds = %esas2r_rq_destroy_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call fastcc zeroext i1 @esas2r_disc_continue(ptr noundef %a, ptr noundef %rq)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %esas2r_rq_destroy_request.exit.if.end33_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_disc_passthru_dev_info_cb(ptr noundef %a, ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %0 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_cx, align 4
  %mem_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock) #5
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %2 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %req_stat, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %3, label %if.then25 [
    i8 -123, label %if.then
    i8 0, label %if.then12
    i8 -127, label %entry.if.end29_crit_edge
  ]

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %func_rsp = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12
  %scan_generation = getelementptr inbounds %struct.atto_vda_mgmt_rsp, ptr %func_rsp, i32 0, i32 2
  %5 = ptrtoint ptr %scan_generation to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %scan_generation, align 2
  %scan_gen = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %scan_gen to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %scan_gen, align 8
  %dev_ix = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %dev_ix to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %dev_ix, align 4
  %state = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %state, align 1
  br label %if.end32

if.then12:                                        ; preds = %entry
  %10 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %dev_index = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 12, i32 0, i32 3
  %13 = ptrtoint ptr %dev_index to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %dev_index, align 4
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %dev_ix14 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %dev_ix14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %dev_ix14, align 4
  %17 = getelementptr inbounds %struct.atto_vda_devinfo, ptr %12, i32 0, i32 14
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %17, align 1
  %20 = tail call i16 @llvm.bswap.i16(i16 %19)
  %curr_virt_id = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 10
  %21 = ptrtoint ptr %curr_virt_id to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %curr_virt_id, align 4
  %features = getelementptr inbounds %struct.atto_vda_devinfo, ptr %12, i32 0, i32 16
  %22 = ptrtoint ptr %features to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %features, align 1
  %24 = and i16 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.not = icmp eq i16 %24, 0
  br i1 %tobool.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %phys_target_id = getelementptr inbounds %struct.atto_vda_devinfo, ptr %12, i32 0, i32 19
  %25 = ptrtoint ptr %phys_target_id to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %phys_target_id, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %curr_phys_id = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %curr_phys_id to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %curr_phys_id, align 2
  %dev_addr_type = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 13
  %29 = ptrtoint ptr %dev_addr_type to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %dev_addr_type, align 1
  %state17 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %state17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 6, ptr %state17, align 1
  br label %if.end32

if.else18:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add i16 %15, 1
  %31 = ptrtoint ptr %dev_ix14 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %inc, ptr %dev_ix14, align 4
  br label %if.end32

if.then25:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv5 = zext i8 %3 to i32
  %call28 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %conv5) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %entry.if.end29_crit_edge
  %state30 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 1
  %32 = ptrtoint ptr %state30 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %state30, align 1
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %if.else18, %if.then16, %if.then
  %sg_table_head.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6
  %33 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %34, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i, label %if.end32.esas2r_rq_destroy_request.exit_crit_edge, label %do.body1.i.i

if.end32.esas2r_rq_destroy_request.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_rq_destroy_request.exit

do.body1.i.i:                                     ; preds = %if.end32
  %sg_list_lock.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 13
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sg_list_lock.i.i) #5
  %35 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %36, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i.i, label %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %free_sg_list_head.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16
  %prev.i.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16, i32 1
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %36, ptr %38, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %free_sg_list_head.i.i, ptr %40, align 4
  store ptr %40, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %sg_table_head.i.i, ptr %sg_table_head.i.i, align 4
  store ptr %sg_table_head.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sg_list_lock.i.i, i32 noundef %call3.i.i) #5
  br label %esas2r_rq_destroy_request.exit

esas2r_rq_destroy_request.exit:                   ; preds = %list_splice_tail_init.exit.i.i, %if.end32.esas2r_rq_destroy_request.exit_crit_edge
  %req_table.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 20
  %45 = ptrtoint ptr %req_table.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %req_table.i, align 4
  %vrq.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %47 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vrq.i, align 8
  %handle.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %handle.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %handle.i, align 1
  %idxprom.i = and i32 %50, 65535
  %arrayidx.i = getelementptr ptr, ptr %46, i32 %idxprom.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx.i, align 4
  %52 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %52, align 8
  %flags33 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %flags33 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %flags33, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %55)
  %tobool36.not = icmp sgt i16 %55, -1
  br i1 %tobool36.not, label %if.then37, label %esas2r_rq_destroy_request.exit.if.end39_crit_edge

esas2r_rq_destroy_request.exit.if.end39_crit_edge: ; preds = %esas2r_rq_destroy_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then37:                                        ; preds = %esas2r_rq_destroy_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = tail call fastcc zeroext i1 @esas2r_disc_continue(ptr noundef %a, ptr noundef %rq)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %esas2r_rq_destroy_request.exit.if.end39_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @esas2r_disc_get_phys_addr(ptr nocapture noundef readonly %sgc, ptr nocapture noundef writeonly %addr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sgc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgc, align 4
  %length = getelementptr inbounds %struct.esas2r_sg_context, ptr %sgc, i32 0, i32 2
  %uncached_phys = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %uncached_phys to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %uncached_phys, align 8
  %disc_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %disc_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disc_buffer, align 8
  %uncached = getelementptr inbounds %struct.esas2r_adapter, ptr %1, i32 0, i32 24
  %6 = ptrtoint ptr %uncached to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uncached, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = sext i32 %sub.ptr.sub to i64
  %add = add i64 %3, %conv
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add, ptr %addr, align 8
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 4
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_build_ioctl_req(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @esas2r_disc_passthru_dev_addr_cb(ptr noundef %a, ptr noundef %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %interrupt_cx = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 15
  %0 = ptrtoint ptr %interrupt_cx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interrupt_cx, align 4
  %mem_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock) #5
  %disc_buffer = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 44
  %2 = ptrtoint ptr %disc_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disc_buffer, align 8
  %req_stat = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 17
  %4 = ptrtoint ptr %req_stat to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %req_stat, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp6 = icmp eq i8 %5, 0
  br i1 %cmp6, label %land.lhs.true, label %entry.if.else45_crit_edge

entry.if.else45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else45

land.lhs.true:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.atto_ioctl, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %status, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp9 = icmp eq i8 %7, 0
  br i1 %cmp9, label %if.then, label %land.lhs.true.if.else45_crit_edge

land.lhs.true.if.else45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else45

if.then:                                          ; preds = %land.lhs.true
  %addr_len = getelementptr inbounds %struct.atto_ioctl, ptr %3, i32 0, i32 6, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %addr_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr_len, align 2
  %dev_addr_type = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %dev_addr_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dev_addr_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp12 = icmp eq i8 %11, 0
  br i1 %cmp12, label %if.then14, label %if.else23

if.then14:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %9)
  %cmp16 = icmp eq i16 %9, 2048
  br i1 %cmp16, label %if.then18, label %if.then14.if.end_crit_edge

if.then14.if.end_crit_edge:                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  %address = getelementptr inbounds %struct.atto_ioctl, ptr %3, i32 0, i32 6, i32 0, i32 0, i32 4
  %12 = ptrtoint ptr %address to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %address, align 4
  br label %if.end

if.end:                                           ; preds = %if.then18, %if.then14.if.end_crit_edge
  %.sink = phi i64 [ %13, %if.then18 ], [ 0, %if.then14.if.end_crit_edge ]
  %14 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %.sink, ptr %14, align 8
  %16 = ptrtoint ptr %dev_addr_type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %dev_addr_type, align 1
  br label %next_dev_addr

if.else23:                                        ; preds = %if.then
  %.mask = and i16 %9, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %cmp27 = icmp eq i16 %.mask, 0
  br i1 %cmp27, label %if.then29, label %if.else41

if.then29:                                        ; preds = %if.else23
  %address31 = getelementptr inbounds %struct.atto_ioctl, ptr %3, i32 0, i32 6, i32 0, i32 0, i32 4
  %conv35 = trunc i16 %9 to i8
  %call36 = tail call ptr @esas2r_targ_db_add_pthru(ptr noundef %a, ptr noundef %1, ptr noundef %address31, i8 noundef zeroext %conv35) #5
  %tobool.not = icmp eq ptr %call36, null
  br i1 %tobool.not, label %if.then29.if.end51_crit_edge, label %if.then37

if.then29.if.end51_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then37:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  %sas_addr38 = getelementptr inbounds %struct.esas2r_target, ptr %call36, i32 0, i32 10
  %sas_addr39 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %sas_addr39 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sas_addr39, align 8
  %19 = ptrtoint ptr %sas_addr38 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %sas_addr38, align 8
  br label %if.end51

if.else41:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #7
  %call42 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.esas2r_disc_passthru_dev_addr_cb, i32 noundef 993) #5
  br label %if.end51

if.else45:                                        ; preds = %land.lhs.true.if.else45_crit_edge, %entry.if.else45_crit_edge
  %conv47 = zext i8 %5 to i32
  %status48 = getelementptr inbounds %struct.atto_ioctl, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %status48 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %status48, align 2
  %conv49 = zext i8 %21 to i32
  %call50 = tail call i32 (i32, ptr, ...) @esas2r_log(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %conv47, i32 noundef %conv49) #5
  br label %if.end51

if.end51:                                         ; preds = %if.else45, %if.else41, %if.then37, %if.then29.if.end51_crit_edge
  %flags52 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %flags52 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags52, align 2
  %conv53 = zext i16 %23 to i32
  %and = and i32 %conv53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp eq i32 %and, 0
  br i1 %tobool54.not, label %if.else56, label %if.then55

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %dev_ix = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %dev_ix to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %dev_ix, align 4
  %inc = add i16 %25, 1
  store i16 %inc, ptr %dev_ix, align 4
  %state = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 5, ptr %state, align 1
  br label %next_dev_addr

if.else56:                                        ; preds = %if.end51
  %and59 = and i32 %conv53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.else56.next_dev_addr_crit_edge, label %if.then61

if.else56.next_dev_addr_crit_edge:                ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  br label %next_dev_addr

if.then61:                                        ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #7
  %curr_targ = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %curr_targ to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %curr_targ, align 8
  %incdec.ptr = getelementptr %struct.esas2r_target, ptr %28, i32 1
  store ptr %incdec.ptr, ptr %curr_targ, align 8
  %state62 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %state62 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %state62, align 1
  br label %next_dev_addr

next_dev_addr:                                    ; preds = %if.then61, %if.else56.next_dev_addr_crit_edge, %if.then55, %if.end
  %sg_table_head.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6
  %30 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %31, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i, label %next_dev_addr.esas2r_rq_destroy_request.exit_crit_edge, label %do.body1.i.i

next_dev_addr.esas2r_rq_destroy_request.exit_crit_edge: ; preds = %next_dev_addr
  call void @__sanitizer_cov_trace_pc() #7
  br label %esas2r_rq_destroy_request.exit

do.body1.i.i:                                     ; preds = %next_dev_addr
  %sg_list_lock.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 13
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sg_list_lock.i.i) #5
  %32 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %sg_table_head.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %33, %sg_table_head.i.i
  br i1 %cmp.i.not.i.i.i, label %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %free_sg_list_head.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16
  %prev.i.i.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 16, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %33, ptr %35, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %free_sg_list_head.i.i, ptr %37, align 4
  store ptr %37, ptr %prev.i.i.i, align 4
  %41 = ptrtoint ptr %sg_table_head.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %sg_table_head.i.i, ptr %sg_table_head.i.i, align 4
  store ptr %sg_table_head.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %do.body1.i.i.list_splice_tail_init.exit.i.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sg_list_lock.i.i, i32 noundef %call3.i.i) #5
  br label %esas2r_rq_destroy_request.exit

esas2r_rq_destroy_request.exit:                   ; preds = %list_splice_tail_init.exit.i.i, %next_dev_addr.esas2r_rq_destroy_request.exit_crit_edge
  %req_table.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 20
  %42 = ptrtoint ptr %req_table.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %req_table.i, align 4
  %vrq.i = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 2
  %44 = ptrtoint ptr %vrq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vrq.i, align 8
  %handle.i = getelementptr inbounds %struct.atto_vda_scsi_req, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %handle.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %handle.i, align 1
  %idxprom.i = and i32 %47, 65535
  %arrayidx.i = getelementptr ptr, ptr %43, i32 %idxprom.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %arrayidx.i, align 4
  %49 = getelementptr inbounds %struct.esas2r_request, ptr %rq, i32 0, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %49, align 8
  %flags66 = getelementptr inbounds %struct.esas2r_disc_context, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %flags66 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %flags66, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %52)
  %tobool69.not = icmp sgt i16 %52, -1
  br i1 %tobool69.not, label %if.then70, label %esas2r_rq_destroy_request.exit.if.end72_crit_edge

esas2r_rq_destroy_request.exit.if.end72_crit_edge: ; preds = %esas2r_rq_destroy_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then70:                                        ; preds = %esas2r_rq_destroy_request.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call71 = tail call fastcc zeroext i1 @esas2r_disc_continue(ptr noundef %a, ptr noundef %rq)
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %esas2r_rq_destroy_request.exit.if.end72_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @esas2r_targ_db_add_pthru(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/esas2r/esas2r_disc.c", i32 1126, i32 9}
!2 = !{ptr @__func__.esas2r_disc_dev_add, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/esas2r/esas2r_disc.c", i32 1128, i32 9}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/scsi/esas2r/esas2r_disc.c", i32 664, i32 8}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/esas2r/esas2r_disc.c", i32 768, i32 8}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/esas2r/esas2r_disc.c", i32 862, i32 8}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/esas2r/esas2r_disc.c", i32 990, i32 9}
!12 = !{ptr @__func__.esas2r_disc_passthru_dev_addr_cb, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/esas2r/esas2r_disc.c", i32 992, i32 9}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/scsi/esas2r/esas2r_disc.c", i32 1000, i32 7}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 1, i32 2000}
