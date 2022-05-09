; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_mr_tcam.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr_tcam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_mr_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_mr_tcam_ops = type { i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.mlxsw_sp_mr_tcam_route = type { %struct.mlxsw_sp_mr_tcam_erif_list, ptr, i32, i32, %struct.mlxsw_sp_mr_route_key, i16, i16, ptr }
%struct.mlxsw_sp_mr_tcam_erif_list = type { %struct.list_head, i32 }
%struct.mlxsw_sp_mr_route_key = type { i32, i32, %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr }
%union.mlxsw_sp_l3addr = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.mlxsw_sp_mr_route_params = type { %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_info, i32 }
%struct.mlxsw_sp_mr_route_info = type { i32, i16, ptr, i32, i16 }
%struct.mlxsw_sp_mr_erif_sublist = type { %struct.list_head, i32, i32, [32 x i16], i8 }

@mlxsw_sp_mr_tcam_ops = dso_local constant { %struct.mlxsw_sp_mr_ops, [44 x i8] } { %struct.mlxsw_sp_mr_ops { i32 4, i32 104, ptr @mlxsw_sp_mr_tcam_init, ptr @mlxsw_sp_mr_tcam_route_create, ptr @mlxsw_sp_mr_tcam_route_update, ptr @mlxsw_sp_mr_tcam_route_stats, ptr @mlxsw_sp_mr_tcam_route_action_update, ptr @mlxsw_sp_mr_tcam_route_min_mtu_update, ptr @mlxsw_sp_mr_tcam_route_irif_update, ptr @mlxsw_sp_mr_tcam_route_erif_add, ptr @mlxsw_sp_mr_tcam_route_erif_del, ptr @mlxsw_sp_mr_tcam_route_destroy, ptr @mlxsw_sp_mr_tcam_fini }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mlxsw_reg_rigr2 = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -32733, i16 176, ptr @.str.17 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, align 1
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_rigr2_rigr_index\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_rigr2_vnext\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_rigr2_next_rigr_index\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_rigr2_vrmid\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_rigr2_rmid_index\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_rigr2_erif_entry_v\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_rigr2_erif_entry_erif\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rigr2\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"mlxsw_sp_mr_tcam_ops\00", align 1
@___asan_gen_.19 = private constant [58 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr_tcam.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 601, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_rigr2\00", align 1
@___asan_gen_.31 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 33, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 8423, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 8429, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 8436, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 8442, i32 1 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 8451, i32 1 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 8461, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 8469, i32 1 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 8417, i32 1 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_mr_tcam_ops, ptr @mlxsw_reg_rigr2, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_mr_tcam_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_rigr2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_mr_tcam_init(ptr noundef %mlxsw_sp, ptr nocapture noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 29
  %0 = ptrtoint ptr %mr_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_tcam_ops, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  %call = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %3, i32 noundef 40) #7
  br i1 %call, label %if.end8.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #10
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i.i, ptr %priv, align 4
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end5

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i.i
  %init = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init, align 4
  %call7 = tail call i32 %8(ptr noundef %mlxsw_sp, ptr noundef nonnull %call9.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %err_init

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_init:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %10) #7
  br label %cleanup

cleanup:                                          ; preds = %err_init, %if.end5.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %err_init ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_mr_tcam_route_create(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %priv, ptr noundef %route_priv, ptr nocapture noundef readonly %route_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 29
  %0 = ptrtoint ptr %mr_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_tcam_ops, align 4
  %key = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 4
  %2 = call ptr @memcpy(ptr %key, ptr %route_params, i32 72)
  %value = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, ptr %route_params, i32 0, i32 1
  %irif_index = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, ptr %route_params, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %irif_index to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %irif_index, align 4
  %irif_index2 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 5
  %5 = ptrtoint ptr %irif_index2 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %irif_index2, align 4
  %min_mtu = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, ptr %route_params, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %min_mtu to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %min_mtu, align 4
  %min_mtu4 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 6
  %8 = ptrtoint ptr %min_mtu4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %min_mtu4, align 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %action = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 3
  %11 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %action, align 4
  %12 = ptrtoint ptr %route_priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %route_priv, ptr %route_priv, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %route_priv, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %route_priv, ptr %prev.i.i, align 4
  %erif_indices.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, ptr %route_params, i32 0, i32 1, i32 2
  %erif_num.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, ptr %route_params, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %erif_num.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %erif_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7.not.i = icmp eq i32 %15, 0
  br i1 %cmp7.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.08.i, 1
  %16 = ptrtoint ptr %erif_num.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %erif_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %erif_indices.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %erif_indices.i, align 4
  %arrayidx.i = getelementptr i16, ptr %19, i32 %i.08.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx.i, align 2
  %call.i = tail call fastcc i32 @mlxsw_sp_mr_erif_list_add(ptr noundef %mlxsw_sp, ptr noundef %route_priv, i16 noundef zeroext %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.err_counter_alloc_crit_edge

for.body.i.err_counter_alloc_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_counter_alloc

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %counter_index = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 2
  %call8 = tail call i32 @mlxsw_sp_flow_counter_alloc(ptr noundef %mlxsw_sp, ptr noundef %counter_index) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end.err_counter_alloc_crit_edge

if.end.err_counter_alloc_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_counter_alloc

if.end11:                                         ; preds = %if.end
  %22 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %action, align 4
  %24 = ptrtoint ptr %irif_index2 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %irif_index2, align 4
  %26 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %counter_index, align 4
  %28 = ptrtoint ptr %min_mtu4 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %min_mtu4, align 2
  %call17 = tail call fastcc ptr @mlxsw_sp_mr_tcam_afa_block_create(ptr noundef %mlxsw_sp, i32 noundef %23, i16 noundef zeroext %25, i32 noundef %27, i16 noundef zeroext %29, ptr noundef %route_priv)
  %afa_block = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 1
  %30 = ptrtoint ptr %afa_block to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call17, ptr %afa_block, align 4
  %cmp.i83 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then20, label %if.end8.i.i

if.then20:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %call17 to i32
  br label %err_afa_block_create

if.end8.i.i:                                      ; preds = %if.end11
  %route_priv_size = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %route_priv_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %route_priv_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #10
  %priv25 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 7
  %34 = ptrtoint ptr %priv25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call9.i.i, ptr %priv25, align 4
  %tobool27.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool27.not, label %if.end8.i.i.err_route_priv_alloc_crit_edge, label %if.end29

if.end8.i.i.err_route_priv_alloc_crit_edge:       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_route_priv_alloc

if.end29:                                         ; preds = %if.end8.i.i
  %route_create = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %route_create to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %route_create, align 4
  %37 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %priv, align 4
  %39 = ptrtoint ptr %afa_block to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %afa_block, align 4
  %prio = getelementptr inbounds %struct.mlxsw_sp_mr_route_params, ptr %route_params, i32 0, i32 2
  %41 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %prio, align 4
  %call34 = tail call i32 %36(ptr noundef %mlxsw_sp, ptr noundef %38, ptr noundef nonnull %call9.i.i, ptr noundef %key, ptr noundef %40, i32 noundef %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end29.cleanup_crit_edge, label %err_route_create

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_route_create:                                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %priv25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv25, align 4
  tail call void @kfree(ptr noundef %44) #7
  br label %err_route_priv_alloc

err_route_priv_alloc:                             ; preds = %err_route_create, %if.end8.i.i.err_route_priv_alloc_crit_edge
  %err.0 = phi i32 [ %call34, %err_route_create ], [ -12, %if.end8.i.i.err_route_priv_alloc_crit_edge ]
  %45 = ptrtoint ptr %afa_block to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %afa_block, align 4
  tail call void @mlxsw_afa_block_destroy(ptr noundef %46) #7
  br label %err_afa_block_create

err_afa_block_create:                             ; preds = %err_route_priv_alloc, %if.then20
  %err.1 = phi i32 [ %31, %if.then20 ], [ %err.0, %err_route_priv_alloc ]
  %47 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %counter_index, align 4
  tail call void @mlxsw_sp_flow_counter_free(ptr noundef %mlxsw_sp, i32 noundef %48) #7
  br label %err_counter_alloc

err_counter_alloc:                                ; preds = %err_afa_block_create, %if.end.err_counter_alloc_crit_edge, %for.body.i.err_counter_alloc_crit_edge
  %err.2 = phi i32 [ %call8, %if.end.err_counter_alloc_crit_edge ], [ %err.1, %err_afa_block_create ], [ %call.i, %for.body.i.err_counter_alloc_crit_edge ]
  %49 = ptrtoint ptr %route_priv to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %route_priv, align 4
  %cmp.not17.i = icmp eq ptr %50, %route_priv
  br i1 %cmp.not17.i, label %err_counter_alloc.cleanup_crit_edge, label %err_counter_alloc.for.body.i84_crit_edge

err_counter_alloc.for.body.i84_crit_edge:         ; preds = %err_counter_alloc
  br label %for.body.i84

err_counter_alloc.cleanup_crit_edge:              ; preds = %err_counter_alloc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i84:                                     ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i84_crit_edge, %err_counter_alloc.for.body.i84_crit_edge
  %erif_sublist.018.i = phi ptr [ %tmp.0.i, %mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i84_crit_edge ], [ %50, %err_counter_alloc.for.body.i84_crit_edge ]
  %51 = ptrtoint ptr %erif_sublist.018.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %tmp.0.i = load ptr, ptr %erif_sublist.018.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %erif_sublist.018.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i84.mlxsw_sp_mr_erif_sublist_destroy.exit.i_crit_edge

for.body.i84.mlxsw_sp_mr_erif_sublist_destroy.exit.i_crit_edge: ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_sublist_destroy.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i84
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %erif_sublist.018.i, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i.i, align 4
  %54 = ptrtoint ptr %erif_sublist.018.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %erif_sublist.018.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %mlxsw_sp_mr_erif_sublist_destroy.exit.i

mlxsw_sp_mr_erif_sublist_destroy.exit.i:          ; preds = %if.end.i.i.i.i, %for.body.i84.mlxsw_sp_mr_erif_sublist_destroy.exit.i_crit_edge
  %58 = ptrtoint ptr %erif_sublist.018.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 256 to ptr), ptr %erif_sublist.018.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %erif_sublist.018.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %rigr2_kvdl_index.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %erif_sublist.018.i, i32 0, i32 1
  %60 = ptrtoint ptr %rigr2_kvdl_index.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rigr2_kvdl_index.i.i, align 4
  tail call void @mlxsw_sp_kvdl_free(ptr noundef %mlxsw_sp, i32 noundef 3, i32 noundef 1, i32 noundef %61) #7
  tail call void @kfree(ptr noundef %erif_sublist.018.i) #7
  %cmp.not.i = icmp eq ptr %tmp.0.i, %route_priv
  br i1 %cmp.not.i, label %mlxsw_sp_mr_erif_sublist_destroy.exit.i.cleanup_crit_edge, label %mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i84_crit_edge

mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i84_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i84

mlxsw_sp_mr_erif_sublist_destroy.exit.i.cleanup_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i.cleanup_crit_edge, %err_counter_alloc.cleanup_crit_edge, %if.end29.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end29.cleanup_crit_edge ], [ %err.2, %err_counter_alloc.cleanup_crit_edge ], [ %err.2, %mlxsw_sp_mr_erif_sublist_destroy.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_mr_tcam_route_update(ptr noundef %mlxsw_sp, ptr noundef %route_priv, ptr nocapture noundef readonly %route_info) #0 align 64 {
entry:
  %erif_list = alloca %struct.mlxsw_sp_mr_tcam_erif_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 29
  %0 = ptrtoint ptr %mr_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_tcam_ops, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %erif_list) #7
  %2 = getelementptr inbounds %struct.list_head, ptr %erif_list, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_erif_list, ptr %erif_list, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !41
  %5 = ptrtoint ptr %erif_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %erif_list, ptr %erif_list, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %erif_list, ptr %2, align 4
  %erif_indices.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_info, ptr %route_info, i32 0, i32 2
  %erif_num.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_info, ptr %route_info, i32 0, i32 3
  %7 = ptrtoint ptr %erif_num.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %erif_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.not.i = icmp eq i32 %8, 0
  br i1 %cmp7.not.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.08.i, 1
  %9 = ptrtoint ptr %erif_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %erif_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %10
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end_crit_edge

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %erif_indices.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %erif_indices.i, align 4
  %arrayidx.i = getelementptr i16, ptr %12, i32 %i.08.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  %call.i = call fastcc i32 @mlxsw_sp_mr_erif_list_add(ptr noundef %mlxsw_sp, ptr noundef nonnull %erif_list, i16 noundef zeroext %14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %for.body.i.err_erif_populate_crit_edge

for.body.i.err_erif_populate_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_erif_populate

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %route_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %route_info, align 4
  %irif_index = getelementptr inbounds %struct.mlxsw_sp_mr_route_info, ptr %route_info, i32 0, i32 1
  %17 = ptrtoint ptr %irif_index to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %irif_index, align 4
  %counter_index = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 2
  %19 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %counter_index, align 4
  %min_mtu = getelementptr inbounds %struct.mlxsw_sp_mr_route_info, ptr %route_info, i32 0, i32 4
  %21 = ptrtoint ptr %min_mtu to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %min_mtu, align 4
  %call1 = call fastcc ptr @mlxsw_sp_mr_tcam_afa_block_create(ptr noundef %mlxsw_sp, i32 noundef %16, i16 noundef zeroext %18, i32 noundef %20, i16 noundef zeroext %22, ptr noundef nonnull %erif_list)
  %cmp.i49 = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call1 to i32
  br label %err_erif_populate

if.end5:                                          ; preds = %if.end
  %route_update = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %route_update to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %route_update, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 7
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %key = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 4
  %call6 = call i32 %25(ptr noundef %mlxsw_sp, ptr noundef %27, ptr noundef %key, ptr noundef %call1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %err_route_write

if.end9:                                          ; preds = %if.end5
  %afa_block10 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 1
  %28 = ptrtoint ptr %afa_block10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %afa_block10, align 4
  call void @mlxsw_afa_block_destroy(ptr noundef %29) #7
  %30 = ptrtoint ptr %route_priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %route_priv, align 4
  %cmp.not17.i = icmp eq ptr %31, %route_priv
  br i1 %cmp.not17.i, label %if.end9.mlxsw_sp_mr_erif_list_flush.exit_crit_edge, label %if.end9.for.body.i50_crit_edge

if.end9.for.body.i50_crit_edge:                   ; preds = %if.end9
  br label %for.body.i50

if.end9.mlxsw_sp_mr_erif_list_flush.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_list_flush.exit

for.body.i50:                                     ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i50_crit_edge, %if.end9.for.body.i50_crit_edge
  %erif_sublist.018.i = phi ptr [ %tmp.0.i, %mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i50_crit_edge ], [ %31, %if.end9.for.body.i50_crit_edge ]
  %32 = ptrtoint ptr %erif_sublist.018.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %tmp.0.i = load ptr, ptr %erif_sublist.018.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %erif_sublist.018.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i50.mlxsw_sp_mr_erif_sublist_destroy.exit.i_crit_edge

for.body.i50.mlxsw_sp_mr_erif_sublist_destroy.exit.i_crit_edge: ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_sublist_destroy.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i50
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %erif_sublist.018.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i.i, align 4
  %35 = ptrtoint ptr %erif_sublist.018.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %erif_sublist.018.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %mlxsw_sp_mr_erif_sublist_destroy.exit.i

mlxsw_sp_mr_erif_sublist_destroy.exit.i:          ; preds = %if.end.i.i.i.i, %for.body.i50.mlxsw_sp_mr_erif_sublist_destroy.exit.i_crit_edge
  %39 = ptrtoint ptr %erif_sublist.018.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %erif_sublist.018.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %erif_sublist.018.i, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %rigr2_kvdl_index.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %erif_sublist.018.i, i32 0, i32 1
  %41 = ptrtoint ptr %rigr2_kvdl_index.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rigr2_kvdl_index.i.i, align 4
  call void @mlxsw_sp_kvdl_free(ptr noundef %mlxsw_sp, i32 noundef 3, i32 noundef 1, i32 noundef %42) #7
  call void @kfree(ptr noundef %erif_sublist.018.i) #7
  %cmp.not.i = icmp eq ptr %tmp.0.i, %route_priv
  br i1 %cmp.not.i, label %mlxsw_sp_mr_erif_sublist_destroy.exit.i.mlxsw_sp_mr_erif_list_flush.exit_crit_edge, label %mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i50_crit_edge

mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i50_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i50

mlxsw_sp_mr_erif_sublist_destroy.exit.i.mlxsw_sp_mr_erif_list_flush.exit_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_list_flush.exit

mlxsw_sp_mr_erif_list_flush.exit:                 ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i.mlxsw_sp_mr_erif_list_flush.exit_crit_edge, %if.end9.mlxsw_sp_mr_erif_list_flush.exit_crit_edge
  %43 = ptrtoint ptr %afa_block10 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call1, ptr %afa_block10, align 4
  %44 = ptrtoint ptr %erif_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %erif_list, align 4
  %cmp.i.not.i.i = icmp eq ptr %45, %erif_list
  br i1 %cmp.i.not.i.i, label %mlxsw_sp_mr_erif_list_flush.exit.mlxsw_sp_mr_erif_list_move.exit_crit_edge, label %if.then.i.i

mlxsw_sp_mr_erif_list_flush.exit.mlxsw_sp_mr_erif_list_move.exit_crit_edge: ; preds = %mlxsw_sp_mr_erif_list_flush.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_list_move.exit

if.then.i.i:                                      ; preds = %mlxsw_sp_mr_erif_list_flush.exit
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %route_priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %route_priv, align 4
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %2, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %route_priv, ptr %prev3.i.i.i, align 4
  store ptr %45, ptr %route_priv, align 4
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %47, ptr %49, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev6.i.i.i, align 4
  br label %mlxsw_sp_mr_erif_list_move.exit

mlxsw_sp_mr_erif_list_move.exit:                  ; preds = %if.then.i.i, %mlxsw_sp_mr_erif_list_flush.exit.mlxsw_sp_mr_erif_list_move.exit_crit_edge
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %3, align 4
  %kvdl_index2.i = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_erif_list, ptr %route_priv, i32 0, i32 1
  %55 = ptrtoint ptr %kvdl_index2.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %kvdl_index2.i, align 4
  %56 = ptrtoint ptr %route_info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %route_info, align 4
  %action = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 3
  %58 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %action, align 4
  %59 = ptrtoint ptr %irif_index to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %irif_index, align 4
  %irif_index16 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 5
  %61 = ptrtoint ptr %irif_index16 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %irif_index16, align 4
  %62 = ptrtoint ptr %min_mtu to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %min_mtu, align 4
  %min_mtu18 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 6
  %64 = ptrtoint ptr %min_mtu18 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %min_mtu18, align 2
  br label %cleanup

err_route_write:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @mlxsw_afa_block_destroy(ptr noundef %call1) #7
  br label %err_erif_populate

err_erif_populate:                                ; preds = %err_route_write, %if.then3, %for.body.i.err_erif_populate_crit_edge
  %err.0 = phi i32 [ %23, %if.then3 ], [ %call6, %err_route_write ], [ %call.i, %for.body.i.err_erif_populate_crit_edge ]
  %65 = ptrtoint ptr %erif_list to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %erif_list, align 4
  %cmp.not17.i51 = icmp eq ptr %66, %erif_list
  br i1 %cmp.not17.i51, label %err_erif_populate.cleanup_crit_edge, label %err_erif_populate.for.body.i55_crit_edge

err_erif_populate.for.body.i55_crit_edge:         ; preds = %err_erif_populate
  br label %for.body.i55

err_erif_populate.cleanup_crit_edge:              ; preds = %err_erif_populate
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i55:                                     ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i62.for.body.i55_crit_edge, %err_erif_populate.for.body.i55_crit_edge
  %erif_sublist.018.i52 = phi ptr [ %tmp.0.i53, %mlxsw_sp_mr_erif_sublist_destroy.exit.i62.for.body.i55_crit_edge ], [ %66, %err_erif_populate.for.body.i55_crit_edge ]
  %67 = ptrtoint ptr %erif_sublist.018.i52 to i32
  call void @__asan_load4_noabort(i32 %67)
  %tmp.0.i53 = load ptr, ptr %erif_sublist.018.i52, align 4
  %call.i.i.i.i54 = call zeroext i1 @__list_del_entry_valid(ptr noundef %erif_sublist.018.i52) #7
  br i1 %call.i.i.i.i54, label %if.end.i.i.i.i58, label %for.body.i55.mlxsw_sp_mr_erif_sublist_destroy.exit.i62_crit_edge

for.body.i55.mlxsw_sp_mr_erif_sublist_destroy.exit.i62_crit_edge: ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_sublist_destroy.exit.i62

if.end.i.i.i.i58:                                 ; preds = %for.body.i55
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i56 = getelementptr inbounds %struct.list_head, ptr %erif_sublist.018.i52, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i.i.i56, align 4
  %70 = ptrtoint ptr %erif_sublist.018.i52 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %erif_sublist.018.i52, align 4
  %prev1.i.i.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i.i.i57, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %mlxsw_sp_mr_erif_sublist_destroy.exit.i62

mlxsw_sp_mr_erif_sublist_destroy.exit.i62:        ; preds = %if.end.i.i.i.i58, %for.body.i55.mlxsw_sp_mr_erif_sublist_destroy.exit.i62_crit_edge
  %74 = ptrtoint ptr %erif_sublist.018.i52 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 256 to ptr), ptr %erif_sublist.018.i52, align 4
  %prev.i.i.i59 = getelementptr inbounds %struct.list_head, ptr %erif_sublist.018.i52, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i.i59 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i59, align 4
  %rigr2_kvdl_index.i.i60 = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %erif_sublist.018.i52, i32 0, i32 1
  %76 = ptrtoint ptr %rigr2_kvdl_index.i.i60 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rigr2_kvdl_index.i.i60, align 4
  call void @mlxsw_sp_kvdl_free(ptr noundef %mlxsw_sp, i32 noundef 3, i32 noundef 1, i32 noundef %77) #7
  call void @kfree(ptr noundef %erif_sublist.018.i52) #7
  %cmp.not.i61 = icmp eq ptr %tmp.0.i53, %erif_list
  br i1 %cmp.not.i61, label %mlxsw_sp_mr_erif_sublist_destroy.exit.i62.cleanup_crit_edge, label %mlxsw_sp_mr_erif_sublist_destroy.exit.i62.for.body.i55_crit_edge

mlxsw_sp_mr_erif_sublist_destroy.exit.i62.for.body.i55_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i55

mlxsw_sp_mr_erif_sublist_destroy.exit.i62.cleanup_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i62.cleanup_crit_edge, %err_erif_populate.cleanup_crit_edge, %mlxsw_sp_mr_erif_list_move.exit
  %retval.0 = phi i32 [ 0, %mlxsw_sp_mr_erif_list_move.exit ], [ %err.0, %err_erif_populate.cleanup_crit_edge ], [ %err.0, %mlxsw_sp_mr_erif_sublist_destroy.exit.i62.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %erif_list) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_mr_tcam_route_stats(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %route_priv, ptr noundef %packets, ptr noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %counter_index = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 2
  %0 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %counter_index, align 4
  %call = tail call i32 @mlxsw_sp_flow_counter_get(ptr noundef %mlxsw_sp, i32 noundef %1, ptr noundef %packets, ptr noundef %bytes) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_mr_tcam_route_action_update(ptr noundef %mlxsw_sp, ptr noundef %route_priv, i32 noundef %route_action) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 29
  %0 = ptrtoint ptr %mr_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_tcam_ops, align 4
  %irif_index = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 5
  %2 = ptrtoint ptr %irif_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %irif_index, align 4
  %counter_index = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 2
  %4 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %counter_index, align 4
  %min_mtu = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 6
  %6 = ptrtoint ptr %min_mtu to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %min_mtu, align 2
  %call = tail call fastcc ptr @mlxsw_sp_mr_tcam_afa_block_create(ptr noundef %mlxsw_sp, i32 noundef %route_action, i16 noundef zeroext %3, i32 noundef %5, i16 noundef zeroext %7, ptr noundef %route_priv)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %route_update = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %route_update to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %route_update, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 7
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %key = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 4
  %call3 = tail call i32 %10(ptr noundef %mlxsw_sp, ptr noundef %12, ptr noundef %key, ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %err8

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %afa_block6 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 1
  %13 = ptrtoint ptr %afa_block6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %afa_block6, align 4
  tail call void @mlxsw_afa_block_destroy(ptr noundef %14) #7
  %15 = ptrtoint ptr %afa_block6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %afa_block6, align 4
  %action = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 3
  %16 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %route_action, ptr %action, align 4
  br label %cleanup

err8:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlxsw_afa_block_destroy(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %err8, %if.end5, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %call3, %err8 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_mr_tcam_route_min_mtu_update(ptr noundef %mlxsw_sp, ptr noundef %route_priv, i16 noundef zeroext %min_mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 29
  %0 = ptrtoint ptr %mr_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_tcam_ops, align 4
  %action = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 3
  %2 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action, align 4
  %irif_index = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 5
  %4 = ptrtoint ptr %irif_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %irif_index, align 4
  %counter_index = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 2
  %6 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %counter_index, align 4
  %call = tail call fastcc ptr @mlxsw_sp_mr_tcam_afa_block_create(ptr noundef %mlxsw_sp, i32 noundef %3, i16 noundef zeroext %5, i32 noundef %7, i16 noundef zeroext %min_mtu, ptr noundef %route_priv)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %route_update = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %route_update to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %route_update, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 7
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %key = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 4
  %call3 = tail call i32 %10(ptr noundef %mlxsw_sp, ptr noundef %12, ptr noundef %key, ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %err9

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %afa_block6 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 1
  %13 = ptrtoint ptr %afa_block6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %afa_block6, align 4
  tail call void @mlxsw_afa_block_destroy(ptr noundef %14) #7
  %15 = ptrtoint ptr %afa_block6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %afa_block6, align 4
  %min_mtu8 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 6
  %16 = ptrtoint ptr %min_mtu8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %min_mtu, ptr %min_mtu8, align 2
  br label %cleanup

err9:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mlxsw_afa_block_destroy(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %err9, %if.end5, %if.then
  %retval.0 = phi i32 [ %8, %if.then ], [ %call3, %err9 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_mr_tcam_route_irif_update(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef %route_priv, i16 noundef zeroext %irif_index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %action = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 3
  %0 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irif_index1 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 5
  %2 = ptrtoint ptr %irif_index1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %irif_index, ptr %irif_index1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_mr_tcam_route_erif_add(ptr noundef %mlxsw_sp, ptr noundef %route_priv, i16 noundef zeroext %erif_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mlxsw_sp_mr_erif_list_add(ptr noundef %mlxsw_sp, ptr noundef %route_priv, i16 noundef zeroext %erif_index)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %action = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 3
  %0 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @mlxsw_sp_mr_erif_list_commit(ptr noundef %mlxsw_sp, ptr noundef %route_priv)
  br label %cleanup

cleanup:                                          ; preds = %if.then1, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then1 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_mr_tcam_route_erif_del(ptr noundef %mlxsw_sp, ptr noundef %route_priv, i16 noundef zeroext %erif_index) #0 align 64 {
entry:
  %erif_list = alloca %struct.mlxsw_sp_mr_tcam_erif_list, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 29
  %0 = ptrtoint ptr %mr_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_tcam_ops, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %erif_list) #7
  %2 = getelementptr inbounds %struct.list_head, ptr %erif_list, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_erif_list, ptr %erif_list, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !41
  %5 = ptrtoint ptr %erif_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %erif_list, ptr %erif_list, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %erif_list, ptr %2, align 4
  %7 = ptrtoint ptr %route_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %erif_sublist.074 = load ptr, ptr %route_priv, align 4
  %cmp.not75 = icmp eq ptr %erif_sublist.074, %route_priv
  br i1 %cmp.not75, label %entry.for.end18_crit_edge, label %entry.for.cond4.preheader_crit_edge

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  br label %for.cond4.preheader

entry.for.end18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.cond4.preheader.for.cond.loopexit_crit_edge
  %8 = ptrtoint ptr %erif_sublist.077 to i32
  call void @__asan_load4_noabort(i32 %8)
  %erif_sublist.0 = load ptr, ptr %erif_sublist.077, align 4
  %cmp.not = icmp eq ptr %erif_sublist.0, %route_priv
  br i1 %cmp.not, label %for.cond.loopexit.for.end18_crit_edge, label %for.cond.loopexit.for.cond4.preheader_crit_edge

for.cond.loopexit.for.cond4.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond4.preheader

for.cond.loopexit.for.end18_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18

for.cond4.preheader:                              ; preds = %for.cond.loopexit.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  %erif_sublist.077 = phi ptr [ %erif_sublist.0, %for.cond.loopexit.for.cond4.preheader_crit_edge ], [ %erif_sublist.074, %entry.for.cond4.preheader_crit_edge ]
  %num_erifs = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %erif_sublist.077, i32 0, i32 2
  %9 = ptrtoint ptr %num_erifs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_erifs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp571 = icmp sgt i32 %10, 0
  br i1 %cmp571, label %for.cond4.preheader.for.body6_crit_edge, label %for.cond4.preheader.for.cond.loopexit_crit_edge

for.cond4.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.cond4.preheader.for.body6_crit_edge:          ; preds = %for.cond4.preheader
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.cond4.preheader.for.body6_crit_edge
  %i.073 = phi i32 [ %inc, %for.inc.for.body6_crit_edge ], [ 0, %for.cond4.preheader.for.body6_crit_edge ]
  %arrayidx = getelementptr %struct.mlxsw_sp_mr_erif_sublist, ptr %erif_sublist.077, i32 0, i32 3, i32 %i.073
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %erif_index)
  %cmp8 = icmp eq i16 %12, %erif_index
  br i1 %cmp8, label %for.body6.for.inc_crit_edge, label %if.end

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body6
  %call = call fastcc i32 @mlxsw_sp_mr_erif_list_add(ptr noundef %mlxsw_sp, ptr noundef nonnull %erif_list, i16 noundef zeroext %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end.err_erif_list_add_crit_edge

if.end.err_erif_list_add_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_erif_list_add

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body6.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.073, 1
  %13 = ptrtoint ptr %num_erifs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_erifs, align 4
  %cmp5 = icmp slt i32 %inc, %14
  br i1 %cmp5, label %for.inc.for.body6_crit_edge, label %for.inc.for.cond.loopexit_crit_edge

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.loopexit

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

for.end18:                                        ; preds = %for.cond.loopexit.for.end18_crit_edge, %entry.for.end18_crit_edge
  %action = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 3
  %15 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %action, align 4
  %irif_index = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 5
  %17 = ptrtoint ptr %irif_index to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %irif_index, align 4
  %counter_index = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 2
  %19 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %counter_index, align 4
  %min_mtu = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 6
  %21 = ptrtoint ptr %min_mtu to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %min_mtu, align 2
  %call19 = call fastcc ptr @mlxsw_sp_mr_tcam_afa_block_create(ptr noundef %mlxsw_sp, i32 noundef %16, i16 noundef zeroext %18, i32 noundef %20, i16 noundef zeroext %22, ptr noundef nonnull %erif_list)
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then21, label %if.end23

if.then21:                                        ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %call19 to i32
  br label %err_erif_list_add

if.end23:                                         ; preds = %for.end18
  %route_update = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %route_update to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %route_update, align 4
  %priv = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 7
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %key = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 4
  %call24 = call i32 %25(ptr noundef %mlxsw_sp, ptr noundef %27, ptr noundef %key, ptr noundef %call19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %err_route_write

if.end27:                                         ; preds = %if.end23
  %afa_block28 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 1
  %28 = ptrtoint ptr %afa_block28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %afa_block28, align 4
  call void @mlxsw_afa_block_destroy(ptr noundef %29) #7
  call fastcc void @mlxsw_sp_mr_erif_list_flush(ptr noundef %mlxsw_sp, ptr noundef %route_priv)
  %30 = ptrtoint ptr %afa_block28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call19, ptr %afa_block28, align 4
  %31 = ptrtoint ptr %erif_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %erif_list, align 4
  %cmp.i.not.i.i = icmp eq ptr %32, %erif_list
  br i1 %cmp.i.not.i.i, label %if.end27.mlxsw_sp_mr_erif_list_move.exit_crit_edge, label %if.then.i.i

if.end27.mlxsw_sp_mr_erif_list_move.exit_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_list_move.exit

if.then.i.i:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %route_priv to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %route_priv, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %2, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %route_priv, ptr %prev3.i.i.i, align 4
  store ptr %32, ptr %route_priv, align 4
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %34, ptr %36, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev6.i.i.i, align 4
  br label %mlxsw_sp_mr_erif_list_move.exit

mlxsw_sp_mr_erif_list_move.exit:                  ; preds = %if.then.i.i, %if.end27.mlxsw_sp_mr_erif_list_move.exit_crit_edge
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %kvdl_index2.i = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_erif_list, ptr %route_priv, i32 0, i32 1
  %42 = ptrtoint ptr %kvdl_index2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %kvdl_index2.i, align 4
  br label %cleanup32

err_route_write:                                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void @mlxsw_afa_block_destroy(ptr noundef %call19) #7
  br label %err_erif_list_add

err_erif_list_add:                                ; preds = %err_route_write, %if.then21, %if.end.err_erif_list_add_crit_edge
  %err.3 = phi i32 [ %23, %if.then21 ], [ %call24, %err_route_write ], [ %call, %if.end.err_erif_list_add_crit_edge ]
  %43 = ptrtoint ptr %erif_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %erif_list, align 4
  %cmp.not17.i = icmp eq ptr %44, %erif_list
  br i1 %cmp.not17.i, label %err_erif_list_add.cleanup32_crit_edge, label %err_erif_list_add.for.body.i_crit_edge

err_erif_list_add.for.body.i_crit_edge:           ; preds = %err_erif_list_add
  br label %for.body.i

err_erif_list_add.cleanup32_crit_edge:            ; preds = %err_erif_list_add
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

for.body.i:                                       ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i_crit_edge, %err_erif_list_add.for.body.i_crit_edge
  %erif_sublist.018.i = phi ptr [ %tmp.0.i, %mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i_crit_edge ], [ %44, %err_erif_list_add.for.body.i_crit_edge ]
  %45 = ptrtoint ptr %erif_sublist.018.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %tmp.0.i = load ptr, ptr %erif_sublist.018.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %erif_sublist.018.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.mlxsw_sp_mr_erif_sublist_destroy.exit.i_crit_edge

for.body.i.mlxsw_sp_mr_erif_sublist_destroy.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_sublist_destroy.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %erif_sublist.018.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i.i, align 4
  %48 = ptrtoint ptr %erif_sublist.018.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %erif_sublist.018.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %mlxsw_sp_mr_erif_sublist_destroy.exit.i

mlxsw_sp_mr_erif_sublist_destroy.exit.i:          ; preds = %if.end.i.i.i.i, %for.body.i.mlxsw_sp_mr_erif_sublist_destroy.exit.i_crit_edge
  %52 = ptrtoint ptr %erif_sublist.018.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %erif_sublist.018.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %erif_sublist.018.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %rigr2_kvdl_index.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %erif_sublist.018.i, i32 0, i32 1
  %54 = ptrtoint ptr %rigr2_kvdl_index.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rigr2_kvdl_index.i.i, align 4
  call void @mlxsw_sp_kvdl_free(ptr noundef %mlxsw_sp, i32 noundef 3, i32 noundef 1, i32 noundef %55) #7
  call void @kfree(ptr noundef %erif_sublist.018.i) #7
  %cmp.not.i = icmp eq ptr %tmp.0.i, %erif_list
  br i1 %cmp.not.i, label %mlxsw_sp_mr_erif_sublist_destroy.exit.i.cleanup32_crit_edge, label %mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i_crit_edge

mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mlxsw_sp_mr_erif_sublist_destroy.exit.i.cleanup32_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup32

cleanup32:                                        ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i.cleanup32_crit_edge, %err_erif_list_add.cleanup32_crit_edge, %mlxsw_sp_mr_erif_list_move.exit
  %retval.0 = phi i32 [ 0, %mlxsw_sp_mr_erif_list_move.exit ], [ %err.3, %err_erif_list_add.cleanup32_crit_edge ], [ %err.3, %mlxsw_sp_mr_erif_sublist_destroy.exit.i.cleanup32_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %erif_list) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_mr_tcam_route_destroy(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %priv, ptr noundef %route_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 29
  %0 = ptrtoint ptr %mr_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_tcam_ops, align 4
  %route_destroy = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %route_destroy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %route_destroy, align 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %priv2 = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 7
  %6 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv2, align 4
  %key = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 4
  tail call void %3(ptr noundef %mlxsw_sp, ptr noundef %5, ptr noundef %7, ptr noundef %key) #7
  %8 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv2, align 4
  tail call void @kfree(ptr noundef %9) #7
  %afa_block = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 1
  %10 = ptrtoint ptr %afa_block to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %afa_block, align 4
  tail call void @mlxsw_afa_block_destroy(ptr noundef %11) #7
  %counter_index = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_route, ptr %route_priv, i32 0, i32 2
  %12 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %counter_index, align 4
  tail call void @mlxsw_sp_flow_counter_free(ptr noundef %mlxsw_sp, i32 noundef %13) #7
  %14 = ptrtoint ptr %route_priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %route_priv, align 4
  %cmp.not17.i = icmp eq ptr %15, %route_priv
  br i1 %cmp.not17.i, label %entry.mlxsw_sp_mr_erif_list_flush.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mlxsw_sp_mr_erif_list_flush.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_list_flush.exit

for.body.i:                                       ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %erif_sublist.018.i = phi ptr [ %tmp.0.i, %mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i_crit_edge ], [ %15, %entry.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %erif_sublist.018.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %tmp.0.i = load ptr, ptr %erif_sublist.018.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %erif_sublist.018.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.mlxsw_sp_mr_erif_sublist_destroy.exit.i_crit_edge

for.body.i.mlxsw_sp_mr_erif_sublist_destroy.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_sublist_destroy.exit.i

if.end.i.i.i.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %erif_sublist.018.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i.i, align 4
  %19 = ptrtoint ptr %erif_sublist.018.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %erif_sublist.018.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %mlxsw_sp_mr_erif_sublist_destroy.exit.i

mlxsw_sp_mr_erif_sublist_destroy.exit.i:          ; preds = %if.end.i.i.i.i, %for.body.i.mlxsw_sp_mr_erif_sublist_destroy.exit.i_crit_edge
  %23 = ptrtoint ptr %erif_sublist.018.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %erif_sublist.018.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %erif_sublist.018.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %rigr2_kvdl_index.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %erif_sublist.018.i, i32 0, i32 1
  %25 = ptrtoint ptr %rigr2_kvdl_index.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rigr2_kvdl_index.i.i, align 4
  tail call void @mlxsw_sp_kvdl_free(ptr noundef %mlxsw_sp, i32 noundef 3, i32 noundef 1, i32 noundef %26) #7
  tail call void @kfree(ptr noundef %erif_sublist.018.i) #7
  %cmp.not.i = icmp eq ptr %tmp.0.i, %route_priv
  br i1 %cmp.not.i, label %mlxsw_sp_mr_erif_sublist_destroy.exit.i.mlxsw_sp_mr_erif_list_flush.exit_crit_edge, label %mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i_crit_edge

mlxsw_sp_mr_erif_sublist_destroy.exit.i.for.body.i_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mlxsw_sp_mr_erif_sublist_destroy.exit.i.mlxsw_sp_mr_erif_list_flush.exit_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_list_flush.exit

mlxsw_sp_mr_erif_list_flush.exit:                 ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.i.mlxsw_sp_mr_erif_list_flush.exit_crit_edge, %entry.mlxsw_sp_mr_erif_list_flush.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_mr_tcam_fini(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_tcam_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 29
  %0 = ptrtoint ptr %mr_tcam_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mr_tcam_ops, align 4
  %fini = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fini to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fini, align 4
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void %3(ptr noundef %5) #7
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void @kfree(ptr noundef %7) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_valid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_flow_counter_alloc(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlxsw_sp_mr_tcam_afa_block_create(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %route_action, i16 noundef zeroext %irif_index, i32 noundef %counter_index, i16 noundef zeroext %min_mtu, ptr noundef %erif_list) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %afa = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 12
  %0 = ptrtoint ptr %afa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %afa, align 4
  %call = tail call ptr @mlxsw_afa_block_create(ptr noundef %1) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mlxsw_afa_block_append_allocated_counter(ptr noundef %call, i32 noundef %counter_index) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.err28_crit_edge

if.end.err28_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err28

if.end4:                                          ; preds = %if.end
  %2 = zext i32 %route_action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %route_action, label %if.end4.err28_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end4.sw.bb9_crit_edge
    i32 0, label %if.end4.sw.bb9_crit_edge48
  ]

if.end4.sw.bb9_crit_edge48:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

if.end4.sw.bb9_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb9

if.end4.err28_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err28

sw.bb:                                            ; preds = %if.end4
  %call5 = tail call i32 @mlxsw_afa_block_append_trap(ptr noundef %call, i16 noundef zeroext 449) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.err28_crit_edge

sw.bb.err28_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %err28

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end4.sw.bb9_crit_edge, %if.end4.sw.bb9_crit_edge48
  %call10 = tail call fastcc i32 @mlxsw_sp_mr_erif_list_commit(ptr noundef %mlxsw_sp, ptr noundef %erif_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %sw.bb9.err28_crit_edge

sw.bb9.err28_crit_edge:                           ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %err28

if.end13:                                         ; preds = %sw.bb9
  %kvdl_index = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_erif_list, ptr %erif_list, i32 0, i32 1
  %3 = ptrtoint ptr %kvdl_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %kvdl_index, align 4
  %call14 = tail call i32 @mlxsw_afa_block_append_mcrouter(ptr noundef %call, i16 noundef zeroext %irif_index, i16 noundef zeroext %min_mtu, i1 noundef zeroext false, i32 noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.err28_crit_edge

if.end13.err28_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err28

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %route_action)
  %cmp = icmp eq i32 %route_action, 2
  br i1 %cmp, label %if.then18, label %if.end17.sw.epilog_crit_edge

if.end17.sw.epilog_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then18:                                        ; preds = %if.end17
  %call19 = tail call i32 @mlxsw_afa_block_append_trap_and_forward(ptr noundef %call, i16 noundef zeroext 450) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.sw.epilog_crit_edge, label %if.then18.err28_crit_edge

if.then18.err28_crit_edge:                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %err28

if.then18.sw.epilog_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then18.sw.epilog_crit_edge, %if.end17.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %call24 = tail call i32 @mlxsw_afa_block_commit(ptr noundef %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.err28_crit_edge

sw.epilog.err28_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %err28

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err28:                                            ; preds = %sw.epilog.err28_crit_edge, %if.then18.err28_crit_edge, %if.end13.err28_crit_edge, %sw.bb9.err28_crit_edge, %sw.bb.err28_crit_edge, %if.end4.err28_crit_edge, %if.end.err28_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.err28_crit_edge ], [ %call10, %sw.bb9.err28_crit_edge ], [ %call14, %if.end13.err28_crit_edge ], [ %call19, %if.then18.err28_crit_edge ], [ %call24, %sw.epilog.err28_crit_edge ], [ %call5, %sw.bb.err28_crit_edge ], [ -22, %if.end4.err28_crit_edge ]
  tail call void @mlxsw_afa_block_destroy(ptr noundef %call) #7
  %5 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err28, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %err28 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %sw.epilog.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_flow_counter_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_mr_erif_list_flush(ptr noundef %mlxsw_sp, ptr noundef readonly %erif_list) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %erif_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erif_list, align 4
  %cmp.not17 = icmp eq ptr %1, %erif_list
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %erif_sublist.018 = phi ptr [ %tmp.0, %mlxsw_sp_mr_erif_sublist_destroy.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %erif_sublist.018 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.0 = load ptr, ptr %erif_sublist.018, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %erif_sublist.018) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.mlxsw_sp_mr_erif_sublist_destroy.exit_crit_edge

for.body.mlxsw_sp_mr_erif_sublist_destroy.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_sublist_destroy.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %erif_sublist.018, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %erif_sublist.018 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %erif_sublist.018, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %mlxsw_sp_mr_erif_sublist_destroy.exit

mlxsw_sp_mr_erif_sublist_destroy.exit:            ; preds = %if.end.i.i.i, %for.body.mlxsw_sp_mr_erif_sublist_destroy.exit_crit_edge
  %9 = ptrtoint ptr %erif_sublist.018 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %erif_sublist.018, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %erif_sublist.018, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %rigr2_kvdl_index.i = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %erif_sublist.018, i32 0, i32 1
  %11 = ptrtoint ptr %rigr2_kvdl_index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rigr2_kvdl_index.i, align 4
  tail call void @mlxsw_sp_kvdl_free(ptr noundef %mlxsw_sp, i32 noundef 3, i32 noundef 1, i32 noundef %12) #7
  tail call void @kfree(ptr noundef %erif_sublist.018) #7
  %cmp.not = icmp eq ptr %tmp.0, %erif_list
  br i1 %cmp.not, label %mlxsw_sp_mr_erif_sublist_destroy.exit.for.end_crit_edge, label %mlxsw_sp_mr_erif_sublist_destroy.exit.for.body_crit_edge

mlxsw_sp_mr_erif_sublist_destroy.exit.for.body_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

mlxsw_sp_mr_erif_sublist_destroy.exit.for.end_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %mlxsw_sp_mr_erif_sublist_destroy.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_mr_erif_list_add(ptr noundef %mlxsw_sp, ptr noundef %erif_list, i16 noundef zeroext %erif_index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %erif_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %erif_list, align 4
  %cmp.i.not = icmp eq ptr %1, %erif_list
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 84) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.if.then3_crit_edge, label %if.end.i

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.end.i:                                         ; preds = %if.then
  %rigr2_kvdl_index.i = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %call7.i.i.i, i32 0, i32 1
  %call2.i = tail call i32 @mlxsw_sp_kvdl_alloc(ptr noundef %mlxsw_sp, i32 noundef 3, i32 noundef 1, ptr noundef %rigr2_kvdl_index.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end6.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  %3 = inttoptr i32 %call2.i to ptr
  br label %mlxsw_sp_mr_erif_sublist_create.exit

if.end6.i:                                        ; preds = %if.end.i
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %erif_list, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %5, ptr noundef %erif_list) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end6.i.mlxsw_sp_mr_erif_sublist_create.exit_crit_edge

if.end6.i.mlxsw_sp_mr_erif_sublist_create.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_sublist_create.exit

if.end.i.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %erif_list, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call7.i.i.i, ptr %5, align 4
  br label %mlxsw_sp_mr_erif_sublist_create.exit

mlxsw_sp_mr_erif_sublist_create.exit:             ; preds = %if.end.i.i.i, %if.end6.i.mlxsw_sp_mr_erif_sublist_create.exit_crit_edge, %if.then4.i
  %retval.0.i = phi ptr [ %3, %if.then4.i ], [ %call7.i.i.i, %if.end6.i.mlxsw_sp_mr_erif_sublist_create.exit_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i ]
  %cmp.i29 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29, label %mlxsw_sp_mr_erif_sublist_create.exit.if.then3_crit_edge, label %if.end

mlxsw_sp_mr_erif_sublist_create.exit.if.then3_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_create.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %mlxsw_sp_mr_erif_sublist_create.exit.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %retval.0.i49 = phi ptr [ %retval.0.i, %mlxsw_sp_mr_erif_sublist_create.exit.if.then3_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then.if.then3_crit_edge ]
  %10 = ptrtoint ptr %retval.0.i49 to i32
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp_mr_erif_sublist_create.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rigr2_kvdl_index = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %retval.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %rigr2_kvdl_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rigr2_kvdl_index, align 4
  %kvdl_index = getelementptr inbounds %struct.mlxsw_sp_mr_tcam_erif_list, ptr %erif_list, i32 0, i32 1
  %13 = ptrtoint ptr %kvdl_index to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %kvdl_index, align 4
  br label %if.end14

if.else:                                          ; preds = %entry
  %prev = getelementptr inbounds %struct.list_head, ptr %erif_list, i32 0, i32 1
  %14 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev, align 4
  %synced = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %synced to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %synced, align 4
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %17 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %core.i, align 4
  %call.i = tail call i64 @mlxsw_core_res_get(ptr noundef %18, i32 noundef 40) #7
  %conv.i30 = trunc i64 %call.i to i32
  %num_erifs.i = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %num_erifs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_erifs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv.i30)
  %cmp.i31 = icmp eq i32 %20, %conv.i30
  br i1 %cmp.i31, label %if.then7, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then7:                                         ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 84) #11
  %tobool.not.i33 = icmp eq ptr %call7.i.i.i32, null
  br i1 %tobool.not.i33, label %if.then7.if.then10_crit_edge, label %if.end.i37

if.then7.if.then10_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.end.i37:                                       ; preds = %if.then7
  %rigr2_kvdl_index.i34 = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %call7.i.i.i32, i32 0, i32 1
  %call2.i35 = tail call i32 @mlxsw_sp_kvdl_alloc(ptr noundef %mlxsw_sp, i32 noundef 3, i32 noundef 1, ptr noundef %rigr2_kvdl_index.i34) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i35)
  %tobool3.not.i36 = icmp eq i32 %call2.i35, 0
  br i1 %tobool3.not.i36, label %if.end6.i41, label %if.then4.i38

if.then4.i38:                                     ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i32) #7
  %22 = inttoptr i32 %call2.i35 to ptr
  br label %mlxsw_sp_mr_erif_sublist_create.exit45

if.end6.i41:                                      ; preds = %if.end.i37
  %23 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev, align 4
  %call.i.i.i40 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i32, ptr noundef %24, ptr noundef %erif_list) #7
  br i1 %call.i.i.i40, label %if.end.i.i.i43, label %if.end6.i41.mlxsw_sp_mr_erif_sublist_create.exit45_crit_edge

if.end6.i41.mlxsw_sp_mr_erif_sublist_create.exit45_crit_edge: ; preds = %if.end6.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxsw_sp_mr_erif_sublist_create.exit45

if.end.i.i.i43:                                   ; preds = %if.end6.i41
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i32, ptr %prev, align 4
  %26 = ptrtoint ptr %call7.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %erif_list, ptr %call7.i.i.i32, align 8
  %prev3.i.i.i42 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i32, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i42, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %call7.i.i.i32, ptr %24, align 4
  br label %mlxsw_sp_mr_erif_sublist_create.exit45

mlxsw_sp_mr_erif_sublist_create.exit45:           ; preds = %if.end.i.i.i43, %if.end6.i41.mlxsw_sp_mr_erif_sublist_create.exit45_crit_edge, %if.then4.i38
  %retval.0.i44 = phi ptr [ %22, %if.then4.i38 ], [ %call7.i.i.i32, %if.end6.i41.mlxsw_sp_mr_erif_sublist_create.exit45_crit_edge ], [ %call7.i.i.i32, %if.end.i.i.i43 ]
  %cmp.i46 = icmp ugt ptr %retval.0.i44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %mlxsw_sp_mr_erif_sublist_create.exit45.if.then10_crit_edge, label %mlxsw_sp_mr_erif_sublist_create.exit45.if.end14_crit_edge

mlxsw_sp_mr_erif_sublist_create.exit45.if.end14_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_create.exit45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

mlxsw_sp_mr_erif_sublist_create.exit45.if.then10_crit_edge: ; preds = %mlxsw_sp_mr_erif_sublist_create.exit45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %mlxsw_sp_mr_erif_sublist_create.exit45.if.then10_crit_edge, %if.then7.if.then10_crit_edge
  %retval.0.i4452 = phi ptr [ %retval.0.i44, %mlxsw_sp_mr_erif_sublist_create.exit45.if.then10_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then7.if.then10_crit_edge ]
  %29 = ptrtoint ptr %retval.0.i4452 to i32
  br label %cleanup

if.end14:                                         ; preds = %mlxsw_sp_mr_erif_sublist_create.exit45.if.end14_crit_edge, %if.else.if.end14_crit_edge, %if.end
  %sublist.0 = phi ptr [ %retval.0.i, %if.end ], [ %retval.0.i44, %mlxsw_sp_mr_erif_sublist_create.exit45.if.end14_crit_edge ], [ %15, %if.else.if.end14_crit_edge ]
  %num_erifs = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %sublist.0, i32 0, i32 2
  %30 = ptrtoint ptr %num_erifs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_erifs, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %num_erifs, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_mr_erif_sublist, ptr %sublist.0, i32 0, i32 3, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %erif_index, ptr %arrayidx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then10, %if.then3
  %retval.0 = phi i32 [ %10, %if.then3 ], [ 0, %if.end14 ], [ %29, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_kvdl_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_afa_block_create(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_allocated_counter(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_trap(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_mr_erif_list_commit(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef readonly %erif_list) unnamed_addr #0 align 64 {
entry:
  %rigr2_pl = alloca [176 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %rigr2_pl) #7
  %0 = call ptr @memset(ptr %rigr2_pl, i32 255, i32 176)
  %1 = ptrtoint ptr %erif_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %curr_sublist.056 = load ptr, ptr %erif_list, align 4
  %cmp.not57 = icmp eq ptr %curr_sublist.056, %erif_list
  br i1 %cmp.not57, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc25.for.body_crit_edge, %for.body.lr.ph
  %curr_sublist.058 = phi ptr [ %curr_sublist.056, %for.body.lr.ph ], [ %curr_sublist.0, %for.inc25.for.body_crit_edge ]
  %synced = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %curr_sublist.058, i32 0, i32 4
  %2 = ptrtoint ptr %synced to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %synced, align 4, !range !42
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc25_crit_edge

for.body.for.inc25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc25

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %curr_sublist.058 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %curr_sublist.058, align 4
  %cmp.i.not = icmp eq ptr %5, %erif_list
  %rigr2_kvdl_index = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %curr_sublist.058, i32 0, i32 1
  %6 = ptrtoint ptr %rigr2_kvdl_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rigr2_kvdl_index, align 4
  br i1 %cmp.i.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @mlxsw_reg_rigr2_pack(ptr noundef nonnull %rigr2_pl, i32 noundef %7, i1 noundef zeroext false, i32 noundef 0)
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rigr2_kvdl_index13 = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %rigr2_kvdl_index13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rigr2_kvdl_index13, align 4
  call fastcc void @mlxsw_reg_rigr2_pack(ptr noundef nonnull %rigr2_pl, i32 noundef %7, i1 noundef zeroext true, i32 noundef %9)
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then5
  %num_erifs = getelementptr inbounds %struct.mlxsw_sp_mr_erif_sublist, ptr %curr_sublist.058, i32 0, i32 2
  %10 = ptrtoint ptr %num_erifs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_erifs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1654 = icmp sgt i32 %11, 0
  br i1 %cmp1654, label %if.end14.for.body17_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end14.for.body17_crit_edge:                    ; preds = %if.end14
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %if.end14.for.body17_crit_edge
  %i.055 = phi i32 [ %inc, %for.body17.for.body17_crit_edge ], [ 0, %if.end14.for.body17_crit_edge ]
  %arrayidx = getelementptr %struct.mlxsw_sp_mr_erif_sublist, ptr %curr_sublist.058, i32 0, i32 3, i32 %i.055
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %conv.i.i.i.i = and i32 %i.055, 65535
  %14 = add nuw nsw i32 %conv.i.i.i.i, 9
  %arrayidx.i.i.i = getelementptr i32, ptr %rigr2_pl, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i.i, align 4
  %or.i.i.i = or i32 %16, -2147483648
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %conv3.i = zext i16 %13 to i32
  %17 = add nuw nsw i32 %conv.i.i.i.i, 9
  %arrayidx.i.i34.i = getelementptr i32, ptr %rigr2_pl, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i34.i, align 4
  %and7.i.i36.i = and i32 %19, -65536
  %or.i.i37.i = or i32 %and7.i.i36.i, %conv3.i
  store i32 %or.i.i37.i, ptr %arrayidx.i.i34.i, align 4
  %inc = add nuw nsw i32 %i.055, 1
  %20 = ptrtoint ptr %num_erifs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_erifs, align 4
  %cmp16 = icmp slt i32 %inc, %21
  br i1 %cmp16, label %for.body17.for.body17_crit_edge, label %for.body17.for.end_crit_edge

for.body17.for.end_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body17

for.end:                                          ; preds = %for.body17.for.end_crit_edge, %if.end14.for.end_crit_edge
  %22 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core, align 4
  %call20 = call i32 @mlxsw_reg_write(ptr noundef %23, ptr noundef nonnull @mlxsw_reg_rigr2, ptr noundef nonnull %rigr2_pl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %synced to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %synced, align 4
  br label %for.inc25

for.inc25:                                        ; preds = %if.end23, %for.body.for.inc25_crit_edge
  %25 = ptrtoint ptr %curr_sublist.058 to i32
  call void @__asan_load4_noabort(i32 %25)
  %curr_sublist.0 = load ptr, ptr %curr_sublist.058, align 4
  %cmp.not = icmp eq ptr %curr_sublist.0, %erif_list
  br i1 %cmp.not, label %for.inc25.cleanup_crit_edge, label %for.inc25.for.body_crit_edge

for.inc25.for.body_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc25.cleanup_crit_edge:                      ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc25.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc25.cleanup_crit_edge ], [ %call20, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %rigr2_pl) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_mcrouter(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_append_trap_and_forward(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_afa_block_commit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_afa_block_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_rigr2_pack(ptr nocapture noundef %payload, i32 noundef %rigr_index, i1 noundef zeroext %vnext, i32 noundef %next_rigr_index) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = call ptr @memset(ptr %payload, i32 0, i32 176)
  %and6.i.i = and i32 %rigr_index, 16777215
  %arrayidx.i.i = getelementptr i32, ptr %payload, i32 1
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %2, -16777216
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %spec.select.i.i25 = select i1 %vnext, i32 -2147483648, i32 0
  %arrayidx.i.i31 = getelementptr i32, ptr %payload, i32 2
  %3 = ptrtoint ptr %arrayidx.i.i31 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i31, align 4
  %and7.i.i33 = and i32 %4, 2130706432
  %or.i.i34 = or i32 %spec.select.i.i25, %and7.i.i33
  %and6.i.i58 = and i32 %next_rigr_index, 16777215
  %arrayidx.i.i59 = getelementptr i32, ptr %payload, i32 2
  %or.i.i62 = or i32 %and6.i.i58, %or.i.i34
  %5 = ptrtoint ptr %arrayidx.i.i59 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i62, ptr %arrayidx.i.i59, align 4
  %arrayidx.i.i83 = getelementptr i32, ptr %payload, i32 8
  %6 = ptrtoint ptr %arrayidx.i.i83 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i83, align 4
  %arrayidx.i.i106 = getelementptr i32, ptr %payload, i32 8
  %and7.i.i108 = and i32 %7, 2147418112
  %8 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and7.i.i108, ptr %arrayidx.i.i106, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_kvdl_free(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_flow_counter_get(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @mlxsw_sp_mr_tcam_ops, !1, !"mlxsw_sp_mr_tcam_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_mr_tcam.c", i32 601, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__mlxsw_item_offset._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @__mlxsw_item_offset._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8423, i32 1}
!10 = distinct !{null, !9, !"mlxsw_reg_rigr2_rigr_index_item", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8429, i32 1}
!13 = distinct !{null, !12, !"mlxsw_reg_rigr2_vnext_item", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8436, i32 1}
!16 = distinct !{null, !15, !"mlxsw_reg_rigr2_next_rigr_index_item", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8442, i32 1}
!19 = distinct !{null, !18, !"mlxsw_reg_rigr2_vrmid_item", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8451, i32 1}
!22 = distinct !{null, !21, !"mlxsw_reg_rigr2_rmid_index_item", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8461, i32 1}
!25 = distinct !{null, !24, !"mlxsw_reg_rigr2_erif_entry_v_item", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8469, i32 1}
!28 = distinct !{null, !27, !"mlxsw_reg_rigr2_erif_entry_erif_item", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8417, i32 1}
!31 = !{ptr @mlxsw_reg_rigr2, !30, !"mlxsw_reg_rigr2", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
!42 = !{i8 0, i8 2}
