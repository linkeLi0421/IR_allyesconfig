; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/cqhci-crypto.c_pt.bc'
source_filename = "../drivers/mmc/host/cqhci-crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.cqhci_crypto_alg_entry = type { i32, i32 }
%union.cqhci_crypto_cfg_entry = type { [32 x i32] }
%struct.cqhci_host = type { ptr, ptr, ptr, %struct.spinlock, i32, i8, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i32, i32, ptr, i8, i8, i8, ptr, i8, i32, i32, %struct.completion, %struct.wait_queue_head, ptr, %union.cqhci_crypto_capabilities, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.cqhci_crypto_capabilities = type { i32 }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cqhci_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.72 = type { i8, i8, i8, i8 }
%union.cqhci_crypto_cap_entry = type { i32 }
%struct.anon.73 = type { i8, i8, i8, i8 }
%struct.blk_crypto_config = type { i32, i32, i32 }
%struct.anon.71 = type { [64 x i8], i8, i8, i8, i8, i8, i8, [2 x i8], [56 x i8] }
%struct.blk_crypto_key = type { %struct.blk_crypto_config, i32, i32, [64 x i8] }

@cqhci_crypto_ops = internal constant { %struct.blk_crypto_ll_ops, [24 x i8] } { %struct.blk_crypto_ll_ops { ptr @cqhci_crypto_keyslot_program, ptr @cqhci_crypto_keyslot_evict }, [24 x i8] zeroinitializer }, align 32
@cqhci_crypto_algs = internal constant { [4 x %struct.cqhci_crypto_alg_entry], [32 x i8] } { [4 x %struct.cqhci_crypto_alg_entry] [%struct.cqhci_crypto_alg_entry zeroinitializer, %struct.cqhci_crypto_alg_entry { i32 0, i32 3 }, %struct.cqhci_crypto_alg_entry zeroinitializer, %struct.cqhci_crypto_alg_entry zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mmc/host/cqhci-crypto.c\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"cqhci_crypto_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 136, i32 39 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"cqhci_crypto_algs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 18, i32 3 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [35 x i8] c"../drivers/mmc/host/cqhci-crypto.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 86, i32 6 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @cqhci_crypto_ops, ptr @cqhci_crypto_algs, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_crypto_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cqhci_crypto_algs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cqhci_crypto_init(ptr noundef %cq_host) local_unnamed_addr #0 align 64 {
entry:
  %cfg.i = alloca %union.cqhci_crypto_cfg_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc1 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 2
  %0 = ptrtoint ptr %mmc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmc1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %crypto_profile = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 67
  %caps2 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %caps2, align 4
  %and = and i32 %5, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cq_host, align 4
  %read_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %read_l.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_l.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !15

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 %9(ptr noundef %cq_host, i32 noundef 4) #4
  br label %cqhci_readl.exit

if.else.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %10 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !16
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #4
  br label %cqhci_readl.exit

cqhci_readl.exit:                                 ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %13, %if.else.i ]
  %and2 = and i32 %retval.0.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %cqhci_readl.exit.out_crit_edge, label %if.end

cqhci_readl.exit.out_crit_edge:                   ; preds = %cqhci_readl.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end:                                           ; preds = %cqhci_readl.exit
  %14 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cq_host, align 4
  %read_l.i93 = getelementptr inbounds %struct.cqhci_host_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %read_l.i93 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read_l.i93, align 4
  %tobool.not.i94 = icmp eq ptr %17, null
  br i1 %tobool.not.i94, label %if.else.i99, label %if.then.i96, !prof !15

if.then.i96:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call.i95 = tail call i32 %17(ptr noundef %cq_host, i32 noundef 256) #4
  br label %cqhci_readl.exit101

if.else.i99:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mmio.i97 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %18 = ptrtoint ptr %mmio.i97 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i97, align 4
  %add.ptr.i98 = getelementptr i8, ptr %19, i32 256
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #4, !srcloc !16
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #4
  br label %cqhci_readl.exit101

cqhci_readl.exit101:                              ; preds = %if.else.i99, %if.then.i96
  %retval.0.i100 = phi i32 [ %call.i95, %if.then.i96 ], [ %21, %if.else.i99 ]
  %22 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i100)
  %crypto_capabilities = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 30
  %23 = ptrtoint ptr %crypto_capabilities to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %crypto_capabilities, align 4
  %conv = shl i32 %22, 8
  %mul = and i32 %conv, 65280
  %crypto_cfg_register = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 32
  %24 = ptrtoint ptr %crypto_cfg_register to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul, ptr %crypto_cfg_register, align 4
  %25 = lshr i32 %22, 22
  %26 = and i32 %25, 1020
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %26, i32 noundef 3520) #4
  %crypto_cap_array = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 31
  %27 = ptrtoint ptr %crypto_cap_array to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call5.i.i, ptr %crypto_cap_array, align 4
  %tobool10.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool10.not, label %cqhci_readl.exit101.out_crit_edge, label %if.end12

cqhci_readl.exit101.out_crit_edge:                ; preds = %cqhci_readl.exit101
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end12:                                         ; preds = %cqhci_readl.exit101
  %config_count = getelementptr inbounds %struct.anon.72, ptr %crypto_capabilities, i32 0, i32 1
  %28 = ptrtoint ptr %config_count to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %config_count, align 1
  %conv14 = zext i8 %29 to i32
  %add = add nuw nsw i32 %conv14, 1
  %call15 = tail call i32 @devm_blk_crypto_profile_init(ptr noundef %3, ptr noundef %crypto_profile, i32 noundef %add) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.out_crit_edge

if.end12.out_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end18:                                         ; preds = %if.end12
  %30 = load i64, ptr @cqhci_crypto_ops, align 8
  %31 = ptrtoint ptr %crypto_profile to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %crypto_profile, align 4
  %dev19 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 67, i32 3
  %32 = ptrtoint ptr %dev19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %3, ptr %dev19, align 4
  %max_dun_bytes_supported = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 67, i32 1
  %33 = ptrtoint ptr %max_dun_bytes_supported to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %max_dun_bytes_supported, align 4
  %34 = ptrtoint ptr %crypto_capabilities to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %crypto_capabilities, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp117.not = icmp eq i8 %35, 0
  br i1 %cmp117.not, label %if.end18.for.body43.preheader_crit_edge, label %for.body.lr.ph

if.end18.for.body43.preheader_crit_edge:          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body43.preheader

for.body.lr.ph:                                   ; preds = %if.end18
  %mmio.i106 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %arrayidx39 = getelementptr %struct.mmc_host, ptr %1, i32 0, i32 67, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cap_idx.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul24 = shl i32 %cap_idx.0118, 2
  %add25 = add nuw nsw i32 %mul24, 260
  %36 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cq_host, align 4
  %read_l.i102 = getelementptr inbounds %struct.cqhci_host_ops, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %read_l.i102 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %read_l.i102, align 4
  %tobool.not.i103 = icmp eq ptr %39, null
  br i1 %tobool.not.i103, label %if.else.i108, label %if.then.i105, !prof !15

if.then.i105:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call.i104 = tail call i32 %39(ptr noundef %cq_host, i32 noundef %add25) #4
  br label %cqhci_readl.exit110

if.else.i108:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %mmio.i106 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %41, i32 %add25
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #4, !srcloc !16
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #4
  br label %cqhci_readl.exit110

cqhci_readl.exit110:                              ; preds = %if.else.i108, %if.then.i105
  %retval.0.i109 = phi i32 [ %call.i104, %if.then.i105 ], [ %43, %if.else.i108 ]
  %44 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i109)
  %45 = ptrtoint ptr %crypto_cap_array to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %crypto_cap_array, align 4
  %arrayidx = getelementptr %union.cqhci_crypto_cap_entry, ptr %46, i32 %cap_idx.0118
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %arrayidx, align 4
  %48 = load ptr, ptr %crypto_cap_array, align 4
  %arrayidx29 = getelementptr %union.cqhci_crypto_cap_entry, ptr %48, i32 %cap_idx.0118
  %49 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.unpack = load i32, ptr %arrayidx29, align 4
  %50 = and i32 %.unpack, -16711936
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %50)
  %51 = icmp eq i32 %50, 768
  br i1 %51, label %if.end34, label %cqhci_readl.exit110.for.inc_crit_edge

cqhci_readl.exit110.for.inc_crit_edge:            ; preds = %cqhci_readl.exit110
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end34:                                         ; preds = %cqhci_readl.exit110
  call void @__sanitizer_cov_trace_pc() #6
  %sdus_mask = getelementptr inbounds %struct.anon.73, ptr %arrayidx29, i32 0, i32 1
  %52 = ptrtoint ptr %sdus_mask to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %sdus_mask, align 1
  %conv37 = zext i8 %53 to i32
  %mul38 = shl nuw nsw i32 %conv37, 9
  %54 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx39, align 4
  %or = or i32 %mul38, %55
  store i32 %or, ptr %arrayidx39, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %cqhci_readl.exit110.for.inc_crit_edge
  %inc = add nuw nsw i32 %cap_idx.0118, 1
  %56 = ptrtoint ptr %crypto_capabilities to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %crypto_capabilities, align 4
  %conv22 = zext i8 %57 to i32
  %cmp = icmp ult i32 %inc, %conv22
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.body43.preheader_crit_edge

for.inc.for.body43.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body43.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body43.preheader:                             ; preds = %for.inc.for.body43.preheader_crit_edge, %if.end18.for.body43.preheader_crit_edge
  br label %for.body43

for.body43:                                       ; preds = %for.body43.for.body43_crit_edge, %for.body43.preheader
  %slot.0119 = phi i32 [ %inc46, %for.body43.for.body43_crit_edge ], [ 0, %for.body43.preheader ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cfg.i) #4
  %58 = call ptr @memset(ptr %cfg.i, i32 0, i32 128)
  %call.i112 = call fastcc i32 @cqhci_crypto_program_key(ptr noundef %cq_host, ptr noundef nonnull %cfg.i, i32 noundef %slot.0119) #4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cfg.i) #4
  %inc46 = add nuw nsw i32 %slot.0119, 1
  %exitcond = icmp eq i32 %slot.0119, %conv14
  br i1 %exitcond, label %for.end47, label %for.body43.for.body43_crit_edge

for.body43.for.body43_crit_edge:                  ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body43

for.end47:                                        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #6
  %caps = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 9
  %59 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %caps, align 4
  %or48 = or i32 %60, 1
  store i32 %or48, ptr %caps, align 4
  br label %cleanup

out:                                              ; preds = %if.end12.out_crit_edge, %cqhci_readl.exit101.out_crit_edge, %cqhci_readl.exit.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call15, %if.end12.out_crit_edge ], [ 0, %cqhci_readl.exit.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ -12, %cqhci_readl.exit101.out_crit_edge ]
  %61 = ptrtoint ptr %caps2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %caps2, align 4
  %and50 = and i32 %62, -134217729
  store i32 %and50, ptr %caps2, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %for.end47
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %for.end47 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_blk_crypto_profile_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cqhci_crypto_keyslot_program(ptr nocapture noundef readonly %profile, ptr nocapture noundef readonly %key, i32 noundef %slot) #0 align 64 {
entry:
  %cfg = alloca %union.cqhci_crypto_cfg_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private.i = getelementptr i8, ptr %profile, i32 -12
  %0 = ptrtoint ptr %cqe_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private.i, align 4
  %crypto_cap_array = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %crypto_cap_array to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crypto_cap_array, align 4
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key, align 4
  %data_unit_size = getelementptr inbounds %struct.blk_crypto_config, ptr %key, i32 0, i32 1
  %6 = ptrtoint ptr %data_unit_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_unit_size, align 4
  %div103 = lshr i32 %7, 9
  %conv = trunc i32 %div103 to i8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cfg) #4
  %8 = call ptr @memset(ptr %cfg, i32 0, i32 128)
  %crypto_capabilities = getelementptr inbounds %struct.cqhci_host, ptr %1, i32 0, i32 30
  %9 = ptrtoint ptr %crypto_capabilities to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %crypto_capabilities, align 4
  %conv2 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp109.not = icmp eq i8 %10, 0
  br i1 %cmp109.not, label %entry.do.end31_crit_edge, label %for.body.lr.ph

entry.do.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end31

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr [4 x %struct.cqhci_crypto_alg_entry], ptr @cqhci_crypto_algs, i32 0, i32 %5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %key_size11 = getelementptr [4 x %struct.cqhci_crypto_alg_entry], ptr @cqhci_crypto_algs, i32 0, i32 %5, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx4 = getelementptr %union.cqhci_crypto_cap_entry, ptr %3, i32 %i.0110
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx4, align 4
  %conv5 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv5)
  %cmp7 = icmp eq i32 %12, %conv5
  br i1 %cmp7, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %key_size = getelementptr inbounds %struct.anon.73, ptr %arrayidx4, i32 0, i32 2
  %15 = ptrtoint ptr %key_size to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %key_size, align 2
  %conv10 = zext i8 %16 to i32
  %17 = ptrtoint ptr %key_size11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_size11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv10)
  %cmp12 = icmp eq i32 %18, %conv10
  br i1 %cmp12, label %land.lhs.true14, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true14:                                  ; preds = %land.lhs.true
  %sdus_mask = getelementptr inbounds %struct.anon.73, ptr %arrayidx4, i32 0, i32 1
  %19 = ptrtoint ptr %sdus_mask to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sdus_mask, align 1
  %conv16 = zext i8 %20 to i32
  %and = and i32 %div103, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true14.for.inc_crit_edge, label %if.end46

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true14.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0110, 1
  %exitcond.not = icmp eq i32 %inc, %conv2
  br i1 %exitcond.not, label %for.inc.do.end31_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.do.end31_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end31

do.end31:                                         ; preds = %for.inc.do.end31_crit_edge, %entry.do.end31_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 86, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true14
  %data_unit_size47 = getelementptr inbounds %struct.anon.71, ptr %cfg, i32 0, i32 1
  %21 = ptrtoint ptr %data_unit_size47 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %data_unit_size47, align 4
  %conv48 = trunc i32 %i.0110 to i8
  %crypto_cap_idx = getelementptr inbounds %struct.anon.71, ptr %cfg, i32 0, i32 2
  %22 = ptrtoint ptr %crypto_cap_idx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv48, ptr %crypto_cap_idx, align 1
  %config_enable = getelementptr inbounds %struct.anon.71, ptr %cfg, i32 0, i32 4
  %23 = ptrtoint ptr %config_enable to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -128, ptr %config_enable, align 1
  %24 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp52 = icmp eq i8 %25, 0
  %raw = getelementptr inbounds %struct.blk_crypto_key, ptr %key, i32 0, i32 3
  %size = getelementptr inbounds %struct.blk_crypto_key, ptr %key, i32 0, i32 2
  %26 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size, align 4
  br i1 %cmp52, label %if.then54, label %if.else

if.then54:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  %div56104 = lshr i32 %27, 1
  %28 = call ptr @memcpy(ptr %cfg, ptr %raw, i32 %div56104)
  %add.ptr = getelementptr inbounds i8, ptr %cfg, i32 32
  %add.ptr63 = getelementptr i8, ptr %raw, i32 %div56104
  %29 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr63, i32 %div56104)
  br label %if.end71

if.else:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #6
  %30 = call ptr @memcpy(ptr %cfg, ptr %raw, i32 %27)
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.then54
  %call72 = call fastcc i32 @cqhci_crypto_program_key(ptr noundef %1, ptr noundef nonnull %cfg, i32 noundef %slot)
  %31 = call ptr @memset(ptr %cfg, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %cfg) #4, !srcloc !17
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %do.end31
  %retval.0 = phi i32 [ -95, %do.end31 ], [ %call72, %if.end71 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cfg) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cqhci_crypto_keyslot_evict(ptr nocapture noundef readonly %profile, ptr nocapture noundef readnone %key, i32 noundef %slot) #0 align 64 {
entry:
  %cfg.i = alloca %union.cqhci_crypto_cfg_entry, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_private.i = getelementptr i8, ptr %profile, i32 -12
  %0 = ptrtoint ptr %cqe_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cqe_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %cfg.i) #4
  %2 = call ptr @memset(ptr %cfg.i, i32 0, i32 128)
  %call.i = call fastcc i32 @cqhci_crypto_program_key(ptr noundef %1, ptr noundef nonnull %cfg.i, i32 noundef %slot) #4
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %cfg.i) #4
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cqhci_crypto_program_key(ptr noundef %cq_host, ptr noundef %cfg, i32 noundef %slot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %crypto_cfg_register = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 32
  %0 = ptrtoint ptr %crypto_cfg_register to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crypto_cfg_register, align 4
  %mul = shl i32 %slot, 7
  %add = add i32 %1, %mul
  %2 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cq_host, align 4
  %program_key = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %program_key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %program_key, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %5(ptr noundef %cq_host, ptr noundef %cfg, i32 noundef %slot) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %add3 = add i32 %add, 64
  %write_l.i = getelementptr inbounds %struct.cqhci_host_ops, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %write_l.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_l.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i, !prof !15

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %7(ptr noundef %cq_host, i32 noundef 0, i32 noundef %add3) #4
  br label %cqhci_writel.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mmio.i = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #4, !srcloc !18
  br label %cqhci_writel.exit

cqhci_writel.exit:                                ; preds = %if.else.i, %if.then.i
  %mmio.i31 = getelementptr inbounds %struct.cqhci_host, ptr %cq_host, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cqhci_writel.exit34.for.body_crit_edge, %cqhci_writel.exit
  %i.049 = phi i32 [ 0, %cqhci_writel.exit ], [ %inc, %cqhci_writel.exit34.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i32], ptr %cfg, i32 0, i32 %i.049
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %mul4 = shl i32 %i.049, 2
  %add5 = add i32 %mul4, %add
  %12 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cq_host, align 4
  %write_l.i28 = getelementptr inbounds %struct.cqhci_host_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write_l.i28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write_l.i28, align 4
  %tobool.not.i29 = icmp eq ptr %15, null
  br i1 %tobool.not.i29, label %if.else.i33, label %if.then.i30, !prof !15

if.then.i30:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void %15(ptr noundef %cq_host, i32 noundef %16, i32 noundef %add5) #4
  br label %cqhci_writel.exit34

if.else.i33:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %mmio.i31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i31, align 4
  %add.ptr.i32 = getelementptr i8, ptr %18, i32 %add5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %11) #4, !srcloc !18
  br label %cqhci_writel.exit34

cqhci_writel.exit34:                              ; preds = %if.else.i33, %if.then.i30
  %inc = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %cqhci_writel.exit34.for.body_crit_edge

cqhci_writel.exit34.for.body_crit_edge:           ; preds = %cqhci_writel.exit34
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %cqhci_writel.exit34
  %arrayidx6 = getelementptr [32 x i32], ptr %cfg, i32 0, i32 17
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx6, align 4
  %add7 = add i32 %add, 68
  %21 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cq_host, align 4
  %write_l.i35 = getelementptr inbounds %struct.cqhci_host_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write_l.i35 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_l.i35, align 4
  %tobool.not.i36 = icmp eq ptr %24, null
  br i1 %tobool.not.i36, label %if.else.i40, label %if.then.i37, !prof !15

if.then.i37:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void %24(ptr noundef %cq_host, i32 noundef %25, i32 noundef %add7) #4
  br label %cqhci_writel.exit41

if.else.i40:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %26 = ptrtoint ptr %mmio.i31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mmio.i31, align 4
  %add.ptr.i39 = getelementptr i8, ptr %27, i32 %add7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 %20) #4, !srcloc !18
  br label %cqhci_writel.exit41

cqhci_writel.exit41:                              ; preds = %if.else.i40, %if.then.i37
  %arrayidx8 = getelementptr [32 x i32], ptr %cfg, i32 0, i32 16
  %28 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx8, align 4
  %30 = ptrtoint ptr %cq_host to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cq_host, align 4
  %write_l.i42 = getelementptr inbounds %struct.cqhci_host_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %write_l.i42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %write_l.i42, align 4
  %tobool.not.i43 = icmp eq ptr %33, null
  br i1 %tobool.not.i43, label %if.else.i47, label %if.then.i44, !prof !15

if.then.i44:                                      ; preds = %cqhci_writel.exit41
  call void @__sanitizer_cov_trace_pc() #6
  %34 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void %33(ptr noundef %cq_host, i32 noundef %34, i32 noundef %add3) #4
  br label %cleanup

if.else.i47:                                      ; preds = %cqhci_writel.exit41
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %mmio.i31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mmio.i31, align 4
  %add.ptr.i46 = getelementptr i8, ptr %36, i32 %add3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %29) #4, !srcloc !18
  br label %cleanup

cleanup:                                          ; preds = %if.else.i47, %if.then.i44, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.then.i44 ], [ 0, %if.else.i47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @cqhci_crypto_ops, !1, !"cqhci_crypto_ops", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/cqhci-crypto.c", i32 136, i32 39}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/cqhci-crypto.c", i32 86, i32 6}
!4 = !{ptr @cqhci_crypto_algs, !5, !"cqhci_crypto_algs", i1 false, i1 false}
!5 = !{!"../drivers/mmc/host/cqhci-crypto.c", i32 18, i32 3}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 5910893}
!17 = !{i64 2149276072}
!18 = !{i64 5910475}
