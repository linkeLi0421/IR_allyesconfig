; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum1_acl_tcam.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum1_acl_tcam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_acl_tcam_ops = type { i32, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp_acl_ctcam_region_ops = type { ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp1_acl_tcam_region = type { %struct.mlxsw_sp_acl_ctcam_region, ptr, %struct.anon.179 }
%struct.mlxsw_sp_acl_ctcam_region = type { ptr, ptr, ptr }
%struct.anon.179 = type { %struct.mlxsw_sp_acl_ctcam_chunk, %struct.mlxsw_sp_acl_ctcam_entry, ptr }
%struct.mlxsw_sp_acl_ctcam_chunk = type { %struct.parman_prio }
%struct.parman_prio = type { %struct.list_head, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mlxsw_sp_acl_ctcam_entry = type { %struct.parman_item }
%struct.parman_item = type { %struct.list_head, i32 }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_acl_tcam_region = type { ptr, ptr, %struct.list_head, i32, i16, [16 x i8], ptr, ptr, [0 x i32] }

@mlxsw_sp1_acl_tcam_ops = dso_local constant { %struct.mlxsw_sp_acl_tcam_ops, [56 x i8] } { %struct.mlxsw_sp_acl_tcam_ops { i32 80, i32 0, ptr @mlxsw_sp1_acl_tcam_init, ptr @mlxsw_sp1_acl_tcam_fini, i32 52, ptr @mlxsw_sp1_acl_tcam_region_init, ptr @mlxsw_sp1_acl_tcam_region_fini, ptr @mlxsw_sp1_acl_tcam_region_associate, ptr null, ptr null, i32 20, ptr @mlxsw_sp1_acl_tcam_chunk_init, ptr @mlxsw_sp1_acl_tcam_chunk_fini, i32 12, ptr @mlxsw_sp1_acl_tcam_entry_add, ptr @mlxsw_sp1_acl_tcam_entry_del, ptr @mlxsw_sp1_acl_tcam_entry_action_replace, ptr @mlxsw_sp1_acl_tcam_entry_activity_get }, [56 x i8] zeroinitializer }, align 32
@mlxsw_sp1_acl_ctcam_region_ops = internal constant { %struct.mlxsw_sp_acl_ctcam_region_ops, [24 x i8] } { %struct.mlxsw_sp_acl_ctcam_region_ops { ptr @mlxsw_sp1_acl_ctcam_region_entry_insert, ptr @mlxsw_sp1_acl_ctcam_region_entry_remove }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum1_acl_tcam.c\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_reg_ptce2 = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12311, i16 472, ptr @.str.13 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 35, ptr null, ptr null }, align 1
@.str.1 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_ptce2_v\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_ptce2_op\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_ptce2_offset\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_ptce2_priority\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ptce2\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_ptce2_a\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [23 x i8] c"mlxsw_sp1_acl_tcam_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 237, i32 36 }
@___asan_gen_.19 = private unnamed_addr constant [31 x i8] c"mlxsw_sp1_acl_ctcam_region_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 45, i32 1 }
@___asan_gen_.23 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_acl_tcam.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 76, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_ptce2\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 33, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 2832, i32 1 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 2862, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 2867, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 2876, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 2826, i32 1 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 2839, i32 1 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp1_acl_tcam_ops, ptr @mlxsw_sp1_acl_ctcam_region_ops, ptr @.str, ptr @mlxsw_reg_ptce2, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_acl_tcam_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_acl_ctcam_region_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_ptce2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp1_acl_tcam_init(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %priv, ptr nocapture noundef readnone %tcam) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp1_acl_tcam_fini(ptr nocapture noundef %mlxsw_sp, ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_acl_tcam_region_init(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr nocapture noundef readnone %tcam_priv, ptr noundef %_region, ptr nocapture noundef readnone %hints_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlxsw_sp_acl_ctcam_region_init(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %_region, ptr noundef nonnull @mlxsw_sp1_acl_ctcam_region_ops) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %catchall.i = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, ptr %region_priv, i32 0, i32 2
  tail call void @mlxsw_sp_acl_ctcam_chunk_init(ptr noundef %region_priv, ptr noundef %catchall.i, i32 noundef -1) #4
  %acl.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 13
  %0 = ptrtoint ptr %acl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %acl.i, align 4
  %call.i = tail call ptr @mlxsw_sp_acl_rulei_create(ptr noundef %1, ptr noundef null) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlxsw_sp1_acl_ctcam_region_catchall_add.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %call3.i = tail call i32 @mlxsw_sp_acl_rulei_act_continue(ptr noundef %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.end27.critedge.i, label %do.end.i, !prof !42

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #4
  br label %mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18

if.end27.critedge.i:                              ; preds = %if.end.i
  %call28.i = tail call i32 @mlxsw_sp_acl_rulei_commit(ptr noundef %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end27.critedge.i.mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18_crit_edge

if.end27.critedge.i.mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18_crit_edge: ; preds = %if.end27.critedge.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18

if.end31.i:                                       ; preds = %if.end27.critedge.i
  %centry.i = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, ptr %region_priv, i32 0, i32 2, i32 1
  %call36.i = tail call i32 @mlxsw_sp_acl_ctcam_entry_add(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %catchall.i, ptr noundef %centry.i, ptr noundef %call.i, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread, label %if.end31.i.mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18_crit_edge

if.end31.i.mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18

mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #6
  %rulei41.i = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, ptr %region_priv, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %rulei41.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %rulei41.i, align 4
  %region5 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, ptr %region_priv, i32 0, i32 1
  %3 = ptrtoint ptr %region5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %_region, ptr %region5, align 4
  br label %cleanup

mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18: ; preds = %if.end31.i.mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18_crit_edge, %if.end27.critedge.i.mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18_crit_edge, %do.end.i
  %err.0.i = phi i32 [ %call28.i, %if.end27.critedge.i.mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18_crit_edge ], [ %call36.i, %if.end31.i.mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18_crit_edge ], [ %call3.i, %do.end.i ]
  tail call void @mlxsw_sp_acl_rulei_destroy(ptr noundef %call.i) #4
  br label %err_catchall_add

mlxsw_sp1_acl_ctcam_region_catchall_add.exit:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call.i to i32
  br label %err_catchall_add

err_catchall_add:                                 ; preds = %mlxsw_sp1_acl_ctcam_region_catchall_add.exit, %mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18
  %err.1.i21 = phi i32 [ %err.0.i, %mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread18 ], [ %4, %mlxsw_sp1_acl_ctcam_region_catchall_add.exit ]
  tail call void @mlxsw_sp_acl_ctcam_chunk_fini(ptr noundef %catchall.i) #4
  tail call void @mlxsw_sp_acl_ctcam_region_fini(ptr noundef %region_priv) #4
  br label %cleanup

cleanup:                                          ; preds = %err_catchall_add, %mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1.i21, %err_catchall_add ], [ 0, %mlxsw_sp1_acl_ctcam_region_catchall_add.exit.thread ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_acl_tcam_region_fini(ptr noundef %mlxsw_sp, ptr noundef %region_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %catchall.i = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, ptr %region_priv, i32 0, i32 2
  %rulei1.i = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, ptr %region_priv, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %rulei1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rulei1.i, align 4
  %centry.i = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, ptr %region_priv, i32 0, i32 2, i32 1
  tail call void @mlxsw_sp_acl_ctcam_entry_del(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %catchall.i, ptr noundef %centry.i) #4
  tail call void @mlxsw_sp_acl_rulei_destroy(ptr noundef %1) #4
  tail call void @mlxsw_sp_acl_ctcam_chunk_fini(ptr noundef %catchall.i) #4
  tail call void @mlxsw_sp_acl_ctcam_region_fini(ptr noundef %region_priv) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp1_acl_tcam_region_associate(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %region) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_acl_tcam_chunk_init(ptr noundef %region_priv, ptr noundef %chunk_priv, i32 noundef %priority) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_acl_ctcam_chunk_init(ptr noundef %region_priv, ptr noundef %chunk_priv, i32 noundef %priority) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_acl_tcam_chunk_fini(ptr noundef %chunk_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_acl_ctcam_chunk_fini(ptr noundef %chunk_priv) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_acl_tcam_entry_add(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %chunk_priv, ptr noundef %entry_priv, ptr noundef %rulei) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlxsw_sp_acl_ctcam_entry_add(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %chunk_priv, ptr noundef %entry_priv, ptr noundef %rulei, i1 noundef zeroext false) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_acl_tcam_entry_del(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %chunk_priv, ptr noundef %entry_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_acl_ctcam_entry_del(ptr noundef %mlxsw_sp, ptr noundef %region_priv, ptr noundef %chunk_priv, ptr noundef %entry_priv) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp1_acl_tcam_entry_action_replace(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readnone %region_priv, ptr nocapture noundef readnone %entry_priv, ptr nocapture noundef readnone %rulei) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_acl_tcam_entry_activity_get(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %region_priv, ptr nocapture noundef readonly %entry_priv, ptr nocapture noundef writeonly %activity) #1 align 64 {
entry:
  %ptce2_pl.i = alloca [472 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.parman_item, ptr %entry_priv, i32 0, i32 1
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %region2 = getelementptr inbounds %struct.mlxsw_sp1_acl_tcam_region, ptr %region_priv, i32 0, i32 1
  %2 = ptrtoint ptr %region2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %region2, align 4
  call void @llvm.lifetime.start.p0(i64 472, ptr nonnull %ptce2_pl.i) #4
  %tcam_region_info.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %3, i32 0, i32 5
  %4 = call ptr @memset(ptr %ptce2_pl.i, i32 0, i32 472)
  %5 = ptrtoint ptr %ptce2_pl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ptce2_pl.i, align 4
  %conv2.i.i = and i32 %1, 65535
  %or.i.i28.i.i = and i32 %6, 2140078080
  %and7.i.i54.i.i = or i32 %or.i.i28.i.i, -2146435072
  %or.i.i55.i.i = or i32 %conv2.i.i, %and7.i.i54.i.i
  store i32 %or.i.i55.i.i, ptr %ptce2_pl.i, align 4
  %arrayidx.i.i76.i.i = getelementptr inbounds i32, ptr %ptce2_pl.i, i32 1
  %7 = ptrtoint ptr %arrayidx.i.i76.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i76.i.i, align 4
  %and7.i.i78.i.i = and i32 %8, -16777216
  store i32 %and7.i.i78.i.i, ptr %arrayidx.i.i76.i.i, align 4
  %arrayidx.i.i82.i.i = getelementptr inbounds i8, ptr %ptce2_pl.i, i32 16
  %9 = call ptr @memcpy(ptr %arrayidx.i.i82.i.i, ptr %tcam_region_info.i, i32 16)
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %10 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_query(ptr noundef %11, ptr noundef nonnull @mlxsw_reg_ptce2, ptr noundef nonnull %ptce2_pl.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %mlxsw_reg_ptce2_a_get.exit.i, label %entry.mlxsw_sp1_acl_tcam_region_entry_activity_get.exit_crit_edge

entry.mlxsw_sp1_acl_tcam_region_entry_activity_get.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mlxsw_sp1_acl_tcam_region_entry_activity_get.exit

mlxsw_reg_ptce2_a_get.exit.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %ptce2_pl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ptce2_pl.i, align 4
  %14 = lshr i32 %13, 30
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = ptrtoint ptr %activity to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %activity, align 1
  br label %mlxsw_sp1_acl_tcam_region_entry_activity_get.exit

mlxsw_sp1_acl_tcam_region_entry_activity_get.exit: ; preds = %mlxsw_reg_ptce2_a_get.exit.i, %entry.mlxsw_sp1_acl_tcam_region_entry_activity_get.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 472, ptr nonnull %ptce2_pl.i) #4
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_ctcam_region_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_ctcam_region_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp1_acl_ctcam_region_entry_insert(ptr nocapture noundef readnone %cregion, ptr nocapture noundef readnone %centry, ptr nocapture noundef readnone %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp1_acl_ctcam_region_entry_remove(ptr nocapture noundef %cregion, ptr nocapture noundef %centry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_ctcam_chunk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_rulei_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_act_continue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rulei_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_ctcam_entry_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_rulei_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_ctcam_chunk_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_ctcam_entry_del(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @mlxsw_sp1_acl_tcam_ops, !1, !"mlxsw_sp1_acl_tcam_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_acl_tcam.c", i32 237, i32 36}
!2 = !{ptr @mlxsw_sp1_acl_ctcam_region_ops, !3, !"mlxsw_sp1_acl_ctcam_region_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_acl_tcam.c", i32 45, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum1_acl_tcam.c", i32 76, i32 6}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__mlxsw_item_offset._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @__mlxsw_item_offset._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2832, i32 1}
!14 = distinct !{null, !13, !"mlxsw_reg_ptce2_v_item", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2862, i32 1}
!17 = distinct !{null, !16, !"mlxsw_reg_ptce2_op_item", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2867, i32 1}
!20 = distinct !{null, !19, !"mlxsw_reg_ptce2_offset_item", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2876, i32 1}
!23 = distinct !{null, !22, !"mlxsw_reg_ptce2_priority_item", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2882, i32 1}
!26 = distinct !{null, !25, !"mlxsw_reg_ptce2_tcam_region_info_item", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2826, i32 1}
!29 = !{ptr @mlxsw_reg_ptce2, !28, !"mlxsw_reg_ptce2", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2839, i32 1}
!32 = distinct !{null, !31, !"mlxsw_reg_ptce2_a_item", i1 false, i1 false}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 2000, i32 1}
