; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlx5/core/lib/dm.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlx5/core/lib/dm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mlx5_dm_sw_icm_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_dm_sw_icm_alloc\09\09\09\09"
module asm "\09.long\09__crc_mlx5_dm_sw_icm_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_dm_sw_icm_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_dm_sw_icm_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_dm_sw_icm_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mlx5_dm_sw_icm_dealloc\22, \22a\22\09"
module asm "\09.weak\09__crc_mlx5_dm_sw_icm_dealloc\09\09\09\09"
module asm "\09.long\09__crc_mlx5_dm_sw_icm_dealloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mlx5_dm_sw_icm_dealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22mlx5_dm_sw_icm_dealloc\22\09\09\09\09\09"
module asm "__kstrtabns_mlx5_dm_sw_icm_dealloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mlx5_core_dev = type { ptr, i32, ptr, %struct.mutex, i32, i8, [64 x i8], %struct.mlx5_cmd, %struct.anon.128, ptr, i64, i32, ptr, i32, i32, %struct.mutex, i32, %struct.mlx5_priv, %struct.mlx5_profile, i32, %struct.mlx5e_resources, ptr, ptr, ptr, %struct.anon.151, ptr, ptr, %struct.mlx5_clock, ptr, ptr, ptr, i32, ptr }
%struct.mlx5_cmd = type { %struct.mlx5_nb, i32, ptr, i32, i32, ptr, i32, i16, i8, i8, i32, i32, ptr, %struct.spinlock, %struct.spinlock, i8, i32, [32 x i8], ptr, %struct.semaphore, %struct.semaphore, i32, i16, [32 x ptr], ptr, %struct.mlx5_cmd_debug, [5 x %struct.cmd_msg_cache], i32, ptr }
%struct.mlx5_nb = type { %struct.notifier_block, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mlx5_cmd_debug = type { ptr, ptr, ptr, i8, i16, i16 }
%struct.cmd_msg_cache = type { %struct.spinlock, %struct.list_head, i32, i32 }
%struct.anon.128 = type { [38 x ptr], [20 x i32], [3 x [18 x i32]], [64 x i32], [18 x i32], i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlx5_priv = type { ptr, ptr, %struct.mlx5_nb, ptr, %struct.xarray, i32, %struct.atomic_t, %struct.list_head, i32, i32, %struct.mlx5_core_health, %struct.list_head, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.mutex, %struct.list_head, ptr, %struct.list_head, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr, %struct.mlx5_core_sriov, ptr, i32, ptr, ptr, %struct.mlx5_core_roce, %struct.mlx5_fc_stats, %struct.mlx5_rl_table, ptr, %struct.mlx5_bfreg_data, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx5_core_health = type { ptr, ptr, %struct.timer_list, i32, i32, i8, i32, i32, %struct.spinlock, ptr, i32, %struct.work_struct, %struct.work_struct, ptr, ptr, %struct.delayed_work }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mlx5_core_sriov = type { ptr, i32, i16 }
%struct.mlx5_core_roce = type { ptr, ptr, ptr }
%struct.mlx5_fc_stats = type { %struct.spinlock, %struct.idr, %struct.list_head, %struct.llist_head, %struct.llist_head, ptr, %struct.delayed_work, i32, i32, ptr, i32, i32, i8, i32, %struct.mlx5_fc_pool }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.llist_head = type { ptr }
%struct.mlx5_fc_pool = type { ptr, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32 }
%struct.mlx5_rl_table = type { %struct.mutex, i16, i32, i32, ptr, i64 }
%struct.mlx5_bfreg_data = type { %struct.mlx5_bfreg_head, %struct.mlx5_bfreg_head }
%struct.mlx5_bfreg_head = type { %struct.mutex, %struct.list_head }
%struct.mlx5_profile = type { i64, i8, [23 x %struct.anon.129] }
%struct.anon.129 = type { i32, i32 }
%struct.mlx5e_resources = type { %struct.mlx5e_hw_objs, %struct.devlink_port, ptr }
%struct.mlx5e_hw_objs = type { i32, %struct.mlx5_td, i32, %struct.mlx5_sq_bfreg }
%struct.mlx5_td = type { %struct.mutex, %struct.list_head, i32 }
%struct.mlx5_sq_bfreg = type { ptr, ptr, i8, i32, i32 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.130 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.130 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.anon.151 = type { %struct.mlx5_rsvd_gids, i32 }
%struct.mlx5_rsvd_gids = type { i32, i32, %struct.ida }
%struct.ida = type { %struct.xarray }
%struct.mlx5_clock = type { %struct.mlx5_nb, %struct.seqlock_t, %struct.hwtstamp_config, ptr, %struct.ptp_clock_info, %struct.mlx5_pps, %struct.mlx5_timer }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlx5_pps = type { [8 x i8], %struct.work_struct, [8 x i64], i8 }
%struct.mlx5_timer = type { %struct.cyclecounter, %struct.timecounter, i32, i32, %struct.delayed_work }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.mlx5_dm = type { %struct.spinlock, ptr, ptr }

@mlx5_dm_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&dm->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/net/ethernet/mellanox/mlx5/core/lib/dm.c\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_mlx5_dm_sw_icm_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_dm_sw_icm_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_dm_sw_icm_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_dm_sw_icm_alloc to i32), ptr @__kstrtab_mlx5_dm_sw_icm_alloc, ptr @__kstrtabns_mlx5_dm_sw_icm_alloc }, section "___ksymtab_gpl+mlx5_dm_sw_icm_alloc", align 4
@__kstrtab_mlx5_dm_sw_icm_dealloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_mlx5_dm_sw_icm_dealloc = external dso_local constant [0 x i8], align 1
@__ksymtab_mlx5_dm_sw_icm_dealloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mlx5_dm_sw_icm_dealloc to i32), ptr @__kstrtab_mlx5_dm_sw_icm_dealloc, ptr @__kstrtabns_mlx5_dm_sw_icm_dealloc }, section "___ksymtab_gpl+mlx5_dm_sw_icm_dealloc", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.3 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 30, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private constant [52 x i8] c"../drivers/net/ethernet/mellanox/mlx5/core/lib/dm.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 75, i32 3 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_mlx5_dm_sw_icm_alloc, ptr @__ksymtab_mlx5_dm_sw_icm_dealloc, ptr @mlx5_dm_create.__key, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx5_dm_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlx5_dm_create(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %caps = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %caps, align 8
  %add.ptr = getelementptr i64, ptr %1, i32 16
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %add.ptr, align 8
  %and = and i64 %3, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 52) #9
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @mlx5_dm_create.__key, i16 noundef signext 3) #6
  %arrayidx8 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 15
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx8, align 4
  %add.ptr11 = getelementptr i64, ptr %6, i32 3
  %7 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %add.ptr11, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %8)
  %tobool12.not = icmp eq i64 %8, 0
  br i1 %tobool12.not, label %do.body.if.end36_crit_edge, label %if.end7.i.i

do.body.if.end36_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end7.i.i:                                      ; preds = %do.body
  %add.ptr19 = getelementptr i32, ptr %6, i32 8
  %9 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr19, align 4
  %and20 = and i32 %10, 255
  %shr27 = lshr i32 %10, 8
  %and28 = and i32 %shr27, 63
  %sub = sub nsw i32 %and20, %and28
  %shl = shl nuw i32 1, %sub
  %narrow = add nuw i32 %shl, 31
  %11 = lshr i32 %narrow, 3
  %12 = and i32 %11, 536870908
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #10
  %steering_sw_icm_alloc_blocks = getelementptr inbounds %struct.mlx5_dm, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %steering_sw_icm_alloc_blocks to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i, ptr %steering_sw_icm_alloc_blocks, align 4
  %tobool33.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool33.not, label %if.end7.i.i.err_steering_crit_edge, label %if.end7.i.i.if.end36_crit_edge

if.end7.i.i.if.end36_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end7.i.i.err_steering_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_steering

if.end36:                                         ; preds = %if.end7.i.i.if.end36_crit_edge, %do.body.if.end36_crit_edge
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8, align 4
  %add.ptr42 = getelementptr i64, ptr %15, i32 5
  %16 = ptrtoint ptr %add.ptr42 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %add.ptr42, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool43.not = icmp eq i64 %17, 0
  br i1 %tobool43.not, label %if.end36.cleanup_crit_edge, label %if.end7.i.i124

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7.i.i124:                                   ; preds = %if.end36
  %add.ptr50 = getelementptr i32, ptr %15, i32 8
  %18 = ptrtoint ptr %add.ptr50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr50, align 4
  %shr51 = lshr i32 %19, 16
  %and52 = and i32 %shr51, 255
  %shr59 = lshr i32 %19, 8
  %and60 = and i32 %shr59, 63
  %sub61 = sub nsw i32 %and52, %and60
  %shl62 = shl nuw i32 1, %sub61
  %narrow141 = add nuw i32 %shl62, 31
  %20 = lshr i32 %narrow141, 3
  %21 = and i32 %20, 536870908
  %call8.i.i123 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #10
  %header_modify_sw_icm_alloc_blocks = getelementptr inbounds %struct.mlx5_dm, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %header_modify_sw_icm_alloc_blocks to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8.i.i123, ptr %header_modify_sw_icm_alloc_blocks, align 8
  %tobool70.not = icmp eq ptr %call8.i.i123, null
  br i1 %tobool70.not, label %err_modify_hdr, label %if.end7.i.i124.cleanup_crit_edge

if.end7.i.i124.cleanup_crit_edge:                 ; preds = %if.end7.i.i124
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_modify_hdr:                                   ; preds = %if.end7.i.i124
  call void @__sanitizer_cov_trace_pc() #8
  %steering_sw_icm_alloc_blocks74 = getelementptr inbounds %struct.mlx5_dm, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %steering_sw_icm_alloc_blocks74 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %steering_sw_icm_alloc_blocks74, align 4
  tail call void @kfree(ptr noundef %24) #6
  br label %err_steering

err_steering:                                     ; preds = %err_modify_hdr, %if.end7.i.i.err_steering_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_steering, %if.end7.i.i124.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %err_steering ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end7.i.i124.cleanup_crit_edge ], [ %call7.i.i, %if.end36.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx5_dm_cleanup(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dm1 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 21
  %0 = ptrtoint ptr %dm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dm1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %steering_sw_icm_alloc_blocks = getelementptr inbounds %struct.mlx5_dm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %steering_sw_icm_alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %steering_sw_icm_alloc_blocks, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end37_crit_edge, label %bitmap_empty.exit

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

bitmap_empty.exit:                                ; preds = %if.end
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 15
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr, align 4
  %and = and i32 %7, 255
  %shr12 = lshr i32 %7, 8
  %and13 = and i32 %shr12, 63
  %sub = sub nsw i32 %and, %and13
  %shl = shl nuw i32 1, %sub
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull %3, i32 noundef %shl) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %shl)
  %cmp4.i = icmp eq i32 %call.i, %shl
  br i1 %cmp4.i, label %bitmap_empty.exit.if.end29_crit_edge, label %do.end, !prof !18

bitmap_empty.exit.if.end29_crit_edge:             ; preds = %bitmap_empty.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end:                                           ; preds = %bitmap_empty.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 77, i32 noundef 9, ptr noundef null) #6
  br label %if.end29

if.end29:                                         ; preds = %do.end, %bitmap_empty.exit.if.end29_crit_edge
  %8 = ptrtoint ptr %steering_sw_icm_alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %steering_sw_icm_alloc_blocks, align 4
  tail call void @kfree(ptr noundef %9) #6
  br label %if.end37

if.end37:                                         ; preds = %if.end29, %if.end.if.end37_crit_edge
  %header_modify_sw_icm_alloc_blocks = getelementptr inbounds %struct.mlx5_dm, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %header_modify_sw_icm_alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %header_modify_sw_icm_alloc_blocks, align 4
  %tobool38.not = icmp eq ptr %11, null
  br i1 %tobool38.not, label %if.end37.if.end93_crit_edge, label %bitmap_empty.exit119

if.end37.if.end93_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

bitmap_empty.exit119:                             ; preds = %if.end37
  %arrayidx44 = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 15
  %12 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx44, align 4
  %add.ptr47 = getelementptr i32, ptr %13, i32 8
  %14 = ptrtoint ptr %add.ptr47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr47, align 4
  %shr48 = lshr i32 %15, 16
  %and49 = and i32 %shr48, 255
  %shr56 = lshr i32 %15, 8
  %and57 = and i32 %shr56, 63
  %sub58 = sub nsw i32 %and49, %and57
  %shl59 = shl nuw i32 1, %sub58
  %call.i115 = tail call i32 @_find_first_bit_be(ptr noundef nonnull %11, i32 noundef %shl59) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i115, i32 %shl59)
  %cmp4.i116 = icmp eq i32 %call.i115, %shl59
  br i1 %cmp4.i116, label %bitmap_empty.exit119.if.end84_crit_edge, label %do.end78, !prof !18

bitmap_empty.exit119.if.end84_crit_edge:          ; preds = %bitmap_empty.exit119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

do.end78:                                         ; preds = %bitmap_empty.exit119
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 85, i32 noundef 9, ptr noundef null) #6
  br label %if.end84

if.end84:                                         ; preds = %do.end78, %bitmap_empty.exit119.if.end84_crit_edge
  %16 = ptrtoint ptr %header_modify_sw_icm_alloc_blocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %header_modify_sw_icm_alloc_blocks, align 4
  tail call void @kfree(ptr noundef %17) #6
  br label %if.end93

if.end93:                                         ; preds = %if.end84, %if.end37.if.end93_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end93, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_dm_sw_icm_alloc(ptr noundef %dev, i32 noundef %type, i64 noundef %length, i32 noundef %log_alignment, i16 noundef zeroext %uid, ptr nocapture noundef writeonly %addr, ptr nocapture noundef writeonly %obj_id) #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [20 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 63
  %shl = shl nuw i32 1, %and
  %conv = sext i32 %shl to i64
  %add = add i64 %length, -1
  %sub = add i64 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp180 = icmp ult i64 %sub, 4294967296
  br i1 %cmp180, label %if.then184, label %if.else190, !prof !18

if.then184:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv185 = trunc i64 %sub to i32
  %div188555 = lshr i32 %conv185, %and
  br label %if.end194

if.else190:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %sub) #11, !srcloc !19
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t582 = trunc i64 %asmresult1.i to i32
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then184
  %_tmp.0.off0 = phi i32 [ %div188555, %if.then184 ], [ %extract.t582, %if.else190 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #6
  %5 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %in) #6
  %6 = call ptr @memset(ptr %in, i32 0, i32 80)
  %dm198 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 21
  %7 = ptrtoint ptr %dm198 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dm198, align 8
  %tobool200.not = icmp eq ptr %8, null
  br i1 %tobool200.not, label %if.end194.cleanup_crit_edge, label %if.end202

if.end194.cleanup_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end202:                                        ; preds = %if.end194
  %9 = tail call i64 @llvm.ctpop.i64(i64 %length), !range !20
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %9)
  %10 = icmp eq i64 %9, 1
  br i1 %10, label %lor.lhs.false207, label %if.end202.cleanup_crit_edge

if.end202.cleanup_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false207:                                 ; preds = %if.end202
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr, align 4
  %shr214 = lshr i32 %12, 8
  %and215 = and i32 %shr214, 63
  %notmask = shl nsw i32 -1, %and215
  %sub217 = xor i32 %notmask, -1
  %conv218 = sext i32 %sub217 to i64
  %and219 = and i64 %conv218, %length
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and219)
  %tobool220.not = icmp eq i64 %and219, 0
  br i1 %tobool220.not, label %do.body, label %lor.lhs.false207.cleanup_crit_edge

lor.lhs.false207.cleanup_crit_edge:               ; preds = %lor.lhs.false207
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false207
  %add.ptr240 = getelementptr inbounds i32, ptr %in, i32 1
  %13 = ptrtoint ptr %add.ptr240 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr240, align 4
  %and241 = and i32 %14, -65536
  %or244 = or i32 %and241, 8
  store i32 %or244, ptr %add.ptr240, align 4
  %conv251 = zext i16 %uid to i32
  %or260 = or i32 %conv251, 167772160
  %15 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or260, ptr %in, align 4
  %16 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.body.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb279
  ]

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr270 = getelementptr i64, ptr %1, i32 3
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 4
  %steering_sw_icm_alloc_blocks = getelementptr inbounds %struct.mlx5_dm, ptr %8, i32 0, i32 1
  br label %sw.epilog

sw.bb279:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr285 = getelementptr i64, ptr %1, i32 5
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr, align 4
  %shr292 = lshr i32 %20, 16
  %header_modify_sw_icm_alloc_blocks = getelementptr inbounds %struct.mlx5_dm, ptr %8, i32 0, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb279, %sw.bb
  %block_map.0.in = phi ptr [ %header_modify_sw_icm_alloc_blocks, %sw.bb279 ], [ %steering_sw_icm_alloc_blocks, %sw.bb ]
  %icm_start_addr.0.in = phi ptr [ %add.ptr285, %sw.bb279 ], [ %add.ptr270, %sw.bb ]
  %log_icm_size.0.in = phi i32 [ %shr292, %sw.bb279 ], [ %18, %sw.bb ]
  %21 = ptrtoint ptr %icm_start_addr.0.in to i32
  call void @__asan_load8_noabort(i32 %21)
  %icm_start_addr.0 = load i64, ptr %icm_start_addr.0.in, align 8
  %22 = ptrtoint ptr %block_map.0.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %block_map.0 = load ptr, ptr %block_map.0.in, align 4
  %tobool294.not = icmp eq ptr %block_map.0, null
  br i1 %tobool294.not, label %sw.epilog.cleanup_crit_edge, label %if.end296

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end296:                                        ; preds = %sw.epilog
  %log_icm_size.0 = and i32 %log_icm_size.0.in, 255
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr, align 4
  %shr303 = lshr i32 %24, 8
  %and304 = and i32 %shr303, 63
  %sub305 = sub nsw i32 %log_icm_size.0, %and304
  %shl306 = shl nuw i32 1, %sub305
  %25 = tail call i32 @llvm.usub.sat.i32(i32 %log_alignment, i32 %and304)
  %notmask554 = shl nsw i32 -1, %25
  %sub337 = xor i32 %notmask554, -1
  tail call void @_raw_spin_lock(ptr noundef nonnull %8) #6
  %call.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef nonnull %block_map.0, i32 noundef %shl306, i32 noundef 0, i32 noundef %_tmp.0.off0, i32 noundef %sub337, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %shl306)
  %cmp343 = icmp ult i32 %call.i, %shl306
  br i1 %cmp343, label %if.else11.i, label %if.end347

if.else11.i:                                      ; preds = %if.end296
  %conv341 = zext i32 %call.i to i64
  tail call void @__bitmap_set(ptr noundef nonnull %block_map.0, i32 noundef %call.i, i32 noundef %_tmp.0.off0) #6
  tail call void @_raw_spin_unlock(ptr noundef nonnull %8) #6
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %add.ptr361 = getelementptr i32, ptr %27, i32 8
  %28 = ptrtoint ptr %add.ptr361 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr361, align 4
  %shr362 = lshr i32 %29, 8
  %and363 = and i32 %shr362, 63
  %sh_prom364 = zext i32 %and363 to i64
  %shl365 = shl i64 %conv341, %sh_prom364
  %add366 = add i64 %shl365, %icm_start_addr.0
  %add.ptr375 = getelementptr inbounds i8, ptr %in, i32 32
  %30 = ptrtoint ptr %add.ptr375 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %add366, ptr %add.ptr375, align 8
  %shr.i.i = lshr i64 %length, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.end347:                                        ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef nonnull %8) #6
  br label %cleanup

if.then.i.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i, i1 true) #6, !range !21
  %add.i.i = sub nuw nsw i32 64, %31
  br label %cond.end393

if.end.i.i:                                       ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv1.i.i = trunc i64 %length to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %conv1.i.i, 0
  %32 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i, i1 true) #6, !range !21
  %sub.i6.i.i = sub nuw nsw i32 32, %32
  %cond.i7.i.i = select i1 %tobool.not.i5.i.i, i32 0, i32 %sub.i6.i.i
  br label %cond.end393

cond.end393:                                      ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %cond.i7.i.i, %if.end.i.i ]
  %sub.i = add nsw i32 %retval.0.i.i, 255
  %add.ptr398 = getelementptr inbounds i8, ptr %in, i32 24
  %33 = ptrtoint ptr %add.ptr398 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr398, align 4
  %and399 = and i32 %34, -256
  %and400 = and i32 %sub.i, 255
  %or402 = or i32 %and399, %and400
  store i32 %or402, ptr %add.ptr398, align 4
  %call408 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 80, ptr noundef nonnull %out, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call408)
  %tobool409.not = icmp eq i32 %call408, 0
  br i1 %tobool409.not, label %if.end414, label %if.then410

if.then410:                                       ; preds = %cond.end393
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_lock(ptr noundef nonnull %8) #6
  call void @__bitmap_clear(ptr noundef nonnull %block_map.0, i32 noundef %call.i, i32 noundef %_tmp.0.off0) #6
  call void @_raw_spin_unlock(ptr noundef nonnull %8) #6
  br label %cleanup

if.end414:                                        ; preds = %cond.end393
  call void @__sanitizer_cov_trace_pc() #8
  %conv415 = trunc i64 %add366 to i32
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv415, ptr %addr, align 4
  %add.ptr417 = getelementptr inbounds i32, ptr %out, i32 2
  %36 = ptrtoint ptr %add.ptr417 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr417, align 4
  %38 = ptrtoint ptr %obj_id to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %obj_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end414, %if.then410, %if.end347, %sw.epilog.cleanup_crit_edge, %do.body.cleanup_crit_edge, %lor.lhs.false207.cleanup_crit_edge, %if.end202.cleanup_crit_edge, %if.end194.cleanup_crit_edge
  %retval.0 = phi i32 [ %call408, %if.then410 ], [ 0, %if.end414 ], [ -95, %if.end194.cleanup_crit_edge ], [ -22, %lor.lhs.false207.cleanup_crit_edge ], [ -22, %if.end202.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ -95, %sw.epilog.cleanup_crit_edge ], [ -12, %if.end347 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %in) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx5_cmd_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx5_dm_sw_icm_dealloc(ptr noundef %dev, i32 noundef %type, i64 noundef %length, i16 noundef zeroext %uid, i32 noundef %addr, i32 noundef %obj_id) #0 align 64 {
entry:
  %out = alloca [4 x i32], align 4
  %in = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx5_core_dev, ptr %dev, i32 0, i32 8, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %shr = lshr i32 %3, 8
  %and = and i32 %shr, 63
  %shl = shl nuw i32 1, %and
  %conv = sext i32 %shl to i64
  %add = add i64 %length, -1
  %sub = add i64 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp180 = icmp ult i64 %sub, 4294967296
  br i1 %cmp180, label %if.then184, label %if.else190, !prof !18

if.then184:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv185 = trunc i64 %sub to i32
  %div188390 = lshr i32 %conv185, %and
  br label %if.end194

if.else190:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %shl, i64 %sub) #11, !srcloc !19
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t398 = trunc i64 %asmresult1.i to i32
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then184
  %_tmp.0.off0 = phi i32 [ %div188390, %if.then184 ], [ %extract.t398, %if.else190 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %out) #6
  %5 = call ptr @memset(ptr %out, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %in) #6
  %6 = call ptr @memset(ptr %in, i32 0, i32 16)
  %dm198 = getelementptr inbounds %struct.mlx5_core_dev, ptr %dev, i32 0, i32 21
  %7 = ptrtoint ptr %dm198 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dm198, align 8
  %tobool200.not = icmp eq ptr %8, null
  br i1 %tobool200.not, label %if.end194.cleanup_crit_edge, label %if.end202

if.end194.cleanup_crit_edge:                      ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end202:                                        ; preds = %if.end194
  %9 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %type, label %if.end202.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb209
  ]

if.end202.cleanup_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr208 = getelementptr i64, ptr %1, i32 3
  %steering_sw_icm_alloc_blocks = getelementptr inbounds %struct.mlx5_dm, ptr %8, i32 0, i32 1
  br label %do.body

sw.bb209:                                         ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr215 = getelementptr i64, ptr %1, i32 5
  %header_modify_sw_icm_alloc_blocks = getelementptr inbounds %struct.mlx5_dm, ptr %8, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %sw.bb209, %sw.bb
  %block_map.0.in = phi ptr [ %header_modify_sw_icm_alloc_blocks, %sw.bb209 ], [ %steering_sw_icm_alloc_blocks, %sw.bb ]
  %icm_start_addr.0.in = phi ptr [ %add.ptr215, %sw.bb209 ], [ %add.ptr208, %sw.bb ]
  %10 = ptrtoint ptr %icm_start_addr.0.in to i32
  call void @__asan_load8_noabort(i32 %10)
  %icm_start_addr.0 = load i64, ptr %icm_start_addr.0.in, align 8
  %11 = ptrtoint ptr %block_map.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %block_map.0 = load ptr, ptr %block_map.0.in, align 4
  %add.ptr233 = getelementptr inbounds i32, ptr %in, i32 1
  %12 = ptrtoint ptr %add.ptr233 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr233, align 4
  %and234 = and i32 %13, -65536
  %or237 = or i32 %and234, 8
  store i32 %or237, ptr %add.ptr233, align 4
  %add.ptr248 = getelementptr inbounds i32, ptr %in, i32 2
  %14 = ptrtoint ptr %add.ptr248 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %obj_id, ptr %add.ptr248, align 4
  %conv259 = zext i16 %uid to i32
  %or268 = or i32 %conv259, 167968768
  %15 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or268, ptr %in, align 4
  %call275 = call i32 @mlx5_cmd_exec(ptr noundef %dev, ptr noundef nonnull %in, i32 noundef 16, ptr noundef nonnull %out, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %tobool276.not = icmp eq i32 %call275, 0
  br i1 %tobool276.not, label %if.end278, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end278:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv279 = zext i32 %addr to i64
  %sub280 = sub i64 %conv279, %icm_start_addr.0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %add.ptr286 = getelementptr i32, ptr %17, i32 8
  %18 = ptrtoint ptr %add.ptr286 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr286, align 4
  %shr287 = lshr i32 %19, 8
  %and288 = and i32 %shr287, 63
  %sh_prom289 = zext i32 %and288 to i64
  %shr290 = lshr i64 %sub280, %sh_prom289
  call void @_raw_spin_lock(ptr noundef nonnull %8) #6
  %conv291 = trunc i64 %shr290 to i32
  call void @__bitmap_clear(ptr noundef %block_map.0, i32 noundef %conv291, i32 noundef %_tmp.0.off0) #6
  call void @_raw_spin_unlock(ptr noundef nonnull %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end278, %do.body.cleanup_crit_edge, %if.end202.cleanup_crit_edge, %if.end194.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end278 ], [ -95, %if.end194.cleanup_crit_edge ], [ -22, %if.end202.cleanup_crit_edge ], [ %call275, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %in) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %out) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @mlx5_dm_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/dm.c", i32 30, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/dm.c", i32 75, i32 3}
!5 = !{ptr @__ksymtab_mlx5_dm_sw_icm_alloc, !6, !"__ksymtab_mlx5_dm_sw_icm_alloc", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/dm.c", i32 180, i32 1}
!7 = !{ptr @__ksymtab_mlx5_dm_sw_icm_dealloc, !8, !"__ksymtab_mlx5_dm_sw_icm_dealloc", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/mellanox/mlx5/core/lib/dm.c", i32 228, i32 1}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2148637881, i64 2148638161, i64 2148638495, i64 2148638829}
!20 = !{i64 0, i64 65}
!21 = !{i32 0, i32 33}
