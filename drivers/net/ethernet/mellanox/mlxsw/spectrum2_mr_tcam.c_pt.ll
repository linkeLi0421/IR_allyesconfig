; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum2_mr_tcam.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum2_mr_tcam.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_mr_tcam_ops = type { i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_afk_element_usage = type { [1 x i32] }
%struct.mlxsw_sp2_mr_tcam = type { ptr, ptr, ptr, ptr }
%struct.mlxsw_sp_mr_route_key = type { i32, i32, %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr, %union.mlxsw_sp_l3addr }
%union.mlxsw_sp_l3addr = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
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

@mlxsw_sp2_mr_tcam_ops = dso_local constant { %struct.mlxsw_sp_mr_tcam_ops, [36 x i8] } { %struct.mlxsw_sp_mr_tcam_ops { i32 16, ptr @mlxsw_sp2_mr_tcam_init, ptr @mlxsw_sp2_mr_tcam_fini, i32 4, ptr @mlxsw_sp2_mr_tcam_route_create, ptr @mlxsw_sp2_mr_tcam_route_destroy, ptr @mlxsw_sp2_mr_tcam_route_update }, [36 x i8] zeroinitializer }, align 32
@mlxsw_reg_pemrbt = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12308, i16 20, ptr @.str.7 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, align 1
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_pemrbt_protocol\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_pemrbt_group_id\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pemrbt\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum2_mr_tcam.c\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.12 = private unnamed_addr constant [22 x i8] c"mlxsw_sp2_mr_tcam_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 322, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"mlxsw_reg_pemrbt\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 33, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 2798, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 2805, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 2788, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [59 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum2_mr_tcam.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 220, i32 6 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp2_mr_tcam_ops, ptr @mlxsw_reg_pemrbt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_mr_tcam_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_pemrbt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_mr_tcam_init(ptr noundef %mlxsw_sp, ptr nocapture noundef %priv) #0 align 64 {
entry:
  %elusage.i22 = alloca %struct.mlxsw_afk_element_usage, align 4
  %elusage.i = alloca %struct.mlxsw_afk_element_usage, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mlxsw_sp, ptr %priv, align 4
  %call = tail call ptr @mlxsw_sp_flow_block_create(ptr noundef %mlxsw_sp, ptr noundef null) #3
  %flow_block = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %flow_block to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %flow_block, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elusage.i) #3
  %2 = ptrtoint ptr %elusage.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 25183232, ptr %elusage.i, align 4
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %call.i = call ptr @mlxsw_sp_acl_ruleset_get(ptr noundef %4, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %elusage.i) #3
  %ruleset4.i = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %ruleset4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %ruleset4.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlxsw_sp2_mr_tcam_ipv4_init.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %call7.i = call fastcc i32 @mlxsw_sp2_mr_tcam_bind_group(ptr noundef %7, i32 noundef 0, ptr noundef %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %mlxsw_sp2_mr_tcam_ipv4_init.exit.thread, label %mlxsw_sp2_mr_tcam_ipv4_init.exit.thread35

mlxsw_sp2_mr_tcam_ipv4_init.exit.thread:          ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elusage.i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %elusage.i22) #3
  %8 = ptrtoint ptr %elusage.i22 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 25198464, ptr %elusage.i22, align 4
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %11 = ptrtoint ptr %flow_block to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %flow_block, align 4
  %call.i24 = call ptr @mlxsw_sp_acl_ruleset_get(ptr noundef %10, ptr noundef %12, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %elusage.i22) #3
  %ruleset6.i = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, ptr %priv, i32 0, i32 3
  %13 = ptrtoint ptr %ruleset6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i24, ptr %ruleset6.i, align 4
  %cmp.i.i25 = icmp ugt ptr %call.i24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i25, label %mlxsw_sp2_mr_tcam_ipv6_init.exit, label %if.end.i29

mlxsw_sp2_mr_tcam_ipv4_init.exit.thread35:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  %16 = ptrtoint ptr %ruleset4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ruleset4.i, align 4
  call void @mlxsw_sp_acl_ruleset_put(ptr noundef %15, ptr noundef %17) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elusage.i) #3
  br label %err_ipv4_init

mlxsw_sp2_mr_tcam_ipv4_init.exit:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %call.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elusage.i) #3
  br label %err_ipv4_init

if.end.i29:                                       ; preds = %mlxsw_sp2_mr_tcam_ipv4_init.exit.thread
  %19 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv, align 4
  %call7.i27 = call fastcc i32 @mlxsw_sp2_mr_tcam_bind_group(ptr noundef %20, i32 noundef 1, ptr noundef %call.i24) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i27)
  %tobool.not.i28 = icmp eq i32 %call7.i27, 0
  br i1 %tobool.not.i28, label %mlxsw_sp2_mr_tcam_ipv6_init.exit.thread, label %mlxsw_sp2_mr_tcam_ipv6_init.exit.thread40

mlxsw_sp2_mr_tcam_ipv6_init.exit.thread:          ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elusage.i22) #3
  br label %cleanup

mlxsw_sp2_mr_tcam_ipv6_init.exit.thread40:        ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %priv, align 4
  %23 = ptrtoint ptr %ruleset6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ruleset6.i, align 4
  call void @mlxsw_sp_acl_ruleset_put(ptr noundef %22, ptr noundef %24) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elusage.i22) #3
  br label %err_ipv6_init

mlxsw_sp2_mr_tcam_ipv6_init.exit:                 ; preds = %mlxsw_sp2_mr_tcam_ipv4_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %call.i24 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %elusage.i22) #3
  br label %err_ipv6_init

err_ipv6_init:                                    ; preds = %mlxsw_sp2_mr_tcam_ipv6_init.exit, %mlxsw_sp2_mr_tcam_ipv6_init.exit.thread40
  %retval.0.i3143 = phi i32 [ %call7.i27, %mlxsw_sp2_mr_tcam_ipv6_init.exit.thread40 ], [ %25, %mlxsw_sp2_mr_tcam_ipv6_init.exit ]
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv, align 4
  %28 = ptrtoint ptr %ruleset4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ruleset4.i, align 4
  call void @mlxsw_sp_acl_ruleset_put(ptr noundef %27, ptr noundef %29) #3
  br label %err_ipv4_init

err_ipv4_init:                                    ; preds = %err_ipv6_init, %mlxsw_sp2_mr_tcam_ipv4_init.exit, %mlxsw_sp2_mr_tcam_ipv4_init.exit.thread35
  %err.0 = phi i32 [ %18, %mlxsw_sp2_mr_tcam_ipv4_init.exit ], [ %retval.0.i3143, %err_ipv6_init ], [ %call7.i, %mlxsw_sp2_mr_tcam_ipv4_init.exit.thread35 ]
  %30 = ptrtoint ptr %flow_block to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %flow_block, align 4
  call void @mlxsw_sp_flow_block_destroy(ptr noundef %31) #3
  br label %cleanup

cleanup:                                          ; preds = %err_ipv4_init, %mlxsw_sp2_mr_tcam_ipv6_init.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_ipv4_init ], [ -12, %entry.cleanup_crit_edge ], [ 0, %mlxsw_sp2_mr_tcam_ipv6_init.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_mr_tcam_fini(ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %ruleset6.i = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, ptr %priv, i32 0, i32 3
  %2 = ptrtoint ptr %ruleset6.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ruleset6.i, align 4
  tail call void @mlxsw_sp_acl_ruleset_put(ptr noundef %1, ptr noundef %3) #3
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %ruleset4.i = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %ruleset4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ruleset4.i, align 4
  tail call void @mlxsw_sp_acl_ruleset_put(ptr noundef %5, ptr noundef %7) #3
  %flow_block = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %flow_block to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %flow_block, align 4
  tail call void @mlxsw_sp_flow_block_destroy(ptr noundef %9) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_mr_tcam_route_create(ptr noundef %mlxsw_sp, ptr noundef %priv, ptr noundef %route_priv, ptr noundef %key, ptr noundef %afa_block, i32 noundef %prio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %route_priv to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %priv, ptr %route_priv, align 4
  %proto = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 1
  %1 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %proto, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %entry.do.end_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ruleset4.i = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, ptr %priv, i32 0, i32 2
  br label %mlxsw_sp2_mr_tcam_proto_ruleset.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ruleset6.i = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, ptr %priv, i32 0, i32 3
  br label %mlxsw_sp2_mr_tcam_proto_ruleset.exit

mlxsw_sp2_mr_tcam_proto_ruleset.exit:             ; preds = %sw.bb1.i, %sw.bb.i
  %ruleset6.sink.i = phi ptr [ %ruleset6.i, %sw.bb1.i ], [ %ruleset4.i, %sw.bb.i ]
  %4 = ptrtoint ptr %ruleset6.sink.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ruleset6.sink.i, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %mlxsw_sp2_mr_tcam_proto_ruleset.exit.do.end_crit_edge, label %if.end24, !prof !32

mlxsw_sp2_mr_tcam_proto_ruleset.exit.do.end_crit_edge: ; preds = %mlxsw_sp2_mr_tcam_proto_ruleset.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.end:                                           ; preds = %mlxsw_sp2_mr_tcam_proto_ruleset.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 220, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %mlxsw_sp2_mr_tcam_proto_ruleset.exit
  %6 = ptrtoint ptr %route_priv to i32
  %call25 = tail call ptr @mlxsw_sp_acl_rule_create(ptr noundef %mlxsw_sp, ptr noundef nonnull %5, i32 noundef %6, ptr noundef %afa_block, ptr noundef null) #3
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %call25 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %call.i = tail call ptr @mlxsw_sp_acl_rule_rulei(ptr noundef %call25) #3
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %prio, ptr %call.i, align 4
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key, align 4
  tail call void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %call.i, i32 noundef 24, i32 noundef %10, i32 noundef 255) #3
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key, align 4
  %shr.i = ashr i32 %12, 8
  tail call void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef %call.i, i32 noundef 23, i32 noundef %shr.i, i32 noundef 7) #3
  %13 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %proto, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %14, label %if.end29.mlxsw_sp2_mr_tcam_rule_parse.exit_crit_edge [
    i32 0, label %sw.bb.i50
    i32 1, label %sw.bb3.i
  ]

if.end29.mlxsw_sp2_mr_tcam_rule_parse.exit_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  br label %mlxsw_sp2_mr_tcam_rule_parse.exit

sw.bb.i50:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  %source.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 4
  %source_mask.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 5
  tail call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %call.i, i32 noundef 10, ptr noundef %source.i.i, ptr noundef %source_mask.i.i, i32 noundef 4) #3
  %group.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 2
  %group_mask.i.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 3
  tail call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %call.i, i32 noundef 14, ptr noundef %group.i.i, ptr noundef %group_mask.i.i, i32 noundef 4) #3
  br label %mlxsw_sp2_mr_tcam_rule_parse.exit

sw.bb3.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #5
  %source.i12.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 4
  %source_mask.i13.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 5
  tail call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %call.i, i32 noundef 7, ptr noundef %source.i12.i, ptr noundef %source_mask.i13.i, i32 noundef 4) #3
  %arrayidx5.i.i = getelementptr %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %arrayidx8.i.i = getelementptr %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 5, i32 0, i32 0, i32 0, i32 1
  tail call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %call.i, i32 noundef 8, ptr noundef %arrayidx5.i.i, ptr noundef %arrayidx8.i.i, i32 noundef 4) #3
  %arrayidx11.i.i = getelementptr %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 4, i32 0, i32 0, i32 0, i32 2
  %arrayidx14.i.i = getelementptr %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 5, i32 0, i32 0, i32 0, i32 2
  tail call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %call.i, i32 noundef 9, ptr noundef %arrayidx11.i.i, ptr noundef %arrayidx14.i.i, i32 noundef 4) #3
  %arrayidx17.i.i = getelementptr %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 4, i32 0, i32 0, i32 0, i32 3
  %arrayidx20.i.i = getelementptr %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 5, i32 0, i32 0, i32 0, i32 3
  tail call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %call.i, i32 noundef 10, ptr noundef %arrayidx17.i.i, ptr noundef %arrayidx20.i.i, i32 noundef 4) #3
  %group.i14.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 2
  %group_mask.i15.i = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 3
  tail call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %call.i, i32 noundef 11, ptr noundef %group.i14.i, ptr noundef %group_mask.i15.i, i32 noundef 4) #3
  %arrayidx27.i.i = getelementptr %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %arrayidx30.i.i = getelementptr %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  tail call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %call.i, i32 noundef 12, ptr noundef %arrayidx27.i.i, ptr noundef %arrayidx30.i.i, i32 noundef 4) #3
  %arrayidx33.i.i = getelementptr %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 2, i32 0, i32 0, i32 0, i32 2
  %arrayidx36.i.i = getelementptr %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  tail call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %call.i, i32 noundef 13, ptr noundef %arrayidx33.i.i, ptr noundef %arrayidx36.i.i, i32 noundef 4) #3
  %arrayidx39.i.i = getelementptr %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3
  %arrayidx42.i.i = getelementptr %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  tail call void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef %call.i, i32 noundef 14, ptr noundef %arrayidx39.i.i, ptr noundef %arrayidx42.i.i, i32 noundef 4) #3
  br label %mlxsw_sp2_mr_tcam_rule_parse.exit

mlxsw_sp2_mr_tcam_rule_parse.exit:                ; preds = %sw.bb3.i, %sw.bb.i50, %if.end29.mlxsw_sp2_mr_tcam_rule_parse.exit_crit_edge
  %call30 = tail call i32 @mlxsw_sp_acl_rule_add(ptr noundef %mlxsw_sp, ptr noundef %call25) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %mlxsw_sp2_mr_tcam_rule_parse.exit.cleanup_crit_edge, label %err_rule_add

mlxsw_sp2_mr_tcam_rule_parse.exit.cleanup_crit_edge: ; preds = %mlxsw_sp2_mr_tcam_rule_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

err_rule_add:                                     ; preds = %mlxsw_sp2_mr_tcam_rule_parse.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mlxsw_sp_acl_rule_destroy(ptr noundef %mlxsw_sp, ptr noundef %call25) #3
  br label %cleanup

cleanup:                                          ; preds = %err_rule_add, %mlxsw_sp2_mr_tcam_rule_parse.exit.cleanup_crit_edge, %if.then27, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %7, %if.then27 ], [ %call30, %err_rule_add ], [ 0, %mlxsw_sp2_mr_tcam_rule_parse.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_mr_tcam_route_destroy(ptr noundef %mlxsw_sp, ptr nocapture noundef readonly %priv, ptr noundef %route_priv, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %proto, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %1, label %entry.do.end_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ruleset4.i = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, ptr %priv, i32 0, i32 2
  br label %mlxsw_sp2_mr_tcam_proto_ruleset.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ruleset6.i = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, ptr %priv, i32 0, i32 3
  br label %mlxsw_sp2_mr_tcam_proto_ruleset.exit

mlxsw_sp2_mr_tcam_proto_ruleset.exit:             ; preds = %sw.bb1.i, %sw.bb.i
  %ruleset6.sink.i = phi ptr [ %ruleset6.i, %sw.bb1.i ], [ %ruleset4.i, %sw.bb.i ]
  %3 = ptrtoint ptr %ruleset6.sink.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ruleset6.sink.i, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %mlxsw_sp2_mr_tcam_proto_ruleset.exit.do.end_crit_edge, label %if.end23, !prof !32

mlxsw_sp2_mr_tcam_proto_ruleset.exit.do.end_crit_edge: ; preds = %mlxsw_sp2_mr_tcam_proto_ruleset.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.end:                                           ; preds = %mlxsw_sp2_mr_tcam_proto_ruleset.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 251, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end23:                                         ; preds = %mlxsw_sp2_mr_tcam_proto_ruleset.exit
  %5 = ptrtoint ptr %route_priv to i32
  %call24 = tail call ptr @mlxsw_sp_acl_rule_lookup(ptr noundef %mlxsw_sp, ptr noundef nonnull %4, i32 noundef %5) #3
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %do.end44, label %if.end60, !prof !32

do.end44:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 256, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end60:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mlxsw_sp_acl_rule_del(ptr noundef %mlxsw_sp, ptr noundef nonnull %call24) #3
  tail call void @mlxsw_sp_acl_rule_destroy(ptr noundef %mlxsw_sp, ptr noundef nonnull %call24) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end44, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_mr_tcam_route_update(ptr noundef %mlxsw_sp, ptr noundef %route_priv, ptr nocapture noundef readonly %key, ptr noundef %afa_block) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %route_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %route_priv, align 4
  %proto = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, ptr %key, i32 0, i32 1
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %proto, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %3, label %entry.do.end_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ruleset4.i = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, ptr %1, i32 0, i32 2
  br label %mlxsw_sp2_mr_tcam_proto_ruleset.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ruleset6.i = getelementptr inbounds %struct.mlxsw_sp2_mr_tcam, ptr %1, i32 0, i32 3
  br label %mlxsw_sp2_mr_tcam_proto_ruleset.exit

mlxsw_sp2_mr_tcam_proto_ruleset.exit:             ; preds = %sw.bb1.i, %sw.bb.i
  %ruleset6.sink.i = phi ptr [ %ruleset6.i, %sw.bb1.i ], [ %ruleset4.i, %sw.bb.i ]
  %5 = ptrtoint ptr %ruleset6.sink.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ruleset6.sink.i, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %mlxsw_sp2_mr_tcam_proto_ruleset.exit.do.end_crit_edge, label %if.end24, !prof !32

mlxsw_sp2_mr_tcam_proto_ruleset.exit.do.end_crit_edge: ; preds = %mlxsw_sp2_mr_tcam_proto_ruleset.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end

do.end:                                           ; preds = %mlxsw_sp2_mr_tcam_proto_ruleset.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 275, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end24:                                         ; preds = %mlxsw_sp2_mr_tcam_proto_ruleset.exit
  %7 = ptrtoint ptr %route_priv to i32
  %call25 = tail call ptr @mlxsw_sp_acl_rule_lookup(ptr noundef %mlxsw_sp, ptr noundef nonnull %6, i32 noundef %7) #3
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %do.end45, label %if.end61, !prof !32

do.end45:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 280, i32 noundef 9, ptr noundef null) #3
  br label %cleanup

if.end61:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %call62 = tail call i32 @mlxsw_sp_acl_rule_action_replace(ptr noundef %mlxsw_sp, ptr noundef nonnull %call25, ptr noundef %afa_block) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end45, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end45 ], [ %call62, %if.end61 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_flow_block_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_flow_block_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_ruleset_get(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp2_mr_tcam_bind_group(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %protocol, ptr noundef %ruleset) unnamed_addr #0 align 64 {
entry:
  %pemrbt_pl = alloca [20 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %pemrbt_pl) #3
  %call = tail call zeroext i16 @mlxsw_sp_acl_ruleset_group_id(ptr noundef %ruleset) #3
  %0 = call ptr @memset(ptr %pemrbt_pl, i32 0, i32 20)
  %and6.i.i.i = and i32 %protocol, 1
  %1 = ptrtoint ptr %pemrbt_pl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %pemrbt_pl, align 4
  %and7.i.i.i = and i32 %2, -2
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %pemrbt_pl, align 4
  %conv1.i = zext i16 %call to i32
  %arrayidx.i.i28.i = getelementptr inbounds i32, ptr %pemrbt_pl, i32 4
  %3 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i28.i, align 4
  %and7.i.i30.i = and i32 %4, -65536
  %or.i.i31.i = or i32 %and7.i.i30.i, %conv1.i
  store i32 %or.i.i31.i, ptr %arrayidx.i.i28.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %5 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core, align 4
  %call2 = call i32 @mlxsw_reg_write(ptr noundef %6, ptr noundef nonnull @mlxsw_reg_pemrbt, ptr noundef nonnull %pemrbt_pl) #3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %pemrbt_pl) #3
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_ruleset_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @mlxsw_sp_acl_ruleset_group_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_rule_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rule_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_rule_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_rule_rulei(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_rulei_keymask_u32(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_rulei_keymask_buf(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_rule_lookup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_rule_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_rule_action_replace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @mlxsw_sp2_mr_tcam_ops, !1, !"mlxsw_sp2_mr_tcam_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum2_mr_tcam.c", i32 322, i32 35}
!2 = distinct !{null, !3, !"mlxsw_sp2_mr_tcam_usage_ipv4", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum2_mr_tcam.c", i32 47, i32 37}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__mlxsw_item_offset._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @__mlxsw_item_offset._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2798, i32 1}
!12 = distinct !{null, !11, !"mlxsw_reg_pemrbt_protocol_item", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2805, i32 1}
!15 = distinct !{null, !14, !"mlxsw_reg_pemrbt_group_id_item", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2788, i32 1}
!18 = !{ptr @mlxsw_reg_pemrbt, !17, !"mlxsw_reg_pemrbt", i1 false, i1 false}
!19 = distinct !{null, !20, !"mlxsw_sp2_mr_tcam_usage_ipv6", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum2_mr_tcam.c", i32 91, i32 37}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum2_mr_tcam.c", i32 220, i32 6}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
