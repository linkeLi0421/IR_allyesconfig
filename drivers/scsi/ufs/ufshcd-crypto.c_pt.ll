; ModuleID = '/llk/IR_all_yes/drivers/scsi/ufs/ufshcd-crypto.c_pt.bc'
source_filename = "../drivers/scsi/ufs/ufshcd-crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.ufs_crypto_alg_entry = type { i32, i32 }
%struct.ufs_hba = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.device_attribute, %struct.device_attribute, i32, i32, ptr, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.blk_mq_tag_set, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32, i32, i16, i16, i16, %struct.mutex, i8, i8, %struct.semaphore, ptr, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, %struct.ufs_stats, i8, i8, i8, %struct.ufs_dev_cmd, i64, i32, %struct.ufs_dev_info, i8, %struct.ufs_vreg_info, %struct.list_head, i32, i32, %struct.ufs_pa_layer_attr, %struct.ufs_pwr_mode_info, %struct.ufs_clk_gating, i32, ptr, %struct.ufs_clk_scaling, i8, i32, i8, %struct.rw_semaphore, [10 x i8], %struct.atomic_t, %struct.device, ptr, %struct.delayed_work, %struct.ufshpb_dev_info, %struct.ufs_hba_monitor, %union.ufs_crypto_capabilities, ptr, i32, %struct.blk_crypto_profile, ptr, %struct.delayed_work, i32, i32, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ufs_stats = type { i32, i64, i32, i64, [15 x %struct.ufs_event_hist] }
%struct.ufs_event_hist = type { i32, [8 x i32], [8 x i64], i64 }
%struct.ufs_dev_cmd = type { i32, %struct.mutex, ptr, %struct.ufs_query }
%struct.ufs_query = type { %struct.ufs_query_req, ptr, %struct.ufs_query_res }
%struct.ufs_query_req = type { i8, %struct.utp_upiu_query }
%struct.utp_upiu_query = type { i8, i8, i8, i8, i16, i16, i32, [2 x i32] }
%struct.ufs_query_res = type { i8, %struct.utp_upiu_query }
%struct.ufs_dev_info = type { i8, i8, i8, i16, ptr, i16, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.ufs_vreg_info = type { ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ufs_pa_layer_attr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ufs_pwr_mode_info = type { i8, %struct.ufs_pa_layer_attr }
%struct.ufs_clk_gating = type { %struct.delayed_work, %struct.work_struct, i32, i32, i8, %struct.device_attribute, %struct.device_attribute, i8, i8, i32, ptr }
%struct.ufs_clk_scaling = type { i32, i32, i64, i64, %struct.device_attribute, %struct.ufs_saved_pwr_info, ptr, %struct.work_struct, %struct.work_struct, i32, i8, i8, i8, i8, i8 }
%struct.ufs_saved_pwr_info = type { %struct.ufs_pa_layer_attr, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ufshpb_dev_info = type { i32, i32, i32, %struct.atomic_t, i8, i8, i8, i8 }
%struct.ufs_hba_monitor = type { i32, [2 x i32], [2 x i64], [2 x i32], [2 x i64], [2 x i64], [2 x i64], [2 x i32], [2 x i64], i64, i8 }
%union.ufs_crypto_capabilities = type { i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.92 = type { i8, i8, i8, i8 }
%union.ufs_crypto_cap_entry = type { i32 }
%struct.anon.93 = type { i8, i8, i8, i8 }
%union.ufs_crypto_cfg_entry = type { [32 x i32] }
%struct.blk_crypto_config = type { i32, i32, i32 }
%struct.anon.91 = type { [64 x i8], i8, i8, i8, i8, i8, i8, [2 x i8], [56 x i8] }
%struct.blk_crypto_key = type { %struct.blk_crypto_config, i32, i32, [64 x i8] }
%struct.ufs_hba_variant_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ufshcd_crypto_ops = internal constant { %struct.blk_crypto_ll_ops, [24 x i8] } { %struct.blk_crypto_ll_ops { ptr @ufshcd_crypto_keyslot_program, ptr @ufshcd_crypto_keyslot_evict }, [24 x i8] zeroinitializer }, align 32
@ufs_crypto_algs = internal constant { [4 x %struct.ufs_crypto_alg_entry], [32 x i8] } { [4 x %struct.ufs_crypto_alg_entry] [%struct.ufs_crypto_alg_entry zeroinitializer, %struct.ufs_crypto_alg_entry { i32 0, i32 3 }, %struct.ufs_crypto_alg_entry zeroinitializer, %struct.ufs_crypto_alg_entry zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/scsi/ufs/ufshcd-crypto.c\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"ufshcd_crypto_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 129, i32 39 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"ufs_crypto_algs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 13, i32 3 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [36 x i8] c"../drivers/scsi/ufs/ufshcd-crypto.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 76, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @ufshcd_crypto_ops, ptr @ufs_crypto_algs, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufshcd_crypto_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_crypto_algs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ufshcd_crypto_enable(ptr noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %crypto_profile = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 92
  tail call void @blk_crypto_reprogram_all_keys(ptr noundef %crypto_profile) #3
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %2 = xor i1 %tobool.not, true
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_crypto_reprogram_all_keys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ufshcd_hba_init_crypto_capabilities(ptr noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %capabilities = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 23
  %0 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %capabilities, align 4
  %and = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %caps = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caps, align 8
  %and1 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hba, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 256
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !16
  %crypto_capabilities = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 89
  %7 = ptrtoint ptr %crypto_capabilities to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %crypto_capabilities, align 8
  %conv = shl i32 %6, 8
  %mul = and i32 %conv, 65280
  %crypto_cfg_register = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 91
  %8 = ptrtoint ptr %crypto_cfg_register to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %crypto_cfg_register, align 8
  %dev = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 8
  %9 = lshr i32 %6, 22
  %10 = and i32 %9, 1020
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef %10, i32 noundef 3520) #3
  %crypto_cap_array = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 90
  %13 = ptrtoint ptr %crypto_cap_array to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i, ptr %crypto_cap_array, align 4
  %tobool9.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool9.not, label %if.end.out_crit_edge, label %if.end11

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end11:                                         ; preds = %if.end
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %crypto_profile = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 92
  %config_count = getelementptr inbounds %struct.anon.92, ptr %crypto_capabilities, i32 0, i32 1
  %16 = ptrtoint ptr %config_count to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %config_count, align 1
  %conv14 = zext i8 %17 to i32
  %add = add nuw nsw i32 %conv14, 1
  %call15 = tail call i32 @devm_blk_crypto_profile_init(ptr noundef %15, ptr noundef %crypto_profile, i32 noundef %add) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end18:                                         ; preds = %if.end11
  %18 = load i64, ptr @ufshcd_crypto_ops, align 8
  %19 = ptrtoint ptr %crypto_profile to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %crypto_profile, align 4
  %max_dun_bytes_supported = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 92, i32 1
  %20 = ptrtoint ptr %max_dun_bytes_supported to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %max_dun_bytes_supported, align 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %dev23 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 92, i32 3
  %23 = ptrtoint ptr %dev23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %dev23, align 4
  %24 = ptrtoint ptr %crypto_capabilities to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %crypto_capabilities, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp89.not = icmp eq i8 %25, 0
  br i1 %cmp89.not, label %if.end18.cleanup_crit_edge, label %for.body.preheader

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.preheader:                               ; preds = %if.end18
  %arrayidx49 = getelementptr %struct.ufs_hba, ptr %hba, i32 0, i32 92, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %cap_idx.090 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %26 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hba, align 8
  %mul31 = shl i32 %cap_idx.090, 2
  %add32 = add nuw nsw i32 %mul31, 260
  %add.ptr33 = getelementptr i8, ptr %27, i32 %add32
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #3, !srcloc !15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !17
  %29 = ptrtoint ptr %crypto_cap_array to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %crypto_cap_array, align 4
  %arrayidx = getelementptr %union.ufs_crypto_cap_entry, ptr %30, i32 %cap_idx.090
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %28, ptr %arrayidx, align 4
  %32 = load ptr, ptr %crypto_cap_array, align 4
  %arrayidx39 = getelementptr %union.ufs_crypto_cap_entry, ptr %32, i32 %cap_idx.090
  %33 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.unpack = load i32, ptr %arrayidx39, align 4
  %34 = and i32 %.unpack, -16711936
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %34)
  %35 = icmp eq i32 %34, 768
  br i1 %35, label %if.then43, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then43:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %sdus_mask = getelementptr inbounds %struct.anon.93, ptr %arrayidx39, i32 0, i32 1
  %36 = ptrtoint ptr %sdus_mask to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sdus_mask, align 1
  %conv46 = zext i8 %37 to i32
  %mul47 = shl nuw nsw i32 %conv46, 9
  %38 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx49, align 4
  %or = or i32 %mul47, %39
  store i32 %or, ptr %arrayidx49, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then43, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %cap_idx.090, 1
  %40 = ptrtoint ptr %crypto_capabilities to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %crypto_capabilities, align 8
  %conv26 = zext i8 %41 to i32
  %cmp = icmp ult i32 %inc, %conv26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

out:                                              ; preds = %if.end11.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call15, %if.end11.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ -12, %if.end.out_crit_edge ]
  %caps51 = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %42 = ptrtoint ptr %caps51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %caps51, align 8
  %and52 = and i32 %43, -257
  store i32 %and52, ptr %caps51, align 8
  br label %cleanup

cleanup:                                          ; preds = %out, %for.inc.cleanup_crit_edge, %if.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_blk_crypto_profile_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshcd_init_crypto(ptr noundef %hba) local_unnamed_addr #0 align 64 {
entry:
  %cfg.i = alloca %union.ufs_crypto_cfg_entry, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %crypto_capabilities = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 89
  %config_count = getelementptr inbounds %struct.anon.92, ptr %crypto_capabilities, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %slot.07 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.body.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cfg.i) #3
  %2 = call ptr @memset(ptr %cfg.i, i32 0, i32 128)
  %call.i = call fastcc i32 @ufshcd_program_key(ptr noundef %hba, ptr noundef nonnull %cfg.i, i32 noundef %slot.07) #3
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cfg.i) #3
  %inc = add nuw nsw i32 %slot.07, 1
  %3 = ptrtoint ptr %config_count to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %config_count, align 1
  %conv = zext i8 %4 to i32
  %cmp.not.not = icmp ult i32 %slot.07, %conv
  br i1 %cmp.not.not, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ufshcd_crypto_register(ptr noundef %hba, ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 75
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %caps, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %crypto_profile = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 92
  %call = tail call zeroext i1 @blk_crypto_register(ptr noundef %crypto_profile, ptr noundef %q) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_crypto_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufshcd_crypto_keyslot_program(ptr noundef %profile, ptr nocapture noundef readonly %key, i32 noundef %slot) #0 align 64 {
entry:
  %cfg = alloca %union.ufs_crypto_cfg_entry, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %profile, i32 -4564
  %crypto_cap_array = getelementptr i8, ptr %profile, i32 -8
  %0 = ptrtoint ptr %crypto_cap_array to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto_cap_array, align 4
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key, align 4
  %data_unit_size = getelementptr inbounds %struct.blk_crypto_config, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %data_unit_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_unit_size, align 4
  %div102 = lshr i32 %5, 9
  %conv = trunc i32 %div102 to i8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cfg) #3
  %6 = call ptr @memset(ptr %cfg, i32 0, i32 128)
  %crypto_capabilities = getelementptr i8, ptr %profile, i32 -12
  %7 = ptrtoint ptr %crypto_capabilities to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %crypto_capabilities, align 8
  %conv2 = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp108.not = icmp eq i8 %8, 0
  br i1 %cmp108.not, label %entry.do.end29_crit_edge, label %for.body.lr.ph

entry.do.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end29

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr [4 x %struct.ufs_crypto_alg_entry], ptr @ufs_crypto_algs, i32 0, i32 %3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %ufs_key_size = getelementptr [4 x %struct.ufs_crypto_alg_entry], ptr @ufs_crypto_algs, i32 0, i32 %3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr %union.ufs_crypto_cap_entry, ptr %1, i32 %i.0109
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4, align 4
  %conv5 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %conv5)
  %cmp6 = icmp eq i32 %10, %conv5
  br i1 %cmp6, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %key_size = getelementptr inbounds %struct.anon.93, ptr %arrayidx4, i32 0, i32 2
  %13 = ptrtoint ptr %key_size to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %key_size, align 2
  %conv9 = zext i8 %14 to i32
  %15 = ptrtoint ptr %ufs_key_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ufs_key_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv9)
  %cmp10 = icmp eq i32 %16, %conv9
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true12:                                  ; preds = %land.lhs.true
  %sdus_mask = getelementptr inbounds %struct.anon.93, ptr %arrayidx4, i32 0, i32 1
  %17 = ptrtoint ptr %sdus_mask to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sdus_mask, align 1
  %conv14 = zext i8 %18 to i32
  %and = and i32 %div102, %conv14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true12.for.inc_crit_edge, label %if.end45

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true12.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.inc.do.end29_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.do.end29_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end29

do.end29:                                         ; preds = %for.inc.do.end29_crit_edge, %entry.do.end29_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end45:                                         ; preds = %land.lhs.true12
  %data_unit_size46 = getelementptr inbounds %struct.anon.91, ptr %cfg, i32 0, i32 1
  %19 = ptrtoint ptr %data_unit_size46 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %data_unit_size46, align 4
  %conv47 = trunc i32 %i.0109 to i8
  %crypto_cap_idx = getelementptr inbounds %struct.anon.91, ptr %cfg, i32 0, i32 2
  %20 = ptrtoint ptr %crypto_cap_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv47, ptr %crypto_cap_idx, align 1
  %config_enable = getelementptr inbounds %struct.anon.91, ptr %cfg, i32 0, i32 4
  %21 = ptrtoint ptr %config_enable to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -128, ptr %config_enable, align 1
  %22 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp51 = icmp eq i8 %23, 0
  %raw = getelementptr inbounds %struct.blk_crypto_key, ptr %key, i32 0, i32 3
  %size = getelementptr inbounds %struct.blk_crypto_key, ptr %key, i32 0, i32 2
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  br i1 %cmp51, label %if.then53, label %if.else

if.then53:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  %div55103 = lshr i32 %25, 1
  %26 = call ptr @memcpy(ptr %cfg, ptr %raw, i32 %div55103)
  %add.ptr58 = getelementptr inbounds i8, ptr %cfg, i32 32
  %add.ptr63 = getelementptr i8, ptr %raw, i32 %div55103
  %27 = call ptr @memcpy(ptr %add.ptr58, ptr %add.ptr63, i32 %div55103)
  br label %if.end71

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #5
  %28 = call ptr @memcpy(ptr %cfg, ptr %raw, i32 %25)
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.then53
  %call = call fastcc i32 @ufshcd_program_key(ptr noundef %add.ptr, ptr noundef nonnull %cfg, i32 noundef %slot)
  %29 = call ptr @memset(ptr %cfg, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %cfg) #3, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end29
  %retval.0 = phi i32 [ -95, %do.end29 ], [ %call, %if.end71 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cfg) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ufshcd_crypto_keyslot_evict(ptr noundef %profile, ptr nocapture noundef readnone %key, i32 noundef %slot) #0 align 64 {
entry:
  %cfg.i = alloca %union.ufs_crypto_cfg_entry, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %profile, i32 -4564
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cfg.i) #3
  %0 = call ptr @memset(ptr %cfg.i, i32 0, i32 128)
  %call.i = call fastcc i32 @ufshcd_program_key(ptr noundef %add.ptr, ptr noundef nonnull %cfg.i, i32 noundef %slot) #3
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cfg.i) #3
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ufshcd_program_key(ptr noundef %hba, ptr noundef %cfg, i32 noundef %slot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %crypto_cfg_register = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 91
  %0 = ptrtoint ptr %crypto_cfg_register to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crypto_cfg_register, align 8
  %mul = shl i32 %slot, 7
  %add = add i32 %1, %mul
  %call = tail call i32 @ufshcd_hold(ptr noundef %hba, i1 noundef zeroext false) #3
  %vops = getelementptr inbounds %struct.ufs_hba, ptr %hba, i32 0, i32 28
  %2 = ptrtoint ptr %vops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vops, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %land.lhs.true

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %program_key = getelementptr inbounds %struct.ufs_hba_variant_ops, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %program_key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %program_key, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.do.body_crit_edge, label %if.then

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call i32 %5(ptr noundef %hba, ptr noundef %cfg, i32 noundef %slot) #3
  br label %out

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %6 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hba, align 8
  %add6 = add i32 %add, 64
  %add.ptr = getelementptr i8, ptr %7, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #3, !srcloc !20
  br label %do.body7

do.body7:                                         ; preds = %do.body7.do.body7_crit_edge, %do.body
  %i.049 = phi i32 [ 0, %do.body ], [ %inc, %do.body7.do.body7_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %arrayidx = getelementptr [32 x i32], ptr %cfg, i32 0, i32 %i.049
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hba, align 8
  %mul11 = shl i32 %i.049, 2
  %add12 = add i32 %mul11, %add
  %add.ptr13 = getelementptr i8, ptr %11, i32 %add12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %9) #3, !srcloc !20
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body14, label %do.body7.do.body7_crit_edge

do.body7.do.body7_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body7

do.body14:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %arrayidx17 = getelementptr [32 x i32], ptr %cfg, i32 0, i32 17
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx17, align 4
  %14 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hba, align 8
  %add19 = add i32 %add, 68
  %add.ptr20 = getelementptr i8, ptr %15, i32 %add19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %13) #3, !srcloc !20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %arrayidx24 = getelementptr [32 x i32], ptr %cfg, i32 0, i32 16
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx24, align 4
  %18 = ptrtoint ptr %hba to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hba, align 8
  %add.ptr27 = getelementptr i8, ptr %19, i32 %add6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %17) #3, !srcloc !20
  br label %out

out:                                              ; preds = %do.body14, %if.then
  %err.0 = phi i32 [ %call5, %if.then ], [ 0, %do.body14 ]
  tail call void @ufshcd_release(ptr noundef %hba) #3
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ufshcd_hold(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ufshcd_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @ufshcd_crypto_ops, !1, !"ufshcd_crypto_ops", i1 false, i1 false}
!1 = !{!"../drivers/scsi/ufs/ufshcd-crypto.c", i32 129, i32 39}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/ufs/ufshcd-crypto.c", i32 76, i32 6}
!4 = !{ptr @ufs_crypto_algs, !5, !"ufs_crypto_algs", i1 false, i1 false}
!5 = !{!"../drivers/scsi/ufs/ufshcd-crypto.c", i32 13, i32 3}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i64 4664961}
!16 = !{i64 2155552053}
!17 = !{i64 2155553748}
!18 = !{i64 2149059174}
!19 = !{i64 2155541226}
!20 = !{i64 4664543}
!21 = !{i64 2155542113}
!22 = !{i64 2155543239}
!23 = !{i64 2155544369}
