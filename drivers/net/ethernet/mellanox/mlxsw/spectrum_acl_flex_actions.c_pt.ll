; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_actions.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_actions.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_afa_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.mlxsw_sp_span_agent_parms = type { ptr, i16, i8, i32 }
%struct.mlxsw_sp_policer_params = type { i64, i64, i8 }
%struct.mlxsw_sp_sample_trigger = type { i32, i16 }
%struct.mlxsw_sp_sample_params = type { ptr, i32, i32, i8 }

@mlxsw_sp1_act_afa_ops = dso_local constant { %struct.mlxsw_afa_ops, [40 x i8] } { %struct.mlxsw_afa_ops { ptr @mlxsw_sp1_act_kvdl_set_add, ptr @mlxsw_sp_act_kvdl_set_del, ptr @mlxsw_sp1_act_kvdl_set_activity_get, ptr @mlxsw_sp_act_kvdl_fwd_entry_add, ptr @mlxsw_sp_act_kvdl_fwd_entry_del, ptr @mlxsw_sp_act_counter_index_get, ptr @mlxsw_sp_act_counter_index_put, ptr @mlxsw_sp_act_mirror_add, ptr @mlxsw_sp_act_mirror_del, ptr @mlxsw_sp_act_policer_add, ptr @mlxsw_sp_act_policer_del, ptr @mlxsw_sp1_act_sampler_add, ptr @mlxsw_sp1_act_sampler_del, i8 0 }, [40 x i8] zeroinitializer }, align 32
@mlxsw_sp2_act_afa_ops = dso_local constant { %struct.mlxsw_afa_ops, [40 x i8] } { %struct.mlxsw_afa_ops { ptr @mlxsw_sp2_act_kvdl_set_add, ptr @mlxsw_sp_act_kvdl_set_del, ptr @mlxsw_sp2_act_kvdl_set_activity_get, ptr @mlxsw_sp_act_kvdl_fwd_entry_add, ptr @mlxsw_sp_act_kvdl_fwd_entry_del, ptr @mlxsw_sp_act_counter_index_get, ptr @mlxsw_sp_act_counter_index_put, ptr @mlxsw_sp_act_mirror_add, ptr @mlxsw_sp_act_mirror_del, ptr @mlxsw_sp_act_policer_add, ptr @mlxsw_sp_act_policer_del, ptr @mlxsw_sp2_act_sampler_add, ptr @mlxsw_sp2_act_sampler_del, i8 1 }, [40 x i8] zeroinitializer }, align 32
@mlxsw_reg_pefa = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12303, i16 176, ptr @.str.8 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 35, ptr null, ptr null }, align 1
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_pefa_index\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_pefa_ca\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pefa\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_ppbs = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12300, i16 20, ptr @.str.13 }, [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_ppbs_pbs_ptr\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_ppbs_system_port\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ppbs\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_sp1_act_sampler_add.__msg = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"mlxsw_spectrum: Sampling action is not supported on Spectrum-1\00", [33 x i8] zeroinitializer }, align 32
@mlxsw_sp1_act_sampler_del.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_actions.c\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_pefa_a\00", [21 x i8] zeroinitializer }, align 32
@__const.mlxsw_sp2_act_sampler_add.agent_parms = private unnamed_addr constant { ptr, i16, i8, [1 x i8], i32 } { ptr null, i16 0, i8 0, [1 x i8] zeroinitializer, i32 1 }, align 4
@mlxsw_sp2_act_sampler_add.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"mlxsw_spectrum: Failed to get SPAN agent\00", [55 x i8] zeroinitializer }, align 32
@mlxsw_sp2_act_sampler_add.__msg.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mlxsw_spectrum: Failed to get analyzed port\00", [52 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant [22 x i8] c"mlxsw_sp1_act_afa_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 211, i32 28 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"mlxsw_sp2_act_afa_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 290, i32 28 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_pefa\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 33, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 2735, i32 1 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 2752, i32 1 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 2729, i32 1 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_ppbs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 2629, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 2635, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 2622, i32 1 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 201, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 208, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 2744, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 255, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.70 = private constant [67 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_actions.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 262, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp1_act_afa_ops, ptr @mlxsw_sp2_act_afa_ops, ptr @mlxsw_reg_pefa, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @mlxsw_reg_ppbs, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @mlxsw_sp1_act_sampler_add.__msg, ptr @.str.14, ptr @.str.15, ptr @mlxsw_sp2_act_sampler_add.__msg, ptr @mlxsw_sp2_act_sampler_add.__msg.17], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_act_afa_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_act_afa_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_pefa to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_ppbs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp1_act_sampler_add.__msg to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_act_sampler_add.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp2_act_sampler_add.__msg.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_act_kvdl_set_add(ptr noundef %priv, ptr nocapture noundef writeonly %p_kvdl_index, ptr noundef %enc_actions, i1 noundef zeroext %is_first) #0 align 64 {
entry:
  %pefa_pl.i = alloca [176 x i8], align 1
  %kvdl_index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %pefa_pl.i) #5
  %0 = call ptr @memset(ptr %pefa_pl.i, i32 255, i32 176)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kvdl_index.i) #5
  %1 = ptrtoint ptr %kvdl_index.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %kvdl_index.i, align 4, !annotation !52
  br i1 %is_first, label %entry.mlxsw_sp_act_kvdl_set_add.exit_crit_edge, label %if.end.i

entry.mlxsw_sp_act_kvdl_set_add.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_act_kvdl_set_add.exit

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @mlxsw_sp_kvdl_alloc(ptr noundef %priv, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %kvdl_index.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.mlxsw_sp_act_kvdl_set_add.exit_crit_edge

if.end.i.mlxsw_sp_act_kvdl_set_add.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_act_kvdl_set_add.exit

if.end4.i:                                        ; preds = %if.end.i
  %2 = ptrtoint ptr %kvdl_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kvdl_index.i, align 4
  call fastcc void @mlxsw_reg_pefa_pack(ptr noundef nonnull %pefa_pl.i, i32 noundef %3, i1 noundef zeroext false, ptr noundef %enc_actions) #5
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core.i, align 4
  %call7.i = call i32 @mlxsw_reg_write(ptr noundef %5, ptr noundef nonnull @mlxsw_reg_pefa, ptr noundef nonnull %pefa_pl.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %6 = ptrtoint ptr %kvdl_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %kvdl_index.i, align 4
  br i1 %tobool8.not.i, label %if.end10.i, label %err_pefa_write.i

if.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %p_kvdl_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %p_kvdl_index, align 4
  br label %mlxsw_sp_act_kvdl_set_add.exit

err_pefa_write.i:                                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @mlxsw_sp_kvdl_free(ptr noundef %priv, i32 noundef 1, i32 noundef 1, i32 noundef %7) #5
  br label %mlxsw_sp_act_kvdl_set_add.exit

mlxsw_sp_act_kvdl_set_add.exit:                   ; preds = %err_pefa_write.i, %if.end10.i, %if.end.i.mlxsw_sp_act_kvdl_set_add.exit_crit_edge, %entry.mlxsw_sp_act_kvdl_set_add.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %err_pefa_write.i ], [ 0, %if.end10.i ], [ 0, %entry.mlxsw_sp_act_kvdl_set_add.exit_crit_edge ], [ %call.i, %if.end.i.mlxsw_sp_act_kvdl_set_add.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kvdl_index.i) #5
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %pefa_pl.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_act_kvdl_set_del(ptr noundef %priv, i32 noundef %kvdl_index, i1 noundef zeroext %is_first) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_first, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mlxsw_sp_kvdl_free(ptr noundef %priv, i32 noundef 1, i32 noundef 1, i32 noundef %kvdl_index) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp1_act_kvdl_set_activity_get(ptr nocapture noundef readnone %priv, i32 noundef %kvdl_index, ptr nocapture noundef readnone %activity) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_act_kvdl_fwd_entry_add(ptr noundef %priv, ptr nocapture noundef writeonly %p_kvdl_index, i16 noundef zeroext %local_port) #0 align 64 {
entry:
  %ppbs_pl = alloca [20 x i8], align 1
  %kvdl_index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ppbs_pl) #5
  %0 = call ptr @memset(ptr %ppbs_pl, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kvdl_index) #5
  %1 = ptrtoint ptr %kvdl_index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %kvdl_index, align 4, !annotation !52
  %call = call i32 @mlxsw_sp_kvdl_alloc(ptr noundef %priv, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %kvdl_index) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %kvdl_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kvdl_index, align 4
  %4 = call ptr @memset(ptr %ppbs_pl, i32 0, i32 20)
  %and6.i.i.i = and i32 %3, 16777215
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %ppbs_pl, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %6, -16777216
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %conv1.i = zext i16 %local_port to i32
  %arrayidx.i.i28.i = getelementptr inbounds i32, ptr %ppbs_pl, i32 4
  %7 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i28.i, align 4
  %and7.i.i30.i = and i32 %8, -65536
  %or.i.i31.i = or i32 %and7.i.i30.i, %conv1.i
  store i32 %or.i.i31.i, ptr %arrayidx.i.i28.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 4
  %call2 = call i32 @mlxsw_reg_write(ptr noundef %10, ptr noundef nonnull @mlxsw_reg_ppbs, ptr noundef nonnull %ppbs_pl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %11 = ptrtoint ptr %kvdl_index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %kvdl_index, align 4
  br i1 %tobool3.not, label %if.end5, label %err_ppbs_write

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %p_kvdl_index to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %p_kvdl_index, align 4
  br label %cleanup

err_ppbs_write:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @mlxsw_sp_kvdl_free(ptr noundef %priv, i32 noundef 2, i32 noundef 1, i32 noundef %12) #5
  br label %cleanup

cleanup:                                          ; preds = %err_ppbs_write, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %err_ppbs_write ], [ 0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kvdl_index) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ppbs_pl) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_act_kvdl_fwd_entry_del(ptr noundef %priv, i32 noundef %kvdl_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_kvdl_free(ptr noundef %priv, i32 noundef 2, i32 noundef 1, i32 noundef %kvdl_index) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_act_counter_index_get(ptr noundef %priv, ptr noundef %p_counter_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mlxsw_sp_flow_counter_alloc(ptr noundef %priv, ptr noundef %p_counter_index) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_act_counter_index_put(ptr noundef %priv, i32 noundef %counter_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_flow_counter_free(ptr noundef %priv, i32 noundef %counter_index) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_act_mirror_add(ptr noundef %priv, i16 noundef zeroext %local_in_port, ptr noundef %out_dev, i1 noundef zeroext %ingress, ptr noundef %p_span_id) #0 align 64 {
entry:
  %agent_parms = alloca %struct.mlxsw_sp_span_agent_parms, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %agent_parms) #5
  %0 = getelementptr inbounds i8, ptr %agent_parms, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %2 = ptrtoint ptr %agent_parms to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %out_dev, ptr %agent_parms, align 4
  %call = call i32 @mlxsw_sp_span_agent_get(ptr noundef %priv, ptr noundef %p_span_id, ptr noundef nonnull %agent_parms) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %idxprom = zext i16 %local_in_port to i32
  %arrayidx = getelementptr ptr, ptr %4, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call2 = call i32 @mlxsw_sp_span_analyzed_port_get(ptr noundef %6, i1 noundef zeroext %ingress) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %err_analyzed_port_get

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_analyzed_port_get:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %p_span_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %p_span_id, align 4
  call void @mlxsw_sp_span_agent_put(ptr noundef %priv, i32 noundef %8) #5
  br label %cleanup

cleanup:                                          ; preds = %err_analyzed_port_get, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %err_analyzed_port_get ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %agent_parms) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_act_mirror_del(ptr noundef %priv, i16 noundef zeroext %local_in_port, i32 noundef %span_id, i1 noundef zeroext %ingress) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %idxprom = zext i16 %local_in_port to i32
  %arrayidx = getelementptr ptr, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @mlxsw_sp_span_analyzed_port_put(ptr noundef %3, i1 noundef zeroext %ingress) #5
  tail call void @mlxsw_sp_span_agent_put(ptr noundef %priv, i32 noundef %span_id) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_act_policer_add(ptr noundef %priv, i64 noundef %rate_bytes_ps, i32 noundef %burst, ptr noundef %p_policer_index, ptr noundef %extack) #0 align 64 {
entry:
  %params = alloca %struct.mlxsw_sp_policer_params, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #5
  %0 = getelementptr inbounds i8, ptr %params, i32 16
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8
  %2 = ptrtoint ptr %params to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %rate_bytes_ps, ptr %params, align 8
  %conv = zext i32 %burst to i64
  %burst1 = getelementptr inbounds %struct.mlxsw_sp_policer_params, ptr %params, i32 0, i32 1
  %3 = ptrtoint ptr %burst1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv, ptr %burst1, align 8
  %bytes = getelementptr inbounds %struct.mlxsw_sp_policer_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %bytes to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %bytes, align 8
  %call = call i32 @mlxsw_sp_policer_add(ptr noundef %priv, i32 noundef 0, ptr noundef nonnull %params, ptr noundef %extack, ptr noundef %p_policer_index) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_act_policer_del(ptr noundef %priv, i16 noundef zeroext %policer_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mlxsw_sp_policer_del(ptr noundef %priv, i32 noundef 0, i16 noundef zeroext %policer_index) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp1_act_sampler_add(ptr nocapture noundef readnone %priv, i16 noundef zeroext %local_port, ptr nocapture noundef readnone %psample_group, i32 noundef %rate, i32 noundef %trunc_size, i1 noundef zeroext %truncate, i1 noundef zeroext %ingress, ptr nocapture noundef readnone %p_span_id, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp1_act_sampler_add.__msg) #5
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mlxsw_sp1_act_sampler_add.__msg, ptr %extack, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 -95
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp1_act_sampler_del(ptr nocapture noundef readnone %priv, i16 noundef zeroext %local_port, i32 noundef %span_id, i1 noundef zeroext %ingress) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @mlxsw_sp1_act_sampler_del.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !53

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @mlxsw_sp1_act_sampler_del.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 208, i32 noundef 9, ptr noundef null) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_act_kvdl_set_add(ptr noundef %priv, ptr nocapture noundef writeonly %p_kvdl_index, ptr noundef %enc_actions, i1 noundef zeroext %is_first) #0 align 64 {
entry:
  %pefa_pl.i = alloca [176 x i8], align 1
  %kvdl_index.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %pefa_pl.i) #5
  %0 = call ptr @memset(ptr %pefa_pl.i, i32 255, i32 176)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %kvdl_index.i) #5
  %1 = ptrtoint ptr %kvdl_index.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %kvdl_index.i, align 4, !annotation !52
  br i1 %is_first, label %entry.mlxsw_sp_act_kvdl_set_add.exit_crit_edge, label %if.end.i

entry.mlxsw_sp_act_kvdl_set_add.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_act_kvdl_set_add.exit

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @mlxsw_sp_kvdl_alloc(ptr noundef %priv, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %kvdl_index.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.mlxsw_sp_act_kvdl_set_add.exit_crit_edge

if.end.i.mlxsw_sp_act_kvdl_set_add.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %mlxsw_sp_act_kvdl_set_add.exit

if.end4.i:                                        ; preds = %if.end.i
  %2 = ptrtoint ptr %kvdl_index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kvdl_index.i, align 4
  call fastcc void @mlxsw_reg_pefa_pack(ptr noundef nonnull %pefa_pl.i, i32 noundef %3, i1 noundef zeroext true, ptr noundef %enc_actions) #5
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core.i, align 4
  %call7.i = call i32 @mlxsw_reg_write(ptr noundef %5, ptr noundef nonnull @mlxsw_reg_pefa, ptr noundef nonnull %pefa_pl.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  %6 = ptrtoint ptr %kvdl_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %kvdl_index.i, align 4
  br i1 %tobool8.not.i, label %if.end10.i, label %err_pefa_write.i

if.end10.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %p_kvdl_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %p_kvdl_index, align 4
  br label %mlxsw_sp_act_kvdl_set_add.exit

err_pefa_write.i:                                 ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @mlxsw_sp_kvdl_free(ptr noundef %priv, i32 noundef 1, i32 noundef 1, i32 noundef %7) #5
  br label %mlxsw_sp_act_kvdl_set_add.exit

mlxsw_sp_act_kvdl_set_add.exit:                   ; preds = %err_pefa_write.i, %if.end10.i, %if.end.i.mlxsw_sp_act_kvdl_set_add.exit_crit_edge, %entry.mlxsw_sp_act_kvdl_set_add.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %err_pefa_write.i ], [ 0, %if.end10.i ], [ 0, %entry.mlxsw_sp_act_kvdl_set_add.exit_crit_edge ], [ %call.i, %if.end.i.mlxsw_sp_act_kvdl_set_add.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %kvdl_index.i) #5
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %pefa_pl.i) #5
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_act_kvdl_set_activity_get(ptr nocapture noundef readonly %priv, i32 noundef %kvdl_index, ptr nocapture noundef writeonly %activity) #0 align 64 {
entry:
  %pefa_pl = alloca [176 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 176, ptr nonnull %pefa_pl) #5
  %0 = call ptr @memset(ptr %pefa_pl, i32 255, i32 176)
  call fastcc void @mlxsw_reg_pefa_pack(ptr noundef nonnull %pefa_pl, i32 noundef %kvdl_index, i1 noundef zeroext true, ptr noundef null)
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_query(ptr noundef %2, ptr noundef nonnull @mlxsw_reg_pefa, ptr noundef nonnull %pefa_pl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %mlxsw_reg_pefa_unpack.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

mlxsw_reg_pefa_unpack.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %pefa_pl, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i.i, align 4
  %5 = lshr i32 %4, 29
  %6 = trunc i32 %5 to i8
  %7 = and i8 %6, 1
  %8 = ptrtoint ptr %activity to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %activity, align 1
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_reg_pefa_unpack.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 176, ptr nonnull %pefa_pl) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp2_act_sampler_add(ptr noundef %priv, i16 noundef zeroext %local_port, ptr noundef %psample_group, i32 noundef %rate, i32 noundef %trunc_size, i1 noundef zeroext %truncate, i1 noundef zeroext %ingress, ptr noundef %p_span_id, ptr noundef %extack) #0 align 64 {
entry:
  %agent_parms = alloca %struct.mlxsw_sp_span_agent_parms, align 4
  %trigger = alloca %struct.mlxsw_sp_sample_trigger, align 8
  %params = alloca %struct.mlxsw_sp_sample_params, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %truncate to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %agent_parms) #5
  %0 = call ptr @memcpy(ptr %agent_parms, ptr @__const.mlxsw_sp2_act_sampler_add.agent_parms, i32 12)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trigger) #5
  %1 = ptrtoint ptr %trigger to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 8589934592, ptr %trigger, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %params) #5
  %2 = getelementptr inbounds i8, ptr %params, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %psample_group, ptr %params, align 4
  %trunc_size3 = getelementptr inbounds %struct.mlxsw_sp_sample_params, ptr %params, i32 0, i32 1
  %5 = ptrtoint ptr %trunc_size3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %trunc_size, ptr %trunc_size3, align 4
  %rate4 = getelementptr inbounds %struct.mlxsw_sp_sample_params, ptr %params, i32 0, i32 2
  %6 = ptrtoint ptr %rate4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rate, ptr %rate4, align 4
  %truncate5 = getelementptr inbounds %struct.mlxsw_sp_sample_params, ptr %params, i32 0, i32 3
  %7 = ptrtoint ptr %truncate5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %frombool, ptr %truncate5, align 4
  %call = call i32 @mlxsw_sp_sample_trigger_params_set(ptr noundef %priv, ptr noundef nonnull %trigger, ptr noundef nonnull %params, ptr noundef %extack) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = call i32 @mlxsw_sp_span_agent_get(ptr noundef %priv, ptr noundef %p_span_id, ptr noundef nonnull %agent_parms) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end14, label %do.body

do.body:                                          ; preds = %if.end
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp2_act_sampler_add.__msg) #5
  %tobool11.not = icmp eq ptr %extack, null
  br i1 %tobool11.not, label %do.body.err_span_agent_get_crit_edge, label %if.then12

do.body.err_span_agent_get_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_span_agent_get

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mlxsw_sp2_act_sampler_add.__msg, ptr %extack, align 4
  br label %err_span_agent_get

if.end14:                                         ; preds = %if.end
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %idxprom = zext i16 %local_port to i32
  %arrayidx = getelementptr ptr, ptr %10, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call16 = call i32 @mlxsw_sp_span_analyzed_port_get(ptr noundef %12, i1 noundef zeroext %ingress) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %do.body19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body19:                                        ; preds = %if.end14
  call void @do_trace_netlink_extack(ptr noundef nonnull @mlxsw_sp2_act_sampler_add.__msg.17) #5
  %tobool21.not = icmp eq ptr %extack, null
  br i1 %tobool21.not, label %do.body19.if.end24_crit_edge, label %if.then22

do.body19.if.end24_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then22:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mlxsw_sp2_act_sampler_add.__msg.17, ptr %extack, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %do.body19.if.end24_crit_edge
  %14 = ptrtoint ptr %p_span_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p_span_id, align 4
  call void @mlxsw_sp_span_agent_put(ptr noundef %priv, i32 noundef %15) #5
  br label %err_span_agent_get

err_span_agent_get:                               ; preds = %if.end24, %if.then12, %do.body.err_span_agent_get_crit_edge
  %err.0 = phi i32 [ %call16, %if.end24 ], [ %call8, %if.then12 ], [ %call8, %do.body.err_span_agent_get_crit_edge ]
  call void @mlxsw_sp_sample_trigger_params_unset(ptr noundef %priv, ptr noundef nonnull %trigger) #5
  br label %cleanup

cleanup:                                          ; preds = %err_span_agent_get, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_span_agent_get ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %agent_parms) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp2_act_sampler_del(ptr noundef %priv, i16 noundef zeroext %local_port, i32 noundef %span_id, i1 noundef zeroext %ingress) #0 align 64 {
entry:
  %trigger = alloca %struct.mlxsw_sp_sample_trigger, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %trigger) #5
  %0 = ptrtoint ptr %trigger to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 8589934592, ptr %trigger, align 8
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %idxprom = zext i16 %local_port to i32
  %arrayidx = getelementptr ptr, ptr %2, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @mlxsw_sp_span_analyzed_port_put(ptr noundef %4, i1 noundef zeroext %ingress) #5
  tail call void @mlxsw_sp_span_agent_put(ptr noundef %priv, i32 noundef %span_id) #5
  call void @mlxsw_sp_sample_trigger_params_unset(ptr noundef %priv, ptr noundef nonnull %trigger) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %trigger) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_afa_init(ptr noundef %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call i64 @mlxsw_core_res_get(ptr noundef %1, i32 noundef 27) #5
  %conv = trunc i64 %call to i32
  %afa_ops = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 27
  %2 = ptrtoint ptr %afa_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %afa_ops, align 4
  %call1 = tail call ptr @mlxsw_afa_create(i32 noundef %conv, ptr noundef %3, ptr noundef %mlxsw_sp) #5
  %afa = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 12
  %4 = ptrtoint ptr %afa to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %afa, align 4
  %cmp.i.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %call1 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %5, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_afa_create(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_afa_fini(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %afa = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 12
  %0 = ptrtoint ptr %afa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %afa, align 4
  tail call void @mlxsw_afa_destroy(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_afa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_kvdl_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_pefa_pack(ptr nocapture noundef %payload, i32 noundef %index, i1 noundef zeroext %ca, ptr noundef readonly %flex_action_set) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = call ptr @memset(ptr %payload, i32 0, i32 176)
  %and6.i.i = and i32 %index, 16777215
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, -16777216
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  store i32 %or.i.i, ptr %payload, align 4
  %spec.select.i.i25 = select i1 %ca, i32 16777216, i32 0
  %arrayidx.i.i31 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i31 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i31, align 4
  %and7.i.i33 = and i32 %4, -16777217
  %or.i.i34 = or i32 %spec.select.i.i25, %and7.i.i33
  store i32 %or.i.i34, ptr %arrayidx.i.i31, align 4
  %tobool2.not = icmp eq ptr %flex_action_set, null
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i38 = getelementptr i8, ptr %payload, i32 8
  %5 = call ptr @memcpy(ptr %arrayidx.i.i38, ptr %flex_action_set, i32 168)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_kvdl_free(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_flow_counter_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_flow_counter_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_span_agent_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_span_analyzed_port_get(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_span_agent_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_span_analyzed_port_put(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_policer_add(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_policer_del(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_sample_trigger_params_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_sample_trigger_params_unset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !36, !38, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @mlxsw_sp1_act_afa_ops, !1, !"mlxsw_sp1_act_afa_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_actions.c", i32 211, i32 28}
!2 = !{ptr @mlxsw_sp2_act_afa_ops, !3, !"mlxsw_sp2_act_afa_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_actions.c", i32 290, i32 28}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @__mlxsw_item_offset._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @__mlxsw_item_offset._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2735, i32 1}
!12 = distinct !{null, !11, !"mlxsw_reg_pefa_index_item", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2752, i32 1}
!15 = distinct !{null, !14, !"mlxsw_reg_pefa_ca_item", i1 false, i1 false}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2761, i32 1}
!18 = distinct !{null, !17, !"mlxsw_reg_pefa_flex_action_set_item", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2729, i32 1}
!21 = !{ptr @mlxsw_reg_pefa, !20, !"mlxsw_reg_pefa", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2629, i32 1}
!24 = distinct !{null, !23, !"mlxsw_reg_ppbs_pbs_ptr_item", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2635, i32 1}
!27 = distinct !{null, !26, !"mlxsw_reg_ppbs_system_port_item", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2622, i32 1}
!30 = !{ptr @mlxsw_reg_ppbs, !29, !"mlxsw_reg_ppbs", i1 false, i1 false}
!31 = !{ptr @mlxsw_sp1_act_sampler_add.__msg, !32, !"__msg", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_actions.c", i32 201, i32 2}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_actions.c", i32 208, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2744, i32 1}
!38 = distinct !{null, !37, !"mlxsw_reg_pefa_a_item", i1 false, i1 false}
!39 = !{ptr @mlxsw_sp2_act_sampler_add.__msg, !40, !"__msg", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_actions.c", i32 255, i32 3}
!41 = !{ptr @mlxsw_sp2_act_sampler_add.__msg.17, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_flex_actions.c", i32 262, i32 3}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
!53 = !{!"branch_weights", i32 2000, i32 1}
