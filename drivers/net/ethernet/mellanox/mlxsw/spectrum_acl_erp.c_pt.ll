; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_acl_erp_delta = type { %struct.mlxsw_sp_acl_erp_key, i16, i8 }
%struct.mlxsw_sp_acl_erp_key = type { [96 x i8], i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_acl_erp_table_ops = type { ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.objagg_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlxsw_sp_acl_atcam_region = type { %struct.rhashtable, %struct.list_head, %struct.mlxsw_sp_acl_ctcam_region, ptr, ptr, ptr, i32, ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mlxsw_sp_acl_ctcam_region = type { ptr, ptr, ptr }
%struct.mlxsw_sp_acl_erp_table = type { %struct.mlxsw_sp_acl_erp_master_mask, [1 x i32], [1 x i32], %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, %struct.mutex }
%struct.mlxsw_sp_acl_erp_master_mask = type { [24 x i32], [768 x i32] }
%struct.mlxsw_sp_acl_erp = type { %struct.mlxsw_sp_acl_erp_key, i8, i8, [24 x i32], %struct.list_head, ptr }
%struct.mlxsw_sp_acl_erp_core = type { [4 x i32], ptr, ptr, ptr, i32 }
%struct.mlxsw_sp_acl_tcam_region = type { ptr, ptr, %struct.list_head, i32, i16, [16 x i8], ptr, ptr, [0 x i32] }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }

@mlxsw_sp_acl_erp_delta_default = internal constant { %struct.mlxsw_sp_acl_erp_delta, [58 x i8] } zeroinitializer, align 32
@mlxsw_sp_acl_erp_rehash_hints_get._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mlxsw_sp_acl_erp_rehash_hints_get = private unnamed_addr constant [34 x i8] c"mlxsw_sp_acl_erp_rehash_hints_get\00", align 1
@mlxsw_sp_acl_erp_rehash_hints_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.mlxsw_sp_acl_erp_rehash_hints_get, ptr @.str.2, i32 1430, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to create ERP hints\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_erp_rehash_hints_get._entry_ptr = internal global ptr @mlxsw_sp_acl_erp_rehash_hints_get._entry, section ".printk_index", align 4
@erp_single_mask_ops = internal constant { %struct.mlxsw_sp_acl_erp_table_ops, [24 x i8] } { %struct.mlxsw_sp_acl_erp_table_ops { ptr @mlxsw_sp_acl_erp_second_mask_create, ptr @mlxsw_sp_acl_erp_first_mask_destroy }, [24 x i8] zeroinitializer }, align 32
@erp_no_mask_ops = internal constant { %struct.mlxsw_sp_acl_erp_table_ops, [24 x i8] } { %struct.mlxsw_sp_acl_erp_table_ops { ptr @mlxsw_sp_acl_erp_first_mask_create, ptr @mlxsw_sp_acl_erp_no_mask_destroy }, [24 x i8] zeroinitializer }, align 32
@erp_two_masks_ops = internal constant { %struct.mlxsw_sp_acl_erp_table_ops, [24 x i8] } { %struct.mlxsw_sp_acl_erp_table_ops { ptr @mlxsw_sp_acl_erp_mask_create, ptr @mlxsw_sp_acl_erp_second_mask_destroy }, [24 x i8] zeroinitializer }, align 32
@erp_multiple_masks_ops = internal constant { %struct.mlxsw_sp_acl_erp_table_ops, [24 x i8] } { %struct.mlxsw_sp_acl_erp_table_ops { ptr @mlxsw_sp_acl_erp_mask_create, ptr @mlxsw_sp_acl_erp_mask_destroy }, [24 x i8] zeroinitializer }, align 32
@mlxsw_reg_pererp = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12331, i16 28, ptr @.str.23 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 35, ptr null, ptr null }, align 1
@.str.5 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_pererp_region_id\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_pererp_ctcam_le\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reg_pererp_erpt_pointer_valid\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reg_pererp_erpt_bank_pointer\00", [35 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_pererp_erpt_pointer\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_pererp_master_rp_id\00", [40 x i8] zeroinitializer }, align 32
@__mlxsw_item_bit_array_offset._entry = internal constant %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.7, i32 216, ptr null, ptr null }, align 1
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,element_size=%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__mlxsw_item_bit_array_offset\00", [34 x i8] zeroinitializer }, align 32
@__mlxsw_item_bit_array_offset._entry_ptr = internal global ptr @__mlxsw_item_bit_array_offset._entry, section ".printk_index", align 4
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_pererp_erpt_vector\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pererp\00", [25 x i8] zeroinitializer }, align 32
@mlxsw_reg_percr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12330, i16 128, ptr @.str.33 }, [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_percr_region_id\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reg_percr_atcam_ignore_prune\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"reg_percr_ctcam_ignore_prune\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_percr_bf_bypass\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"percr\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_reg_perpt = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 12321, i16 128, ptr @.str.52 }, [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_perpt_erpt_bank\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_perpt_erpt_index\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_perpt_key_size\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_perpt_bf_bypass\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_perpt_erp_id\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_perpt_erpt_base_bank\00", [39 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_perpt_erpt_base_index\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reg_perpt_erp_index_in_vector\00", [34 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_perpt_erp_vector\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"perpt\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_erp_hints_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mlxsw_sp_acl_erp_hints_check = private unnamed_addr constant [29 x i8] c"mlxsw_sp_acl_erp_hints_check\00", align 1
@mlxsw_sp_acl_erp_hints_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.mlxsw_sp_acl_erp_hints_check, ptr @.str.2, i32 1393, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get ERP stats\0A\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_erp_hints_check._entry_ptr = internal global ptr @mlxsw_sp_acl_erp_hints_check._entry, section ".printk_index", align 4
@mlxsw_sp_acl_erp_hints_check._rs.54 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_erp_hints_check._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @__func__.mlxsw_sp_acl_erp_hints_check, ptr @.str.2, i32 1399, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get ERP hints stats\0A\00", [33 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_erp_hints_check._entry_ptr.57 = internal global ptr @mlxsw_sp_acl_erp_hints_check._entry.55, section ".printk_index", align 4
@mlxsw_sp_acl_erp_objagg_ops = internal constant { %struct.objagg_ops, [36 x i8] } { %struct.objagg_ops { i32 97, ptr @mlxsw_sp_acl_erp_delta_check, ptr @mlxsw_sp_acl_erp_hints_obj_cmp, ptr @mlxsw_sp_acl_erp_delta_create, ptr @mlxsw_sp_acl_erp_delta_destroy, ptr @mlxsw_sp_acl_erp_root_create, ptr @mlxsw_sp_acl_erp_root_destroy }, [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_acl_erp_table_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&erp_table->objagg_lock\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.59 = private unnamed_addr constant [31 x i8] c"mlxsw_sp_acl_erp_delta_default\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1139, i32 1 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1430, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"erp_single_mask_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 110, i32 48 }
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"erp_no_mask_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 115, i32 48 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"erp_two_masks_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 105, i32 48 }
@___asan_gen_.92 = private unnamed_addr constant [23 x i8] c"erp_multiple_masks_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 100, i32 48 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"mlxsw_reg_pererp\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 33, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 3308, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 3314, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 3320, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 3327, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 3336, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 3353, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 215, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 3345, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 3301, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_percr\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 3253, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 3259, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 3265, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 3274, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 3246, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_perpt\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2937, i32 1 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2944, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2956, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2965, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2971, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2978, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2985, i32 1 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2991, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2997, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 2930, i32 1 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1393, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1399, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [28 x i8] c"mlxsw_sp_acl_erp_objagg_ops\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1306, i32 32 }
@___asan_gen_.209 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [58 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 1338, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__mlxsw_item_bit_array_offset._entry, ptr @__mlxsw_item_bit_array_offset._entry_ptr, ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_acl_erp_hints_check._entry, ptr @mlxsw_sp_acl_erp_hints_check._entry.55, ptr @mlxsw_sp_acl_erp_hints_check._entry_ptr, ptr @mlxsw_sp_acl_erp_hints_check._entry_ptr.57, ptr @mlxsw_sp_acl_erp_rehash_hints_get._entry, ptr @mlxsw_sp_acl_erp_rehash_hints_get._entry_ptr, ptr @mlxsw_sp_acl_erp_delta_default, ptr @mlxsw_sp_acl_erp_rehash_hints_get._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @erp_single_mask_ops, ptr @erp_no_mask_ops, ptr @erp_two_masks_ops, ptr @erp_multiple_masks_ops, ptr @mlxsw_reg_pererp, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @mlxsw_reg_percr, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @mlxsw_reg_perpt, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.52, ptr @mlxsw_sp_acl_erp_hints_check._rs, ptr @.str.53, ptr @mlxsw_sp_acl_erp_hints_check._rs.54, ptr @.str.56, ptr @mlxsw_sp_acl_erp_objagg_ops, ptr @mlxsw_sp_acl_erp_table_create.__key, ptr @.str.58], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_erp_delta_default to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_erp_rehash_hints_get._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_erp_rehash_hints_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erp_single_mask_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erp_no_mask_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erp_two_masks_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erp_multiple_masks_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_pererp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_percr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_perpt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_erp_hints_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_erp_hints_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_erp_hints_check._rs.54 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_erp_hints_check._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_erp_objagg_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_acl_erp_table_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_erp_mask_get(ptr nocapture noundef readonly %aregion, ptr nocapture noundef readonly %mask, i1 noundef zeroext %ctcam) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.mlxsw_sp_acl_erp_key, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %ctcam to i8
  %erp_table1 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 7
  %0 = ptrtoint ptr %erp_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_table1, align 4
  call void @llvm.lifetime.start.p0(i64 97, ptr nonnull %key) #11
  %2 = call ptr @memcpy(ptr %key, ptr %mask, i32 96)
  %ctcam3 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, ptr %key, i32 0, i32 1
  %3 = ptrtoint ptr %ctcam3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %ctcam3, align 1
  %objagg_lock = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %objagg_lock, i32 noundef 0) #11
  %objagg = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %objagg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %objagg, align 4
  %call = call ptr @objagg_obj_get(ptr noundef %5, ptr noundef nonnull %key) #11
  call void @mutex_unlock(ptr noundef %objagg_lock) #11
  call void @llvm.lifetime.end.p0(i64 97, ptr nonnull %key) #11
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_obj_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_erp_mask_put(ptr nocapture noundef readonly %aregion, ptr noundef %erp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_table1 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 7
  %0 = ptrtoint ptr %erp_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_table1, align 4
  %objagg_lock = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %objagg_lock, i32 noundef 0) #11
  %objagg = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %objagg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %objagg, align 4
  tail call void @objagg_obj_put(ptr noundef %3, ptr noundef %erp_mask) #11
  tail call void @mutex_unlock(ptr noundef %objagg_lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @objagg_obj_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_erp_bf_insert(ptr noundef %mlxsw_sp, ptr noundef %aregion, ptr noundef %erp_mask, ptr noundef %aentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @objagg_obj_root_priv(ptr noundef %erp_mask) #11
  %erp_table = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %erp_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_table, align 4
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.not.i = icmp ne ptr %3, @erp_single_mask_ops
  %cmp2.i = icmp ne ptr %3, @erp_no_mask_ops
  %spec.select.i = and i1 %cmp.not.i, %cmp2.i
  br i1 %spec.select.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %index.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index.i, align 2
  %conv.i = zext i8 %5 to i32
  %erp_core.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %erp_core.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %erp_core.i, align 4
  %num_erp_banks.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %num_erp_banks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_erp_banks.i, align 4
  %rem.i = urem i32 %conv.i, %9
  %bf = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %bf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bf, align 4
  %call4 = tail call i32 @mlxsw_sp_acl_bf_entry_add(ptr noundef %mlxsw_sp, ptr noundef %11, ptr noundef %aregion, i32 noundef %rem.i, ptr noundef %aentry) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_obj_root_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_acl_bf_entry_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_erp_bf_remove(ptr noundef %mlxsw_sp, ptr noundef %aregion, ptr noundef %erp_mask, ptr noundef %aentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @objagg_obj_root_priv(ptr noundef %erp_mask) #11
  %erp_table = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %erp_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_table, align 4
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.not.i = icmp ne ptr %3, @erp_single_mask_ops
  %cmp2.i = icmp ne ptr %3, @erp_no_mask_ops
  %spec.select.i = and i1 %cmp.not.i, %cmp2.i
  br i1 %spec.select.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %index.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index.i, align 2
  %conv.i = zext i8 %5 to i32
  %erp_core.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %erp_core.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %erp_core.i, align 4
  %num_erp_banks.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %num_erp_banks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_erp_banks.i, align 4
  %rem.i = urem i32 %conv.i, %9
  %bf = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %bf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bf, align 4
  tail call void @mlxsw_sp_acl_bf_entry_del(ptr noundef %mlxsw_sp, ptr noundef %11, ptr noundef %aregion, i32 noundef %rem.i, ptr noundef %aentry) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_bf_entry_del(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mlxsw_sp_acl_erp_mask_is_ctcam(ptr noundef %erp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @objagg_obj_raw(ptr noundef %erp_mask) #11
  %ctcam = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %ctcam to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctcam, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_obj_raw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @mlxsw_sp_acl_erp_mask_erp_id(ptr noundef %erp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @objagg_obj_root_priv(ptr noundef %erp_mask) #11
  %id = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 1
  ret i8 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mlxsw_sp_acl_erp_delta_start(ptr nocapture noundef readonly %delta) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %start = getelementptr inbounds %struct.mlxsw_sp_acl_erp_delta, ptr %delta, i32 0, i32 1
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %start, align 2
  ret i16 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mlxsw_sp_acl_erp_delta_mask(ptr nocapture noundef readonly %delta) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr inbounds %struct.mlxsw_sp_acl_erp_delta, ptr %delta, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mask, align 2
  ret i8 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @mlxsw_sp_acl_erp_delta_value(ptr nocapture noundef readonly %delta, ptr nocapture noundef readonly %enc_key) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mask2 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_delta, ptr %delta, i32 0, i32 2
  %0 = ptrtoint ptr %mask2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mask2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %start1 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_delta, ptr %delta, i32 0, i32 1
  %2 = ptrtoint ptr %start1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %start1, align 2
  %4 = lshr i16 %3, 3
  %div37 = zext i16 %4 to i32
  %sub3 = sub nsw i32 55, %div37
  %arrayidx = getelementptr i8, ptr %enc_key, i32 %sub3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv4 = zext i8 %6 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 440, i16 %3)
  %cmp = icmp ult i16 %3, 440
  br i1 %cmp, label %if.then8, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub13 = sub nsw i32 54, %div37
  %arrayidx14 = getelementptr i8, ptr %enc_key, i32 %sub13
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %8 to i16
  %shl = shl nuw i16 %conv15, 8
  %or = or i16 %shl, %conv4
  br label %if.end18

if.end18:                                         ; preds = %if.then8, %if.end.if.end18_crit_edge
  %tmp.0 = phi i16 [ %or, %if.then8 ], [ %conv4, %if.end.if.end18_crit_edge ]
  %rem = and i16 %3, 7
  %shr = lshr i16 %tmp.0, %rem
  %9 = trunc i16 %shr to i8
  %conv25 = and i8 %1, %9
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv25, %if.end18 ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlxsw_sp_acl_erp_delta_clear(ptr nocapture noundef readonly %delta, ptr nocapture noundef %enc_key) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %start1 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_delta, ptr %delta, i32 0, i32 1
  %0 = ptrtoint ptr %start1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %start1, align 2
  %mask2 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_delta, ptr %delta, i32 0, i32 2
  %2 = ptrtoint ptr %mask2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mask2, align 2
  %rem = and i16 %1, 7
  %conv4 = zext i8 %3 to i16
  %shl = shl nuw nsw i16 %conv4, %rem
  %neg = xor i16 %shl, -1
  %4 = lshr i16 %1, 3
  %div = zext i16 %4 to i32
  %sub9 = sub nsw i32 55, %div
  %arrayidx = getelementptr i8, ptr %enc_key, i32 %sub9
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = trunc i16 %neg to i8
  %conv13 = and i8 %6, %7
  store i8 %conv13, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 440, i16 %1)
  %cmp = icmp ult i16 %1, 440
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub21 = sub nsw i32 54, %div
  %arrayidx22 = getelementptr i8, ptr %enc_key, i32 %sub21
  %8 = lshr i16 %neg, 8
  %9 = trunc i16 %8 to i8
  %10 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx22, align 1
  %and26 = and i8 %11, %9
  store i8 %and26, ptr %arrayidx22, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_erp_delta(ptr noundef %erp_mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @objagg_obj_delta_priv(ptr noundef %erp_mask) #11
  %tobool.not = icmp eq ptr %call, null
  %spec.store.select = select i1 %tobool.not, ptr @mlxsw_sp_acl_erp_delta_default, ptr %call
  ret ptr %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_obj_delta_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_acl_erp_rehash_hints_get(ptr nocapture noundef readonly %aregion) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_table1 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 7
  %0 = ptrtoint ptr %erp_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_table1, align 4
  %region = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 4
  %2 = ptrtoint ptr %region to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %region, align 4
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mlxsw_sp2, align 4
  %objagg_lock = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %objagg_lock, i32 noundef 0) #11
  %objagg = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %objagg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %objagg, align 4
  %call = tail call ptr @objagg_hints_get(ptr noundef %7, i32 noundef 0) #11
  tail call void @mutex_unlock(ptr noundef %objagg_lock) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @mlxsw_sp_acl_erp_rehash_hints_get._rs, ptr noundef nonnull @__func__.mlxsw_sp_acl_erp_rehash_hints_get) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end11:                                         ; preds = %entry
  %12 = ptrtoint ptr %erp_table1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %erp_table1, align 4
  %objagg_lock.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %13, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %objagg_lock.i, i32 noundef 0) #11
  %objagg.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %objagg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %objagg.i, align 4
  %call.i = tail call ptr @objagg_stats_get(ptr noundef %15) #11
  tail call void @mutex_unlock(ptr noundef %objagg_lock.i) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.body.i, label %if.end10.i

do.body.i:                                        ; preds = %if.end11
  %call4.i = tail call i32 @___ratelimit(ptr noundef nonnull @mlxsw_sp_acl_erp_hints_check._rs, ptr noundef nonnull @__func__.mlxsw_sp_acl_erp_hints_check) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %do.body.i.mlxsw_sp_acl_erp_hints_check.exit.thread_crit_edge, label %do.end.i

do.body.i.mlxsw_sp_acl_erp_hints_check.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_hints_check.exit.thread

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %bus_info.i = getelementptr inbounds %struct.mlxsw_sp, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %bus_info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bus_info.i, align 4
  %dev.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.53) #14
  br label %mlxsw_sp_acl_erp_hints_check.exit.thread

if.end10.i:                                       ; preds = %if.end11
  %call11.i = tail call ptr @objagg_hints_stats_get(ptr noundef %call) #11
  %cmp.i44.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44.i, label %do.body14.i, label %if.end27.i

do.body14.i:                                      ; preds = %if.end10.i
  %call15.i = tail call i32 @___ratelimit(ptr noundef nonnull @mlxsw_sp_acl_erp_hints_check._rs.54, ptr noundef nonnull @__func__.mlxsw_sp_acl_erp_hints_check) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.body14.i.mlxsw_sp_acl_erp_hints_check.exit_crit_edge, label %do.end20.i

do.body14.i.mlxsw_sp_acl_erp_hints_check.exit_crit_edge: ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_hints_check.exit

do.end20.i:                                       ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  %bus_info21.i = getelementptr inbounds %struct.mlxsw_sp, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %bus_info21.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bus_info21.i, align 4
  %dev22.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dev22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev22.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.56) #14
  br label %mlxsw_sp_acl_erp_hints_check.exit

if.end27.i:                                       ; preds = %if.end10.i
  %24 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call11.i, align 4
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp.i34.not = icmp ult i32 %25, %27
  tail call void @objagg_stats_put(ptr noundef %call11.i) #11
  tail call void @objagg_stats_put(ptr noundef %call.i) #11
  br i1 %cmp.i34.not, label %if.end27.i.cleanup_crit_edge, label %if.end27.i.errout_crit_edge

if.end27.i.errout_crit_edge:                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %errout

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

mlxsw_sp_acl_erp_hints_check.exit:                ; preds = %do.end20.i, %do.body14.i.mlxsw_sp_acl_erp_hints_check.exit_crit_edge
  %28 = ptrtoint ptr %call11.i to i32
  tail call void @objagg_stats_put(ptr noundef %call.i) #11
  br label %errout

mlxsw_sp_acl_erp_hints_check.exit.thread:         ; preds = %do.end.i, %do.body.i.mlxsw_sp_acl_erp_hints_check.exit.thread_crit_edge
  %29 = ptrtoint ptr %call.i to i32
  br label %errout

errout:                                           ; preds = %mlxsw_sp_acl_erp_hints_check.exit.thread, %mlxsw_sp_acl_erp_hints_check.exit, %if.end27.i.errout_crit_edge
  %err.0 = phi i32 [ -11, %if.end27.i.errout_crit_edge ], [ %28, %mlxsw_sp_acl_erp_hints_check.exit ], [ %29, %mlxsw_sp_acl_erp_hints_check.exit.thread ]
  tail call void @objagg_hints_put(ptr noundef %call) #11
  %30 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end27.i.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ %30, %errout ], [ %call, %if.end27.i.cleanup_crit_edge ], [ %call, %do.end ], [ %call, %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_hints_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @objagg_hints_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_erp_rehash_hints_put(ptr noundef %hints_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @objagg_hints_put(ptr noundef %hints_priv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_erp_region_init(ptr noundef %aregion, ptr noundef %hints_priv) local_unnamed_addr #0 align 64 {
entry:
  %pererp_pl.i = alloca [28 x i8], align 1
  %percr_pl.i = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3312) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call2.i = tail call ptr @objagg_create(ptr noundef nonnull @mlxsw_sp_acl_erp_objagg_ops, ptr noundef %hints_priv, ptr noundef %aregion) #11
  %objagg.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %call7.i.i.i, i32 0, i32 12
  %1 = ptrtoint ptr %objagg.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2.i, ptr %objagg.i, align 8
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #11
  br label %mlxsw_sp_acl_erp_table_create.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %atcam.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 5
  %2 = ptrtoint ptr %atcam.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %atcam.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %erp_core9.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %call7.i.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %erp_core9.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %erp_core9.i, align 8
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %call7.i.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @erp_no_mask_ops, ptr %ops.i, align 8
  %atcam_erps_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %call7.i.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %atcam_erps_list.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %atcam_erps_list.i, ptr %atcam_erps_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %atcam_erps_list.i, ptr %prev.i.i, align 4
  %aregion10.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %call7.i.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %aregion10.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %aregion, ptr %aregion10.i, align 4
  %objagg_lock.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %call7.i.i.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %objagg_lock.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @mlxsw_sp_acl_erp_table_create.__key) #11
  br label %mlxsw_sp_acl_erp_table_create.exit

mlxsw_sp_acl_erp_table_create.exit:               ; preds = %if.end8.i, %if.then5.i
  %retval.0.i = phi ptr [ %call2.i, %if.then5.i ], [ %call7.i.i.i, %if.end8.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %mlxsw_sp_acl_erp_table_create.exit.if.then_crit_edge, label %if.end

mlxsw_sp_acl_erp_table_create.exit.if.then_crit_edge: ; preds = %mlxsw_sp_acl_erp_table_create.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %mlxsw_sp_acl_erp_table_create.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i32 = phi ptr [ %retval.0.i, %mlxsw_sp_acl_erp_table_create.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %11 = ptrtoint ptr %retval.0.i32 to i32
  br label %cleanup

if.end:                                           ; preds = %mlxsw_sp_acl_erp_table_create.exit
  %erp_table3 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 7
  %12 = ptrtoint ptr %erp_table3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %retval.0.i, ptr %erp_table3, align 4
  %region.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 4
  %13 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %region.i, align 4
  %mlxsw_sp1.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %mlxsw_sp1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mlxsw_sp1.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %percr_pl.i) #11
  %17 = call ptr @memset(ptr %percr_pl.i, i32 255, i32 128)
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %14, i32 0, i32 4
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %id.i, align 4
  call fastcc void @mlxsw_reg_percr_pack(ptr noundef nonnull %percr_pl.i, i16 noundef zeroext %19) #11
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %21, ptr noundef nonnull @mlxsw_reg_percr, ptr noundef nonnull %percr_pl.i) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %percr_pl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end6, label %if.end.err_erp_master_mask_init_crit_edge

if.end.err_erp_master_mask_init_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_master_mask_init

if.end6:                                          ; preds = %if.end
  %22 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %region.i, align 4
  %mlxsw_sp1.i22 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %23, i32 0, i32 7
  %24 = ptrtoint ptr %mlxsw_sp1.i22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mlxsw_sp1.i22, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pererp_pl.i) #11
  %id.i23 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %23, i32 0, i32 4
  %26 = call ptr @memset(ptr %pererp_pl.i, i32 255, i32 28)
  %27 = ptrtoint ptr %id.i23 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %id.i23, align 4
  call fastcc void @mlxsw_reg_pererp_pack(ptr noundef nonnull %pererp_pl.i, i16 noundef zeroext %28, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %core.i24 = getelementptr inbounds %struct.mlxsw_sp, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %core.i24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %core.i24, align 4
  %call.i25 = call i32 @mlxsw_reg_write(ptr noundef %30, ptr noundef nonnull @mlxsw_reg_pererp, ptr noundef nonnull %pererp_pl.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pererp_pl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool8.not = icmp eq i32 %call.i25, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end6.err_erp_master_mask_init_crit_edge

if.end6.err_erp_master_mask_init_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_master_mask_init

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_erp_master_mask_init:                         ; preds = %if.end6.err_erp_master_mask_init_crit_edge, %if.end.err_erp_master_mask_init_crit_edge
  %err.0 = phi i32 [ %call.i, %if.end.err_erp_master_mask_init_crit_edge ], [ %call.i25, %if.end6.err_erp_master_mask_init_crit_edge ]
  %atcam_erps_list.i26 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %retval.0.i, i32 0, i32 3
  %31 = ptrtoint ptr %atcam_erps_list.i26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %atcam_erps_list.i26, align 4
  %cmp.i.not.i = icmp eq ptr %32, %atcam_erps_list.i26
  br i1 %cmp.i.not.i, label %err_erp_master_mask_init.mlxsw_sp_acl_erp_table_destroy.exit_crit_edge, label %do.end.i, !prof !132

err_erp_master_mask_init.mlxsw_sp_acl_erp_table_destroy.exit_crit_edge: ; preds = %err_erp_master_mask_init
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_table_destroy.exit

do.end.i:                                         ; preds = %err_erp_master_mask_init
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1350, i32 noundef 9, ptr noundef null) #11
  br label %mlxsw_sp_acl_erp_table_destroy.exit

mlxsw_sp_acl_erp_table_destroy.exit:              ; preds = %do.end.i, %err_erp_master_mask_init.mlxsw_sp_acl_erp_table_destroy.exit_crit_edge
  %objagg_lock.i27 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %retval.0.i, i32 0, i32 13
  call void @mutex_destroy(ptr noundef %objagg_lock.i27) #11
  %objagg.i28 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %retval.0.i, i32 0, i32 12
  %33 = ptrtoint ptr %objagg.i28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %objagg.i28, align 4
  call void @objagg_destroy(ptr noundef %34) #11
  call void @kfree(ptr noundef nonnull %retval.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_acl_erp_table_destroy.exit, %if.end6.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ %err.0, %mlxsw_sp_acl_erp_table_destroy.exit ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_erp_region_fini(ptr nocapture noundef readonly %aregion) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_table = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %aregion, i32 0, i32 7
  %0 = ptrtoint ptr %erp_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_table, align 4
  %atcam_erps_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %atcam_erps_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %atcam_erps_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %atcam_erps_list.i
  br i1 %cmp.i.not.i, label %entry.mlxsw_sp_acl_erp_table_destroy.exit_crit_edge, label %do.end.i, !prof !132

entry.mlxsw_sp_acl_erp_table_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_table_destroy.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1350, i32 noundef 9, ptr noundef null) #11
  br label %mlxsw_sp_acl_erp_table_destroy.exit

mlxsw_sp_acl_erp_table_destroy.exit:              ; preds = %do.end.i, %entry.mlxsw_sp_acl_erp_table_destroy.exit_crit_edge
  %objagg_lock.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 13
  tail call void @mutex_destroy(ptr noundef %objagg_lock.i) #11
  %objagg.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %objagg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %objagg.i, align 4
  tail call void @objagg_destroy(ptr noundef %5) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_acl_erps_init(ptr noundef %mlxsw_sp, ptr nocapture noundef writeonly %atcam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mlxsw_sp, ptr %mlxsw_sp1, align 4
  %2 = ptrtoint ptr %atcam to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %atcam, align 4
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %3 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core.i, align 4
  %call.i = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %4, i32 noundef 29) #11
  br i1 %call.i, label %lor.lhs.false.i, label %if.end.err_erp_tables_init_crit_edge

if.end.err_erp_tables_init_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_tables_init

lor.lhs.false.i:                                  ; preds = %if.end
  %5 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core.i, align 4
  %call2.i = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %6, i32 noundef 28) #11
  br i1 %call2.i, label %if.end.i, label %lor.lhs.false.i.err_erp_tables_init_crit_edge

lor.lhs.false.i.err_erp_tables_init_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_tables_init

if.end.i:                                         ; preds = %lor.lhs.false.i
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core.i, align 4
  %call4.i = tail call i64 @mlxsw_core_res_get(ptr noundef %8, i32 noundef 29) #11
  %9 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core.i, align 4
  %call6.i = tail call i64 @mlxsw_core_res_get(ptr noundef %10, i32 noundef 28) #11
  %conv7.i = trunc i64 %call6.i to i32
  %num_erp_banks.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %num_erp_banks.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv7.i, ptr %num_erp_banks.i, align 4
  %call8.i = tail call ptr @gen_pool_create(i32 noundef 0, i32 noundef -1) #11
  %erp_tables.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %erp_tables.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i, ptr %erp_tables.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %if.end.i.err_erp_tables_init_crit_edge, label %if.end11.i

if.end.i.err_erp_tables_init_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_tables_init

if.end11.i:                                       ; preds = %if.end.i
  %conv.i = trunc i64 %call4.i to i32
  tail call void @gen_pool_set_algo(ptr noundef nonnull %call8.i, ptr noundef nonnull @gen_pool_best_fit, ptr noundef null) #11
  %13 = ptrtoint ptr %erp_tables.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %erp_tables.i, align 8
  %call.i.i.i = tail call i32 @gen_pool_add_owner(ptr noundef %14, i32 noundef 256, i32 noundef -1, i32 noundef %conv.i, i32 noundef -1, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool15.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end11.i.err_erp_tables_init.sink.split_crit_edge

if.end11.i.err_erp_tables_init.sink.split_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_tables_init.sink.split

if.end17.i:                                       ; preds = %if.end11.i
  %15 = ptrtoint ptr %num_erp_banks.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_erp_banks.i, align 4
  %call19.i = tail call ptr @mlxsw_sp_acl_bf_init(ptr noundef %mlxsw_sp, i32 noundef %16) #11
  %bf.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %bf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call19.i, ptr %bf.i, align 8
  %cmp.i.i = icmp ugt ptr %call19.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mlxsw_sp_acl_erp_tables_init.exit, label %if.end25.i

if.end25.i:                                       ; preds = %if.end17.i
  %18 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core.i, align 4
  %call.i.i = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %19, i32 noundef 31) #11
  br i1 %call.i.i, label %lor.lhs.false.i.i, label %if.end25.i.err_erp_tables_sizes_query.i_crit_edge

if.end25.i.err_erp_tables_sizes_query.i_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_tables_sizes_query.i

lor.lhs.false.i.i:                                ; preds = %if.end25.i
  %20 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core.i, align 4
  %call2.i.i = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %21, i32 noundef 32) #11
  br i1 %call2.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i.err_erp_tables_sizes_query.i_crit_edge

lor.lhs.false.i.i.err_erp_tables_sizes_query.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_tables_sizes_query.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %22 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %core.i, align 4
  %call5.i.i = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %23, i32 noundef 33) #11
  br i1 %call5.i.i, label %lor.lhs.false6.i.i, label %lor.lhs.false3.i.i.err_erp_tables_sizes_query.i_crit_edge

lor.lhs.false3.i.i.err_erp_tables_sizes_query.i_crit_edge: ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_tables_sizes_query.i

lor.lhs.false6.i.i:                               ; preds = %lor.lhs.false3.i.i
  %24 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core.i, align 4
  %call8.i.i = tail call zeroext i1 @mlxsw_core_res_valid(ptr noundef %25, i32 noundef 34) #11
  br i1 %call8.i.i, label %mlxsw_sp_acl_erp_tables_init.exit.thread17, label %lor.lhs.false6.i.i.err_erp_tables_sizes_query.i_crit_edge

lor.lhs.false6.i.i.err_erp_tables_sizes_query.i_crit_edge: ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_tables_sizes_query.i

mlxsw_sp_acl_erp_tables_init.exit.thread17:       ; preds = %lor.lhs.false6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core.i, align 4
  %call10.i.i = tail call i64 @mlxsw_core_res_get(ptr noundef %27, i32 noundef 31) #11
  %conv.i.i = trunc i64 %call10.i.i to i32
  %28 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i.i, ptr %call7.i.i, align 8
  %29 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %core.i, align 4
  %call12.i.i = tail call i64 @mlxsw_core_res_get(ptr noundef %30, i32 noundef 32) #11
  %conv13.i.i = trunc i64 %call12.i.i to i32
  %arrayidx15.i.i = getelementptr [4 x i32], ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv13.i.i, ptr %arrayidx15.i.i, align 4
  %32 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %core.i, align 4
  %call17.i.i = tail call i64 @mlxsw_core_res_get(ptr noundef %33, i32 noundef 33) #11
  %conv18.i.i = trunc i64 %call17.i.i to i32
  %arrayidx20.i.i = getelementptr [4 x i32], ptr %call7.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %conv18.i.i, ptr %arrayidx20.i.i, align 8
  %35 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %core.i, align 4
  %call22.i.i = tail call i64 @mlxsw_core_res_get(ptr noundef %36, i32 noundef 34) #11
  %conv23.i.i = trunc i64 %call22.i.i to i32
  %arrayidx25.i.i = getelementptr [4 x i32], ptr %call7.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv23.i.i, ptr %arrayidx25.i.i, align 4
  br label %cleanup

err_erp_tables_sizes_query.i:                     ; preds = %lor.lhs.false6.i.i.err_erp_tables_sizes_query.i_crit_edge, %lor.lhs.false3.i.i.err_erp_tables_sizes_query.i_crit_edge, %lor.lhs.false.i.i.err_erp_tables_sizes_query.i_crit_edge, %if.end25.i.err_erp_tables_sizes_query.i_crit_edge
  %38 = ptrtoint ptr %bf.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bf.i, align 8
  tail call void @mlxsw_sp_acl_bf_fini(ptr noundef %39) #11
  br label %err_erp_tables_init.sink.split

mlxsw_sp_acl_erp_tables_init.exit:                ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %call19.i to i32
  br label %err_erp_tables_init.sink.split

err_erp_tables_init.sink.split:                   ; preds = %mlxsw_sp_acl_erp_tables_init.exit, %err_erp_tables_sizes_query.i, %if.end11.i.err_erp_tables_init.sink.split_crit_edge
  %retval.0.i16.ph = phi i32 [ %40, %mlxsw_sp_acl_erp_tables_init.exit ], [ -5, %err_erp_tables_sizes_query.i ], [ %call.i.i.i, %if.end11.i.err_erp_tables_init.sink.split_crit_edge ]
  %41 = ptrtoint ptr %erp_tables.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %erp_tables.i, align 8
  tail call void @gen_pool_destroy(ptr noundef %42) #11
  br label %err_erp_tables_init

err_erp_tables_init:                              ; preds = %err_erp_tables_init.sink.split, %if.end.i.err_erp_tables_init_crit_edge, %lor.lhs.false.i.err_erp_tables_init_crit_edge, %if.end.err_erp_tables_init_crit_edge
  %retval.0.i16 = phi i32 [ -12, %if.end.i.err_erp_tables_init_crit_edge ], [ -5, %if.end.err_erp_tables_init_crit_edge ], [ -5, %lor.lhs.false.i.err_erp_tables_init_crit_edge ], [ %retval.0.i16.ph, %err_erp_tables_init.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_erp_tables_init, %mlxsw_sp_acl_erp_tables_init.exit.thread17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i16, %err_erp_tables_init ], [ -12, %entry.cleanup_crit_edge ], [ 0, %mlxsw_sp_acl_erp_tables_init.exit.thread17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_acl_erps_fini(ptr nocapture noundef readnone %mlxsw_sp, ptr nocapture noundef readonly %atcam) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %atcam to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atcam, align 4
  %bf.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bf.i, align 4
  tail call void @mlxsw_sp_acl_bf_fini(ptr noundef %3) #11
  %erp_tables.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %erp_tables.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %erp_tables.i, align 4
  tail call void @gen_pool_destroy(ptr noundef %5) #11
  %6 = ptrtoint ptr %atcam to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %atcam, align 4
  tail call void @kfree(ptr noundef %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp_acl_erp_second_mask_create(ptr noundef %erp_table, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctcam = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %ctcam to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctcam, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc ptr @mlxsw_sp_acl_erp_ctcam_mask_create(ptr noundef %erp_table, ptr noundef %key)
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @mlxsw_sp_acl_erp_region_table_trans(ptr noundef %erp_table)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %2 = inttoptr i32 %call1 to ptr
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc ptr @mlxsw_sp_acl_erp_generic_create(ptr noundef %erp_table, ptr noundef %key)
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %call6 to i32
  br label %err_erp_create

if.end10:                                         ; preds = %if.end5
  %index = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call6, i32 0, i32 2
  %erp_index_bitmap.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 2
  %num_max_atcam_erps.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 9
  %4 = ptrtoint ptr %num_max_atcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_max_atcam_erps.i, align 4
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %erp_index_bitmap.i, i32 noundef %5) #11
  %conv1.i = and i32 %call.i, 255
  %6 = ptrtoint ptr %num_max_atcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_max_atcam_erps.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %7)
  %cmp.i49 = icmp ult i32 %conv1.i, %7
  br i1 %cmp.i49, label %if.end14, label %if.end10.err_erp_index_get_crit_edge

if.end10.err_erp_index_get_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_index_get

if.end14:                                         ; preds = %if.end10
  %conv.i = trunc i32 %call.i to i8
  %rem.i.i = and i32 %call.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv1.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %erp_index_bitmap.i, i32 %div2.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %9, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %10 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %index, align 1
  %call15 = tail call fastcc i32 @mlxsw_sp_acl_erp_table_erp_add(ptr noundef %erp_table, ptr noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_table_erp_add_crit_edge

if.end14.err_table_erp_add_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_table_erp_add

if.end18:                                         ; preds = %if.end14
  %call19 = tail call fastcc i32 @mlxsw_sp_acl_erp_region_erp_add(ptr noundef %erp_table, ptr noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %err_region_erp_add

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %ops = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 6
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @erp_two_masks_ops, ptr %ops, align 4
  br label %cleanup

err_region_erp_add:                               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mlxsw_sp_acl_erp_table_erp_del(ptr noundef %call6)
  br label %err_table_erp_add

err_table_erp_add:                                ; preds = %err_region_erp_add, %if.end14.err_table_erp_add_crit_edge
  %err.0 = phi i32 [ %call15, %if.end14.err_table_erp_add_crit_edge ], [ %call19, %err_region_erp_add ]
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %index, align 2
  %conv.i50 = zext i8 %13 to i32
  %rem.i.i52 = and i32 %conv.i50, 31
  %shl.i.i53 = shl nuw i32 1, %rem.i.i52
  %div2.i.i54 = lshr i32 %conv.i50, 5
  %add.ptr.i.i55 = getelementptr i32, ptr %erp_index_bitmap.i, i32 %div2.i.i54
  %neg.i.i = xor i32 %shl.i.i53, -1
  %14 = ptrtoint ptr %add.ptr.i.i55 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i55, align 4
  %and.i.i = and i32 %15, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i55, align 4
  br label %err_erp_index_get

err_erp_index_get:                                ; preds = %err_table_erp_add, %if.end10.err_erp_index_get_crit_edge
  %err.1 = phi i32 [ %err.0, %err_table_erp_add ], [ -105, %if.end10.err_erp_index_get_crit_edge ]
  %erp_table1.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call6, i32 0, i32 5
  %16 = ptrtoint ptr %erp_table1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %erp_table1.i, align 4
  tail call fastcc void @mlxsw_sp_acl_erp_master_mask_clear(ptr noundef %17, ptr noundef %call6) #11
  %num_atcam_erps.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %num_atcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_atcam_erps.i, align 4
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr %num_atcam_erps.i, align 4
  %list.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call6, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %err_erp_index_get.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge

err_erp_index_get.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge: ; preds = %err_erp_index_get
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_generic_destroy.exit

if.end.i.i.i:                                     ; preds = %err_erp_index_get
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call6, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %mlxsw_sp_acl_erp_generic_destroy.exit

mlxsw_sp_acl_erp_generic_destroy.exit:            ; preds = %if.end.i.i.i, %err_erp_index_get.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge
  %26 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call6, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call6, i32 0, i32 1
  %28 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %id.i, align 1
  %conv.i.i = zext i8 %29 to i32
  %erp_id_bitmap.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %17, i32 0, i32 1
  %rem.i.i.i = and i32 %conv.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %conv.i.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %erp_id_bitmap.i.i, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %30 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %31, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  tail call void @kfree(ptr noundef %call6) #11
  br label %err_erp_create

err_erp_create:                                   ; preds = %mlxsw_sp_acl_erp_generic_destroy.exit, %if.then8
  %err.2 = phi i32 [ %3, %if.then8 ], [ %err.1, %mlxsw_sp_acl_erp_generic_destroy.exit ]
  tail call fastcc void @mlxsw_sp_acl_erp_region_master_mask_trans(ptr noundef %erp_table)
  %32 = inttoptr i32 %err.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_erp_create, %if.end22, %if.then3, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %2, %if.then3 ], [ %32, %err_erp_create ], [ %call6, %if.end22 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_erp_first_mask_destroy(ptr nocapture noundef writeonly %erp_table, ptr noundef %erp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_table1.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 5
  %0 = ptrtoint ptr %erp_table1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_table1.i, align 4
  tail call fastcc void @mlxsw_sp_acl_erp_master_mask_clear(ptr noundef %1, ptr noundef %erp) #11
  %num_atcam_erps.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %num_atcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_atcam_erps.i, align 4
  %dec.i = add i32 %3, -1
  store i32 %dec.i, ptr %num_atcam_erps.i, align 4
  %list.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge

entry.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_generic_destroy.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %mlxsw_sp_acl_erp_generic_destroy.exit

mlxsw_sp_acl_erp_generic_destroy.exit:            ; preds = %if.end.i.i.i, %entry.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge
  %10 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 1
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id.i, align 1
  %conv.i.i = zext i8 %13 to i32
  %erp_id_bitmap.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 1
  %rem.i.i.i = and i32 %conv.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %conv.i.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %erp_id_bitmap.i.i, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %14 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %15, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  tail call void @kfree(ptr noundef %erp) #11
  %ops = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 6
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @erp_no_mask_ops, ptr %ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlxsw_sp_acl_erp_ctcam_mask_create(ptr noundef %erp_table, ptr nocapture noundef readonly %key) unnamed_addr #0 align 64 {
entry:
  %pererp_pl.i.i = alloca [28 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 208) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memcpy(ptr %call7.i.i, ptr %key, i32 97)
  %mask_bitmap = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call7.i.i, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %mask_bitmap, ptr %key, i32 96)
  %num_ctcam_erps.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 10
  %ops.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i.i.i, align 4
  %cmp.not.i.i.i = icmp ne ptr %4, @erp_single_mask_ops
  %cmp2.i.i.i = icmp ne ptr %4, @erp_no_mask_ops
  %spec.select.i.i.i = and i1 %cmp.not.i.i.i, %cmp2.i.i.i
  br i1 %spec.select.i.i.i, label %if.end.if.end3.i.i_crit_edge, label %if.then.i.i

if.end.if.end3.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i.i

if.then.i.i:                                      ; preds = %if.end
  %call1.i.i = tail call fastcc i32 @mlxsw_sp_acl_erp_region_table_trans(ptr noundef %erp_table) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3thread-pre-split.i.i, label %if.then.i.i.err_erp_ctcam_inc_crit_edge

if.then.i.i.err_erp_ctcam_inc_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_ctcam_inc

if.end3thread-pre-split.i.i:                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr.i.i = load ptr, ptr %ops.i.i.i, align 4
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end3thread-pre-split.i.i, %if.end.if.end3.i.i_crit_edge
  %6 = phi ptr [ %.pr.i.i, %if.end3thread-pre-split.i.i ], [ %4, %if.end.if.end3.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %6, @erp_multiple_masks_ops
  br i1 %cmp.not.i.i, label %if.end3.i.i.if.end7_crit_edge, label %if.then4.i.i

if.end3.i.i.if.end7_crit_edge:                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @erp_multiple_masks_ops, ptr %ops.i.i.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4.i.i, %if.end3.i.i.if.end7_crit_edge
  %8 = ptrtoint ptr %num_ctcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ctcam_erps.i, align 4
  %inc.i.i = add i32 %9, 1
  store i32 %inc.i.i, ptr %num_ctcam_erps.i, align 4
  %erp_table8 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %erp_table8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %erp_table, ptr %erp_table8, align 4
  %call10 = tail call fastcc i32 @mlxsw_sp_acl_erp_master_mask_set(ptr noundef %erp_table, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.err_master_mask_set_crit_edge

if.end7.err_master_mask_set_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_master_mask_set

if.end13:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %num_ctcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_ctcam_erps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp ugt i32 %12, 1
  br i1 %cmp.i, label %if.end13.cleanup_crit_edge, label %mlxsw_sp_acl_erp_region_ctcam_enable.exit

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

mlxsw_sp_acl_erp_region_ctcam_enable.exit:        ; preds = %if.end13
  %aregion.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 5
  %13 = ptrtoint ptr %aregion.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aregion.i.i, align 4
  %region1.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %region1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %region1.i.i, align 4
  %erp_core.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 4
  %17 = ptrtoint ptr %erp_core.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %erp_core.i.i, align 4
  %mlxsw_sp2.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %mlxsw_sp2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mlxsw_sp2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pererp_pl.i.i) #11
  %id.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %16, i32 0, i32 4
  %21 = call ptr @memset(ptr %pererp_pl.i.i, i32 255, i32 28)
  %22 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %id.i.i, align 4
  %base_index.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 7
  %24 = ptrtoint ptr %base_index.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base_index.i.i, align 4
  %conv.i.i = trunc i32 %25 to i8
  call fastcc void @mlxsw_reg_pererp_pack(ptr noundef nonnull %pererp_pl.i.i, i16 noundef zeroext %23, i1 noundef zeroext true, i1 noundef zeroext true, i8 noundef zeroext %conv.i.i, i8 noundef zeroext 0) #11
  %erp_index_bitmap.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 2
  call fastcc void @mlxsw_reg_pererp_erp_vector_pack(ptr noundef nonnull %pererp_pl.i.i, ptr noundef %erp_index_bitmap.i.i) #11
  %core.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %20, i32 0, i32 1
  %26 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core.i.i, align 4
  %call.i.i = call i32 @mlxsw_reg_write(ptr noundef %27, ptr noundef nonnull @mlxsw_reg_pererp, ptr noundef nonnull %pererp_pl.i.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pererp_pl.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool15.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool15.not, label %mlxsw_sp_acl_erp_region_ctcam_enable.exit.cleanup_crit_edge, label %err_erp_region_ctcam_enable

mlxsw_sp_acl_erp_region_ctcam_enable.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_acl_erp_region_ctcam_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_erp_region_ctcam_enable:                      ; preds = %mlxsw_sp_acl_erp_region_ctcam_enable.exit
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @mlxsw_sp_acl_erp_master_mask_clear(ptr noundef %erp_table, ptr noundef nonnull %call7.i.i)
  br label %err_master_mask_set

err_master_mask_set:                              ; preds = %err_erp_region_ctcam_enable, %if.end7.err_master_mask_set_crit_edge
  %err.0 = phi i32 [ %call10, %if.end7.err_master_mask_set_crit_edge ], [ %call.i.i, %err_erp_region_ctcam_enable ]
  call fastcc void @__mlxsw_sp_acl_erp_table_other_dec(ptr noundef %erp_table, ptr noundef %num_ctcam_erps.i) #11
  br label %err_erp_ctcam_inc

err_erp_ctcam_inc:                                ; preds = %err_master_mask_set, %if.then.i.i.err_erp_ctcam_inc_crit_edge
  %err.1 = phi i32 [ %err.0, %err_master_mask_set ], [ %call1.i.i, %if.then.i.i.err_erp_ctcam_inc_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %28 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_erp_ctcam_inc, %mlxsw_sp_acl_erp_region_ctcam_enable.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %28, %err_erp_ctcam_inc ], [ %call7.i.i, %mlxsw_sp_acl_erp_region_ctcam_enable.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_acl_erp_region_table_trans(ptr noundef %erp_table) unnamed_addr #0 align 64 {
if.end.i:
  %pererp_pl.i = alloca [28 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_core1 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 4
  %0 = ptrtoint ptr %erp_core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_core1, align 4
  %num_erp_banks = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %1, i32 0, i32 4
  %aregion = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 5
  %2 = ptrtoint ptr %aregion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aregion, align 4
  %type = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %base_index = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 7
  %arrayidx.i = getelementptr [4 x i32], ptr %1, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %erp_tables.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %erp_tables.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %erp_tables.i, align 4
  %algo.i.i = getelementptr inbounds %struct.gen_pool, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %algo.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.gen_pool, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %9, i32 noundef %7, ptr noundef %11, ptr noundef %13, ptr noundef null) #11
  %14 = ptrtoint ptr %base_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i.i.i, ptr %base_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp2.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %sub.i = add i32 %call.i.i.i, -256
  %15 = ptrtoint ptr %base_index to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i, ptr %base_index, align 4
  %16 = ptrtoint ptr %num_erp_banks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_erp_banks, align 4
  %num_max_atcam_erps = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 9
  %18 = ptrtoint ptr %num_max_atcam_erps to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %num_max_atcam_erps, align 4
  %atcam_erps_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 3
  %19 = ptrtoint ptr %atcam_erps_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %atcam_erps_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %20, %atcam_erps_list.i
  br i1 %cmp.i.not.i.i, label %if.end.err_table_master_rp_crit_edge, label %list_is_singular.exit.i

if.end.err_table_master_rp_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_table_master_rp

list_is_singular.exit.i:                          ; preds = %if.end
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp ne ptr %20, %22
  %add.ptr.i59 = getelementptr i8, ptr %20, i32 -196
  %tobool4.not = icmp eq ptr %add.ptr.i59, null
  %or.cond = or i1 %tobool4.not, %cmp.i.not.i
  br i1 %or.cond, label %list_is_singular.exit.i.err_table_master_rp_crit_edge, label %if.end6

list_is_singular.exit.i.err_table_master_rp_crit_edge: ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_table_master_rp

if.end6:                                          ; preds = %list_is_singular.exit.i
  %index = getelementptr i8, ptr %20, i32 -98
  %23 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %index, align 2
  %erp_index_bitmap = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 2
  %24 = ptrtoint ptr %erp_index_bitmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %erp_index_bitmap, align 4
  %or.i = or i32 %25, 1
  store i32 %or.i, ptr %erp_index_bitmap, align 4
  %call8 = tail call fastcc i32 @mlxsw_sp_acl_erp_table_erp_add(ptr noundef %erp_table, ptr noundef nonnull %add.ptr.i59)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.err_table_master_rp_add_crit_edge

if.end6.err_table_master_rp_add_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_table_master_rp_add

if.end11:                                         ; preds = %if.end6
  %26 = ptrtoint ptr %aregion to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aregion, align 4
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %index, align 2
  %conv.i.i = zext i8 %29 to i32
  %erp_table.i.i = getelementptr i8, ptr %20, i32 8
  %30 = ptrtoint ptr %erp_table.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %erp_table.i.i, align 4
  %erp_core.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %erp_core.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %erp_core.i.i, align 4
  %num_erp_banks.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %num_erp_banks.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_erp_banks.i.i, align 4
  %rem.i.i = urem i32 %conv.i.i, %35
  %entries_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %27, i32 0, i32 1
  %region.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %27, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end11
  %.pn.in.i = phi ptr [ %entries_list.i, %if.end11 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %36 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i61 = icmp eq ptr %.pn.i, %entries_list.i
  br i1 %cmp.not.i61, label %if.end15, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %aentry.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %37 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %region.i, align 4
  %mlxsw_sp.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %mlxsw_sp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mlxsw_sp.i, align 4
  %41 = ptrtoint ptr %erp_core1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %erp_core1, align 4
  %bf.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %bf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bf.i, align 4
  %call3.i = tail call i32 @mlxsw_sp_acl_bf_entry_add(ptr noundef %40, ptr noundef %44, ptr noundef %27, i32 noundef %rem.i.i, ptr noundef %aentry.0.i) #11
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.cond13.preheader.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.cond13.preheader.i:                           ; preds = %for.body.i
  %.pn49.in52.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %45 = ptrtoint ptr %.pn49.in52.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn4953.i = load ptr, ptr %.pn49.in52.i, align 4
  %cmp16.not54.i = icmp eq ptr %.pn4953.i, %entries_list.i
  br i1 %cmp16.not54.i, label %for.cond13.preheader.i.err_table_bf_add_crit_edge, label %for.cond13.preheader.i.for.body18.i_crit_edge

for.cond13.preheader.i.for.body18.i_crit_edge:    ; preds = %for.cond13.preheader.i
  br label %for.body18.i

for.cond13.preheader.i.err_table_bf_add_crit_edge: ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_table_bf_add

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.cond13.preheader.i.for.body18.i_crit_edge
  %.pn4955.i = phi ptr [ %.pn49.i, %for.body18.i.for.body18.i_crit_edge ], [ %.pn4953.i, %for.cond13.preheader.i.for.body18.i_crit_edge ]
  %aentry.1.i = getelementptr i8, ptr %.pn4955.i, i32 -4
  %46 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %region.i, align 4
  %mlxsw_sp20.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %mlxsw_sp20.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mlxsw_sp20.i, align 4
  %50 = ptrtoint ptr %erp_core1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %erp_core1, align 4
  %bf22.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %bf22.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bf22.i, align 4
  tail call void @mlxsw_sp_acl_bf_entry_del(ptr noundef %49, ptr noundef %53, ptr noundef %27, i32 noundef %rem.i.i, ptr noundef %aentry.1.i) #11
  %.pn49.in.i = getelementptr inbounds %struct.list_head, ptr %.pn4955.i, i32 0, i32 1
  %54 = ptrtoint ptr %.pn49.in.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn49.i = load ptr, ptr %.pn49.in.i, align 4
  %cmp16.not.i = icmp eq ptr %.pn49.i, %entries_list.i
  br i1 %cmp16.not.i, label %for.body18.i.err_table_bf_add_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body18.i

for.body18.i.err_table_bf_add_crit_edge:          ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_table_bf_add

if.end15:                                         ; preds = %for.cond.i
  %55 = ptrtoint ptr %aregion to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %aregion, align 4
  %region1.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %56, i32 0, i32 4
  %57 = ptrtoint ptr %region1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %region1.i, align 4
  %59 = ptrtoint ptr %erp_core1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %erp_core1, align 4
  %mlxsw_sp2.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %mlxsw_sp2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mlxsw_sp2.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pererp_pl.i) #11
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %58, i32 0, i32 4
  %63 = call ptr @memset(ptr %pererp_pl.i, i32 255, i32 28)
  %64 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %id.i, align 4
  %66 = ptrtoint ptr %base_index to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %base_index, align 4
  %conv.i = trunc i32 %67 to i8
  call fastcc void @mlxsw_reg_pererp_pack(ptr noundef nonnull %pererp_pl.i, i16 noundef zeroext %65, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %conv.i, i8 noundef zeroext 0) #11
  call fastcc void @mlxsw_reg_pererp_erp_vector_pack(ptr noundef nonnull %pererp_pl.i, ptr noundef %erp_index_bitmap) #11
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %62, i32 0, i32 1
  %68 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %core.i, align 4
  %call.i = call i32 @mlxsw_reg_write(ptr noundef %69, ptr noundef nonnull @mlxsw_reg_pererp, ptr noundef nonnull %pererp_pl.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pererp_pl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %err_table_enable

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_table_enable:                                 ; preds = %if.end15
  %70 = ptrtoint ptr %aregion to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %aregion, align 4
  %72 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %index, align 2
  %conv.i.i66 = zext i8 %73 to i32
  %74 = ptrtoint ptr %erp_table.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %erp_table.i.i, align 4
  %erp_core.i.i68 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %erp_core.i.i68 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %erp_core.i.i68, align 4
  %num_erp_banks.i.i69 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %77, i32 0, i32 4
  %78 = ptrtoint ptr %num_erp_banks.i.i69 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_erp_banks.i.i69, align 4
  %rem.i.i70 = urem i32 %conv.i.i66, %79
  %entries_list.i71 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %71, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %71, i32 0, i32 1, i32 1
  %80 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn14.i = load ptr, ptr %prev.i, align 4
  %cmp.not15.i = icmp eq ptr %.pn14.i, %entries_list.i71
  br i1 %cmp.not15.i, label %err_table_enable.err_table_bf_add_crit_edge, label %for.body.lr.ph.i

err_table_enable.err_table_bf_add_crit_edge:      ; preds = %err_table_enable
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_table_bf_add

for.body.lr.ph.i:                                 ; preds = %err_table_enable
  %region.i72 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %71, i32 0, i32 4
  br label %for.body.i79

for.body.i79:                                     ; preds = %for.body.i79.for.body.i79_crit_edge, %for.body.lr.ph.i
  %.pn16.i = phi ptr [ %.pn14.i, %for.body.lr.ph.i ], [ %.pn.i77, %for.body.i79.for.body.i79_crit_edge ]
  %aentry.0.i74 = getelementptr i8, ptr %.pn16.i, i32 -4
  %81 = ptrtoint ptr %region.i72 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %region.i72, align 4
  %mlxsw_sp.i75 = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %82, i32 0, i32 7
  %83 = ptrtoint ptr %mlxsw_sp.i75 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mlxsw_sp.i75, align 4
  %85 = ptrtoint ptr %erp_core1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %erp_core1, align 4
  %bf.i76 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %bf.i76 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bf.i76, align 4
  call void @mlxsw_sp_acl_bf_entry_del(ptr noundef %84, ptr noundef %88, ptr noundef %71, i32 noundef %rem.i.i70, ptr noundef %aentry.0.i74) #11
  %prev5.i = getelementptr inbounds %struct.list_head, ptr %.pn16.i, i32 0, i32 1
  %89 = ptrtoint ptr %prev5.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn.i77 = load ptr, ptr %prev5.i, align 4
  %cmp.not.i78 = icmp eq ptr %.pn.i77, %entries_list.i71
  br i1 %cmp.not.i78, label %for.body.i79.err_table_bf_add_crit_edge, label %for.body.i79.for.body.i79_crit_edge

for.body.i79.for.body.i79_crit_edge:              ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i79

for.body.i79.err_table_bf_add_crit_edge:          ; preds = %for.body.i79
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_table_bf_add

err_table_bf_add:                                 ; preds = %for.body.i79.err_table_bf_add_crit_edge, %err_table_enable.err_table_bf_add_crit_edge, %for.body18.i.err_table_bf_add_crit_edge, %for.cond13.preheader.i.err_table_bf_add_crit_edge
  %err.0 = phi i32 [ %call.i, %err_table_enable.err_table_bf_add_crit_edge ], [ %call3.i, %for.cond13.preheader.i.err_table_bf_add_crit_edge ], [ %call.i, %for.body.i79.err_table_bf_add_crit_edge ], [ %call3.i, %for.body18.i.err_table_bf_add_crit_edge ]
  call fastcc void @mlxsw_sp_acl_erp_table_erp_del(ptr noundef nonnull %add.ptr.i59)
  br label %err_table_master_rp_add

err_table_master_rp_add:                          ; preds = %err_table_bf_add, %if.end6.err_table_master_rp_add_crit_edge
  %err.1 = phi i32 [ %call8, %if.end6.err_table_master_rp_add_crit_edge ], [ %err.0, %err_table_bf_add ]
  %90 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %index, align 2
  %conv21 = zext i8 %91 to i32
  %rem.i = and i32 %conv21, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv21, 5
  %add.ptr.i = getelementptr i32, ptr %erp_index_bitmap, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %93, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  br label %err_table_master_rp

err_table_master_rp:                              ; preds = %err_table_master_rp_add, %list_is_singular.exit.i.err_table_master_rp_crit_edge, %if.end.err_table_master_rp_crit_edge
  %err.2 = phi i32 [ %err.1, %err_table_master_rp_add ], [ -22, %if.end.err_table_master_rp_crit_edge ], [ -22, %list_is_singular.exit.i.err_table_master_rp_crit_edge ]
  %94 = ptrtoint ptr %num_max_atcam_erps to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_max_atcam_erps, align 4
  %96 = ptrtoint ptr %aregion to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %aregion, align 4
  %type26 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %type26 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %type26, align 4
  %100 = ptrtoint ptr %base_index to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %base_index, align 4
  %arrayidx.i80 = getelementptr [4 x i32], ptr %1, i32 0, i32 %99
  %102 = ptrtoint ptr %arrayidx.i80 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i80, align 4
  %add.i = add i32 %101, 256
  %104 = ptrtoint ptr %num_erp_banks to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_erp_banks, align 4
  %div.i82 = udiv i32 %95, %105
  %mul.i83 = mul i32 %div.i82, %103
  %106 = ptrtoint ptr %erp_tables.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %erp_tables.i, align 4
  call void @gen_pool_free_owner(ptr noundef %107, i32 noundef %add.i, i32 noundef %mul.i83, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %err_table_master_rp, %if.end15.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_table_master_rp ], [ 0, %if.end15.cleanup_crit_edge ], [ -105, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlxsw_sp_acl_erp_generic_create(ptr noundef %erp_table, ptr nocapture noundef readonly %key) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 208) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call7.i.i, i32 0, i32 1
  %erp_id_bitmap.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 1
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %erp_id_bitmap.i, i32 noundef 16) #11
  %conv1.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv1.i)
  %cmp.i = icmp ult i32 %conv1.i, 16
  br i1 %cmp.i, label %if.end5, label %if.end.err_erp_id_get_crit_edge

if.end.err_erp_id_get_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_id_get

if.end5:                                          ; preds = %if.end
  %conv.i = trunc i32 %call.i to i8
  %shl.i.i = shl nuw nsw i32 1, %conv1.i
  %div2.i.i = lshr i32 %conv1.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %erp_id_bitmap.i, i32 %div2.i.i
  %1 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %2, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %3 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %id, align 1
  %4 = call ptr @memcpy(ptr %call7.i.i, ptr %key, i32 97)
  %list = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call7.i.i, i32 0, i32 4
  %atcam_erps_list = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 3
  %5 = ptrtoint ptr %atcam_erps_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %atcam_erps_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %atcam_erps_list, ptr noundef %6) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.list_add.exit_crit_edge

if.end5.list_add.exit_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list, ptr %prev1.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call7.i.i, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %atcam_erps_list, ptr %prev3.i.i, align 8
  %10 = ptrtoint ptr %atcam_erps_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %list, ptr %atcam_erps_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end5.list_add.exit_crit_edge
  %num_atcam_erps = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 8
  %11 = ptrtoint ptr %num_atcam_erps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_atcam_erps, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %num_atcam_erps, align 4
  %erp_table7 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %erp_table7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %erp_table, ptr %erp_table7, align 4
  %call9 = tail call fastcc i32 @mlxsw_sp_acl_erp_master_mask_set(ptr noundef %erp_table, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %list_add.exit.cleanup_crit_edge, label %err_master_mask_set

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_master_mask_set:                              ; preds = %list_add.exit
  %14 = ptrtoint ptr %num_atcam_erps to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_atcam_erps, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %num_atcam_erps, align 4
  %call.i.i35 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i35, label %if.end.i.i36, label %err_master_mask_set.list_del.exit_crit_edge

err_master_mask_set.list_del.exit_crit_edge:      ; preds = %err_master_mask_set
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i36:                                     ; preds = %err_master_mask_set
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call7.i.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 8
  %18 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i36, %err_master_mask_set.list_del.exit_crit_edge
  %22 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call7.i.i, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 8
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %id, align 1
  %conv.i37 = zext i8 %25 to i32
  %rem.i.i = and i32 %conv.i37, 31
  %shl.i.i39 = shl nuw i32 1, %rem.i.i
  %div2.i.i40 = lshr i32 %conv.i37, 5
  %add.ptr.i.i41 = getelementptr i32, ptr %erp_id_bitmap.i, i32 %div2.i.i40
  %neg.i.i = xor i32 %shl.i.i39, -1
  %26 = ptrtoint ptr %add.ptr.i.i41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i.i41, align 4
  %and.i.i = and i32 %27, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i41, align 4
  %phi.cast = inttoptr i32 %call9 to ptr
  br label %err_erp_id_get

err_erp_id_get:                                   ; preds = %list_del.exit, %if.end.err_erp_id_get_crit_edge
  %err.0 = phi ptr [ %phi.cast, %list_del.exit ], [ inttoptr (i32 -105 to ptr), %if.end.err_erp_id_get_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err_erp_id_get, %list_add.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %err.0, %err_erp_id_get ], [ %call7.i.i, %list_add.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_acl_erp_table_erp_add(ptr noundef %erp_table, ptr nocapture noundef readonly %erp) unnamed_addr #0 align 64 {
entry:
  %perpt_pl = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_core = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 4
  %0 = ptrtoint ptr %erp_core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_core, align 4
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp1, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %perpt_pl) #11
  %4 = call ptr @memset(ptr %perpt_pl, i32 255, i32 128)
  %aregion1.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 5
  %5 = ptrtoint ptr %aregion1.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aregion1.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr %1, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i, align 4
  %index.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 2
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %index.i, align 2
  %conv.i = zext i8 %12 to i32
  %num_erp_banks.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %num_erp_banks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_erp_banks.i, align 4
  %.frozen = freeze i32 %14
  %div.i = udiv i32 %conv.i, %.frozen
  %15 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %conv.i, %15
  %conv2.i = trunc i32 %rem.i.decomposed to i8
  %base_index.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 7
  %16 = ptrtoint ptr %base_index.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base_index.i, align 4
  %mul.i = mul i32 %div.i, %10
  %add.i = add i32 %17, %mul.i
  %conv6.i = trunc i32 %add.i to i8
  %id = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 1
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id, align 1
  %conv = trunc i32 %17 to i8
  call fastcc void @mlxsw_reg_perpt_pack(ptr noundef nonnull %perpt_pl, i8 noundef zeroext %conv2.i, i8 noundef zeroext %conv6.i, i32 noundef %8, i8 noundef zeroext %19, i8 noundef zeroext %conv, i8 noundef zeroext %12, ptr noundef %erp)
  %erp_index_bitmap = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 2
  call fastcc void @mlxsw_reg_perpt_erp_vector_pack(ptr noundef nonnull %perpt_pl, ptr noundef %erp_index_bitmap)
  %20 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %index.i, align 2
  %conv7 = zext i8 %21 to i16
  %conv41.i.i.i = sub nsw i16 31, %conv7
  %rem5076.i.i.i18 = and i8 %21, 7
  %22 = lshr i16 %conv41.i.i.i, 3
  %conv60.i.i.i = add nuw nsw i16 %22, 20
  %shl.i.i = shl i8 1, %rem5076.i.i.i18
  %and10.i.i = shl i8 1, %rem5076.i.i.i18
  %idxprom.i.i = zext i16 %conv60.i.i.i to i32
  %arrayidx.i.i17 = getelementptr i8, ptr %perpt_pl, i32 %idxprom.i.i
  %23 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i17, align 1
  %25 = xor i8 %shl.i.i, -1
  %conv15.i.i = and i8 %24, %25
  %conv18.i.i = or i8 %conv15.i.i, %and10.i.i
  store i8 %conv18.i.i, ptr %arrayidx.i.i17, align 1
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %27, ptr noundef nonnull @mlxsw_reg_perpt, ptr noundef nonnull %perpt_pl) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %perpt_pl) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_acl_erp_region_erp_add(ptr noundef %erp_table, ptr nocapture noundef readonly %erp) unnamed_addr #0 align 64 {
entry:
  %pererp_pl = alloca [28 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %aregion = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 5
  %0 = ptrtoint ptr %aregion to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aregion, align 4
  %region1 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %region1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %region1, align 4
  %erp_core = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 4
  %4 = ptrtoint ptr %erp_core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %erp_core, align 4
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mlxsw_sp2, align 4
  %num_ctcam_erps = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 10
  %8 = ptrtoint ptr %num_ctcam_erps to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ctcam_erps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp ne i32 %9, 0
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pererp_pl) #11
  %id = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %3, i32 0, i32 4
  %10 = call ptr @memset(ptr %pererp_pl, i32 255, i32 28)
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %id, align 4
  %base_index = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 7
  %13 = ptrtoint ptr %base_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base_index, align 4
  %conv = trunc i32 %14 to i8
  call fastcc void @mlxsw_reg_pererp_pack(ptr noundef nonnull %pererp_pl, i16 noundef zeroext %12, i1 noundef zeroext %cmp, i1 noundef zeroext true, i8 noundef zeroext %conv, i8 noundef zeroext 0)
  %erp_index_bitmap = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 2
  call fastcc void @mlxsw_reg_pererp_erp_vector_pack(ptr noundef nonnull %pererp_pl, ptr noundef %erp_index_bitmap)
  %index = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 2
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %index, align 2
  %conv6 = zext i8 %16 to i16
  %conv41.i.i.i = sub nsw i16 31, %conv6
  %rem5076.i.i.i12 = and i8 %16, 7
  %17 = lshr i16 %conv41.i.i.i, 3
  %conv60.i.i.i = add nuw nsw i16 %17, 20
  %shl.i.i = shl i8 1, %rem5076.i.i.i12
  %and10.i.i = shl i8 1, %rem5076.i.i.i12
  %idxprom.i.i = zext i16 %conv60.i.i.i to i32
  %arrayidx.i.i = getelementptr i8, ptr %pererp_pl, i32 %idxprom.i.i
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i.i, align 1
  %20 = xor i8 %shl.i.i, -1
  %conv15.i.i = and i8 %19, %20
  %conv18.i.i = or i8 %conv15.i.i, %and10.i.i
  store i8 %conv18.i.i, ptr %arrayidx.i.i, align 1
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %7, i32 0, i32 1
  %21 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %22, ptr noundef nonnull @mlxsw_reg_pererp, ptr noundef nonnull %pererp_pl) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pererp_pl) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_acl_erp_table_erp_del(ptr nocapture noundef readonly %erp) unnamed_addr #0 align 64 {
entry:
  %empty_mask = alloca [96 x i8], align 1
  %perpt_pl = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %empty_mask) #11
  %0 = call ptr @memset(ptr %empty_mask, i32 0, i32 96)
  %erp_table1 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 5
  %1 = ptrtoint ptr %erp_table1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %erp_table1, align 4
  %erp_core = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %erp_core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %erp_core, align 4
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mlxsw_sp2, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %perpt_pl) #11
  %7 = call ptr @memset(ptr %perpt_pl, i32 255, i32 128)
  %aregion1.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %2, i32 0, i32 5
  %8 = ptrtoint ptr %aregion1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %aregion1.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr %4, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %index.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 2
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %index.i, align 2
  %conv.i = zext i8 %15 to i32
  %num_erp_banks.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %4, i32 0, i32 4
  %16 = ptrtoint ptr %num_erp_banks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_erp_banks.i, align 4
  %.frozen = freeze i32 %17
  %div.i = udiv i32 %conv.i, %.frozen
  %18 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %conv.i, %18
  %conv2.i = trunc i32 %rem.i.decomposed to i8
  %base_index.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %2, i32 0, i32 7
  %19 = ptrtoint ptr %base_index.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base_index.i, align 4
  %mul.i = mul i32 %div.i, %13
  %add.i = add i32 %20, %mul.i
  %conv6.i = trunc i32 %add.i to i8
  %id = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 1
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %id, align 1
  %conv = trunc i32 %20 to i8
  call fastcc void @mlxsw_reg_perpt_pack(ptr noundef nonnull %perpt_pl, i8 noundef zeroext %conv2.i, i8 noundef zeroext %conv6.i, i32 noundef %11, i8 noundef zeroext %22, i8 noundef zeroext %conv, i8 noundef zeroext %15, ptr noundef nonnull %empty_mask)
  %erp_index_bitmap = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %2, i32 0, i32 2
  call fastcc void @mlxsw_reg_perpt_erp_vector_pack(ptr noundef nonnull %perpt_pl, ptr noundef %erp_index_bitmap)
  %23 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %index.i, align 2
  %conv8 = zext i8 %24 to i16
  %conv41.i.i.i = sub nsw i16 31, %conv8
  %rem5076.i.i.i19 = and i8 %24, 7
  %25 = lshr i16 %conv41.i.i.i, 3
  %conv60.i.i.i = add nuw nsw i16 %25, 20
  %shl.i.i = shl i8 1, %rem5076.i.i.i19
  %idxprom.i.i = zext i16 %conv60.i.i.i to i32
  %arrayidx.i.i18 = getelementptr i8, ptr %perpt_pl, i32 %idxprom.i.i
  %26 = ptrtoint ptr %arrayidx.i.i18 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i18, align 1
  %28 = xor i8 %shl.i.i, -1
  %conv15.i.i = and i8 %27, %28
  store i8 %conv15.i.i, ptr %arrayidx.i.i18, align 1
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %6, i32 0, i32 1
  %29 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %30, ptr noundef nonnull @mlxsw_reg_perpt, ptr noundef nonnull %perpt_pl) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %perpt_pl) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %empty_mask) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_acl_erp_region_master_mask_trans(ptr noundef %erp_table) unnamed_addr #0 align 64 {
entry:
  %pererp_pl.i = alloca [28 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_core1 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 4
  %0 = ptrtoint ptr %erp_core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_core1, align 4
  %aregion.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 5
  %2 = ptrtoint ptr %aregion.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aregion.i, align 4
  %region1.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %region1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %region1.i, align 4
  %mlxsw_sp2.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %mlxsw_sp2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mlxsw_sp2.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pererp_pl.i) #11
  %atcam_erps_list.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 3
  %8 = call ptr @memset(ptr %pererp_pl.i, i32 255, i32 28)
  %9 = ptrtoint ptr %atcam_erps_list.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %atcam_erps_list.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %10, %atcam_erps_list.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.mlxsw_sp_acl_erp_table_master_rp.exit.thread.i_crit_edge, label %list_is_singular.exit.i.i

entry.mlxsw_sp_acl_erp_table_master_rp.exit.thread.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_table_master_rp.exit.thread.i

list_is_singular.exit.i.i:                        ; preds = %entry
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %10, %12
  br i1 %cmp.i.not.i.i, label %mlxsw_sp_acl_erp_table_master_rp.exit.i, label %list_is_singular.exit.i.i.mlxsw_sp_acl_erp_table_master_rp.exit.thread.i_crit_edge

list_is_singular.exit.i.i.mlxsw_sp_acl_erp_table_master_rp.exit.thread.i_crit_edge: ; preds = %list_is_singular.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_table_master_rp.exit.thread.i

mlxsw_sp_acl_erp_table_master_rp.exit.thread.i:   ; preds = %list_is_singular.exit.i.i.mlxsw_sp_acl_erp_table_master_rp.exit.thread.i_crit_edge, %entry.mlxsw_sp_acl_erp_table_master_rp.exit.thread.i_crit_edge
  %id11.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %id11.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id11.i, align 4
  br label %mlxsw_sp_acl_erp_table_disable.exit

mlxsw_sp_acl_erp_table_master_rp.exit.i:          ; preds = %list_is_singular.exit.i.i
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 -196
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %id.i, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %mlxsw_sp_acl_erp_table_master_rp.exit.i.mlxsw_sp_acl_erp_table_disable.exit_crit_edge, label %cond.true.i

mlxsw_sp_acl_erp_table_master_rp.exit.i.mlxsw_sp_acl_erp_table_disable.exit_crit_edge: ; preds = %mlxsw_sp_acl_erp_table_master_rp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_table_disable.exit

cond.true.i:                                      ; preds = %mlxsw_sp_acl_erp_table_master_rp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %id3.i = getelementptr i8, ptr %10, i32 -99
  %17 = ptrtoint ptr %id3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %id3.i, align 1
  br label %mlxsw_sp_acl_erp_table_disable.exit

mlxsw_sp_acl_erp_table_disable.exit:              ; preds = %cond.true.i, %mlxsw_sp_acl_erp_table_master_rp.exit.i.mlxsw_sp_acl_erp_table_disable.exit_crit_edge, %mlxsw_sp_acl_erp_table_master_rp.exit.thread.i
  %19 = phi i16 [ %16, %cond.true.i ], [ %16, %mlxsw_sp_acl_erp_table_master_rp.exit.i.mlxsw_sp_acl_erp_table_disable.exit_crit_edge ], [ %14, %mlxsw_sp_acl_erp_table_master_rp.exit.thread.i ]
  %cond.i = phi i8 [ %18, %cond.true.i ], [ 0, %mlxsw_sp_acl_erp_table_master_rp.exit.i.mlxsw_sp_acl_erp_table_disable.exit_crit_edge ], [ 0, %mlxsw_sp_acl_erp_table_master_rp.exit.thread.i ]
  call fastcc void @mlxsw_reg_pererp_pack(ptr noundef nonnull %pererp_pl.i, i16 noundef zeroext %19, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext %cond.i) #11
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %7, i32 0, i32 1
  %20 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %core.i, align 4
  %call6.i = call i32 @mlxsw_reg_write(ptr noundef %21, ptr noundef nonnull @mlxsw_reg_pererp, ptr noundef nonnull %pererp_pl.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pererp_pl.i) #11
  %22 = ptrtoint ptr %atcam_erps_list.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %atcam_erps_list.i.i, align 4
  %cmp.i.not.i.i13 = icmp eq ptr %23, %atcam_erps_list.i.i
  br i1 %cmp.i.not.i.i13, label %mlxsw_sp_acl_erp_table_disable.exit.cleanup_crit_edge, label %list_is_singular.exit.i

mlxsw_sp_acl_erp_table_disable.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_acl_erp_table_disable.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

list_is_singular.exit.i:                          ; preds = %mlxsw_sp_acl_erp_table_disable.exit
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %cmp.i.not.i = icmp ne ptr %23, %25
  %add.ptr.i14 = getelementptr i8, ptr %23, i32 -196
  %tobool.not = icmp eq ptr %add.ptr.i14, null
  %or.cond = or i1 %tobool.not, %cmp.i.not.i
  br i1 %or.cond, label %list_is_singular.exit.i.cleanup_crit_edge, label %if.end

list_is_singular.exit.i.cleanup_crit_edge:        ; preds = %list_is_singular.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %list_is_singular.exit.i
  %26 = ptrtoint ptr %aregion.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %aregion.i, align 4
  %index.i.i = getelementptr i8, ptr %23, i32 -98
  %28 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %index.i.i, align 2
  %conv.i.i = zext i8 %29 to i32
  %erp_table.i.i = getelementptr i8, ptr %23, i32 8
  %30 = ptrtoint ptr %erp_table.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %erp_table.i.i, align 4
  %erp_core.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %erp_core.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %erp_core.i.i, align 4
  %num_erp_banks.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %num_erp_banks.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_erp_banks.i.i, align 4
  %rem.i.i = urem i32 %conv.i.i, %35
  %entries_list.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %27, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %27, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn14.i = load ptr, ptr %prev.i, align 4
  %cmp.not15.i = icmp eq ptr %.pn14.i, %entries_list.i
  br i1 %cmp.not15.i, label %if.end.mlxsw_acl_erp_table_bf_del.exit_crit_edge, label %for.body.lr.ph.i

if.end.mlxsw_acl_erp_table_bf_del.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_acl_erp_table_bf_del.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %region.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %27, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn16.i = phi ptr [ %.pn14.i, %for.body.lr.ph.i ], [ %.pn.i, %for.body.i.for.body.i_crit_edge ]
  %aentry.0.i = getelementptr i8, ptr %.pn16.i, i32 -4
  %37 = ptrtoint ptr %region.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %region.i, align 4
  %mlxsw_sp.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %mlxsw_sp.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mlxsw_sp.i, align 4
  %41 = ptrtoint ptr %erp_core1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %erp_core1, align 4
  %bf.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %bf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bf.i, align 4
  call void @mlxsw_sp_acl_bf_entry_del(ptr noundef %40, ptr noundef %44, ptr noundef %27, i32 noundef %rem.i.i, ptr noundef %aentry.0.i) #11
  %prev5.i = getelementptr inbounds %struct.list_head, ptr %.pn16.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev5.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i = load ptr, ptr %prev5.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %entries_list.i
  br i1 %cmp.not.i, label %for.body.i.mlxsw_acl_erp_table_bf_del.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.mlxsw_acl_erp_table_bf_del.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_acl_erp_table_bf_del.exit

mlxsw_acl_erp_table_bf_del.exit:                  ; preds = %for.body.i.mlxsw_acl_erp_table_bf_del.exit_crit_edge, %if.end.mlxsw_acl_erp_table_bf_del.exit_crit_edge
  call fastcc void @mlxsw_sp_acl_erp_table_erp_del(ptr noundef nonnull %add.ptr.i14)
  %46 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %index.i.i, align 2
  %conv = zext i8 %47 to i32
  %erp_index_bitmap = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 2
  %rem.i = and i32 %conv, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv, 5
  %add.ptr.i = getelementptr i32, ptr %erp_index_bitmap, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %49, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %num_max_atcam_erps = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 9
  %50 = ptrtoint ptr %num_max_atcam_erps to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_max_atcam_erps, align 4
  %52 = ptrtoint ptr %aregion.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %aregion.i, align 4
  %type = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type, align 4
  %base_index = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 7
  %56 = ptrtoint ptr %base_index to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %base_index, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr %1, i32 0, i32 %55
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %57, 256
  %num_erp_banks.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %1, i32 0, i32 4
  %60 = ptrtoint ptr %num_erp_banks.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_erp_banks.i, align 4
  %div.i = udiv i32 %51, %61
  %mul.i = mul i32 %div.i, %59
  %erp_tables.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %erp_tables.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %erp_tables.i, align 4
  call void @gen_pool_free_owner(ptr noundef %63, i32 noundef %add.i, i32 noundef %mul.i, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_acl_erp_table_bf_del.exit, %list_is_singular.exit.i.cleanup_crit_edge, %mlxsw_sp_acl_erp_table_disable.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_acl_erp_master_mask_set(ptr nocapture noundef %erp_table, ptr nocapture noundef readonly %key) unnamed_addr #0 align 64 {
entry:
  %percr_pl.i = alloca [128 x i8], align 1
  %mask_bitmap = alloca [24 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %mask_bitmap) #11
  %0 = call ptr @memcpy(ptr %mask_bitmap, ptr %key, i32 96)
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %mask_bitmap, i32 noundef 768, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %call)
  %cmp34 = icmp ult i32 %call, 768
  br i1 %cmp34, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %mlxsw_sp_acl_erp_master_mask_bit_set.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %bit.035 = phi i32 [ %call4, %mlxsw_sp_acl_erp_master_mask_bit_set.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_acl_erp_master_mask, ptr %erp_table, i32 0, i32 1, i32 %bit.035
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %2, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.mlxsw_sp_acl_erp_master_mask_bit_set.exit_crit_edge

for.body.mlxsw_sp_acl_erp_master_mask_bit_set.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_master_mask_bit_set.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i.i = and i32 %bit.035, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %bit.035, 5
  %add.ptr.i.i = getelementptr i32, ptr %erp_table, i32 %div2.i.i
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %4, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %mlxsw_sp_acl_erp_master_mask_bit_set.exit

mlxsw_sp_acl_erp_master_mask_bit_set.exit:        ; preds = %if.then.i, %for.body.mlxsw_sp_acl_erp_master_mask_bit_set.exit_crit_edge
  %add = add nuw nsw i32 %bit.035, 1
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask_bitmap, i32 noundef 768, i32 noundef %add) #11
  %cmp = icmp ult i32 %call4, 768
  br i1 %cmp, label %mlxsw_sp_acl_erp_master_mask_bit_set.exit.for.body_crit_edge, label %mlxsw_sp_acl_erp_master_mask_bit_set.exit.for.end_crit_edge

mlxsw_sp_acl_erp_master_mask_bit_set.exit.for.end_crit_edge: ; preds = %mlxsw_sp_acl_erp_master_mask_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

mlxsw_sp_acl_erp_master_mask_bit_set.exit.for.body_crit_edge: ; preds = %mlxsw_sp_acl_erp_master_mask_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %mlxsw_sp_acl_erp_master_mask_bit_set.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %aregion.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 5
  %5 = ptrtoint ptr %aregion.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aregion.i, align 4
  %region1.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %region1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %region1.i, align 4
  %mlxsw_sp2.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %mlxsw_sp2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mlxsw_sp2.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %percr_pl.i) #11
  %11 = call ptr @memset(ptr %percr_pl.i, i32 255, i32 128)
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %8, i32 0, i32 4
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id.i, align 4
  call fastcc void @mlxsw_reg_percr_pack(ptr noundef nonnull %percr_pl.i, i16 noundef zeroext %13) #11
  %arrayidx.i.i.i = getelementptr inbounds i8, ptr %percr_pl.i, i32 32
  %14 = call ptr @memcpy(ptr %arrayidx.i.i.i, ptr %erp_table, i32 96)
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core.i, align 4
  %call7.i = call i32 @mlxsw_reg_write(ptr noundef %16, ptr noundef nonnull @mlxsw_reg_percr, ptr noundef nonnull %percr_pl.i) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %percr_pl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %err_master_mask_update

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_master_mask_update:                           ; preds = %for.end
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask_bitmap, i32 noundef 768, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %call7)
  %cmp937 = icmp ult i32 %call7, 768
  br i1 %cmp937, label %err_master_mask_update.for.body10_crit_edge, label %err_master_mask_update.cleanup_crit_edge

err_master_mask_update.cleanup_crit_edge:         ; preds = %err_master_mask_update
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_master_mask_update.for.body10_crit_edge:      ; preds = %err_master_mask_update
  br label %for.body10

for.body10:                                       ; preds = %mlxsw_sp_acl_erp_master_mask_bit_clear.exit.for.body10_crit_edge, %err_master_mask_update.for.body10_crit_edge
  %bit.138 = phi i32 [ %call15, %mlxsw_sp_acl_erp_master_mask_bit_clear.exit.for.body10_crit_edge ], [ %call7, %err_master_mask_update.for.body10_crit_edge ]
  %arrayidx.i27 = getelementptr %struct.mlxsw_sp_acl_erp_master_mask, ptr %erp_table, i32 0, i32 1, i32 %bit.138
  %17 = ptrtoint ptr %arrayidx.i27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i27, align 4
  %dec.i = add i32 %18, -1
  store i32 %dec.i, ptr %arrayidx.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i28 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i28, label %if.then.i33, label %for.body10.mlxsw_sp_acl_erp_master_mask_bit_clear.exit_crit_edge

for.body10.mlxsw_sp_acl_erp_master_mask_bit_clear.exit_crit_edge: ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_master_mask_bit_clear.exit

if.then.i33:                                      ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i.i29 = and i32 %bit.138, 31
  %shl.i.i30 = shl nuw i32 1, %rem.i.i29
  %div2.i.i31 = lshr i32 %bit.138, 5
  %add.ptr.i.i32 = getelementptr i32, ptr %erp_table, i32 %div2.i.i31
  %neg.i.i = xor i32 %shl.i.i30, -1
  %19 = ptrtoint ptr %add.ptr.i.i32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i32, align 4
  %and.i.i = and i32 %20, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i32, align 4
  br label %mlxsw_sp_acl_erp_master_mask_bit_clear.exit

mlxsw_sp_acl_erp_master_mask_bit_clear.exit:      ; preds = %if.then.i33, %for.body10.mlxsw_sp_acl_erp_master_mask_bit_clear.exit_crit_edge
  %add14 = add nuw nsw i32 %bit.138, 1
  %call15 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask_bitmap, i32 noundef 768, i32 noundef %add14) #11
  %cmp9 = icmp ult i32 %call15, 768
  br i1 %cmp9, label %mlxsw_sp_acl_erp_master_mask_bit_clear.exit.for.body10_crit_edge, label %mlxsw_sp_acl_erp_master_mask_bit_clear.exit.cleanup_crit_edge

mlxsw_sp_acl_erp_master_mask_bit_clear.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_acl_erp_master_mask_bit_clear.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

mlxsw_sp_acl_erp_master_mask_bit_clear.exit.for.body10_crit_edge: ; preds = %mlxsw_sp_acl_erp_master_mask_bit_clear.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body10

cleanup:                                          ; preds = %mlxsw_sp_acl_erp_master_mask_bit_clear.exit.cleanup_crit_edge, %err_master_mask_update.cleanup_crit_edge, %for.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %mask_bitmap) #11
  ret i32 %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_acl_erp_master_mask_clear(ptr nocapture noundef %erp_table, ptr nocapture noundef readonly %key) unnamed_addr #0 align 64 {
entry:
  %percr_pl.i = alloca [128 x i8], align 1
  %mask_bitmap = alloca [24 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %mask_bitmap) #11
  %0 = call ptr @memcpy(ptr %mask_bitmap, ptr %key, i32 96)
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %mask_bitmap, i32 noundef 768, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %call)
  %cmp8 = icmp ult i32 %call, 768
  br i1 %cmp8, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %mlxsw_sp_acl_erp_master_mask_bit_clear.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %bit.09 = phi i32 [ %call4, %mlxsw_sp_acl_erp_master_mask_bit_clear.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_acl_erp_master_mask, ptr %erp_table, i32 0, i32 1, i32 %bit.09
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %dec.i = add i32 %2, -1
  store i32 %dec.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.mlxsw_sp_acl_erp_master_mask_bit_clear.exit_crit_edge

for.body.mlxsw_sp_acl_erp_master_mask_bit_clear.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_master_mask_bit_clear.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i.i = and i32 %bit.09, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %bit.09, 5
  %add.ptr.i.i = getelementptr i32, ptr %erp_table, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %4, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %mlxsw_sp_acl_erp_master_mask_bit_clear.exit

mlxsw_sp_acl_erp_master_mask_bit_clear.exit:      ; preds = %if.then.i, %for.body.mlxsw_sp_acl_erp_master_mask_bit_clear.exit_crit_edge
  %add = add nuw nsw i32 %bit.09, 1
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask_bitmap, i32 noundef 768, i32 noundef %add) #11
  %cmp = icmp ult i32 %call4, 768
  br i1 %cmp, label %mlxsw_sp_acl_erp_master_mask_bit_clear.exit.for.body_crit_edge, label %mlxsw_sp_acl_erp_master_mask_bit_clear.exit.for.end_crit_edge

mlxsw_sp_acl_erp_master_mask_bit_clear.exit.for.end_crit_edge: ; preds = %mlxsw_sp_acl_erp_master_mask_bit_clear.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

mlxsw_sp_acl_erp_master_mask_bit_clear.exit.for.body_crit_edge: ; preds = %mlxsw_sp_acl_erp_master_mask_bit_clear.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %mlxsw_sp_acl_erp_master_mask_bit_clear.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %aregion.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 5
  %5 = ptrtoint ptr %aregion.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aregion.i, align 4
  %region1.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %region1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %region1.i, align 4
  %mlxsw_sp2.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %mlxsw_sp2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mlxsw_sp2.i, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %percr_pl.i) #11
  %11 = call ptr @memset(ptr %percr_pl.i, i32 255, i32 128)
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %8, i32 0, i32 4
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %id.i, align 4
  call fastcc void @mlxsw_reg_percr_pack(ptr noundef nonnull %percr_pl.i, i16 noundef zeroext %13) #11
  %arrayidx.i.i.i = getelementptr inbounds i8, ptr %percr_pl.i, i32 32
  %14 = call ptr @memcpy(ptr %arrayidx.i.i.i, ptr %erp_table, i32 96)
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core.i, align 4
  %call7.i = call i32 @mlxsw_reg_write(ptr noundef %16, ptr noundef nonnull @mlxsw_reg_percr, ptr noundef nonnull %percr_pl.i) #11
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %percr_pl.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %err_master_mask_update

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_master_mask_update:                           ; preds = %for.end
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask_bitmap, i32 noundef 768, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %call7)
  %cmp911 = icmp ult i32 %call7, 768
  br i1 %cmp911, label %err_master_mask_update.for.body10_crit_edge, label %err_master_mask_update.cleanup_crit_edge

err_master_mask_update.cleanup_crit_edge:         ; preds = %err_master_mask_update
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_master_mask_update.for.body10_crit_edge:      ; preds = %err_master_mask_update
  br label %for.body10

for.body10:                                       ; preds = %mlxsw_sp_acl_erp_master_mask_bit_set.exit.for.body10_crit_edge, %err_master_mask_update.for.body10_crit_edge
  %bit.112 = phi i32 [ %call15, %mlxsw_sp_acl_erp_master_mask_bit_set.exit.for.body10_crit_edge ], [ %call7, %err_master_mask_update.for.body10_crit_edge ]
  %arrayidx.i1 = getelementptr %struct.mlxsw_sp_acl_erp_master_mask, ptr %erp_table, i32 0, i32 1, i32 %bit.112
  %17 = ptrtoint ptr %arrayidx.i1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i1, align 4
  %inc.i = add i32 %18, 1
  store i32 %inc.i, ptr %arrayidx.i1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i2 = icmp eq i32 %18, 0
  br i1 %cmp.i2, label %if.then.i7, label %for.body10.mlxsw_sp_acl_erp_master_mask_bit_set.exit_crit_edge

for.body10.mlxsw_sp_acl_erp_master_mask_bit_set.exit_crit_edge: ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_master_mask_bit_set.exit

if.then.i7:                                       ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #13
  %rem.i.i3 = and i32 %bit.112, 31
  %shl.i.i4 = shl nuw i32 1, %rem.i.i3
  %div2.i.i5 = lshr i32 %bit.112, 5
  %add.ptr.i.i6 = getelementptr i32, ptr %erp_table, i32 %div2.i.i5
  %19 = ptrtoint ptr %add.ptr.i.i6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i6, align 4
  %or.i.i = or i32 %20, %shl.i.i4
  store i32 %or.i.i, ptr %add.ptr.i.i6, align 4
  br label %mlxsw_sp_acl_erp_master_mask_bit_set.exit

mlxsw_sp_acl_erp_master_mask_bit_set.exit:        ; preds = %if.then.i7, %for.body10.mlxsw_sp_acl_erp_master_mask_bit_set.exit_crit_edge
  %add14 = add nuw nsw i32 %bit.112, 1
  %call15 = call i32 @_find_next_bit_be(ptr noundef nonnull %mask_bitmap, i32 noundef 768, i32 noundef %add14) #11
  %cmp9 = icmp ult i32 %call15, 768
  br i1 %cmp9, label %mlxsw_sp_acl_erp_master_mask_bit_set.exit.for.body10_crit_edge, label %mlxsw_sp_acl_erp_master_mask_bit_set.exit.cleanup_crit_edge

mlxsw_sp_acl_erp_master_mask_bit_set.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_acl_erp_master_mask_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

mlxsw_sp_acl_erp_master_mask_bit_set.exit.for.body10_crit_edge: ; preds = %mlxsw_sp_acl_erp_master_mask_bit_set.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body10

cleanup:                                          ; preds = %mlxsw_sp_acl_erp_master_mask_bit_set.exit.cleanup_crit_edge, %err_master_mask_update.cleanup_crit_edge, %for.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %mask_bitmap) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp_acl_erp_mask_create(ptr noundef %erp_table, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  %pererp_pl.i.i = alloca [28 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctcam = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %ctcam to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctcam, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc ptr @mlxsw_sp_acl_erp_ctcam_mask_create(ptr noundef %erp_table, ptr noundef %key)
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_max_atcam_erps.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 9
  %2 = ptrtoint ptr %num_max_atcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_max_atcam_erps.i, align 4
  %erp_core1.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 4
  %4 = ptrtoint ptr %erp_core1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %erp_core1.i, align 4
  %base_index.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 7
  %6 = ptrtoint ptr %base_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_index.i, align 4
  %num_ctcam_erps.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 10
  %8 = ptrtoint ptr %num_ctcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ctcam_erps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp ne i32 %9, 0
  %num_atcam_erps.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 8
  %10 = ptrtoint ptr %num_atcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_atcam_erps.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp3.i = icmp ult i32 %11, %3
  br i1 %cmp3.i, label %if.end.if.end5_crit_edge, label %if.end.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp5.i = icmp eq i32 %3, 16
  br i1 %cmp5.i, label %if.end.i.if.then3_crit_edge, label %if.end7.i

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end7.i:                                        ; preds = %if.end.i
  %num_erp_banks.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %num_erp_banks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_erp_banks.i, align 4
  %add.i = add i32 %13, %3
  %aregion.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 5
  %add.i.frozen = freeze i32 %add.i
  %.frozen = freeze i32 %13
  %div.i.i = udiv i32 %add.i.frozen, %.frozen
  %14 = mul i32 %div.i.i, %.frozen
  %rem.i.i.decomposed = sub i32 %add.i.frozen, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.decomposed)
  %cmp.not.i.i = icmp eq i32 %rem.i.i.decomposed, 0
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end7.i.if.then3_crit_edge

if.end7.i.if.then3_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end.i.i:                                       ; preds = %if.end7.i
  %15 = ptrtoint ptr %aregion.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aregion.i, align 4
  %type.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr %5, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %erp_tables.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %erp_tables.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %erp_tables.i.i, align 4
  %mul.i.i = mul i32 %div.i.i, %20
  %algo.i.i.i = getelementptr inbounds %struct.gen_pool, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %algo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %algo.i.i.i, align 4
  %data.i.i.i = getelementptr inbounds %struct.gen_pool, ptr %22, i32 0, i32 4
  %25 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef %22, i32 noundef %mul.i.i, ptr noundef %24, ptr noundef %26, ptr noundef null) #11
  %27 = ptrtoint ptr %base_index.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call.i.i.i.i, ptr %base_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp2.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.if.then3_crit_edge, label %if.end10.i

if.end.i.i.if.then3_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end10.i:                                       ; preds = %if.end.i.i
  %sub.i.i = add i32 %call.i.i.i.i, -256
  %28 = ptrtoint ptr %base_index.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i.i, ptr %base_index.i, align 4
  %29 = ptrtoint ptr %num_max_atcam_erps.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add.i, ptr %num_max_atcam_erps.i, align 4
  %atcam_erps_list.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 3
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end10.i
  %.pn.in.i.i = phi ptr [ %atcam_erps_list.i.i, %if.end10.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %30 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i61.i = icmp eq ptr %.pn.i.i, %atcam_erps_list.i.i
  br i1 %cmp.not.i61.i, label %if.end15.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %erp.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -196
  %call.i.i = tail call fastcc i32 @mlxsw_sp_acl_erp_table_erp_add(ptr noundef %erp_table, ptr noundef %erp.0.i.i) #11
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.cond.i.i_crit_edge, label %for.cond11.preheader.i.i

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

for.cond11.preheader.i.i:                         ; preds = %for.body.i.i
  %.pn35.in38.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %.pn35.in38.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn3539.i.i = load ptr, ptr %.pn35.in38.i.i, align 4
  %cmp14.not40.i.i = icmp eq ptr %.pn3539.i.i, %atcam_erps_list.i.i
  br i1 %cmp14.not40.i.i, label %for.cond11.preheader.i.i.mlxsw_sp_acl_erp_table_expand.exit_crit_edge, label %for.cond11.preheader.i.i.for.body16.i.i_crit_edge

for.cond11.preheader.i.i.for.body16.i.i_crit_edge: ; preds = %for.cond11.preheader.i.i
  br label %for.body16.i.i

for.cond11.preheader.i.i.mlxsw_sp_acl_erp_table_expand.exit_crit_edge: ; preds = %for.cond11.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_table_expand.exit

for.body16.i.i:                                   ; preds = %for.body16.i.i.for.body16.i.i_crit_edge, %for.cond11.preheader.i.i.for.body16.i.i_crit_edge
  %.pn3541.i.i = phi ptr [ %.pn35.i.i, %for.body16.i.i.for.body16.i.i_crit_edge ], [ %.pn3539.i.i, %for.cond11.preheader.i.i.for.body16.i.i_crit_edge ]
  %erp.1.i.i = getelementptr i8, ptr %.pn3541.i.i, i32 -196
  tail call fastcc void @mlxsw_sp_acl_erp_table_erp_del(ptr noundef %erp.1.i.i) #11
  %.pn35.in.i.i = getelementptr inbounds %struct.list_head, ptr %.pn3541.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %.pn35.in.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn35.i.i = load ptr, ptr %.pn35.in.i.i, align 4
  %cmp14.not.i.i = icmp eq ptr %.pn35.i.i, %atcam_erps_list.i.i
  br i1 %cmp14.not.i.i, label %for.body16.i.i.mlxsw_sp_acl_erp_table_expand.exit_crit_edge, label %for.body16.i.i.for.body16.i.i_crit_edge

for.body16.i.i.for.body16.i.i_crit_edge:          ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body16.i.i

for.body16.i.i.mlxsw_sp_acl_erp_table_expand.exit_crit_edge: ; preds = %for.body16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_table_expand.exit

if.end15.i:                                       ; preds = %for.cond.i.i
  %33 = ptrtoint ptr %aregion.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %aregion.i, align 4
  %region1.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %region1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %region1.i.i, align 4
  %37 = ptrtoint ptr %erp_core1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %erp_core1.i, align 4
  %mlxsw_sp2.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %mlxsw_sp2.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mlxsw_sp2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pererp_pl.i.i) #11
  %id.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %36, i32 0, i32 4
  %41 = call ptr @memset(ptr %pererp_pl.i.i, i32 255, i32 28)
  %42 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %id.i.i, align 4
  %44 = ptrtoint ptr %base_index.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %base_index.i, align 4
  %conv.i.i = trunc i32 %45 to i8
  call fastcc void @mlxsw_reg_pererp_pack(ptr noundef nonnull %pererp_pl.i.i, i16 noundef zeroext %43, i1 noundef zeroext %cmp.i, i1 noundef zeroext true, i8 noundef zeroext %conv.i.i, i8 noundef zeroext 0) #11
  %erp_index_bitmap.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 2
  call fastcc void @mlxsw_reg_pererp_erp_vector_pack(ptr noundef nonnull %pererp_pl.i.i, ptr noundef %erp_index_bitmap.i.i) #11
  %core.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %40, i32 0, i32 1
  %46 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %core.i.i, align 4
  %call.i63.i = call i32 @mlxsw_reg_write(ptr noundef %47, ptr noundef nonnull @mlxsw_reg_pererp, ptr noundef nonnull %pererp_pl.i.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pererp_pl.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63.i)
  %tobool18.not.i = icmp eq i32 %call.i63.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end15.i.mlxsw_sp_acl_erp_table_expand.exit_crit_edge

if.end15.i.mlxsw_sp_acl_erp_table_expand.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_table_expand.exit

if.end20.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %aregion.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %aregion.i, align 4
  %type22.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %type22.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type22.i, align 4
  %arrayidx.i64.i = getelementptr [4 x i32], ptr %5, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx.i64.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i64.i, align 4
  %add.i.i = add i32 %7, 256
  %54 = ptrtoint ptr %num_erp_banks.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_erp_banks.i, align 4
  %div.i66.i = udiv i32 %3, %55
  %mul.i67.i = mul i32 %div.i66.i, %53
  %56 = ptrtoint ptr %erp_tables.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %erp_tables.i.i, align 4
  call void @gen_pool_free_owner(ptr noundef %57, i32 noundef %add.i.i, i32 noundef %mul.i67.i, ptr noundef null) #11
  br label %if.end5

mlxsw_sp_acl_erp_table_expand.exit:               ; preds = %if.end15.i.mlxsw_sp_acl_erp_table_expand.exit_crit_edge, %for.body16.i.i.mlxsw_sp_acl_erp_table_expand.exit_crit_edge, %for.cond11.preheader.i.i.mlxsw_sp_acl_erp_table_expand.exit_crit_edge
  %err.0.i = phi i32 [ %call.i63.i, %if.end15.i.mlxsw_sp_acl_erp_table_expand.exit_crit_edge ], [ %call.i.i, %for.cond11.preheader.i.i.mlxsw_sp_acl_erp_table_expand.exit_crit_edge ], [ %call.i.i, %for.body16.i.i.mlxsw_sp_acl_erp_table_expand.exit_crit_edge ]
  %58 = ptrtoint ptr %num_max_atcam_erps.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %3, ptr %num_max_atcam_erps.i, align 4
  %59 = ptrtoint ptr %aregion.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %aregion.i, align 4
  %type25.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %type25.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type25.i, align 4
  %63 = ptrtoint ptr %base_index.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base_index.i, align 4
  %arrayidx.i69.i = getelementptr [4 x i32], ptr %5, i32 0, i32 %62
  %65 = ptrtoint ptr %arrayidx.i69.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx.i69.i, align 4
  %add.i70.i = add i32 %64, 256
  %67 = ptrtoint ptr %num_erp_banks.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %num_erp_banks.i, align 4
  %div.i72.i = udiv i32 %add.i, %68
  %mul.i73.i = mul i32 %div.i72.i, %66
  %69 = ptrtoint ptr %erp_tables.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %erp_tables.i.i, align 4
  call void @gen_pool_free_owner(ptr noundef %70, i32 noundef %add.i70.i, i32 noundef %mul.i73.i, ptr noundef null) #11
  %71 = ptrtoint ptr %base_index.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %7, ptr %base_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool2.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool2.not, label %mlxsw_sp_acl_erp_table_expand.exit.if.end5_crit_edge, label %mlxsw_sp_acl_erp_table_expand.exit.if.then3_crit_edge

mlxsw_sp_acl_erp_table_expand.exit.if.then3_crit_edge: ; preds = %mlxsw_sp_acl_erp_table_expand.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

mlxsw_sp_acl_erp_table_expand.exit.if.end5_crit_edge: ; preds = %mlxsw_sp_acl_erp_table_expand.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then3:                                         ; preds = %mlxsw_sp_acl_erp_table_expand.exit.if.then3_crit_edge, %if.end.i.i.if.then3_crit_edge, %if.end7.i.if.then3_crit_edge, %if.end.i.if.then3_crit_edge
  %retval.0.i62 = phi i32 [ %err.0.i, %mlxsw_sp_acl_erp_table_expand.exit.if.then3_crit_edge ], [ -22, %if.end7.i.if.then3_crit_edge ], [ -105, %if.end.i.i.if.then3_crit_edge ], [ -105, %if.end.i.if.then3_crit_edge ]
  %72 = inttoptr i32 %retval.0.i62 to ptr
  br label %cleanup

if.end5:                                          ; preds = %mlxsw_sp_acl_erp_table_expand.exit.if.end5_crit_edge, %if.end20.i, %if.end.if.end5_crit_edge
  %call6 = call fastcc ptr @mlxsw_sp_acl_erp_generic_create(ptr noundef %erp_table, ptr noundef %key)
  %cmp.i47 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %index = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call6, i32 0, i32 2
  %erp_index_bitmap.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 2
  %73 = ptrtoint ptr %num_max_atcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_max_atcam_erps.i, align 4
  %call.i = call i32 @_find_first_zero_bit_be(ptr noundef %erp_index_bitmap.i, i32 noundef %74) #11
  %conv1.i = and i32 %call.i, 255
  %75 = ptrtoint ptr %num_max_atcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_max_atcam_erps.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %76)
  %cmp.i49 = icmp ult i32 %conv1.i, %76
  br i1 %cmp.i49, label %if.end13, label %if.end9.err_erp_index_get_crit_edge

if.end9.err_erp_index_get_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_index_get

if.end13:                                         ; preds = %if.end9
  %conv.i = trunc i32 %call.i to i8
  %rem.i.i50 = and i32 %call.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i50
  %div2.i.i = lshr i32 %conv1.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %erp_index_bitmap.i, i32 %div2.i.i
  %77 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %78, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %79 = ptrtoint ptr %index to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv.i, ptr %index, align 1
  %call14 = call fastcc i32 @mlxsw_sp_acl_erp_table_erp_add(ptr noundef %erp_table, ptr noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.err_table_erp_add_crit_edge

if.end13.err_table_erp_add_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_table_erp_add

if.end17:                                         ; preds = %if.end13
  %call18 = call fastcc i32 @mlxsw_sp_acl_erp_region_erp_add(ptr noundef %erp_table, ptr noundef %call6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %err_region_erp_add

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %ops = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 6
  %80 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @erp_multiple_masks_ops, ptr %ops, align 4
  br label %cleanup

err_region_erp_add:                               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  call fastcc void @mlxsw_sp_acl_erp_table_erp_del(ptr noundef %call6)
  br label %err_table_erp_add

err_table_erp_add:                                ; preds = %err_region_erp_add, %if.end13.err_table_erp_add_crit_edge
  %err.0 = phi i32 [ %call14, %if.end13.err_table_erp_add_crit_edge ], [ %call18, %err_region_erp_add ]
  %81 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %index, align 2
  %conv.i52 = zext i8 %82 to i32
  %rem.i.i54 = and i32 %conv.i52, 31
  %shl.i.i55 = shl nuw i32 1, %rem.i.i54
  %div2.i.i56 = lshr i32 %conv.i52, 5
  %add.ptr.i.i57 = getelementptr i32, ptr %erp_index_bitmap.i, i32 %div2.i.i56
  %neg.i.i = xor i32 %shl.i.i55, -1
  %83 = ptrtoint ptr %add.ptr.i.i57 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i57, align 4
  %and.i.i = and i32 %84, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i57, align 4
  br label %err_erp_index_get

err_erp_index_get:                                ; preds = %err_table_erp_add, %if.end9.err_erp_index_get_crit_edge
  %err.1 = phi i32 [ %err.0, %err_table_erp_add ], [ -105, %if.end9.err_erp_index_get_crit_edge ]
  %erp_table1.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call6, i32 0, i32 5
  %85 = ptrtoint ptr %erp_table1.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %erp_table1.i, align 4
  call fastcc void @mlxsw_sp_acl_erp_master_mask_clear(ptr noundef %86, ptr noundef %call6) #11
  %num_atcam_erps.i58 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %num_atcam_erps.i58 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_atcam_erps.i58, align 4
  %dec.i = add i32 %88, -1
  store i32 %dec.i, ptr %num_atcam_erps.i58, align 4
  %list.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call6, i32 0, i32 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %err_erp_index_get.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge

err_erp_index_get.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge: ; preds = %err_erp_index_get
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_generic_destroy.exit

if.end.i.i.i:                                     ; preds = %err_erp_index_get
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call6, i32 0, i32 4, i32 1
  %89 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i.i, align 4
  %91 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev1.i.i.i.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %92, ptr %90, align 4
  br label %mlxsw_sp_acl_erp_generic_destroy.exit

mlxsw_sp_acl_erp_generic_destroy.exit:            ; preds = %if.end.i.i.i, %err_erp_index_get.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge
  %95 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call6, i32 0, i32 4, i32 1
  %96 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %call6, i32 0, i32 1
  %97 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %id.i, align 1
  %conv.i.i59 = zext i8 %98 to i32
  %erp_id_bitmap.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %86, i32 0, i32 1
  %rem.i.i.i = and i32 %conv.i.i59, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %conv.i.i59, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %erp_id_bitmap.i.i, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %99 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %100, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  call void @kfree(ptr noundef %call6) #11
  %101 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %mlxsw_sp_acl_erp_generic_destroy.exit, %if.end21, %if.end5.cleanup_crit_edge, %if.then3, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %72, %if.then3 ], [ %101, %mlxsw_sp_acl_erp_generic_destroy.exit ], [ %call6, %if.end21 ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_erp_mask_destroy(ptr nocapture noundef %erp_table, ptr noundef %erp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctcam = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, ptr %erp, i32 0, i32 1
  %0 = ptrtoint ptr %ctcam to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctcam, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mlxsw_sp_acl_erp_ctcam_mask_destroy(ptr noundef %erp)
  br label %if.end5

if.end:                                           ; preds = %entry
  tail call fastcc void @mlxsw_sp_acl_erp_region_erp_del(ptr noundef %erp)
  tail call fastcc void @mlxsw_sp_acl_erp_table_erp_del(ptr noundef %erp)
  %index = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 2
  %conv.i = zext i8 %3 to i32
  %erp_index_bitmap.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 2
  %rem.i.i = and i32 %conv.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %erp_index_bitmap.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %5, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %erp_table1.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 5
  %6 = ptrtoint ptr %erp_table1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %erp_table1.i, align 4
  tail call fastcc void @mlxsw_sp_acl_erp_master_mask_clear(ptr noundef %7, ptr noundef %erp) #11
  %num_atcam_erps.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %num_atcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_atcam_erps.i, align 4
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %num_atcam_erps.i, align 4
  %list.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge

if.end.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_generic_destroy.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %mlxsw_sp_acl_erp_generic_destroy.exit

mlxsw_sp_acl_erp_generic_destroy.exit:            ; preds = %if.end.i.i.i, %if.end.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 1
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id.i, align 1
  %conv.i.i = zext i8 %19 to i32
  %erp_id_bitmap.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %7, i32 0, i32 1
  %rem.i.i.i = and i32 %conv.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %conv.i.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %erp_id_bitmap.i.i, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %21, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  tail call void @kfree(ptr noundef %erp) #11
  %num_atcam_erps = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 8
  %22 = ptrtoint ptr %num_atcam_erps to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_atcam_erps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp = icmp eq i32 %23, 2
  br i1 %cmp, label %land.lhs.true, label %mlxsw_sp_acl_erp_generic_destroy.exit.if.end5_crit_edge

mlxsw_sp_acl_erp_generic_destroy.exit.if.end5_crit_edge: ; preds = %mlxsw_sp_acl_erp_generic_destroy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

land.lhs.true:                                    ; preds = %mlxsw_sp_acl_erp_generic_destroy.exit
  %num_ctcam_erps = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 10
  %24 = ptrtoint ptr %num_ctcam_erps to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_ctcam_erps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp1 = icmp eq i32 %25, 0
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end5_crit_edge

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

land.lhs.true2:                                   ; preds = %land.lhs.true
  %num_deltas = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 11
  %26 = ptrtoint ptr %num_deltas to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_deltas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp3 = icmp eq i32 %27, 0
  br i1 %cmp3, label %if.then4, label %land.lhs.true2.if.end5_crit_edge

land.lhs.true2.if.end5_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  %ops = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 6
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @erp_two_masks_ops, ptr %ops, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %land.lhs.true2.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %mlxsw_sp_acl_erp_generic_destroy.exit.if.end5_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_pererp_pack(ptr nocapture noundef %payload, i16 noundef zeroext %region_id, i1 noundef zeroext %ctcam_le, i1 noundef zeroext %erpt_pointer_valid, i8 noundef zeroext %erpt_pointer, i8 noundef zeroext %master_rp_id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = call ptr @memset(ptr %payload, i32 0, i32 28)
  %conv2 = zext i16 %region_id to i32
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, -65536
  %or.i.i = or i32 %and7.i.i, %conv2
  store i32 %or.i.i, ptr %payload, align 4
  %spec.select.i.i19 = select i1 %ctcam_le, i32 268435456, i32 0
  %arrayidx.i.i25 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i25 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i25, align 4
  %and7.i.i27 = and i32 %4, -268435457
  %or.i.i28 = or i32 %spec.select.i.i19, %and7.i.i27
  store i32 %or.i.i28, ptr %arrayidx.i.i25, align 4
  %spec.select.i.i47 = select i1 %erpt_pointer_valid, i32 -2147483648, i32 0
  %arrayidx.i.i53 = getelementptr i32, ptr %payload, i32 4
  %5 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i53, align 4
  %and7.i.i55 = and i32 %6, 2146500352
  %or.i.i56 = or i32 %spec.select.i.i47, %and7.i.i55
  %conv7 = zext i8 %erpt_pointer to i32
  %arrayidx.i.i104 = getelementptr i32, ptr %payload, i32 4
  %or.i.i107 = or i32 %or.i.i56, %conv7
  %7 = ptrtoint ptr %arrayidx.i.i104 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i.i107, ptr %arrayidx.i.i104, align 4
  %8 = and i8 %master_rp_id, 15
  %and6.i.i131 = zext i8 %8 to i32
  %arrayidx.i.i132 = getelementptr i32, ptr %payload, i32 6
  %9 = ptrtoint ptr %arrayidx.i.i132 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i132, align 4
  %and7.i.i134 = and i32 %10, -16
  %or.i.i135 = or i32 %and7.i.i134, %and6.i.i131
  store i32 %or.i.i135, ptr %arrayidx.i.i132, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_pererp_erp_vector_pack(ptr nocapture noundef %payload, ptr noundef %erp_vector) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @_find_next_bit_be(ptr noundef %erp_vector, i32 noundef 16, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp2 = icmp ult i32 %call, 16
  br i1 %cmp2, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %bit.03 = phi i32 [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %rem5076.i.i.i1 = and i32 %bit.03, 7
  %0 = trunc i32 %bit.03 to i16
  %1 = sub i16 31, %0
  %2 = lshr i16 %1, 3
  %conv60.i.i.i = add nuw nsw i16 %2, 20
  %shl.i.i = shl i32 1, %rem5076.i.i.i1
  %and10.i.i = shl i32 1, %rem5076.i.i.i1
  %idxprom.i.i = zext i16 %conv60.i.i.i to i32
  %arrayidx.i.i = getelementptr i8, ptr %payload, i32 %idxprom.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.i, align 1
  %5 = trunc i32 %shl.i.i to i8
  %6 = xor i8 %5, -1
  %conv15.i.i = and i8 %4, %6
  %7 = trunc i32 %and10.i.i to i8
  %conv18.i.i = or i8 %conv15.i.i, %7
  store i8 %conv18.i.i, ptr %arrayidx.i.i, align 1
  %add = add nuw nsw i32 %bit.03, 1
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %erp_vector, i32 noundef 16, i32 noundef %add) #11
  %cmp = icmp ult i32 %call1, 16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_acl_erp_ctcam_mask_destroy(ptr noundef %erp) unnamed_addr #0 align 64 {
entry:
  %pererp_pl.i.i = alloca [28 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_table1 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 5
  %0 = ptrtoint ptr %erp_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_table1, align 4
  %num_ctcam_erps.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num_ctcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ctcam_erps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp ugt i32 %3, 1
  br i1 %cmp.i, label %entry.mlxsw_sp_acl_erp_region_ctcam_disable.exit_crit_edge, label %if.end.i

entry.mlxsw_sp_acl_erp_region_ctcam_disable.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_region_ctcam_disable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %aregion.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %aregion.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aregion.i.i, align 4
  %region1.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %region1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %region1.i.i, align 4
  %erp_core.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %erp_core.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %erp_core.i.i, align 4
  %mlxsw_sp2.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %mlxsw_sp2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mlxsw_sp2.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pererp_pl.i.i) #11
  %id.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %7, i32 0, i32 4
  %12 = call ptr @memset(ptr %pererp_pl.i.i, i32 255, i32 28)
  %13 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id.i.i, align 4
  %base_index.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %base_index.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_index.i.i, align 4
  %conv.i.i = trunc i32 %16 to i8
  call fastcc void @mlxsw_reg_pererp_pack(ptr noundef nonnull %pererp_pl.i.i, i16 noundef zeroext %14, i1 noundef zeroext false, i1 noundef zeroext true, i8 noundef zeroext %conv.i.i, i8 noundef zeroext 0) #11
  %erp_index_bitmap.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 2
  call fastcc void @mlxsw_reg_pererp_erp_vector_pack(ptr noundef nonnull %pererp_pl.i.i, ptr noundef %erp_index_bitmap.i.i) #11
  %core.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %core.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %core.i.i, align 4
  %call.i.i = call i32 @mlxsw_reg_write(ptr noundef %18, ptr noundef nonnull @mlxsw_reg_pererp, ptr noundef nonnull %pererp_pl.i.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pererp_pl.i.i) #11
  br label %mlxsw_sp_acl_erp_region_ctcam_disable.exit

mlxsw_sp_acl_erp_region_ctcam_disable.exit:       ; preds = %if.end.i, %entry.mlxsw_sp_acl_erp_region_ctcam_disable.exit_crit_edge
  call fastcc void @mlxsw_sp_acl_erp_master_mask_clear(ptr noundef %1, ptr noundef %erp)
  call fastcc void @__mlxsw_sp_acl_erp_table_other_dec(ptr noundef %1, ptr noundef %num_ctcam_erps.i) #11
  call void @kfree(ptr noundef %erp) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_acl_erp_region_erp_del(ptr nocapture noundef readonly %erp) unnamed_addr #0 align 64 {
entry:
  %pererp_pl = alloca [28 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_table1 = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 5
  %0 = ptrtoint ptr %erp_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_table1, align 4
  %aregion = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %aregion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aregion, align 4
  %region2 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %region2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %region2, align 4
  %erp_core = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %erp_core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %erp_core, align 4
  %mlxsw_sp3 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %mlxsw_sp3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mlxsw_sp3, align 4
  %num_ctcam_erps = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %num_ctcam_erps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_ctcam_erps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp ne i32 %11, 0
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pererp_pl) #11
  %id = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %5, i32 0, i32 4
  %12 = call ptr @memset(ptr %pererp_pl, i32 255, i32 28)
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id, align 4
  %base_index = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %base_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base_index, align 4
  %conv = trunc i32 %16 to i8
  call fastcc void @mlxsw_reg_pererp_pack(ptr noundef nonnull %pererp_pl, i16 noundef zeroext %14, i1 noundef zeroext %cmp, i1 noundef zeroext true, i8 noundef zeroext %conv, i8 noundef zeroext 0)
  %erp_index_bitmap = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 2
  call fastcc void @mlxsw_reg_pererp_erp_vector_pack(ptr noundef nonnull %pererp_pl, ptr noundef %erp_index_bitmap)
  %index = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 2
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %index, align 2
  %conv7 = zext i8 %18 to i16
  %conv41.i.i.i = sub nsw i16 31, %conv7
  %rem5076.i.i.i14 = and i8 %18, 7
  %19 = lshr i16 %conv41.i.i.i, 3
  %conv60.i.i.i = add nuw nsw i16 %19, 20
  %shl.i.i = shl i8 1, %rem5076.i.i.i14
  %idxprom.i.i = zext i16 %conv60.i.i.i to i32
  %arrayidx.i.i = getelementptr i8, ptr %pererp_pl, i32 %idxprom.i.i
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i, align 1
  %22 = xor i8 %shl.i.i, -1
  %conv15.i.i = and i8 %21, %22
  store i8 %conv15.i.i, ptr %arrayidx.i.i, align 1
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %9, i32 0, i32 1
  %23 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %24, ptr noundef nonnull @mlxsw_reg_pererp, ptr noundef nonnull %pererp_pl) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pererp_pl) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_percr_pack(ptr nocapture noundef %payload, i16 noundef zeroext %region_id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = call ptr @memset(ptr %payload, i32 0, i32 128)
  %conv1 = zext i16 %region_id to i32
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, -65536
  %or.i.i = or i32 %and7.i.i, %conv1
  store i32 %or.i.i, ptr %payload, align 4
  %arrayidx.i.i26 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i26 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i26, align 4
  %arrayidx.i.i72 = getelementptr i32, ptr %payload, i32 1
  %and7.i.i74 = and i32 %4, -50397185
  %5 = ptrtoint ptr %arrayidx.i.i72 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and7.i.i74, ptr %arrayidx.i.i72, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mlxsw_sp_acl_erp_table_other_dec(ptr noundef %erp_table, ptr nocapture noundef %dec_num) unnamed_addr #0 align 64 {
entry:
  %pererp_pl.i = alloca [28 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dec_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dec_num, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %dec_num, align 4
  %num_ctcam_erps = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 10
  %2 = ptrtoint ptr %num_ctcam_erps to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ctcam_erps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %entry
  %num_deltas = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 11
  %4 = ptrtoint ptr %num_deltas to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_deltas, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not = icmp eq i32 %5, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end:                                           ; preds = %lor.lhs.false
  %num_atcam_erps = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 8
  %6 = ptrtoint ptr %num_atcam_erps to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_atcam_erps, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.sw.epilog_crit_edge [
    i32 2, label %if.end.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb2
    i32 0, label %sw.bb4
  ]

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mlxsw_sp_acl_erp_region_master_mask_trans(ptr noundef %erp_table)
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %if.end
  %aregion.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 5
  %9 = ptrtoint ptr %aregion.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %aregion.i, align 4
  %region1.i = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %region1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %region1.i, align 4
  %erp_core.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 4
  %13 = ptrtoint ptr %erp_core.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %erp_core.i, align 4
  %mlxsw_sp2.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %mlxsw_sp2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mlxsw_sp2.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pererp_pl.i) #11
  %atcam_erps_list.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 3
  %17 = call ptr @memset(ptr %pererp_pl.i, i32 255, i32 28)
  %18 = ptrtoint ptr %atcam_erps_list.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %atcam_erps_list.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %19, %atcam_erps_list.i.i
  br i1 %cmp.i.not.i.i.i, label %sw.bb4.mlxsw_sp_acl_erp_table_master_rp.exit.thread.i_crit_edge, label %list_is_singular.exit.i.i

sw.bb4.mlxsw_sp_acl_erp_table_master_rp.exit.thread.i_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_table_master_rp.exit.thread.i

list_is_singular.exit.i.i:                        ; preds = %sw.bb4
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %19, %21
  br i1 %cmp.i.not.i.i, label %mlxsw_sp_acl_erp_table_master_rp.exit.i, label %list_is_singular.exit.i.i.mlxsw_sp_acl_erp_table_master_rp.exit.thread.i_crit_edge

list_is_singular.exit.i.i.mlxsw_sp_acl_erp_table_master_rp.exit.thread.i_crit_edge: ; preds = %list_is_singular.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_table_master_rp.exit.thread.i

mlxsw_sp_acl_erp_table_master_rp.exit.thread.i:   ; preds = %list_is_singular.exit.i.i.mlxsw_sp_acl_erp_table_master_rp.exit.thread.i_crit_edge, %sw.bb4.mlxsw_sp_acl_erp_table_master_rp.exit.thread.i_crit_edge
  %id11.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %12, i32 0, i32 4
  %22 = ptrtoint ptr %id11.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %id11.i, align 4
  br label %mlxsw_sp_acl_erp_table_disable.exit

mlxsw_sp_acl_erp_table_master_rp.exit.i:          ; preds = %list_is_singular.exit.i.i
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 -196
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_tcam_region, ptr %12, i32 0, i32 4
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %id.i, align 4
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %mlxsw_sp_acl_erp_table_master_rp.exit.i.mlxsw_sp_acl_erp_table_disable.exit_crit_edge, label %cond.true.i

mlxsw_sp_acl_erp_table_master_rp.exit.i.mlxsw_sp_acl_erp_table_disable.exit_crit_edge: ; preds = %mlxsw_sp_acl_erp_table_master_rp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_table_disable.exit

cond.true.i:                                      ; preds = %mlxsw_sp_acl_erp_table_master_rp.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %id3.i = getelementptr i8, ptr %19, i32 -99
  %26 = ptrtoint ptr %id3.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %id3.i, align 1
  br label %mlxsw_sp_acl_erp_table_disable.exit

mlxsw_sp_acl_erp_table_disable.exit:              ; preds = %cond.true.i, %mlxsw_sp_acl_erp_table_master_rp.exit.i.mlxsw_sp_acl_erp_table_disable.exit_crit_edge, %mlxsw_sp_acl_erp_table_master_rp.exit.thread.i
  %28 = phi i16 [ %25, %cond.true.i ], [ %25, %mlxsw_sp_acl_erp_table_master_rp.exit.i.mlxsw_sp_acl_erp_table_disable.exit_crit_edge ], [ %23, %mlxsw_sp_acl_erp_table_master_rp.exit.thread.i ]
  %cond.i = phi i8 [ %27, %cond.true.i ], [ 0, %mlxsw_sp_acl_erp_table_master_rp.exit.i.mlxsw_sp_acl_erp_table_disable.exit_crit_edge ], [ 0, %mlxsw_sp_acl_erp_table_master_rp.exit.thread.i ]
  call fastcc void @mlxsw_reg_pererp_pack(ptr noundef nonnull %pererp_pl.i, i16 noundef zeroext %28, i1 noundef zeroext false, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext %cond.i) #11
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %16, i32 0, i32 1
  %29 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %core.i, align 4
  %call6.i = call i32 @mlxsw_reg_write(ptr noundef %30, ptr noundef nonnull @mlxsw_reg_pererp, ptr noundef nonnull %pererp_pl.i) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pererp_pl.i) #11
  %31 = ptrtoint ptr %erp_core.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %erp_core.i, align 4
  %num_max_atcam_erps = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 9
  %33 = ptrtoint ptr %num_max_atcam_erps to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_max_atcam_erps, align 4
  %35 = ptrtoint ptr %aregion.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %aregion.i, align 4
  %type = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type, align 4
  %base_index = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 7
  %39 = ptrtoint ptr %base_index to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base_index, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr %32, i32 0, i32 %38
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %40, 256
  %num_erp_banks.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %32, i32 0, i32 4
  %43 = ptrtoint ptr %num_erp_banks.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_erp_banks.i, align 4
  %div.i = udiv i32 %34, %44
  %mul.i = mul i32 %div.i, %42
  %erp_tables.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_core, ptr %32, i32 0, i32 1
  %45 = ptrtoint ptr %erp_tables.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %erp_tables.i, align 4
  call void @gen_pool_free_owner(ptr noundef %46, i32 noundef %add.i, i32 noundef %mul.i, ptr noundef null) #11
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %mlxsw_sp_acl_erp_table_disable.exit, %sw.bb2, %if.end.sw.epilog.sink.split_crit_edge
  %erp_no_mask_ops.sink = phi ptr [ @erp_no_mask_ops, %mlxsw_sp_acl_erp_table_disable.exit ], [ @erp_single_mask_ops, %sw.bb2 ], [ @erp_two_masks_ops, %if.end.sw.epilog.sink.split_crit_edge ]
  %ops5 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 6
  %47 = ptrtoint ptr %ops5 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %erp_no_mask_ops.sink, ptr %ops5, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_perpt_pack(ptr nocapture noundef %payload, i8 noundef zeroext %erpt_bank, i8 noundef zeroext %erpt_index, i32 noundef %key_size, i8 noundef zeroext %erp_id, i8 noundef zeroext %erpt_base_index, i8 noundef zeroext %erp_index, ptr nocapture noundef readonly %mask) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = call ptr @memset(ptr %payload, i32 0, i32 128)
  %conv1 = zext i8 %erpt_bank to i32
  %spec.select.i.i = shl nuw nsw i32 %conv1, 16
  %and6.i.i = and i32 %spec.select.i.i, 983040
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, -983296
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  %conv2 = zext i8 %erpt_index to i32
  %or.i.i28 = or i32 %or.i.i, %conv2
  store i32 %or.i.i28, ptr %payload, align 4
  %and6.i.i52 = and i32 %key_size, 15
  %arrayidx.i.i53 = getelementptr i32, ptr %payload, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i53, align 4
  %and7.i.i55 = and i32 %4, -16
  %or.i.i56 = or i32 %and6.i.i52, %and7.i.i55
  store i32 %or.i.i56, ptr %arrayidx.i.i53, align 4
  %arrayidx.i.i77 = getelementptr i32, ptr %payload, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i77 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i77, align 4
  %7 = and i8 %erp_id, 15
  %and6.i.i103 = zext i8 %7 to i32
  %arrayidx.i.i104 = getelementptr i32, ptr %payload, i32 2
  %and7.i.i106 = and i32 %6, -272
  %or.i.i107 = or i32 %and7.i.i106, %and6.i.i103
  %8 = ptrtoint ptr %arrayidx.i.i104 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i.i107, ptr %arrayidx.i.i104, align 4
  %arrayidx.i.i128 = getelementptr i32, ptr %payload, i32 3
  %9 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i128, align 4
  %conv5 = zext i8 %erpt_base_index to i32
  %arrayidx.i.i155 = getelementptr i32, ptr %payload, i32 3
  %and7.i.i157 = and i32 %10, -983296
  %or.i.i158 = or i32 %and7.i.i157, %conv5
  %11 = ptrtoint ptr %arrayidx.i.i155 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i.i158, ptr %arrayidx.i.i155, align 4
  %12 = and i8 %erp_index, 15
  %and6.i.i182 = zext i8 %12 to i32
  %arrayidx.i.i183 = getelementptr i32, ptr %payload, i32 4
  %13 = ptrtoint ptr %arrayidx.i.i183 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i183, align 4
  %and7.i.i185 = and i32 %14, -16
  %or.i.i186 = or i32 %and7.i.i185, %and6.i.i182
  store i32 %or.i.i186, ptr %arrayidx.i.i183, align 4
  %arrayidx.i.i190 = getelementptr i8, ptr %payload, i32 32
  %15 = call ptr @memcpy(ptr %arrayidx.i.i190, ptr %mask, i32 96)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_perpt_erp_vector_pack(ptr nocapture noundef %payload, ptr noundef %erp_vector) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @_find_next_bit_be(ptr noundef %erp_vector, i32 noundef 16, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call)
  %cmp2 = icmp ult i32 %call, 16
  br i1 %cmp2, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %bit.03 = phi i32 [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %rem5076.i.i.i1 = and i32 %bit.03, 7
  %0 = trunc i32 %bit.03 to i16
  %1 = sub i16 31, %0
  %2 = lshr i16 %1, 3
  %conv60.i.i.i = add nuw nsw i16 %2, 20
  %shl.i.i = shl i32 1, %rem5076.i.i.i1
  %and10.i.i = shl i32 1, %rem5076.i.i.i1
  %idxprom.i.i = zext i16 %conv60.i.i.i to i32
  %arrayidx.i.i = getelementptr i8, ptr %payload, i32 %idxprom.i.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i.i, align 1
  %5 = trunc i32 %shl.i.i to i8
  %6 = xor i8 %5, -1
  %conv15.i.i = and i8 %4, %6
  %7 = trunc i32 %and10.i.i to i8
  %conv18.i.i = or i8 %conv15.i.i, %7
  store i8 %conv18.i.i, ptr %arrayidx.i.i, align 1
  %add = add nuw nsw i32 %bit.03, 1
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %erp_vector, i32 noundef 16, i32 noundef %add) #11
  %cmp = icmp ult i32 %call1, 16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_erp_second_mask_destroy(ptr noundef %erp_table, ptr noundef %erp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctcam = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, ptr %erp, i32 0, i32 1
  %0 = ptrtoint ptr %ctcam to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctcam, align 4, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mlxsw_sp_acl_erp_ctcam_mask_destroy(ptr noundef %erp)
  br label %return

if.end:                                           ; preds = %entry
  tail call fastcc void @mlxsw_sp_acl_erp_region_erp_del(ptr noundef %erp)
  tail call fastcc void @mlxsw_sp_acl_erp_table_erp_del(ptr noundef %erp)
  %index = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 2
  %conv.i = zext i8 %3 to i32
  %erp_index_bitmap.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 2
  %rem.i.i = and i32 %conv.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %erp_index_bitmap.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %5, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  %erp_table1.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 5
  %6 = ptrtoint ptr %erp_table1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %erp_table1.i, align 4
  tail call fastcc void @mlxsw_sp_acl_erp_master_mask_clear(ptr noundef %7, ptr noundef %erp) #11
  %num_atcam_erps.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %num_atcam_erps.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_atcam_erps.i, align 4
  %dec.i = add i32 %9, -1
  store i32 %dec.i, ptr %num_atcam_erps.i, align 4
  %list.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge

if.end.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_generic_destroy.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %mlxsw_sp_acl_erp_generic_destroy.exit

mlxsw_sp_acl_erp_generic_destroy.exit:            ; preds = %if.end.i.i.i, %if.end.mlxsw_sp_acl_erp_generic_destroy.exit_crit_edge
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %id.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp, ptr %erp, i32 0, i32 1
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %id.i, align 1
  %conv.i.i = zext i8 %19 to i32
  %erp_id_bitmap.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %7, i32 0, i32 1
  %rem.i.i.i = and i32 %conv.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %conv.i.i, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %erp_id_bitmap.i.i, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %21, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  tail call void @kfree(ptr noundef %erp) #11
  tail call fastcc void @mlxsw_sp_acl_erp_region_master_mask_trans(ptr noundef %erp_table)
  %ops = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 6
  %22 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @erp_single_mask_ops, ptr %ops, align 4
  br label %return

return:                                           ; preds = %mlxsw_sp_acl_erp_generic_destroy.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp_acl_erp_first_mask_create(ptr noundef %erp_table, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctcam = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %ctcam to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctcam, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @mlxsw_sp_acl_erp_generic_create(ptr noundef %erp_table, ptr noundef %key)
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %ops = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %erp_table, i32 0, i32 6
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @erp_single_mask_ops, ptr %ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end4 ], [ %call1, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_erp_no_mask_destroy(ptr nocapture noundef readnone %erp_table, ptr nocapture noundef readnone %erp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 999, i32 noundef 9, ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_hints_stats_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @objagg_stats_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @objagg_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mlxsw_sp_acl_erp_delta_check(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %parent_obj, ptr nocapture noundef readonly %obj) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.0123.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %si.0122.i = phi i32 [ -1, %entry ], [ %si.1.i, %for.inc.i.for.body.i_crit_edge ]
  %sub2.i = sub nuw nsw i32 55, %i.0123.i
  %arrayidx.i = getelementptr [96 x i8], ptr %parent_obj, i32 0, i32 %sub2.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i, align 1
  %arrayidx6.i = getelementptr [96 x i8], ptr %obj, i32 0, i32 %sub2.i
  %2 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp8.i = icmp eq i8 %1, %3
  br i1 %cmp8.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %si.0122.i)
  %cmp10.i = icmp eq i32 %si.0122.i, -1
  br i1 %cmp10.i, label %if.end.i.for.inc.i_crit_edge, label %if.else.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end.i
  %sub13.i = add nsw i32 %i.0123.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %si.0122.i, i32 %sub13.i)
  %cmp14.not.i = icmp eq i32 %si.0122.i, %sub13.i
  br i1 %cmp14.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.else.i.mlxsw_sp_acl_erp_delta_fill.exit_crit_edge

if.else.i.mlxsw_sp_acl_erp_delta_fill.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_delta_fill.exit

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %si.1.i = phi i32 [ %si.0122.i, %for.body.i.for.inc.i_crit_edge ], [ %si.0122.i, %if.else.i.for.inc.i_crit_edge ], [ %i.0123.i, %if.end.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0123.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 56
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %si.1.i)
  %cmp19.i = icmp eq i32 %si.1.i, -1
  br i1 %cmp19.i, label %for.end.i.mlxsw_sp_acl_erp_delta_fill.exit_crit_edge, label %if.end22.i

for.end.i.mlxsw_sp_acl_erp_delta_fill.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_delta_fill.exit

if.end22.i:                                       ; preds = %for.end.i
  %sub25.i = sub i32 55, %si.1.i
  %arrayidx26.i = getelementptr [96 x i8], ptr %parent_obj, i32 0, i32 %sub25.i
  %4 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %5 to i16
  %arrayidx31.i = getelementptr [96 x i8], ptr %obj, i32 0, i32 %sub25.i
  %6 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx31.i, align 1
  %conv32.i = zext i8 %7 to i16
  %add.i = add nuw i32 %si.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %add.i)
  %cmp33.i = icmp slt i32 %add.i, 56
  br i1 %cmp33.i, label %if.then35.i, label %if.end22.i.if.end54.i_crit_edge

if.end22.i.if.end54.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.then35.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub39.i = sub i32 54, %si.1.i
  %arrayidx40.i = getelementptr [96 x i8], ptr %parent_obj, i32 0, i32 %sub39.i
  %8 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx40.i, align 1
  %conv41.i = zext i8 %9 to i16
  %shl.i = shl nuw i16 %conv41.i, 8
  %or.i = or i16 %shl.i, %conv27.i
  %arrayidx48.i = getelementptr [96 x i8], ptr %obj, i32 0, i32 %sub39.i
  %10 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %11 to i16
  %shl50.i = shl nuw i16 %conv49.i, 8
  %or52.i = or i16 %shl50.i, %conv32.i
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then35.i, %if.end22.i.if.end54.i_crit_edge
  %pmask.0.i = phi i16 [ %or.i, %if.then35.i ], [ %conv27.i, %if.end22.i.if.end54.i_crit_edge ]
  %mask.0.i = phi i16 [ %or52.i, %if.then35.i ], [ %conv32.i, %if.end22.i.if.end54.i_crit_edge ]
  %12 = xor i16 %mask.0.i, -1
  %and120.i = and i16 %pmask.0.i, %12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and120.i)
  %tobool.not.i = icmp eq i16 %and120.i, 0
  br i1 %tobool.not.i, label %if.end59.i, label %if.end54.i.mlxsw_sp_acl_erp_delta_fill.exit_crit_edge

if.end54.i.mlxsw_sp_acl_erp_delta_fill.exit_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mlxsw_sp_acl_erp_delta_fill.exit

if.end59.i:                                       ; preds = %if.end54.i
  %neg.i = xor i16 %pmask.0.i, -1
  %and62.i = and i16 %mask.0.i, %neg.i
  %conv64.i = zext i16 %and62.i to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end59.i
  %offset.0.i = phi i32 [ 0, %if.end59.i ], [ %inc68.i, %while.cond.i.while.cond.i_crit_edge ]
  %shl65.i = shl nuw i32 1, %offset.0.i
  %and66.i = and i32 %shl65.i, %conv64.i
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  %inc68.i = add i32 %offset.0.i, 1
  br i1 %tobool67.not.i, label %while.cond.i.while.cond.i_crit_edge, label %while.cond.i.while.cond69.i_crit_edge

while.cond.i.while.cond69.i_crit_edge:            ; preds = %while.cond.i
  br label %while.cond69.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.cond69.i:                                   ; preds = %while.cond69.i.while.cond69.i_crit_edge, %while.cond.i.while.cond69.i_crit_edge
  %mask.1.i = phi i16 [ %13, %while.cond69.i.while.cond69.i_crit_edge ], [ %and62.i, %while.cond.i.while.cond69.i_crit_edge ]
  %conv70.i = zext i16 %mask.1.i to i32
  %and71.i = and i32 %conv70.i, 1
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  %13 = lshr i16 %mask.1.i, 1
  br i1 %tobool72.not.i, label %while.cond69.i.while.cond69.i_crit_edge, label %while.end77.i

while.cond69.i.while.cond69.i_crit_edge:          ; preds = %while.cond69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond69.i

while.end77.i:                                    ; preds = %while.cond69.i
  call void @__sanitizer_cov_trace_pc() #13
  %and79.i = and i32 %conv70.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br label %mlxsw_sp_acl_erp_delta_fill.exit

mlxsw_sp_acl_erp_delta_fill.exit:                 ; preds = %while.end77.i, %if.end54.i.mlxsw_sp_acl_erp_delta_fill.exit_crit_edge, %for.end.i.mlxsw_sp_acl_erp_delta_fill.exit_crit_edge, %if.else.i.mlxsw_sp_acl_erp_delta_fill.exit_crit_edge
  %tobool.not = phi i1 [ false, %for.end.i.mlxsw_sp_acl_erp_delta_fill.exit_crit_edge ], [ false, %if.end54.i.mlxsw_sp_acl_erp_delta_fill.exit_crit_edge ], [ %tobool80.not.i, %while.end77.i ], [ false, %if.else.i.mlxsw_sp_acl_erp_delta_fill.exit_crit_edge ]
  ret i1 %tobool.not
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_acl_erp_hints_obj_cmp(ptr nocapture noundef readonly %obj1, ptr nocapture noundef readonly %obj2) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @memcmp(ptr noundef dereferenceable(96) %obj1, ptr noundef dereferenceable(96) %obj2, i32 noundef 96) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp_acl_erp_delta_create(ptr nocapture noundef readonly %priv, ptr nocapture noundef readonly %parent_obj, ptr nocapture noundef readonly %obj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_table1 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %erp_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_table1, align 4
  %ctcam = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, ptr %parent_obj, i32 0, i32 1
  %2 = ptrtoint ptr %ctcam to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctcam, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ctcam2 = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, ptr %obj, i32 0, i32 1
  %4 = ptrtoint ptr %ctcam2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctcam2, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false.for.body.i_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.for.body.i_crit_edge:               ; preds = %lor.lhs.false
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %lor.lhs.false.for.body.i_crit_edge
  %i.0123.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %lor.lhs.false.for.body.i_crit_edge ]
  %si.0122.i = phi i32 [ %si.1.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %lor.lhs.false.for.body.i_crit_edge ]
  %sub2.i = sub nuw nsw i32 55, %i.0123.i
  %arrayidx.i = getelementptr [96 x i8], ptr %parent_obj, i32 0, i32 %sub2.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %arrayidx6.i = getelementptr [96 x i8], ptr %obj, i32 0, i32 %sub2.i
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp8.i = icmp eq i8 %7, %9
  br i1 %cmp8.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %si.0122.i)
  %cmp10.i = icmp eq i32 %si.0122.i, -1
  br i1 %cmp10.i, label %if.end.i.for.inc.i_crit_edge, label %if.else.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end.i
  %sub13.i = add nsw i32 %i.0123.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %si.0122.i, i32 %sub13.i)
  %cmp14.not.i = icmp eq i32 %si.0122.i, %sub13.i
  br i1 %cmp14.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %si.1.i = phi i32 [ %si.0122.i, %for.body.i.for.inc.i_crit_edge ], [ %si.0122.i, %if.else.i.for.inc.i_crit_edge ], [ %i.0123.i, %if.end.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0123.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 56
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %si.1.i)
  %cmp19.i = icmp eq i32 %si.1.i, -1
  br i1 %cmp19.i, label %for.end.i.cleanup_crit_edge, label %if.end22.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22.i:                                       ; preds = %for.end.i
  %sub25.i = sub i32 55, %si.1.i
  %arrayidx26.i = getelementptr [96 x i8], ptr %parent_obj, i32 0, i32 %sub25.i
  %10 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %11 to i16
  %arrayidx31.i = getelementptr [96 x i8], ptr %obj, i32 0, i32 %sub25.i
  %12 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx31.i, align 1
  %conv32.i = zext i8 %13 to i16
  %add.i = add nuw i32 %si.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 56, i32 %add.i)
  %cmp33.i = icmp slt i32 %add.i, 56
  br i1 %cmp33.i, label %if.then35.i, label %if.end22.i.if.end54.i_crit_edge

if.end22.i.if.end54.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54.i

if.then35.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub39.i = sub i32 54, %si.1.i
  %arrayidx40.i = getelementptr [96 x i8], ptr %parent_obj, i32 0, i32 %sub39.i
  %14 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx40.i, align 1
  %conv41.i = zext i8 %15 to i16
  %shl.i = shl nuw i16 %conv41.i, 8
  %or.i = or i16 %shl.i, %conv27.i
  %arrayidx48.i = getelementptr [96 x i8], ptr %obj, i32 0, i32 %sub39.i
  %16 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %17 to i16
  %shl50.i = shl nuw i16 %conv49.i, 8
  %or52.i = or i16 %shl50.i, %conv32.i
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then35.i, %if.end22.i.if.end54.i_crit_edge
  %pmask.0.i = phi i16 [ %or.i, %if.then35.i ], [ %conv27.i, %if.end22.i.if.end54.i_crit_edge ]
  %mask.0.i = phi i16 [ %or52.i, %if.then35.i ], [ %conv32.i, %if.end22.i.if.end54.i_crit_edge ]
  %18 = xor i16 %mask.0.i, -1
  %and120.i = and i16 %pmask.0.i, %18
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and120.i)
  %tobool.not.i = icmp eq i16 %and120.i, 0
  br i1 %tobool.not.i, label %if.end59.i, label %if.end54.i.cleanup_crit_edge

if.end54.i.cleanup_crit_edge:                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59.i:                                       ; preds = %if.end54.i
  %neg.i = xor i16 %pmask.0.i, -1
  %and62.i = and i16 %mask.0.i, %neg.i
  %conv64.i = zext i16 %and62.i to i32
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end59.i
  %offset.0.i = phi i32 [ 0, %if.end59.i ], [ %inc68.i, %while.cond.i.while.cond.i_crit_edge ]
  %shl65.i = shl nuw i32 1, %offset.0.i
  %and66.i = and i32 %shl65.i, %conv64.i
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  %inc68.i = add i32 %offset.0.i, 1
  br i1 %tobool67.not.i, label %while.cond.i.while.cond.i_crit_edge, label %while.cond.i.while.cond69.i_crit_edge

while.cond.i.while.cond69.i_crit_edge:            ; preds = %while.cond.i
  br label %while.cond69.i

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

while.cond69.i:                                   ; preds = %while.cond69.i.while.cond69.i_crit_edge, %while.cond.i.while.cond69.i_crit_edge
  %mask.1.i = phi i16 [ %19, %while.cond69.i.while.cond69.i_crit_edge ], [ %and62.i, %while.cond.i.while.cond69.i_crit_edge ]
  %conv70.i = zext i16 %mask.1.i to i32
  %and71.i = and i32 %conv70.i, 1
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  %19 = lshr i16 %mask.1.i, 1
  br i1 %tobool72.not.i, label %while.cond69.i.while.cond69.i_crit_edge, label %while.end77.i

while.cond69.i.while.cond69.i_crit_edge:          ; preds = %while.cond69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond69.i

while.end77.i:                                    ; preds = %while.cond69.i
  %and79.i = and i32 %conv70.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %if.end8, label %while.end77.i.cleanup_crit_edge

while.end77.i.cleanup_crit_edge:                  ; preds = %while.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %while.end77.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 102) #15
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %conv85.i = trunc i16 %mask.1.i to i8
  %mul.i = shl i32 %si.1.i, 3
  %add83.i = add i32 %offset.0.i, %mul.i
  %conv84.i = trunc i32 %add83.i to i16
  %start = getelementptr inbounds %struct.mlxsw_sp_acl_erp_delta, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %start to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv84.i, ptr %start, align 2
  %mask = getelementptr inbounds %struct.mlxsw_sp_acl_erp_delta, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv85.i, ptr %mask, align 4
  %num_deltas.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 11
  %ops.i.i.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i.i, align 4
  %cmp.not.i.i.i = icmp ne ptr %24, @erp_single_mask_ops
  %cmp2.i.i.i = icmp ne ptr %24, @erp_no_mask_ops
  %spec.select.i.i.i = and i1 %cmp.not.i.i.i, %cmp2.i.i.i
  br i1 %spec.select.i.i.i, label %if.end13.if.end3.i.i_crit_edge, label %if.then.i.i

if.end13.if.end3.i.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.i.i

if.then.i.i:                                      ; preds = %if.end13
  %call1.i.i = tail call fastcc i32 @mlxsw_sp_acl_erp_region_table_trans(ptr noundef %1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3thread-pre-split.i.i, label %if.then.i.i.err_erp_delta_inc_crit_edge

if.then.i.i.err_erp_delta_inc_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_erp_delta_inc

if.end3thread-pre-split.i.i:                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr.i.i = load ptr, ptr %ops.i.i.i, align 4
  br label %if.end3.i.i

if.end3.i.i:                                      ; preds = %if.end3thread-pre-split.i.i, %if.end13.if.end3.i.i_crit_edge
  %26 = phi ptr [ %.pr.i.i, %if.end3thread-pre-split.i.i ], [ %24, %if.end13.if.end3.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %26, @erp_multiple_masks_ops
  br i1 %cmp.not.i.i, label %if.end3.i.i.if.end17_crit_edge, label %if.then4.i.i

if.end3.i.i.if.end17_crit_edge:                   ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then4.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @erp_multiple_masks_ops, ptr %ops.i.i.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then4.i.i, %if.end3.i.i.if.end17_crit_edge
  %28 = ptrtoint ptr %num_deltas.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_deltas.i, align 4
  %inc.i.i = add i32 %29, 1
  store i32 %inc.i.i, ptr %num_deltas.i, align 4
  %30 = call ptr @memcpy(ptr %call7.i.i, ptr %obj, i32 97)
  %call20 = tail call fastcc i32 @mlxsw_sp_acl_erp_master_mask_set(ptr noundef %1, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end17.cleanup_crit_edge, label %err_master_mask_set

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_master_mask_set:                              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @__mlxsw_sp_acl_erp_table_other_dec(ptr noundef %1, ptr noundef %num_deltas.i) #11
  br label %err_erp_delta_inc

err_erp_delta_inc:                                ; preds = %err_master_mask_set, %if.then.i.i.err_erp_delta_inc_crit_edge
  %err.0 = phi i32 [ %call20, %err_master_mask_set ], [ %call1.i.i, %if.then.i.i.err_erp_delta_inc_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  %31 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_erp_delta_inc, %if.end17.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %while.end77.i.cleanup_crit_edge, %if.end54.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %31, %err_erp_delta_inc ], [ %call7.i.i, %if.end17.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.end.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end54.i.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %while.end77.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_erp_delta_destroy(ptr nocapture noundef readonly %priv, ptr noundef %delta_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_table1 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %erp_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_table1, align 4
  tail call fastcc void @mlxsw_sp_acl_erp_master_mask_clear(ptr noundef %1, ptr noundef %delta_priv)
  %num_deltas.i = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 11
  tail call fastcc void @__mlxsw_sp_acl_erp_table_other_dec(ptr noundef %1, ptr noundef %num_deltas.i) #11
  tail call void @kfree(ptr noundef %delta_priv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlxsw_sp_acl_erp_root_create(ptr nocapture noundef readonly %priv, ptr noundef %obj, i32 noundef %root_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctcam = getelementptr inbounds %struct.mlxsw_sp_acl_erp_key, ptr %obj, i32 0, i32 1
  %0 = ptrtoint ptr %ctcam to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctcam, align 1, !range !131
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %2 = add i32 %root_id, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %2)
  %3 = icmp ult i32 %2, -17
  %4 = and i1 %3, %tobool.not
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %erp_table1 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %priv, i32 0, i32 7
  %5 = ptrtoint ptr %erp_table1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %erp_table1, align 4
  %ops = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call4 = tail call ptr %10(ptr noundef %6, ptr noundef %obj) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ inttoptr (i32 -105 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_acl_erp_root_destroy(ptr nocapture noundef readonly %priv, ptr noundef %root_priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %erp_table1 = getelementptr inbounds %struct.mlxsw_sp_acl_atcam_region, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %erp_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %erp_table1, align 4
  %ops = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %erp_destroy = getelementptr inbounds %struct.mlxsw_sp_acl_erp_table_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %erp_destroy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %erp_destroy, align 4
  tail call void %5(ptr noundef %1, ptr noundef %root_priv) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @objagg_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mlxsw_core_res_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlxsw_core_res_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_create(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_set_algo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_best_fit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlxsw_sp_acl_bf_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_acl_bf_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_add_owner(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !104, !106, !108, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c", i32 1430, i32 3}
!2 = !{ptr @mlxsw_sp_acl_erp_rehash_hints_get._rs, !1, !"_rs", i1 false, i1 false}
!3 = !{ptr @__func__.mlxsw_sp_acl_erp_rehash_hints_get, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mlxsw_sp_acl_erp_rehash_hints_get._entry, !1, !"_entry", i1 false, i1 false}
!9 = !{ptr @mlxsw_sp_acl_erp_rehash_hints_get._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @erp_single_mask_ops, !11, !"erp_single_mask_ops", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c", i32 110, i32 48}
!12 = !{ptr @erp_multiple_masks_ops, !13, !"erp_multiple_masks_ops", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c", i32 100, i32 48}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__mlxsw_item_offset._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @__mlxsw_item_offset._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3308, i32 1}
!22 = distinct !{null, !21, !"mlxsw_reg_pererp_region_id_item", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3314, i32 1}
!25 = distinct !{null, !24, !"mlxsw_reg_pererp_ctcam_le_item", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3320, i32 1}
!28 = distinct !{null, !27, !"mlxsw_reg_pererp_erpt_pointer_valid_item", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3327, i32 1}
!31 = distinct !{null, !30, !"mlxsw_reg_pererp_erpt_bank_pointer_item", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3336, i32 1}
!34 = distinct !{null, !33, !"mlxsw_reg_pererp_erpt_pointer_item", i1 false, i1 false}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3353, i32 1}
!37 = distinct !{null, !36, !"mlxsw_reg_pererp_master_rp_id_item", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 215, i32 3}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__mlxsw_item_bit_array_offset._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @__mlxsw_item_bit_array_offset._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3345, i32 1}
!45 = distinct !{null, !44, !"mlxsw_reg_pererp_erpt_vector_item", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3301, i32 1}
!48 = !{ptr @mlxsw_reg_pererp, !47, !"mlxsw_reg_pererp", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3253, i32 1}
!51 = distinct !{null, !50, !"mlxsw_reg_percr_region_id_item", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3259, i32 1}
!54 = distinct !{null, !53, !"mlxsw_reg_percr_atcam_ignore_prune_item", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3265, i32 1}
!57 = distinct !{null, !56, !"mlxsw_reg_percr_ctcam_ignore_prune_item", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3274, i32 1}
!60 = distinct !{null, !59, !"mlxsw_reg_percr_bf_bypass_item", i1 false, i1 false}
!61 = distinct !{null, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3282, i32 1}
!63 = distinct !{null, !62, !"mlxsw_reg_percr_master_mask_item", i1 false, i1 false}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3246, i32 1}
!66 = !{ptr @mlxsw_reg_percr, !65, !"mlxsw_reg_percr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2937, i32 1}
!69 = distinct !{null, !68, !"mlxsw_reg_perpt_erpt_bank_item", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2944, i32 1}
!72 = distinct !{null, !71, !"mlxsw_reg_perpt_erpt_index_item", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2956, i32 1}
!75 = distinct !{null, !74, !"mlxsw_reg_perpt_key_size_item", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2965, i32 1}
!78 = distinct !{null, !77, !"mlxsw_reg_perpt_bf_bypass_item", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2971, i32 1}
!81 = distinct !{null, !80, !"mlxsw_reg_perpt_erp_id_item", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2978, i32 1}
!84 = distinct !{null, !83, !"mlxsw_reg_perpt_erpt_base_bank_item", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2985, i32 1}
!87 = distinct !{null, !86, !"mlxsw_reg_perpt_erpt_base_index_item", i1 false, i1 false}
!88 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2991, i32 1}
!90 = distinct !{null, !89, !"mlxsw_reg_perpt_erp_index_in_vector_item", i1 false, i1 false}
!91 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 3005, i32 1}
!93 = distinct !{null, !92, !"mlxsw_reg_perpt_mask_item", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2997, i32 1}
!96 = distinct !{null, !95, !"mlxsw_reg_perpt_erp_vector_item", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2930, i32 1}
!99 = !{ptr @mlxsw_reg_perpt, !98, !"mlxsw_reg_perpt", i1 false, i1 false}
!100 = !{ptr @erp_two_masks_ops, !101, !"erp_two_masks_ops", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c", i32 105, i32 48}
!102 = !{ptr @erp_no_mask_ops, !103, !"erp_no_mask_ops", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c", i32 115, i32 48}
!104 = !{ptr @mlxsw_sp_acl_erp_delta_default, !105, !"mlxsw_sp_acl_erp_delta_default", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c", i32 1139, i32 1}
!106 = !{ptr @mlxsw_sp_acl_erp_hints_check._rs, !107, !"_rs", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c", i32 1393, i32 3}
!108 = !{ptr @__func__.mlxsw_sp_acl_erp_hints_check, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @mlxsw_sp_acl_erp_hints_check._entry, !107, !"_entry", i1 false, i1 false}
!111 = !{ptr @mlxsw_sp_acl_erp_hints_check._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @mlxsw_sp_acl_erp_hints_check._rs.54, !113, !"_rs", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c", i32 1399, i32 3}
!114 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mlxsw_sp_acl_erp_hints_check._entry.55, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @mlxsw_sp_acl_erp_hints_check._entry_ptr.57, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @mlxsw_sp_acl_erp_table_create.__key, !118, !"__key", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c", i32 1338, i32 2}
!119 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @mlxsw_sp_acl_erp_objagg_ops, !121, !"mlxsw_sp_acl_erp_objagg_ops", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_acl_erp.c", i32 1306, i32 32}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{i8 0, i8 2}
!132 = !{!"branch_weights", i32 2000, i32 1}
