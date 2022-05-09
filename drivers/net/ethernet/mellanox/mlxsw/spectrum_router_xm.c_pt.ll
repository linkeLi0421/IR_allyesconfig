; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mlxsw_sp_router_ll_ops = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_fib_entry_op_ctx = type { i8, %struct.list_head, i32, [0 x i32] }
%struct.mlxsw_sp_fib_entry_priv = type { %struct.refcount_struct, %struct.list_head, [0 x i32] }
%struct.mlxsw_sp_fib_entry_op_ctx_xm = type { i8, [160 x i8], i32, i32, i32, [4 x ptr] }
%struct.mlxsw_sp_router_xm_fib_entry = type { i8, ptr, i16, i8, %struct.mlxsw_sp_router_xm_flush_info }
%struct.mlxsw_sp_router_xm_flush_info = type { i8, i32, i16, i8, [16 x i8] }
%struct.mlxsw_sp_router = type { ptr, ptr, %struct.idr, %struct.atomic_t, i8, ptr, %struct.rhashtable, %struct.rhashtable, %struct.rhashtable, %struct.list_head, %struct.anon.169, %struct.anon.170, %struct.delayed_work, %struct.list_head, %struct.list_head, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, %struct.mlxsw_sp_router_nve_decap, %struct.mutex, %struct.work_struct, %struct.list_head, %struct.spinlock, [2 x ptr], ptr, i16, ptr, ptr, i32, %struct.delayed_work, %struct.list_head, i8, %struct.refcount_struct, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.anon.169 = type { [2 x ptr], ptr, i32 }
%struct.anon.170 = type { %struct.delayed_work, i32 }
%struct.mlxsw_sp_router_nve_decap = type { i32, i32, i32, %union.mlxsw_sp_l3addr, i8 }
%union.mlxsw_sp_l3addr = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mlxsw_sp_router_xm = type { i8, i8, i32, %struct.rhashtable, %struct.rhashtable, i32, i8 }
%struct.mlxsw_sp_router_xm_ltable_node = type { %struct.rhash_head, i16, i8, %struct.refcount_struct, [17 x i32] }
%struct.rhash_head = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mlxsw_sp_router_xm_flush_node = type { %struct.rhash_head, %struct.list_head, %struct.mlxsw_sp_router_xm_flush_info, %struct.delayed_work, ptr, i32, i32, %struct.refcount_struct }
%struct.mlxsw_bus_info = type { ptr, ptr, ptr, %struct.mlxsw_fw_rev, [208 x i8], [16 x i8], i8, i8, [4 x i8] }
%struct.mlxsw_fw_rev = type { i16, i16, i16, i16 }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }

@mlxsw_sp_router_ll_xm_ops = dso_local constant { %struct.mlxsw_sp_router_ll_ops, [44 x i8] } { %struct.mlxsw_sp_router_ll_ops { ptr @mlxsw_sp_router_ll_xm_init, ptr @mlxsw_sp_router_ll_xm_ralta_write, ptr @mlxsw_sp_router_ll_xm_ralst_write, ptr @mlxsw_sp_router_ll_xm_raltb_write, i32 192, i32 40, ptr @mlxsw_sp_router_ll_xm_fib_entry_pack, ptr @mlxsw_sp_router_ll_xm_fib_entry_act_remote_pack, ptr @mlxsw_sp_router_ll_xm_fib_entry_act_local_pack, ptr @mlxsw_sp_router_ll_xm_fib_entry_act_ip2me_pack, ptr @mlxsw_sp_router_ll_xm_fib_entry_act_ip2me_tun_pack, ptr @mlxsw_sp_router_ll_xm_fib_entry_commit, ptr @mlxsw_sp_router_ll_xm_fib_entry_is_committed }, [44 x i8] zeroinitializer }, align 32
@mlxsw_reg_xltq = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 30722, i16 44, ptr @.str.114 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_xm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 756, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid XM device id\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlxsw_sp_router_xm_init\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_xm_init._entry_ptr = internal global ptr @mlxsw_sp_router_xm_init._entry, section ".printk_index", align 4
@mlxsw_sp_router_xm_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 762, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unexpected M-index size\0A\00", [39 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_xm_init._entry_ptr.7 = internal global ptr @mlxsw_sp_router_xm_init._entry.5, section ".printk_index", align 4
@mlxsw_sp_router_xm_m_val = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\10\00", [30 x i8] zeroinitializer }, align 32
@mlxsw_reg_rxltm = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -32687, i16 20, ptr @.str.129 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_xm_ltable_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 2, i16 4, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_xm_flush_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 28, i16 12, i16 0, i32 0, i16 0, i8 1, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlxsw_reg_rxlte = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -32688, i16 12, ptr @.str.17 }, [24 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 35, ptr null, ptr null }, align 1
@.str.8 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_rxlte_virtual_router\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_rxlte_protocol\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_rxlte_lpm_xlt_en\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxlte\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_reg_xralta = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 30737, i16 8, ptr @.str.18 }, [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xralta\00", [25 x i8] zeroinitializer }, align 32
@mlxsw_reg_xralst = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 30738, i16 264, ptr @.str.19 }, [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xralst\00", [25 x i8] zeroinitializer }, align 32
@mlxsw_reg_xraltb = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 30739, i16 8, ptr @.str.20 }, [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xraltb\00", [25 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_ll_xm_fib_entry_pack.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_router_ll_xm_fib_entry_pack.__already_done.21 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_sp_router_ll_xm_fib_entry_pack.__already_done.22 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlxsw_reg_xmdr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 30723, i16 160, ptr @.str.23 }, [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xmdr\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_xmdr_bulk_entry\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_xmdr_num_rec\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_xmdr_c_cmd_id\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_xmdr_c_seq_number\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_xmdr_c_ltr_op\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reg_xmdr_c_ltr_virtual_router\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_xmdr_c_ltr_prefix_len\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_xmdr_c_ltr_entry_type\00", [38 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_xmdr_c_ltr_bmp_len\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_xmdr_c_ltr_dip4\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_ll_xm_mindex_get6.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.45 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_xmdr_c_ltr_action_type\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_xmdr_c_ltr_trap_action\00", [37 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"reg_xmdr_c_ltr_trap_id_num\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"reg_xmdr_c_ltr_adjacency_index\00", [33 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_xmdr_c_ltr_ecmp_size\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_xmdr_c_ltr_erif\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"reg_xmdr_c_ltr_pointer_to_tunnel\00", [63 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_ll_xm_fib_entry_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 675, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid XMDR number of records\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mlxsw_sp_router_ll_xm_fib_entry_commit\00", [57 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_ll_xm_fib_entry_commit._entry_ptr = internal global ptr @mlxsw_sp_router_ll_xm_fib_entry_commit._entry, section ".printk_index", align 4
@mlxsw_sp_router_ll_xm_fib_entry_commit._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 681, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Command send over XMDR failed\0A\00", [33 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_ll_xm_fib_entry_commit._entry_ptr.63 = internal global ptr @mlxsw_sp_router_ll_xm_fib_entry_commit._entry.61, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.68 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.69 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.71 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.72 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@mlxsw_reg_xrmt = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 30736, i16 20, ptr @.str.77 }, [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_xrmt_index\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_xrmt_l0_val\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xrmt\00", [27 x i8] zeroinitializer }, align 32
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.78 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.80 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.82 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__mlxsw_item_bit_array_offset._entry = internal constant %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.10, i32 216, ptr null, ptr null }, align 1
@.str.83 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,element_size=%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__mlxsw_item_bit_array_offset\00", [34 x i8] zeroinitializer }, align 32
@__mlxsw_item_bit_array_offset._entry_ptr = internal global ptr @__mlxsw_item_bit_array_offset._entry, section ".printk_index", align 4
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_xmdr_reply_vect\00", [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_xm_ml_entries_cache_flush._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 632, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to flush XM cache\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mlxsw_sp_router_xm_ml_entries_cache_flush\00", [54 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_xm_ml_entries_cache_flush._entry_ptr = internal global ptr @mlxsw_sp_router_xm_ml_entries_cache_flush._entry, section ".printk_index", align 4
@__const.mlxsw_sp_router_xm_cache_flush_schedule.flush_all_info = private unnamed_addr constant { i8, [3 x i8], i32, i16, i8, [16 x i8], [1 x i8] } { i8 1, [3 x i8] zeroinitializer, i32 0, i16 0, i8 0, [16 x i8] zeroinitializer, [1 x i8] zeroinitializer }, align 4
@mlxsw_sp_router_xm_cache_flush_schedule.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&(&flush_node->dw)->work)\00", [52 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_xm_cache_flush_schedule.__key.89 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&flush_node->dw)->timer\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mlxsw_reg_rlpmce = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -32682, i16 4, ptr @.str.98 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_xm_cache_flush_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.91, ptr @.str.2, i32 401, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mlxsw_sp_router_xm_cache_flush_work\00", [60 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_xm_cache_flush_work._entry_ptr = internal global ptr @mlxsw_sp_router_xm_cache_flush_work._entry, section ".printk_index", align 4
@mlxsw_reg_rlcmld = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 -32683, i16 48, ptr @.str.113 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_xm_cache_flush_work._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.91, ptr @.str.2, i32 439, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_xm_cache_flush_work._entry_ptr.93 = internal global ptr @mlxsw_sp_router_xm_cache_flush_work._entry.92, section ".printk_index", align 4
@.str.94 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg_rlpmce_flush\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"reg_rlpmce_disable\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rlpmce\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg_rlcmld_select\00", [46 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_rlcmld_filter_fields\00", [39 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_rlcmld_protocol\00", [44 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_rlcmld_virtual_router\00", [38 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_rlcmld_dip4\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_rlcmld_dip_mask4\00", [43 x i8] zeroinitializer }, align 32
@mlxsw_sp_router_xm_flush_mask6.mask = internal global { [16 x i8], [16 x i8] } zeroinitializer, align 32
@.str.113 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rlcmld\00", [25 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.114 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xltq\00", [27 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_xltq_xm_device_id\00", [42 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_xltq_xlt_cap_ipv4_lpm\00", [38 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reg_xltq_xlt_cap_ipv6_lpm\00", [38 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reg_xltq_cap_xlt_entries\00", [39 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reg_xltq_cap_xlt_mtable\00", [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_rxltm_m0_val_v6\00", [44 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_rxltm_m0_val_v4\00", [44 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rxltm\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.132 = private unnamed_addr constant [26 x i8] c"mlxsw_sp_router_ll_xm_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 714, i32 37 }
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_xltq\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 756, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 762, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant [25 x i8] c"mlxsw_sp_router_xm_m_val\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 15, i32 17 }
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_rxltm\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [36 x i8] c"mlxsw_sp_router_xm_ltable_ht_params\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 40, i32 39 }
@___asan_gen_.171 = private unnamed_addr constant [35 x i8] c"mlxsw_sp_router_xm_flush_ht_params\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 298, i32 39 }
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_rxlte\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 33, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8811, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8821, i32 1 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8826, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8804, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"mlxsw_reg_xralta\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9382, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"mlxsw_reg_xralst\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9404, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"mlxsw_reg_xraltb\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9435, i32 1 }
@___asan_gen_.216 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_xmdr\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9090, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9098, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9107, i32 1 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9137, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9141, i32 1 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9154, i32 1 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9178, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9183, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9196, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9190, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9242, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9207, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9160, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9172, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9219, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9234, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9213, i32 1 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9226, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 675, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 681, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 695, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 594, i32 8 }
@___asan_gen_.301 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 723, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 755, i32 10 }
@___asan_gen_.306 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_xrmt\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9358, i32 1 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9363, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9351, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 215, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9119, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 632, i32 4 }
@___asan_gen_.342 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 505, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [17 x i8] c"mlxsw_reg_rlpmce\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 401, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"mlxsw_reg_rlcmld\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 439, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8995, i32 1 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9003, i32 1 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8987, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8891, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8903, i32 1 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8913, i32 1 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8920, i32 1 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8927, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8936, i32 1 }
@___asan_gen_.390 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@___asan_gen_.391 = private constant [60 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.391, i32 366, i32 23 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8879, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9026, i32 1 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9037, i32 1 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9042, i32 1 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9047, i32 1 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9054, i32 1 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 9060, i32 1 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8853, i32 1 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8860, i32 1 }
@___asan_gen_.420 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 8846, i32 1 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__mlxsw_item_bit_array_offset._entry, ptr @__mlxsw_item_bit_array_offset._entry_ptr, ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_router_ll_xm_fib_entry_commit._entry, ptr @mlxsw_sp_router_ll_xm_fib_entry_commit._entry.61, ptr @mlxsw_sp_router_ll_xm_fib_entry_commit._entry_ptr, ptr @mlxsw_sp_router_ll_xm_fib_entry_commit._entry_ptr.63, ptr @mlxsw_sp_router_xm_cache_flush_work._entry, ptr @mlxsw_sp_router_xm_cache_flush_work._entry.92, ptr @mlxsw_sp_router_xm_cache_flush_work._entry_ptr, ptr @mlxsw_sp_router_xm_cache_flush_work._entry_ptr.93, ptr @mlxsw_sp_router_xm_init._entry, ptr @mlxsw_sp_router_xm_init._entry.5, ptr @mlxsw_sp_router_xm_init._entry_ptr, ptr @mlxsw_sp_router_xm_init._entry_ptr.7, ptr @mlxsw_sp_router_xm_ml_entries_cache_flush._entry, ptr @mlxsw_sp_router_xm_ml_entries_cache_flush._entry_ptr, ptr @mlxsw_sp_router_ll_xm_ops, ptr @mlxsw_reg_xltq, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @mlxsw_sp_router_xm_m_val, ptr @mlxsw_reg_rxltm, ptr @mlxsw_sp_router_xm_ltable_ht_params, ptr @mlxsw_sp_router_xm_flush_ht_params, ptr @mlxsw_reg_rxlte, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @mlxsw_reg_xralta, ptr @.str.18, ptr @mlxsw_reg_xralst, ptr @.str.19, ptr @mlxsw_reg_xraltb, ptr @.str.20, ptr @mlxsw_reg_xmdr, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @mlxsw_reg_xrmt, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @mlxsw_sp_router_xm_cache_flush_schedule.__key, ptr @.str.88, ptr @mlxsw_sp_router_xm_cache_flush_schedule.__key.89, ptr @.str.90, ptr @mlxsw_reg_rlpmce, ptr @.str.91, ptr @mlxsw_reg_rlcmld, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @mlxsw_sp_router_xm_flush_mask6.mask, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.129], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_ll_xm_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_xltq to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_xm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_xm_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_xm_m_val to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_rxltm to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_xm_ltable_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_xm_flush_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_rxlte to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_xralta to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_xralst to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_xraltb to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_xmdr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_ll_xm_fib_entry_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_ll_xm_fib_entry_commit._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_xrmt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_xm_ml_entries_cache_flush._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_xm_cache_flush_schedule.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_xm_cache_flush_schedule.__key.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_rlpmce to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_xm_cache_flush_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_rlcmld to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_xm_cache_flush_work._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_router_xm_flush_mask6.mask to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_router_ll_xm_init(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %vr_id, i32 noundef %proto) #0 align 64 {
entry:
  %rxlte_pl = alloca [12 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %rxlte_pl) #12
  %0 = call ptr @memset(ptr %rxlte_pl, i32 0, i32 12)
  %conv1.i = zext i16 %vr_id to i32
  %1 = ptrtoint ptr %rxlte_pl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %rxlte_pl, align 4
  %and7.i.i.i = and i32 %2, -65536
  %or.i.i.i = or i32 %and7.i.i.i, %conv1.i
  store i32 %or.i.i.i, ptr %rxlte_pl, align 4
  %and6.i.i24.i = and i32 %proto, 15
  %arrayidx.i.i25.i = getelementptr inbounds i32, ptr %rxlte_pl, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i25.i, align 4
  %and7.i.i27.i = and i32 %4, -16
  %or.i.i28.i = or i32 %and6.i.i24.i, %and7.i.i27.i
  store i32 %or.i.i28.i, ptr %arrayidx.i.i25.i, align 4
  %arrayidx.i.i52.i = getelementptr inbounds i32, ptr %rxlte_pl, i32 2
  %5 = ptrtoint ptr %arrayidx.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i52.i, align 4
  %or.i.i55.i = or i32 %6, 1
  store i32 %or.i.i55.i, ptr %arrayidx.i.i52.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %8, ptr noundef nonnull @mlxsw_reg_rxlte, ptr noundef nonnull %rxlte_pl) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %rxlte_pl) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_router_ll_xm_ralta_write(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef %xralta_pl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call i32 @mlxsw_reg_write(ptr noundef %1, ptr noundef nonnull @mlxsw_reg_xralta, ptr noundef %xralta_pl) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_router_ll_xm_ralst_write(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef %xralst_pl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call i32 @mlxsw_reg_write(ptr noundef %1, ptr noundef nonnull @mlxsw_reg_xralst, ptr noundef %xralst_pl) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_router_ll_xm_raltb_write(ptr nocapture noundef readonly %mlxsw_sp, ptr noundef %xraltb_pl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call i32 @mlxsw_reg_write(ptr noundef %1, ptr noundef nonnull @mlxsw_reg_xraltb, ptr noundef %xraltb_pl) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_router_ll_xm_fib_entry_pack(ptr nocapture noundef %op_ctx, i32 noundef %proto, i32 noundef %op, i16 noundef zeroext %virtual_router, i8 noundef zeroext %prefix_len, ptr noundef readonly %addr, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_priv = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 0, i32 3
  %priv1 = getelementptr inbounds %struct.mlxsw_sp_fib_entry_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %op_ctx to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %op_ctx, align 4
  %1 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mlxsw_sp_router_ll_xm_op_ctx_check_init.exit_crit_edge

entry.mlxsw_sp_router_ll_xm_op_ctx_check_init.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_ll_xm_op_ctx_check_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set.i = or i8 %bf.load.i, 64
  %2 = ptrtoint ptr %op_ctx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set.i, ptr %op_ctx, align 4
  %xmdr_pl.i = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 1
  %3 = call ptr @memset(ptr %xmdr_pl.i, i32 0, i32 160)
  %arrayidx.i.i.i.i = getelementptr %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %or.i.i.i.i = or i32 %5, 256
  store i32 %or.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  %trans_offset.i = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 1
  %6 = ptrtoint ptr %trans_offset.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %trans_offset.i, align 4
  %entries_count.i = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 2
  %7 = ptrtoint ptr %entries_count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %entries_count.i, align 4
  br label %mlxsw_sp_router_ll_xm_op_ctx_check_init.exit

mlxsw_sp_router_ll_xm_op_ctx_check_init.exit:     ; preds = %if.end.i, %entry.mlxsw_sp_router_ll_xm_op_ctx_check_init.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %op)
  %switch = icmp ult i32 %op, 3
  br i1 %switch, label %sw.epilog, label %land.end

land.end:                                         ; preds = %mlxsw_sp_router_ll_xm_op_ctx_check_init.exit
  %.b231 = load i1, ptr @mlxsw_sp_router_ll_xm_fib_entry_pack.__already_done, align 1
  br i1 %.b231, label %land.end.cleanup_crit_edge, label %if.then, !prof !268

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlxsw_sp_router_ll_xm_fib_entry_pack.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 157, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

sw.epilog:                                        ; preds = %mlxsw_sp_router_ll_xm_op_ctx_check_init.exit
  %8 = zext i32 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %proto, label %land.end57 [
    i32 0, label %sw.bb37
    i32 1, label %sw.bb40
  ]

sw.bb37:                                          ; preds = %sw.epilog
  %xmdr_pl = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 1
  %trans_offset = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 1
  %9 = ptrtoint ptr %trans_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %trans_offset, align 4
  %entries_count = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 2
  %11 = ptrtoint ptr %entries_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %entries_count, align 4
  %conv = trunc i32 %12 to i16
  tail call fastcc void @mlxsw_reg_xmdr_c_ltr_pack(ptr noundef %xmdr_pl, i32 noundef %10, i32 noundef 48, i16 noundef zeroext %conv, i32 noundef %op, i16 noundef zeroext %virtual_router, i8 noundef zeroext %prefix_len) #12
  %tobool.not.i232 = icmp eq ptr %addr, null
  br i1 %tobool.not.i232, label %sw.bb37.mlxsw_reg_xmdr_c_ltr_pack4.exit_crit_edge, label %if.then.i

sw.bb37.mlxsw_reg_xmdr_c_ltr_pack4.exit_crit_edge: ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_reg_xmdr_c_ltr_pack4.exit

if.then.i:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i = getelementptr %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 1, i32 32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %10
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %add.ptr1.i, i32 7
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.i.i.i, align 4
  br label %mlxsw_reg_xmdr_c_ltr_pack4.exit

mlxsw_reg_xmdr_c_ltr_pack4.exit:                  ; preds = %if.then.i, %sw.bb37.mlxsw_reg_xmdr_c_ltr_pack4.exit_crit_edge
  %16 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr, align 4
  %shr.i = lshr i32 %17, 16
  %conv.i = trunc i32 %shr.i to i16
  br label %sw.epilog99

sw.bb40:                                          ; preds = %sw.epilog
  %xmdr_pl41 = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 1
  %trans_offset43 = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 1
  %18 = ptrtoint ptr %trans_offset43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %trans_offset43, align 4
  %entries_count44 = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 2
  %20 = ptrtoint ptr %entries_count44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %entries_count44, align 4
  %conv45 = trunc i32 %21 to i16
  tail call fastcc void @mlxsw_reg_xmdr_c_ltr_pack(ptr noundef %xmdr_pl41, i32 noundef %19, i32 noundef 49, i16 noundef zeroext %conv45, i32 noundef %op, i16 noundef zeroext %virtual_router, i8 noundef zeroext %prefix_len) #12
  %tobool.not.i234 = icmp eq ptr %addr, null
  br i1 %tobool.not.i234, label %sw.bb40.mlxsw_reg_xmdr_c_ltr_pack6.exit_crit_edge, label %if.then.i242

sw.bb40.mlxsw_reg_xmdr_c_ltr_pack6.exit_crit_edge: ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_reg_xmdr_c_ltr_pack6.exit

if.then.i242:                                     ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i235 = getelementptr %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 1, i32 32
  %add.ptr1.i236 = getelementptr i8, ptr %add.ptr.i235, i32 %19
  %arrayidx.i.i.i240 = getelementptr i8, ptr %add.ptr1.i236, i32 28
  %22 = call ptr @memcpy(ptr %arrayidx.i.i.i240, ptr %addr, i32 16)
  br label %mlxsw_reg_xmdr_c_ltr_pack6.exit

mlxsw_reg_xmdr_c_ltr_pack6.exit:                  ; preds = %if.then.i242, %sw.bb40.mlxsw_reg_xmdr_c_ltr_pack6.exit_crit_edge
  %.b1.i = load i1, ptr @mlxsw_sp_router_ll_xm_mindex_get6.__already_done, align 1
  br i1 %.b1.i, label %mlxsw_reg_xmdr_c_ltr_pack6.exit.sw.epilog99_crit_edge, label %if.then.i244, !prof !268

mlxsw_reg_xmdr_c_ltr_pack6.exit.sw.epilog99_crit_edge: ; preds = %mlxsw_reg_xmdr_c_ltr_pack6.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog99

if.then.i244:                                     ; preds = %mlxsw_reg_xmdr_c_ltr_pack6.exit
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlxsw_sp_router_ll_xm_mindex_get6.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 115, i32 noundef 9, ptr noundef null) #12
  br label %sw.epilog99

land.end57:                                       ; preds = %sw.epilog
  %.b227230 = load i1, ptr @mlxsw_sp_router_ll_xm_fib_entry_pack.__already_done.21, align 1
  br i1 %.b227230, label %land.end57.cleanup_crit_edge, label %if.then64, !prof !268

land.end57.cleanup_crit_edge:                     ; preds = %land.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then64:                                        ; preds = %land.end57
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlxsw_sp_router_ll_xm_fib_entry_pack.__already_done.21, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 175, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

sw.epilog99:                                      ; preds = %if.then.i244, %mlxsw_reg_xmdr_c_ltr_pack6.exit.sw.epilog99_crit_edge, %mlxsw_reg_xmdr_c_ltr_pack4.exit
  %.sink = phi i16 [ %conv.i, %mlxsw_reg_xmdr_c_ltr_pack4.exit ], [ 0, %mlxsw_reg_xmdr_c_ltr_pack6.exit.sw.epilog99_crit_edge ], [ 0, %if.then.i244 ]
  %len.0 = phi i32 [ 32, %mlxsw_reg_xmdr_c_ltr_pack4.exit ], [ 48, %mlxsw_reg_xmdr_c_ltr_pack6.exit.sw.epilog99_crit_edge ], [ 48, %if.then.i244 ]
  %mindex48 = getelementptr inbounds %struct.mlxsw_sp_fib_entry_priv, ptr %priv, i32 1, i32 1, i32 1
  %23 = ptrtoint ptr %mindex48 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %.sink, ptr %mindex48, align 4
  %trans_offset100 = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 1
  %24 = ptrtoint ptr %trans_offset100 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %trans_offset100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool101.not = icmp eq i32 %25, 0
  %trans_item_len = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 1, i32 1
  br i1 %tobool101.not, label %if.then102, label %if.else

if.then102:                                       ; preds = %sw.epilog99
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %trans_item_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %len.0, ptr %trans_item_len, align 4
  br label %if.end158

if.else:                                          ; preds = %sw.epilog99
  %27 = ptrtoint ptr %trans_item_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %trans_item_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %len.0)
  %cmp.not = icmp eq i32 %28, %len.0
  br i1 %cmp.not, label %if.else.if.end158_crit_edge, label %land.rhs112

if.else.if.end158_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

land.rhs112:                                      ; preds = %if.else
  %.b228229 = load i1, ptr @mlxsw_sp_router_ll_xm_fib_entry_pack.__already_done.22, align 1
  br i1 %.b228229, label %land.rhs112.if.end158_crit_edge, label %if.then123, !prof !268

land.rhs112.if.end158_crit_edge:                  ; preds = %land.rhs112
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158

if.then123:                                       ; preds = %land.rhs112
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @mlxsw_sp_router_ll_xm_fib_entry_pack.__already_done.22, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 181, i32 noundef 9, ptr noundef null) #12
  br label %if.end158

if.end158:                                        ; preds = %if.then123, %land.rhs112.if.end158_crit_edge, %if.else.if.end158_crit_edge, %if.then102
  %entries = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 12
  %entries_count159 = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 2
  %29 = ptrtoint ptr %entries_count159 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %entries_count159, align 4
  %arrayidx = getelementptr [4 x ptr], ptr %entries, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %priv1, ptr %arrayidx, align 4
  %arrayidx161 = getelementptr [2 x i8], ptr @mlxsw_sp_router_xm_m_val, i32 0, i32 %proto
  %32 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx161, align 1
  %34 = tail call i8 @llvm.usub.sat.i8(i8 %prefix_len, i8 %33)
  %lvalue = getelementptr inbounds %struct.mlxsw_sp_router_xm_fib_entry, ptr %priv1, i32 0, i32 3
  %35 = ptrtoint ptr %lvalue to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %lvalue, align 2
  %flush_info169 = getelementptr inbounds %struct.mlxsw_sp_fib_entry_priv, ptr %priv, i32 2
  %proto170 = getelementptr inbounds %struct.mlxsw_sp_fib_entry_priv, ptr %priv, i32 2, i32 1
  %36 = ptrtoint ptr %proto170 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %proto, ptr %proto170, align 4
  %virtual_router171 = getelementptr inbounds %struct.mlxsw_sp_fib_entry_priv, ptr %priv, i32 2, i32 1, i32 1
  %37 = ptrtoint ptr %virtual_router171 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %virtual_router, ptr %virtual_router171, align 4
  %prefix_len172 = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_info, ptr %flush_info169, i32 0, i32 3
  %38 = ptrtoint ptr %prefix_len172 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %prefix_len, ptr %prefix_len172, align 2
  %tobool173.not = icmp eq ptr %addr, null
  %addr178 = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_info, ptr %flush_info169, i32 0, i32 4
  br i1 %tobool173.not, label %if.else177, label %if.then174

if.then174:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  %39 = call ptr @memcpy(ptr %addr178, ptr %addr, i32 16)
  br label %cleanup

if.else177:                                       ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #14
  %40 = call ptr @memset(ptr %addr178, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.else177, %if.then174, %if.then64, %land.end57.cleanup_crit_edge, %if.then, %land.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_router_ll_xm_fib_entry_act_remote_pack(ptr nocapture noundef %op_ctx, i32 noundef %trap_action, i16 noundef zeroext %trap_id, i32 noundef %adjacency_index, i16 noundef zeroext %ecmp_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_priv = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 0, i32 3
  %trans_offset = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 1
  %0 = ptrtoint ptr %trans_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trans_offset, align 4
  %conv = zext i16 %trap_id to i32
  %add.ptr.i = getelementptr %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 1, i32 32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %1
  %arrayidx.i.i.i = getelementptr i32, ptr %add.ptr1.i, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %3, -16
  %or.i.i.i = or i32 %and7.i.i.i, 1
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %spec.select.i.i24.i = shl i32 %trap_action, 20
  %and6.i.i29.i = and i32 %spec.select.i.i24.i, 15728640
  %arrayidx.i.i30.i = getelementptr i32, ptr %add.ptr1.i, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i30.i, align 4
  %and7.i.i32.i = and i32 %5, -16711681
  %or.i.i33.i = or i32 %and6.i.i29.i, %and7.i.i32.i
  %spec.select.i.i52.i = shl nuw i32 %conv, 16
  %and6.i.i57.i = and i32 %spec.select.i.i52.i, 983040
  %arrayidx.i.i58.i = getelementptr i32, ptr %add.ptr1.i, i32 1
  %or.i.i61.i = or i32 %and6.i.i57.i, %or.i.i33.i
  %6 = ptrtoint ptr %arrayidx.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i.i61.i, ptr %arrayidx.i.i58.i, align 4
  %and6.i.i85.i = and i32 %adjacency_index, 16777215
  %arrayidx.i.i86.i = getelementptr i32, ptr %add.ptr1.i, i32 4
  %7 = ptrtoint ptr %arrayidx.i.i86.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i86.i, align 4
  %and7.i.i88.i = and i32 %8, -16777216
  %or.i.i89.i = or i32 %and6.i.i85.i, %and7.i.i88.i
  store i32 %or.i.i89.i, ptr %arrayidx.i.i86.i, align 4
  %conv.i = zext i16 %ecmp_size to i32
  %arrayidx.i.i114.i = getelementptr i32, ptr %add.ptr1.i, i32 5
  %9 = ptrtoint ptr %arrayidx.i.i114.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %arrayidx.i.i114.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_router_ll_xm_fib_entry_act_local_pack(ptr nocapture noundef %op_ctx, i32 noundef %trap_action, i16 noundef zeroext %trap_id, i16 noundef zeroext %local_erif) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_priv = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 0, i32 3
  %trans_offset = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 1
  %0 = ptrtoint ptr %trans_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trans_offset, align 4
  %conv = zext i16 %trap_id to i32
  %add.ptr.i = getelementptr %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 1, i32 32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %1
  %arrayidx.i.i.i = getelementptr i32, ptr %add.ptr1.i, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %3, -16
  store i32 %and7.i.i.i, ptr %arrayidx.i.i.i, align 4
  %spec.select.i.i.i = shl i32 %trap_action, 20
  %and6.i.i.i = and i32 %spec.select.i.i.i, 15728640
  %arrayidx.i.i27.i = getelementptr i32, ptr %add.ptr1.i, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i27.i, align 4
  %and7.i.i29.i = and i32 %5, -16711681
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i29.i
  %spec.select.i.i48.i = shl nuw i32 %conv, 16
  %and6.i.i53.i = and i32 %spec.select.i.i48.i, 983040
  %arrayidx.i.i54.i = getelementptr i32, ptr %add.ptr1.i, i32 1
  %or.i.i57.i = or i32 %and6.i.i53.i, %or.i.i.i
  %6 = ptrtoint ptr %arrayidx.i.i54.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i.i57.i, ptr %arrayidx.i.i54.i, align 4
  %conv.i = zext i16 %local_erif to i32
  %arrayidx.i.i82.i = getelementptr i32, ptr %add.ptr1.i, i32 4
  %7 = ptrtoint ptr %arrayidx.i.i82.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i82.i, align 4
  %and7.i.i84.i = and i32 %8, -65536
  %or.i.i85.i = or i32 %and7.i.i84.i, %conv.i
  store i32 %or.i.i85.i, ptr %arrayidx.i.i82.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_router_ll_xm_fib_entry_act_ip2me_pack(ptr nocapture noundef %op_ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_priv = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 0, i32 3
  %trans_offset = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 1
  %0 = ptrtoint ptr %trans_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trans_offset, align 4
  %add.ptr.i = getelementptr %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 1, i32 32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %1
  %arrayidx.i.i.i = getelementptr i32, ptr %add.ptr1.i, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %3, -16
  %or.i.i.i = or i32 %and7.i.i.i, 2
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i27.i = getelementptr i32, ptr %add.ptr1.i, i32 4
  %4 = ptrtoint ptr %arrayidx.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i27.i, align 4
  %or.i.i30.i = or i32 %5, 16777215
  store i32 %or.i.i30.i, ptr %arrayidx.i.i27.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_router_ll_xm_fib_entry_act_ip2me_tun_pack(ptr nocapture noundef %op_ctx, i32 noundef %tunnel_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_priv = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 0, i32 3
  %trans_offset = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 1
  %0 = ptrtoint ptr %trans_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trans_offset, align 4
  %add.ptr.i = getelementptr %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 1, i32 32
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %1
  %arrayidx.i.i.i = getelementptr i32, ptr %add.ptr1.i, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %3, -16
  %or.i.i.i = or i32 %and7.i.i.i, 2
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %and6.i.i26.i = and i32 %tunnel_ptr, 16777215
  %arrayidx.i.i27.i = getelementptr i32, ptr %add.ptr1.i, i32 4
  %4 = ptrtoint ptr %arrayidx.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i27.i, align 4
  %and7.i.i29.i = and i32 %5, -16777216
  %or.i.i30.i = or i32 %and6.i.i26.i, %and7.i.i29.i
  store i32 %or.i.i30.i, ptr %arrayidx.i.i27.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_router_ll_xm_fib_entry_commit(ptr noundef %mlxsw_sp, ptr noundef %op_ctx, ptr noundef writeonly %postponed_for_bulk) #0 align 64 {
entry:
  %flush_all_info.i.i = alloca %struct.mlxsw_sp_router_xm_flush_info, align 4
  %mindex.addr.i.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_priv = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 0, i32 3
  %trans_item_len = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 1, i32 1
  %0 = ptrtoint ptr %trans_item_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trans_item_len, align 4
  %trans_offset = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 1
  %2 = ptrtoint ptr %trans_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trans_offset, align 4
  %add = add i32 %3, %1
  store i32 %add, ptr %trans_offset, align 4
  %entries_count = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 11, i32 2
  %4 = ptrtoint ptr %entries_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %entries_count, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %entries_count, align 4
  %6 = ptrtoint ptr %op_ctx to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %op_ctx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool.not = icmp slt i8 %bf.load, 0
  %add3 = add i32 %add, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %add3)
  %cmp = icmp ult i32 %add3, 129
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %tobool5.not = icmp eq ptr %postponed_for_bulk, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %postponed_for_bulk to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %postponed_for_bulk, align 1
  br label %cleanup

if.end7:                                          ; preds = %entry
  %event = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 0, i32 2
  %8 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8 = icmp eq i32 %9, 0
  br i1 %cmp8, label %if.then10, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then10:                                        ; preds = %if.end7
  %10 = ptrtoint ptr %entries_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %entries_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp26.not.i = icmp eq i32 %11, 0
  br i1 %cmp26.not.i, label %if.then10.if.end14_crit_edge, label %for.body.lr.ph.i

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

for.body.lr.ph.i:                                 ; preds = %if.then10
  %router.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %mlxsw_sp_router_xm_ml_entry_add.exit.thread.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %mlxsw_sp_router_xm_ml_entry_add.exit.thread.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 5, i32 %i.027.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %router.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %router.i.i, align 4
  %xm.i.i = getelementptr inbounds %struct.mlxsw_sp_router, ptr %15, i32 0, i32 30
  %16 = ptrtoint ptr %xm.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xm.i.i, align 4
  %lvalue1.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_fib_entry, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %lvalue1.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %lvalue1.i.i, align 2
  %mindex.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_fib_entry, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %mindex.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mindex.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mindex.addr.i.i.i) #12
  %22 = ptrtoint ptr %mindex.addr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %mindex.addr.i.i.i, align 2
  %ltable_ht.i.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %17, i32 0, i32 3
  %call.i.i.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %ltable_ht.i.i.i, ptr noundef nonnull %mindex.addr.i.i.i, [7 x i32] [i32 2, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i
  %refcnt.i.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_ltable_node, ptr %call.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #12
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #12, !srcloc !269
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !270

if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %24 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i.i.i = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.mlxsw_sp_router_xm_ltable_node_get.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !268

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.mlxsw_sp_router_xm_ltable_node_get.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_ltable_node_get.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %mlxsw_sp_router_xm_ltable_node_get.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 80) #15
  %tobool2.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %mlxsw_sp_router_xm_ltable_node_get.exit.thread.i.i, label %if.end5.i.i.i

mlxsw_sp_router_xm_ltable_node_get.exit.thread.i.i: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mindex.addr.i.i.i) #12
  br label %mlxsw_sp_router_xm_ml_entry_add.exit.i

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  %26 = ptrtoint ptr %mindex.addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mindex.addr.i.i.i, align 2
  %mindex6.i.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_ltable_node, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %mindex6.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %mindex6.i.i.i, align 4
  %refcnt7.i.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_ltable_node, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt7.i.i.i, i32 noundef 4) #12
  %29 = ptrtoint ptr %refcnt7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile i32 1, ptr %refcnt7.i.i.i, align 8
  %call9.i.i.i = call fastcc i32 @rhashtable_insert_fast(ptr noundef %ltable_ht.i.i.i, ptr noundef nonnull %call7.i.i.i.i.i, [7 x i32] [i32 2, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.end5.i.i.i.mlxsw_sp_router_xm_ltable_node_get.exit.i.i_crit_edge, label %err_insert.i.i.i

if.end5.i.i.i.mlxsw_sp_router_xm_ltable_node_get.exit.i.i_crit_edge: ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_ltable_node_get.exit.i.i

err_insert.i.i.i:                                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #12
  %30 = inttoptr i32 %call9.i.i.i to ptr
  br label %mlxsw_sp_router_xm_ltable_node_get.exit.i.i

mlxsw_sp_router_xm_ltable_node_get.exit.i.i:      ; preds = %err_insert.i.i.i, %if.end5.i.i.i.mlxsw_sp_router_xm_ltable_node_get.exit.i.i_crit_edge, %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.mlxsw_sp_router_xm_ltable_node_get.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %30, %err_insert.i.i.i ], [ %call7.i.i.i.i.i, %if.end5.i.i.i.mlxsw_sp_router_xm_ltable_node_get.exit.i.i_crit_edge ], [ %call.i.i.i, %if.else.i.i.i.i.i.i.mlxsw_sp_router_xm_ltable_node_get.exit.i.i_crit_edge ], [ %call.i.i.i, %if.end15.sink.split.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mindex.addr.i.i.i) #12
  %cmp.i.i.i = icmp ugt ptr %retval.0.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %mlxsw_sp_router_xm_ltable_node_get.exit.i.i.mlxsw_sp_router_xm_ml_entry_add.exit.i_crit_edge, label %if.end.i.i

mlxsw_sp_router_xm_ltable_node_get.exit.i.i.mlxsw_sp_router_xm_ml_entry_add.exit.i_crit_edge: ; preds = %mlxsw_sp_router_xm_ltable_node_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_ml_entry_add.exit.i

if.end.i.i:                                       ; preds = %mlxsw_sp_router_xm_ltable_node_get.exit.i.i
  %conv.i.i = zext i8 %19 to i32
  %current_lvalue.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_ltable_node, ptr %retval.0.i.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %current_lvalue.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %current_lvalue.i.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %32)
  %cmp.i.i = icmp ugt i8 %19, %32
  br i1 %cmp.i.i, label %if.then6.i.i, label %if.end.i.i.mlxsw_sp_router_xm_ml_entry_add.exit.thread.i_crit_edge

if.end.i.i.mlxsw_sp_router_xm_ml_entry_add.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_ml_entry_add.exit.thread.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  %33 = ptrtoint ptr %current_lvalue.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %19, ptr %current_lvalue.i.i, align 2
  %call8.i.i = call fastcc i32 @mlxsw_sp_router_xm_ltable_lvalue_set(ptr noundef %mlxsw_sp, ptr noundef %retval.0.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool.not.i.i, label %if.end10.i.i, label %err_lvalue_set.i.i

if.end10.i.i:                                     ; preds = %if.then6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %prefix_len.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_fib_entry, ptr %13, i32 0, i32 4, i32 3
  %34 = ptrtoint ptr %prefix_len.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 16, ptr %prefix_len.i.i, align 2
  br label %mlxsw_sp_router_xm_ml_entry_add.exit.thread.i

mlxsw_sp_router_xm_ml_entry_add.exit.thread.i:    ; preds = %if.end10.i.i, %if.end.i.i.mlxsw_sp_router_xm_ml_entry_add.exit.thread.i_crit_edge
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_router_xm_ltable_node, ptr %retval.0.i.i.i, i32 0, i32 4, i32 %conv.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i, align 4
  %inc.i.i = add i32 %36, 1
  store i32 %inc.i.i, ptr %arrayidx.i.i, align 4
  %ltable_node12.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_fib_entry, ptr %13, i32 0, i32 1
  %37 = ptrtoint ptr %ltable_node12.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i.i.i, ptr %ltable_node12.i.i, align 4
  %inc.i = add nuw i32 %i.027.i, 1
  %38 = ptrtoint ptr %entries_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %entries_count, align 4
  %cmp.i = icmp ult i32 %inc.i, %39
  br i1 %cmp.i, label %mlxsw_sp_router_xm_ml_entry_add.exit.thread.i.for.body.i_crit_edge, label %mlxsw_sp_router_xm_ml_entry_add.exit.thread.i.if.end14_crit_edge

mlxsw_sp_router_xm_ml_entry_add.exit.thread.i.if.end14_crit_edge: ; preds = %mlxsw_sp_router_xm_ml_entry_add.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

mlxsw_sp_router_xm_ml_entry_add.exit.thread.i.for.body.i_crit_edge: ; preds = %mlxsw_sp_router_xm_ml_entry_add.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

err_lvalue_set.i.i:                               ; preds = %if.then6.i.i
  %refcnt.i31.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_ltable_node, ptr %retval.0.i.i.i, i32 0, i32 3
  %call.i.i.i.i.i.i32.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i31.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !271
  call void @llvm.prefetch.p0(ptr %refcnt.i31.i.i, i32 1, i32 3, i32 1) #12
  %40 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i31.i.i, ptr %refcnt.i31.i.i, i32 1, ptr elementtype(i32) %refcnt.i31.i.i) #12, !srcloc !272
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.end.i35.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %err_lvalue_set.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i33.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i33.i.i, label %if.end5.i.i.i.i.i.i.for.cond1.preheader.i_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !268

if.end5.i.i.i.i.i.i.for.cond1.preheader.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond1.preheader.i

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt.i31.i.i, i32 noundef 3) #12
  br label %for.cond1.preheader.i

if.end.i35.i.i:                                   ; preds = %err_lvalue_set.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !273
  call fastcc void @rhashtable_remove_fast(ptr noundef %ltable_ht.i.i.i, ptr noundef %retval.0.i.i.i, [7 x i32] [i32 2, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @kfree(ptr noundef %retval.0.i.i.i) #12
  br label %for.cond1.preheader.i

mlxsw_sp_router_xm_ml_entry_add.exit.i:           ; preds = %mlxsw_sp_router_xm_ltable_node_get.exit.i.i.mlxsw_sp_router_xm_ml_entry_add.exit.i_crit_edge, %mlxsw_sp_router_xm_ltable_node_get.exit.thread.i.i
  %retval.0.i38.i.i = phi ptr [ inttoptr (i32 -12 to ptr), %mlxsw_sp_router_xm_ltable_node_get.exit.thread.i.i ], [ %retval.0.i.i.i, %mlxsw_sp_router_xm_ltable_node_get.exit.i.i.mlxsw_sp_router_xm_ml_entry_add.exit.i_crit_edge ]
  %41 = ptrtoint ptr %retval.0.i38.i.i to i32
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %mlxsw_sp_router_xm_ml_entry_add.exit.i, %if.end.i35.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.for.cond1.preheader.i_crit_edge
  %retval.0.i38.i = phi i32 [ %call8.i.i, %if.end5.i.i.i.i.i.i.for.cond1.preheader.i_crit_edge ], [ %call8.i.i, %if.then10.i.i.i.i.i.i ], [ %call8.i.i, %if.end.i35.i.i ], [ %41, %mlxsw_sp_router_xm_ml_entry_add.exit.i ]
  %i.130.i = add i32 %i.027.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.130.i)
  %cmp231.i = icmp sgt i32 %i.130.i, -1
  br i1 %cmp231.i, label %for.cond1.preheader.i.for.body3.i_crit_edge, label %for.cond1.preheader.i.out_crit_edge

for.cond1.preheader.i.out_crit_edge:              ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %i.132.i = phi i32 [ %i.1.i, %for.body3.i.for.body3.i_crit_edge ], [ %i.130.i, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 5, i32 %i.132.i
  %42 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx5.i, align 4
  call fastcc void @mlxsw_sp_router_xm_ml_entry_del(ptr noundef %mlxsw_sp, ptr noundef %43) #12
  %i.1.i = add nsw i32 %i.132.i, -1
  %cmp2.i.not = icmp eq i32 %i.132.i, 0
  br i1 %cmp2.i.not, label %for.body3.i.out_crit_edge, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.i

for.body3.i.out_crit_edge:                        ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end14:                                         ; preds = %mlxsw_sp_router_xm_ml_entry_add.exit.thread.i.if.end14_crit_edge, %if.then10.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %44 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %core, align 4
  %xmdr_pl = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 1
  %call16 = call i32 @mlxsw_reg_write(ptr noundef %45, ptr noundef nonnull @mlxsw_reg_xmdr, ptr noundef %xmdr_pl) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %mlxsw_reg_xmdr_num_rec_get.exit, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

mlxsw_reg_xmdr_num_rec_get.exit:                  ; preds = %if.end14
  %arrayidx.i.i85 = getelementptr %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 1, i32 4
  %46 = ptrtoint ptr %arrayidx.i.i85 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i85, align 4
  %and4.i.i = and i32 %47, 15
  %48 = ptrtoint ptr %entries_count to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %entries_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and4.i.i, i32 %49)
  %cmp26 = icmp ugt i32 %and4.i.i, %49
  br i1 %cmp26, label %mlxsw_reg_xmdr_num_rec_get.exit.out.sink.split_crit_edge, label %for.cond.preheader

mlxsw_reg_xmdr_num_rec_get.exit.out.sink.split_crit_edge: ; preds = %mlxsw_reg_xmdr_num_rec_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

for.cond.preheader:                               ; preds = %mlxsw_reg_xmdr_num_rec_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %cmp31148.not = icmp eq i32 %and4.i.i, 0
  br i1 %cmp31148.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %entries = getelementptr inbounds %struct.mlxsw_sp_fib_entry_op_ctx, ptr %op_ctx, i32 12
  br label %for.body

for.body:                                         ; preds = %if.else.for.body_crit_edge, %for.body.lr.ph
  %i.0149 = phi i32 [ 0, %for.body.lr.ph ], [ %inc45, %if.else.for.body_crit_edge ]
  %50 = and i32 %i.0149, 7
  %51 = trunc i32 %i.0149 to i16
  %52 = sub i16 31, %51
  %53 = lshr i16 %52, 3
  %conv60.i.i.i = add nuw nsw i16 %53, 8
  %idxprom.i.i = zext i16 %conv60.i.i.i to i32
  %arrayidx.i.i92 = getelementptr i8, ptr %xmdr_pl, i32 %idxprom.i.i
  %54 = ptrtoint ptr %arrayidx.i.i92 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i.i92, align 1
  %conv1.i.i94 = zext i8 %55 to i32
  %56 = shl i32 1, %50
  %57 = and i32 %56, %conv1.i.i94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool37.not = icmp eq i32 %57, 0
  br i1 %tobool37.not, label %for.body.out.sink.split_crit_edge, label %if.else

for.body.out.sink.split_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.sink.split

if.else:                                          ; preds = %for.body
  %arrayidx = getelementptr [4 x ptr], ptr %entries, i32 0, i32 %i.0149
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %59, align 4
  %inc45 = add nuw nsw i32 %i.0149, 1
  %exitcond.not = icmp eq i32 %inc45, %and4.i.i
  br i1 %exitcond.not, label %if.else.for.end_crit_edge, label %if.else.for.body_crit_edge

if.else.for.body_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.else.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %61 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp47 = icmp eq i32 %62, 3
  %63 = ptrtoint ptr %entries_count to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %entries_count, align 4
  br i1 %cmp47, label %if.then49, label %for.end.if.end50_crit_edge

for.end.if.end50_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.then49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp4.not.i = icmp eq i32 %64, 0
  br i1 %cmp4.not.i, label %if.then49.out_crit_edge, label %if.then49.for.body.i100_crit_edge

if.then49.for.body.i100_crit_edge:                ; preds = %if.then49
  br label %for.body.i100

if.then49.out_crit_edge:                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.i100:                                    ; preds = %for.body.i100.for.body.i100_crit_edge, %if.then49.for.body.i100_crit_edge
  %i.05.i = phi i32 [ %inc.i98, %for.body.i100.for.body.i100_crit_edge ], [ 0, %if.then49.for.body.i100_crit_edge ]
  %arrayidx.i97 = getelementptr %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 5, i32 %i.05.i
  %65 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i97, align 4
  call fastcc void @mlxsw_sp_router_xm_ml_entry_del(ptr noundef %mlxsw_sp, ptr noundef %66) #12
  %inc.i98 = add nuw i32 %i.05.i, 1
  %67 = ptrtoint ptr %entries_count to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %entries_count, align 4
  %cmp.i99 = icmp ult i32 %inc.i98, %68
  br i1 %cmp.i99, label %for.body.i100.for.body.i100_crit_edge, label %for.body.i100.if.end50_crit_edge

for.body.i100.if.end50_crit_edge:                 ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

for.body.i100.for.body.i100_crit_edge:            ; preds = %for.body.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i100

if.end50:                                         ; preds = %for.body.i100.if.end50_crit_edge, %for.end.if.end50_crit_edge
  %69 = phi i32 [ %64, %for.end.if.end50_crit_edge ], [ %68, %for.body.i100.if.end50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp7.not.i = icmp eq i32 %69, 0
  br i1 %cmp7.not.i, label %if.end50.out_crit_edge, label %for.body.lr.ph.i103

if.end50.out_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.body.lr.ph.i103:                              ; preds = %if.end50
  %router.i.i102 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 10
  %bus_info.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  br label %for.body.i109

for.body.i109:                                    ; preds = %for.inc.i.for.body.i109_crit_edge, %for.body.lr.ph.i103
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i103 ], [ %inc.i133, %for.inc.i.for.body.i109_crit_edge ]
  %arrayidx.i104 = getelementptr %struct.mlxsw_sp_fib_entry_op_ctx_xm, ptr %ll_priv, i32 0, i32 5, i32 %i.08.i
  %70 = ptrtoint ptr %arrayidx.i104 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i104, align 4
  %flush_info.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_fib_entry, ptr %71, i32 0, i32 4
  %call.i.i.i105 = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %call.i.i.i105)
  %cmp.i.i.i106 = icmp ult i32 %call.i.i.i105, 50
  %spec.select.i.i.i = select i1 %cmp.i.i.i106, i32 1073741822, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %flush_all_info.i.i) #12
  %72 = call ptr @memcpy(ptr %flush_all_info.i.i, ptr @__const.mlxsw_sp_router_xm_cache_flush_schedule.flush_all_info, i32 28)
  %73 = ptrtoint ptr %router.i.i102 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %router.i.i102, align 4
  %xm.i.i107 = getelementptr inbounds %struct.mlxsw_sp_router, ptr %74, i32 0, i32 30
  %75 = ptrtoint ptr %xm.i.i107 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %xm.i.i107, align 4
  %flush_count.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %76, i32 0, i32 5
  %77 = ptrtoint ptr %flush_count.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flush_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %78)
  %cmp.i.i108 = icmp eq i32 %78, 15
  br i1 %cmp.i.i108, label %if.then.i.i, label %for.body.i109.if.end.i.i112_crit_edge

for.body.i109.if.end.i.i112_crit_edge:            ; preds = %for.body.i109
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i112

if.then.i.i:                                      ; preds = %for.body.i109
  call void @__sanitizer_cov_trace_pc() #14
  %flush_all_mode.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %76, i32 0, i32 6
  %79 = ptrtoint ptr %flush_all_mode.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %flush_all_mode.i.i, align 4
  br label %if.end.i.i112

if.end.i.i112:                                    ; preds = %if.then.i.i, %for.body.i109.if.end.i.i112_crit_edge
  %flush_all_mode1.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %76, i32 0, i32 6
  %80 = ptrtoint ptr %flush_all_mode1.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %flush_all_mode1.i.i, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i.i110 = icmp eq i8 %81, 0
  %spec.select.i.i111 = select i1 %tobool.not.i.i110, ptr %flush_info.i, ptr %flush_all_info.i.i
  %82 = call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i.i.i = and i32 %82, -16384
  %83 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %85, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !275
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i60.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i60.i.i, label %if.end.i.i112.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i112.rcu_read_lock.exit.i.i_crit_edge:   ; preds = %if.end.i.i112
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i112
  %call1.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i113 = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i113, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i114

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i114:                                 ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 696, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i114, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i.i112.rcu_read_lock.exit.i.i_crit_edge
  %flush_ht.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %76, i32 0, i32 4
  %call4.i.i = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %flush_ht.i.i, ptr noundef %spec.select.i.i111, [7 x i32] [i32 28, i32 786432, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  %tobool.not.i61.i.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool.not.i61.i.i, label %rcu_read_lock.exit.i.i.mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i_crit_edge, label %if.end.i.i.i119

rcu_read_lock.exit.i.i.mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i_crit_edge: ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i

if.end.i.i.i119:                                  ; preds = %rcu_read_lock.exit.i.i
  %refcnt.i.i.i115 = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %call4.i.i, i32 0, i32 7
  %call.i.i.i.i.i.i.i.i116 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i115, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %refcnt.i.i.i115, i32 1, i32 3, i32 1) #12
  %86 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i115, ptr %refcnt.i.i.i115, i32 1, ptr elementtype(i32) %refcnt.i.i.i115) #12, !srcloc !269
  %asmresult.i.i.i.i.i.i.i.i117 = extractvalue { i32, i32, i32 } %86, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i117)
  %tobool1.not.i.i.i.i.i.i118 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i117, 0
  br i1 %tobool1.not.i.i.i.i.i.i118, label %if.end.i.i.i119.if.end15.sink.split.i.i.i.i.i.i124_crit_edge, label %if.else.i.i.i.i.i.i122, !prof !270

if.end.i.i.i119.if.end15.sink.split.i.i.i.i.i.i124_crit_edge: ; preds = %if.end.i.i.i119
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i124

if.else.i.i.i.i.i.i122:                           ; preds = %if.end.i.i.i119
  %add.i.i.i.i.i.i120 = add i32 %asmresult.i.i.i.i.i.i.i.i117, 1
  %87 = or i32 %add.i.i.i.i.i.i120, %asmresult.i.i.i.i.i.i.i.i117
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %87)
  %.not.i.i.i.i.i.i121 = icmp sgt i32 %87, -1
  br i1 %.not.i.i.i.i.i.i121, label %if.else.i.i.i.i.i.i122.mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i122.if.end15.sink.split.i.i.i.i.i.i124_crit_edge, !prof !268

if.else.i.i.i.i.i.i122.if.end15.sink.split.i.i.i.i.i.i124_crit_edge: ; preds = %if.else.i.i.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i124

if.else.i.i.i.i.i.i122.mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i122
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i

if.end15.sink.split.i.i.i.i.i.i124:               ; preds = %if.else.i.i.i.i.i.i122.if.end15.sink.split.i.i.i.i.i.i124_crit_edge, %if.end.i.i.i119.if.end15.sink.split.i.i.i.i.i.i124_crit_edge
  %.sink.i.i.i.i.i.i123 = phi i32 [ 2, %if.end.i.i.i119.if.end15.sink.split.i.i.i.i.i.i124_crit_edge ], [ 1, %if.else.i.i.i.i.i.i122.if.end15.sink.split.i.i.i.i.i.i124_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i115, i32 noundef %.sink.i.i.i.i.i.i123) #12
  br label %mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i

mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i: ; preds = %if.end15.sink.split.i.i.i.i.i.i124, %if.else.i.i.i.i.i.i122.mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i_crit_edge, %rcu_read_lock.exit.i.i.mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i_crit_edge
  %call.i62.i.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i62.i.i, label %mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i65.i.i

mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i65.i.i:                            ; preds = %mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i
  %call1.i63.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63.i.i)
  %tobool.not.i64.i.i = icmp eq i32 %call1.i63.i.i, 0
  br i1 %tobool.not.i64.i.i, label %land.lhs.true.i65.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i67.i.i

land.lhs.true.i65.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i67.i.i:                           ; preds = %land.lhs.true.i65.i.i
  %.b4.i66.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i66.i.i, label %land.lhs.true2.i67.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i68.i.i

land.lhs.true2.i67.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i.i

if.then.i68.i.i:                                  ; preds = %land.lhs.true2.i67.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.69) #12
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i68.i.i, %land.lhs.true2.i67.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i65.i.i.rcu_read_unlock.exit.i.i_crit_edge, %mlxsw_sp_router_xm_cache_flush_node_hold.exit.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !276
  %88 = call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i69.i.i = and i32 %88, -16384
  %89 = inttoptr i32 %and.i.i.i.i.i69.i.i to ptr
  %preempt_count.i.i.i.i70.i.i = getelementptr inbounds %struct.thread_info, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %preempt_count.i.i.i.i70.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %preempt_count.i.i.i.i70.i.i, align 4
  %sub.i.i.i.i.i = add i32 %91, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i70.i.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br i1 %tobool.not.i61.i.i, label %rcu_read_unlock.exit.i.i.mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i_crit_edge, label %land.lhs.true.i.i

rcu_read_unlock.exit.i.i.mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i_crit_edge: ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_unlock.exit.i.i
  %call.i.i.i.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %call.i.i.i.i, 500
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i, i32 1073741822, i32 1
  %call.i6.i.i.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %call.i6.i.i.i)
  %cmp.i7.i.i.i = icmp ult i32 %call.i6.i.i.i, 50
  %spec.select.i8.neg10.i.i.i = select i1 %cmp.i7.i.i.i, i32 -1073741822, i32 -1
  %start_jiffies.i.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %call4.i.i, i32 0, i32 5
  %92 = ptrtoint ptr %start_jiffies.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %start_jiffies.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %.neg9.i.i.i = add i32 %93, %spec.select.i.i.i.i
  %add.i.i.i = sub i32 %.neg9.i.i.i, %94
  %sub2.i.i.i = add i32 %add.i.i.i, %spec.select.i8.neg10.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2.i.i.i)
  %cmp.i71.i.i = icmp slt i32 %sub2.i.i.i, 0
  br i1 %cmp.i71.i.i, label %land.lhs.true.i72.i.i, label %land.lhs.true.i.i.lor.lhs.false.i84.i.i_crit_edge

land.lhs.true.i.i.lor.lhs.false.i84.i.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i84.i.i

land.lhs.true.i72.i.i:                            ; preds = %land.lhs.true.i.i
  %dw.i.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %call4.i.i, i32 0, i32 3
  %call3.i.i.i = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dw.i.i.i) #12
  br i1 %call3.i.i.i, label %lor.lhs.false.i.i.i128, label %land.lhs.true.i72.i.i.lor.lhs.false.i84.i.i_crit_edge

land.lhs.true.i72.i.i.lor.lhs.false.i84.i.i_crit_edge: ; preds = %land.lhs.true.i72.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i84.i.i

lor.lhs.false.i.i.i128:                           ; preds = %land.lhs.true.i72.i.i
  %reuses.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %call4.i.i, i32 0, i32 6
  %95 = ptrtoint ptr %reuses.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %reuses.i.i, align 4
  %inc.i.i125 = add i32 %96, 1
  store i32 %inc.i.i125, ptr %reuses.i.i, align 4
  %refcnt.i75.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %call4.i.i, i32 0, i32 7
  %call.i.i.i.i.i.i76.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i75.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !271
  call void @llvm.prefetch.p0(ptr %refcnt.i75.i.i, i32 1, i32 3, i32 1) #12
  %97 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i75.i.i, ptr %refcnt.i75.i.i, i32 1, ptr elementtype(i32) %refcnt.i75.i.i) #12, !srcloc !272
  %asmresult.i.i.i.i.i.i.i.i.i126 = extractvalue { i32, i32, i32 } %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i126)
  %cmp.i.i.i.i.i.i127 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i126, 1
  br i1 %cmp.i.i.i.i.i.i127, label %if.end.i78.i.i, label %if.end5.i.i.i.i.i.i129

if.end5.i.i.i.i.i.i129:                           ; preds = %lor.lhs.false.i.i.i128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i126)
  %.not.i.i.i.i77.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i126, 0
  br i1 %.not.i.i.i.i77.i.i, label %if.end5.i.i.i.i.i.i129.mlxsw_sp_router_xm_cache_flush_schedule.exit.thread.i_crit_edge, label %if.then10.i.i.i.i.i.i130, !prof !268

if.end5.i.i.i.i.i.i129.mlxsw_sp_router_xm_cache_flush_schedule.exit.thread.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i129
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_cache_flush_schedule.exit.thread.i

if.then10.i.i.i.i.i.i130:                         ; preds = %if.end5.i.i.i.i.i.i129
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt.i75.i.i, i32 noundef 3) #12
  br label %mlxsw_sp_router_xm_cache_flush_schedule.exit.thread.i

if.end.i78.i.i:                                   ; preds = %lor.lhs.false.i.i.i128
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @kfree(ptr noundef nonnull %call4.i.i) #12
  br label %mlxsw_sp_router_xm_cache_flush_schedule.exit.thread.i

lor.lhs.false.i84.i.i:                            ; preds = %land.lhs.true.i72.i.i.lor.lhs.false.i84.i.i_crit_edge, %land.lhs.true.i.i.lor.lhs.false.i84.i.i_crit_edge
  %refcnt.i80.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %call4.i.i, i32 0, i32 7
  %call.i.i.i.i.i.i81.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i80.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !271
  call void @llvm.prefetch.p0(ptr %refcnt.i80.i.i, i32 1, i32 3, i32 1) #12
  %98 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i80.i.i, ptr %refcnt.i80.i.i, i32 1, ptr elementtype(i32) %refcnt.i80.i.i) #12, !srcloc !272
  %asmresult.i.i.i.i.i.i.i82.i.i = extractvalue { i32, i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i82.i.i)
  %cmp.i.i.i.i83.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i82.i.i, 1
  br i1 %cmp.i.i.i.i83.i.i, label %if.end.i88.i.i, label %if.end5.i.i.i.i86.i.i

if.end5.i.i.i.i86.i.i:                            ; preds = %lor.lhs.false.i84.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i82.i.i)
  %.not.i.i.i.i85.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i82.i.i, 0
  br i1 %.not.i.i.i.i85.i.i, label %if.end5.i.i.i.i86.i.i.mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i_crit_edge, label %if.then10.i.i.i.i87.i.i, !prof !268

if.end5.i.i.i.i86.i.i.mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i_crit_edge: ; preds = %if.end5.i.i.i.i86.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i

if.then10.i.i.i.i87.i.i:                          ; preds = %if.end5.i.i.i.i86.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt.i80.i.i, i32 noundef 3) #12
  br label %mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i

if.end.i88.i.i:                                   ; preds = %lor.lhs.false.i84.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @kfree(ptr noundef nonnull %call4.i.i) #12
  br label %mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i

mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i: ; preds = %if.end.i88.i.i, %if.then10.i.i.i.i87.i.i, %if.end5.i.i.i.i86.i.i.mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i_crit_edge, %rcu_read_unlock.exit.i.i.mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i_crit_edge
  %99 = ptrtoint ptr %router.i.i102 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %router.i.i102, align 4
  %xm.i.i.i = getelementptr inbounds %struct.mlxsw_sp_router, ptr %100, i32 0, i32 30
  %101 = ptrtoint ptr %xm.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %xm.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %103 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i.i131 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %103, i32 noundef 3520, i32 noundef 156) #15
  %tobool.not.i90.i.i = icmp eq ptr %call7.i.i.i.i.i131, null
  br i1 %tobool.not.i90.i.i, label %mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i.mlxsw_sp_router_xm_cache_flush_schedule.exit.i_crit_edge, label %if.end.i92.i.i

mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i.mlxsw_sp_router_xm_cache_flush_schedule.exit.i_crit_edge: ; preds = %mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_cache_flush_schedule.exit.i

if.end.i92.i.i:                                   ; preds = %mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i
  %flush_info2.i.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %call7.i.i.i.i.i131, i32 0, i32 2
  %104 = call ptr @memcpy(ptr %flush_info2.i.i.i, ptr %spec.select.i.i111, i32 28)
  %flush_ht.i.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %102, i32 0, i32 4
  %call3.i91.i.i = call fastcc i32 @rhashtable_insert_fast(ptr noundef %flush_ht.i.i.i, ptr noundef nonnull %call7.i.i.i.i.i131, [7 x i32] [i32 28, i32 786432, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i91.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i91.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end7.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i92.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i131) #12
  %105 = inttoptr i32 %call3.i91.i.i to ptr
  br label %mlxsw_sp_router_xm_cache_flush_node_create.exit.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i92.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %flush_count.i.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %102, i32 0, i32 5
  %106 = ptrtoint ptr %flush_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flush_count.i.i.i, align 4
  %inc.i.i.i = add i32 %107, 1
  store i32 %inc.i.i.i, ptr %flush_count.i.i.i, align 4
  %mlxsw_sp8.i.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %call7.i.i.i.i.i131, i32 0, i32 4
  %108 = ptrtoint ptr %mlxsw_sp8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %mlxsw_sp, ptr %mlxsw_sp8.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %109 = load volatile i32, ptr @jiffies, align 128
  %start_jiffies.i93.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %call7.i.i.i.i.i131, i32 0, i32 5
  %110 = ptrtoint ptr %start_jiffies.i93.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %start_jiffies.i93.i.i, align 8
  %refcnt.i94.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %call7.i.i.i.i.i131, i32 0, i32 7
  %call.i.i.i.i.i.i132 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i94.i.i, i32 noundef 4) #12
  %111 = ptrtoint ptr %refcnt.i94.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile i32 1, ptr %refcnt.i94.i.i, align 8
  br label %mlxsw_sp_router_xm_cache_flush_node_create.exit.i.i

mlxsw_sp_router_xm_cache_flush_node_create.exit.i.i: ; preds = %if.end7.i.i.i, %if.then5.i.i.i
  %retval.0.i95.i.i = phi ptr [ %105, %if.then5.i.i.i ], [ %call7.i.i.i.i.i131, %if.end7.i.i.i ]
  %cmp.i96.i.i = icmp ugt ptr %retval.0.i95.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i96.i.i, label %mlxsw_sp_router_xm_cache_flush_node_create.exit.i.i.mlxsw_sp_router_xm_cache_flush_schedule.exit.i_crit_edge, label %do.body14.i.i

mlxsw_sp_router_xm_cache_flush_node_create.exit.i.i.mlxsw_sp_router_xm_cache_flush_schedule.exit.i_crit_edge: ; preds = %mlxsw_sp_router_xm_cache_flush_node_create.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_cache_flush_schedule.exit.i

do.body14.i.i:                                    ; preds = %mlxsw_sp_router_xm_cache_flush_node_create.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %dw.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %retval.0.i95.i.i, i32 0, i32 3
  call void @__init_work(ptr noundef %dw.i.i, i32 noundef 0) #12
  %112 = ptrtoint ptr %dw.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -64, ptr %dw.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %retval.0.i95.i.i, i32 0, i32 3, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.88, ptr noundef nonnull @mlxsw_sp_router_xm_cache_flush_schedule.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry21.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %retval.0.i95.i.i, i32 0, i32 3, i32 0, i32 1
  %113 = ptrtoint ptr %entry21.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %entry21.i.i, ptr %entry21.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %retval.0.i95.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %114 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %entry21.i.i, ptr %prev.i.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %retval.0.i95.i.i, i32 0, i32 3, i32 0, i32 2
  %115 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @mlxsw_sp_router_xm_cache_flush_work, ptr %func.i.i, align 4
  %timer.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %retval.0.i95.i.i, i32 0, i32 3, i32 1
  call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.90, ptr noundef nonnull @mlxsw_sp_router_xm_cache_flush_schedule.__key.89) #12
  br label %mlxsw_sp_router_xm_cache_flush_schedule.exit.thread.i

mlxsw_sp_router_xm_cache_flush_schedule.exit.thread.i: ; preds = %do.body14.i.i, %if.end.i78.i.i, %if.then10.i.i.i.i.i.i130, %if.end5.i.i.i.i.i.i129.mlxsw_sp_router_xm_cache_flush_schedule.exit.thread.i_crit_edge
  %flush_node.0.i.i = phi ptr [ %retval.0.i95.i.i, %do.body14.i.i ], [ %call4.i.i, %if.end5.i.i.i.i.i.i129.mlxsw_sp_router_xm_cache_flush_schedule.exit.thread.i_crit_edge ], [ %call4.i.i, %if.then10.i.i.i.i.i.i130 ], [ %call4.i.i, %if.end.i78.i.i ]
  %dw30.i.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_flush_node, ptr %flush_node.0.i.i, i32 0, i32 3
  %call31.i.i = call i32 @mlxsw_core_schedule_dw(ptr noundef %dw30.i.i, i32 noundef %spec.select.i.i.i) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %flush_all_info.i.i) #12
  br label %for.inc.i

mlxsw_sp_router_xm_cache_flush_schedule.exit.i:   ; preds = %mlxsw_sp_router_xm_cache_flush_node_create.exit.i.i.mlxsw_sp_router_xm_cache_flush_schedule.exit.i_crit_edge, %mlxsw_sp_router_xm_cache_flush_node_put.exit89.i.i.mlxsw_sp_router_xm_cache_flush_schedule.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %flush_all_info.i.i) #12
  %116 = ptrtoint ptr %bus_info.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bus_info.i, align 4
  %dev.i = getelementptr inbounds %struct.mlxsw_bus_info, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %119, ptr noundef nonnull @.str.86) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %mlxsw_sp_router_xm_cache_flush_schedule.exit.i, %mlxsw_sp_router_xm_cache_flush_schedule.exit.thread.i
  %inc.i133 = add nuw i32 %i.08.i, 1
  %120 = ptrtoint ptr %entries_count to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %entries_count, align 4
  %cmp.i134 = icmp ult i32 %inc.i133, %121
  br i1 %cmp.i134, label %for.inc.i.for.body.i109_crit_edge, label %for.inc.i.out_crit_edge

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

for.inc.i.for.body.i109_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i109

out.sink.split:                                   ; preds = %for.body.out.sink.split_crit_edge, %mlxsw_reg_xmdr_num_rec_get.exit.out.sink.split_crit_edge
  %.str.62.sink = phi ptr [ @.str.59, %mlxsw_reg_xmdr_num_rec_get.exit.out.sink.split_crit_edge ], [ @.str.62, %for.body.out.sink.split_crit_edge ]
  %bus_info42 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %122 = ptrtoint ptr %bus_info42 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %bus_info42, align 4
  %dev43 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev43, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull %.str.62.sink) #16
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc.i.out_crit_edge, %if.end50.out_crit_edge, %if.then49.out_crit_edge, %if.end14.out_crit_edge, %for.body3.i.out_crit_edge, %for.cond1.preheader.i.out_crit_edge
  %err.0 = phi i32 [ %call16, %if.end14.out_crit_edge ], [ 0, %if.end50.out_crit_edge ], [ %retval.0.i38.i, %for.cond1.preheader.i.out_crit_edge ], [ 0, %if.then49.out_crit_edge ], [ -5, %out.sink.split ], [ 0, %for.inc.i.out_crit_edge ], [ %retval.0.i38.i, %for.body3.i.out_crit_edge ]
  %126 = ptrtoint ptr %op_ctx to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load51 = load i8, ptr %op_ctx, align 4
  %bf.clear = and i8 %bf.load51, -65
  store i8 %bf.clear, ptr %op_ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %if.then6 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp_router_ll_xm_fib_entry_is_committed(ptr nocapture noundef readonly %priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.mlxsw_sp_fib_entry_priv, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv1, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_router_xm_init(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  %rxltm_pl = alloca [20 x i8], align 1
  %xltq_pl = alloca [44 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %rxltm_pl) #12
  %0 = call ptr @memset(ptr %rxltm_pl, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %xltq_pl) #12
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %1 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus_info, align 4
  %xm_exists = getelementptr inbounds %struct.mlxsw_bus_info, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %xm_exists to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %xm_exists, align 4
  %4 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 472) #15
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = call ptr @memset(ptr %xltq_pl, i32 0, i32 44)
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 4
  %call5 = call i32 @mlxsw_reg_query(ptr noundef %8, ptr noundef nonnull @mlxsw_reg_xltq, ptr noundef nonnull %xltq_pl) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.err_xltq_query_crit_edge

if.end3.err_xltq_query_crit_edge:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_xltq_query

if.end8:                                          ; preds = %if.end3
  %ipv6_supported = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %call7.i.i, i32 0, i32 1
  %entries_size = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %call7.i.i, i32 0, i32 2
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %xltq_pl, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv.i = trunc i32 %10 to i16
  %arrayidx.i.i26.i = getelementptr inbounds i32, ptr %xltq_pl, i32 4
  %11 = ptrtoint ptr %arrayidx.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i26.i, align 4
  %13 = trunc i32 %12 to i8
  %14 = and i8 %13, 1
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %call7.i.i, align 8
  %16 = trunc i32 %12 to i8
  %17 = lshr i8 %16, 1
  %18 = and i8 %17, 1
  %19 = ptrtoint ptr %ipv6_supported to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %ipv6_supported, align 1
  %arrayidx.i.i76.i = getelementptr inbounds i32, ptr %xltq_pl, i32 8
  %20 = ptrtoint ptr %arrayidx.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i76.i, align 4
  %22 = ptrtoint ptr %entries_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %entries_size, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12431, i16 %conv.i)
  %cmp.not = icmp eq i16 %conv.i, -12431
  br i1 %cmp.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str) #16
  br label %err_xltq_query

if.end13:                                         ; preds = %if.end8
  %arrayidx.i.i101.i = getelementptr inbounds i32, ptr %xltq_pl, i32 9
  %27 = ptrtoint ptr %arrayidx.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i101.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %28)
  %cmp14.not = icmp eq i32 %28, 65536
  br i1 %cmp14.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bus_info, align 4
  %dev21 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev21, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.6) #16
  br label %err_xltq_query

if.end22:                                         ; preds = %if.end13
  %33 = call ptr @memset(ptr %rxltm_pl, i32 0, i32 20)
  %arrayidx.i.i.i79 = getelementptr inbounds i32, ptr %rxltm_pl, i32 4
  %34 = ptrtoint ptr %arrayidx.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i79, align 4
  %arrayidx.i.i21.i = getelementptr inbounds i32, ptr %rxltm_pl, i32 4
  %and7.i.i23.i = and i32 %35, -16711744
  %or.i.i.i = or i32 %and7.i.i23.i, 16
  %36 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %or.i.i.i, ptr %arrayidx.i.i21.i, align 4
  %37 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %core, align 4
  %call26 = call i32 @mlxsw_reg_write(ptr noundef %38, ptr noundef nonnull @mlxsw_reg_rxltm, ptr noundef nonnull %rxltm_pl) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end22.err_xltq_query_crit_edge

if.end22.err_xltq_query_crit_edge:                ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_xltq_query

if.end29:                                         ; preds = %if.end22
  %ltable_ht = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %call7.i.i, i32 0, i32 3
  %call30 = call i32 @rhashtable_init(ptr noundef %ltable_ht, ptr noundef nonnull @mlxsw_sp_router_xm_ltable_ht_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.err_xltq_query_crit_edge

if.end29.err_xltq_query_crit_edge:                ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_xltq_query

if.end33:                                         ; preds = %if.end29
  %flush_ht = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %call7.i.i, i32 0, i32 4
  %call34 = call i32 @rhashtable_init(ptr noundef %flush_ht, ptr noundef nonnull @mlxsw_sp_router_xm_flush_ht_params) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %err_flush_ht_init

if.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  %router = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 10
  %39 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %router, align 4
  %xm = getelementptr inbounds %struct.mlxsw_sp_router, ptr %40, i32 0, i32 30
  %41 = ptrtoint ptr %xm to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i, ptr %xm, align 4
  br label %cleanup

err_flush_ht_init:                                ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  call void @rhashtable_destroy(ptr noundef %ltable_ht) #12
  br label %err_xltq_query

err_xltq_query:                                   ; preds = %err_flush_ht_init, %if.end29.err_xltq_query_crit_edge, %if.end22.err_xltq_query_crit_edge, %do.end19, %do.end, %if.end3.err_xltq_query_crit_edge
  %err.0 = phi i32 [ %call5, %if.end3.err_xltq_query_crit_edge ], [ -22, %do.end ], [ -22, %do.end19 ], [ %call26, %if.end22.err_xltq_query_crit_edge ], [ %call30, %if.end29.err_xltq_query_crit_edge ], [ %call34, %err_flush_ht_init ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %err_xltq_query, %if.end37, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_xltq_query ], [ 0, %if.end37 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %xltq_pl) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %rxltm_pl) #12
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_query(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_router_xm_fini(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 2
  %0 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_info, align 4
  %xm_exists = getelementptr inbounds %struct.mlxsw_bus_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %xm_exists to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %xm_exists, align 4
  %3 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %router = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 10
  %4 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %router, align 4
  %xm = getelementptr inbounds %struct.mlxsw_sp_router, ptr %5, i32 0, i32 30
  %6 = ptrtoint ptr %xm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xm, align 4
  %flush_ht = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %7, i32 0, i32 4
  tail call void @rhashtable_destroy(ptr noundef %flush_ht) #12
  %ltable_ht = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %7, i32 0, i32 3
  tail call void @rhashtable_destroy(ptr noundef %ltable_ht) #12
  tail call void @kfree(ptr noundef %7) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlxsw_sp_router_xm_ipv4_is_supported(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %router = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 10
  %0 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %router, align 4
  %xm = getelementptr inbounds %struct.mlxsw_sp_router, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %xm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xm, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1 = icmp ne i8 %5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %6 = phi i1 [ false, %entry.land.end_crit_edge ], [ %tobool1, %land.rhs ]
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_xmdr_c_ltr_pack(ptr nocapture noundef %xmdr_payload, i32 noundef %trans_offset, i32 noundef %cmd_id, i16 noundef zeroext %seq_number, i32 noundef %op, i16 noundef zeroext %virtual_router, i8 noundef zeroext %prefix_len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %xmdr_payload, i32 32
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %trans_offset
  %arrayidx.i.i = getelementptr i32, ptr %xmdr_payload, i32 1
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %add = add i32 %1, 1
  %and6.i.i = and i32 %add, 15
  %and7.i.i = and i32 %1, -16
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  %spec.select.i.i55 = shl i32 %cmd_id, 24
  %2 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr1, align 4
  %and7.i.i63 = and i32 %3, 4095
  %or.i.i64 = or i32 %spec.select.i.i55, %and7.i.i63
  %conv3 = zext i16 %seq_number to i32
  %spec.select.i.i83 = shl nuw nsw i32 %conv3, 12
  %and6.i.i88 = and i32 %spec.select.i.i83, 16773120
  %or.i.i92 = or i32 %and6.i.i88, %or.i.i64
  store i32 %or.i.i92, ptr %add.ptr1, align 4
  %spec.select.i.i111 = shl i32 %op, 24
  %arrayidx.i.i117 = getelementptr i32, ptr %add.ptr1, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i117 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i117, align 4
  %and7.i.i119 = and i32 %5, 16711680
  %or.i.i120 = or i32 %spec.select.i.i111, %and7.i.i119
  %conv4 = zext i16 %virtual_router to i32
  %arrayidx.i.i145 = getelementptr i32, ptr %add.ptr1, i32 1
  %or.i.i148 = or i32 %or.i.i120, %conv4
  %6 = ptrtoint ptr %arrayidx.i.i145 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i.i148, ptr %arrayidx.i.i145, align 4
  %conv5 = zext i8 %prefix_len to i32
  %spec.select.i.i167 = shl nuw i32 %conv5, 24
  %arrayidx.i.i173 = getelementptr i32, ptr %add.ptr1, i32 2
  %7 = ptrtoint ptr %arrayidx.i.i173 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i173, align 4
  %and7.i.i175 = and i32 %8, 65295
  %or.i.i176 = or i32 %spec.select.i.i167, %and7.i.i175
  %or.i.i203 = or i32 %or.i.i176, 32
  %spec.select.i.i222 = shl nuw nsw i32 %conv5, 16
  %arrayidx.i.i228 = getelementptr i32, ptr %add.ptr1, i32 2
  %or.i.i231 = or i32 %spec.select.i.i222, %or.i.i203
  %9 = ptrtoint ptr %arrayidx.i.i228 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or.i.i231, ptr %arrayidx.i.i228, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_sp_router_xm_ml_entry_del(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef %fib_entry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ltable_node1 = getelementptr inbounds %struct.mlxsw_sp_router_xm_fib_entry, ptr %fib_entry, i32 0, i32 1
  %0 = ptrtoint ptr %ltable_node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ltable_node1, align 4
  %router = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 10
  %2 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %router, align 4
  %xm = getelementptr inbounds %struct.mlxsw_sp_router, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %xm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xm, align 4
  %lvalue2 = getelementptr inbounds %struct.mlxsw_sp_router_xm_fib_entry, ptr %fib_entry, i32 0, i32 3
  %6 = ptrtoint ptr %lvalue2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lvalue2, align 2
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr %struct.mlxsw_sp_router_xm_ltable_node, ptr %1, i32 0, i32 4, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %arrayidx, align 4
  %current_lvalue = getelementptr inbounds %struct.mlxsw_sp_router_xm_ltable_node, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %current_lvalue to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %current_lvalue, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %11)
  %cmp = icmp eq i8 %7, %11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp ne i8 %7, 0
  %or.cond.not = and i1 %tobool.not, %cmp
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool10.not = icmp eq i32 %dec, 0
  %or.cond38 = select i1 %or.cond.not, i1 %tobool10.not, i1 false
  br i1 %or.cond38, label %while.cond.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %current_lvalue to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %current_lvalue, align 2
  %call = tail call fastcc i32 @mlxsw_sp_router_xm_ltable_lvalue_set(ptr noundef %mlxsw_sp, ptr noundef %1)
  %prefix_len = getelementptr inbounds %struct.mlxsw_sp_router_xm_fib_entry, ptr %fib_entry, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %prefix_len to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %prefix_len, align 2
  br label %if.end

if.end:                                           ; preds = %while.cond.preheader, %entry.if.end_crit_edge
  %refcnt.i = getelementptr inbounds %struct.mlxsw_sp_router_xm_ltable_node, ptr %1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !271
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #12, !srcloc !272
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.mlxsw_sp_router_xm_ltable_node_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !268

if.end5.i.i.i.i.mlxsw_sp_router_xm_ltable_node_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_ltable_node_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #12
  br label %mlxsw_sp_router_xm_ltable_node_put.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !273
  %ltable_ht.i = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %5, i32 0, i32 3
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %ltable_ht.i, ptr noundef %1, [7 x i32] [i32 2, i32 262144, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  tail call void @kfree(ptr noundef %1) #12
  br label %mlxsw_sp_router_xm_ltable_node_put.exit

mlxsw_sp_router_xm_ltable_node_put.exit:          ; preds = %if.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.mlxsw_sp_router_xm_ltable_node_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_router_xm_ltable_lvalue_set(ptr nocapture noundef readonly %mlxsw_sp, ptr nocapture noundef readonly %ltable_node) unnamed_addr #0 align 64 {
entry:
  %xrmt_pl = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %xrmt_pl) #12
  %mindex = getelementptr inbounds %struct.mlxsw_sp_router_xm_ltable_node, ptr %ltable_node, i32 0, i32 1
  %0 = ptrtoint ptr %mindex to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mindex, align 4
  %conv = zext i16 %1 to i32
  %current_lvalue = getelementptr inbounds %struct.mlxsw_sp_router_xm_ltable_node, ptr %ltable_node, i32 0, i32 2
  %2 = ptrtoint ptr %current_lvalue to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %current_lvalue, align 2
  %4 = call ptr @memset(ptr %xrmt_pl, i32 0, i32 20)
  %arrayidx.i.i.i = getelementptr inbounds i32, ptr %xrmt_pl, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i.i, align 4
  %and7.i.i.i = and i32 %6, -1048576
  %or.i.i.i = or i32 %and7.i.i.i, %conv
  store i32 %or.i.i.i, ptr %arrayidx.i.i.i, align 4
  %conv1.i = zext i8 %3 to i32
  %spec.select.i.i22.i = shl nuw i32 %conv1.i, 24
  %arrayidx.i.i28.i = getelementptr inbounds i32, ptr %xrmt_pl, i32 4
  %7 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i28.i, align 4
  %and7.i.i30.i = and i32 %8, 16777215
  %or.i.i31.i = or i32 %spec.select.i.i22.i, %and7.i.i30.i
  store i32 %or.i.i31.i, ptr %arrayidx.i.i28.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %10, ptr noundef nonnull @mlxsw_reg_xrmt, ptr noundef nonnull %xrmt_pl) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %xrmt_pl) #12
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #6 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !275
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 696, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #12
  %5 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ht, ptr %arg.i.i, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %key, ptr %5, align 4
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 594, ptr noundef nonnull @.str.67) #12
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %if.then.i.i, %land.lhs.true9.i.i.do.end12.i.i_crit_edge, %land.lhs.true.i.i.do.end12.i.i_crit_edge, %lor.lhs.false.i.i.do.end12.i.i_crit_edge, %rcu_read_lock.exit.do.end12.i.i_crit_edge
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract.i.i)
  %tobool19.not.i.i = icmp eq i32 %params.coerce.fca.6.extract.i.i, 0
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.end60.i.i.if.then.i.i.i.i_crit_edge, %do.end12.i.i
  %tbl.0.i.i = phi ptr [ %9, %do.end12.i.i ], [ %40, %do.end60.i.i.if.then.i.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_rnd.i.i.i, align 8
  %12 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %14 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #12
  %16 = ptrtoint ptr %tbl.0.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tbl.0.i.i, align 128
  %sub.i.i.i.i = add i32 %17, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %call.i.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !268

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #12
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !277
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 369, ptr noundef nonnull @.str.67) #12
  br label %rht_ptr_rcu.exit.i.i

rht_ptr_rcu.exit.i.i:                             ; preds = %if.then.i.i.i, %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge
  %24 = ptrtoint ptr %23 to i32
  %and.i.i95.i.i = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i95.i.i)
  %tobool.not.i.i96.i.i = icmp eq i32 %and.i.i95.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i96.i.i, i32 %or.i.i.i.i, i32 %and.i.i95.i.i
  %25 = inttoptr i32 %cond.i.i.i.i to ptr
  %and.i106.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i106.i.i)
  %tobool.i.not107.i.i = icmp eq i32 %and.i106.i.i, 0
  br i1 %tobool.i.not107.i.i, label %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge, label %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge

rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge:     ; preds = %rht_ptr_rcu.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i

rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge:      ; preds = %rht_ptr_rcu.exit.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge
  %he.0108.i.i = phi ptr [ %37, %for.inc.i.i.for.body.i.i_crit_edge ], [ %25, %rht_ptr_rcu.exit.i.i.for.body.i.i_crit_edge ]
  %26 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i98.i.i = zext i16 %27 to i32
  %idx.neg.i99.i.i = sub nsw i32 0, %conv.i98.i.i
  %add.ptr.i100.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i99.i.i
  br i1 %tobool19.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  %28 = ptrtoint ptr %arg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arg.i.i, align 4
  %key_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 2
  %30 = ptrtoint ptr %key_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %key_offset.i.i.i, align 4
  %conv.i101.i.i = zext i16 %31 to i32
  %add.ptr.i102.i.i = getelementptr i8, ptr %add.ptr.i100.i.i, i32 %conv.i101.i.i
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %key_len.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %29, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %key_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %key_len.i.i.i, align 2
  %conv3.i.i.i = zext i16 %35 to i32
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_lookup.exit.i

for.inc.i.i:                                      ; preds = %cond.false.i.i.for.inc.i.i_crit_edge, %cond.true.i.i.for.inc.i.i_crit_edge
  %36 = ptrtoint ptr %he.0108.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %he.0108.i.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %and.i.i.i = and i32 %38, 1
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.cond34.i.i_crit_edge

for.inc.i.i.do.cond34.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !278
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.68, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_lookup.__warned.68, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 614, ptr noundef nonnull @.str.67) #12
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !268

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #12
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #12
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.69) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !276
  %43 = call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %cond.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rhashtable_insert_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !275
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 696, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end12.i_crit_edge

rcu_read_lock.exit.i.do.end12.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call5.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end12.i_crit_edge

lor.lhs.false.i.do.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call7.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true.i.do.end12.i_crit_edge, label %land.lhs.true9.i

land.lhs.true.i.do.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true9.i.do.end12.i_crit_edge, label %if.then.i

land.lhs.true9.i.do.end12.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12.i

if.then.i:                                        ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 715, ptr noundef nonnull @.str.67) #12
  br label %do.end12.i

do.end12.i:                                       ; preds = %if.then.i, %land.lhs.true9.i.do.end12.i_crit_edge, %land.lhs.true.i.do.end12.i_crit_edge, %lor.lhs.false.i.do.end12.i_crit_edge, %rcu_read_lock.exit.i.do.end12.i_crit_edge
  %params.coerce.fca.5.extract.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i to ptr
  %head_offset.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i = sub nsw i32 0, %conv.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i)
  %tobool.not.i3.i = icmp eq i32 %params.coerce.fca.5.extract.i.i, 0
  br i1 %tobool.not.i3.i, label %if.then.i.i.i.i, label %cond.true.i.i, !prof !270

cond.true.i.i:                                    ; preds = %do.end12.i
  %params.coerce.fca.0.extract.i.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i.i = and i32 %params.coerce.fca.0.extract.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool4.not.i.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool4.not.i.i, label %cond.false.i.i, label %cond.true.i.i.cond.end.i.i_crit_edge

cond.true.i.i.cond.end.i.i_crit_edge:             ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %key_len6.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %key_len6.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i, align 2
  %conv7.i.i = zext i16 %10 to i32
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %conv7.i.i, %cond.false.i.i ], [ %conv.i.i, %cond.true.i.i.cond.end.i.i_crit_edge ]
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i, align 8
  %call8.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i, i32 noundef %cond.i.i, i32 noundef %12) #12
  br label %rht_head_hashfn.exit.i

if.then.i.i.i.i:                                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i, align 8
  %params.coerce.fca.1.extract.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i = lshr i32 %params.coerce.fca.1.extract.i.i, 16
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i
  %hashfn.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %hashfn.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i, align 4
  %key_len1.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %17 = ptrtoint ptr %key_len1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i, align 4
  %call.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i, i32 noundef %18, i32 noundef %14) #12
  br label %rht_head_hashfn.exit.i

rht_head_hashfn.exit.i:                           ; preds = %if.then.i.i.i.i, %cond.end.i.i
  %hash.2.i.i.sink.i.i = phi i32 [ %call8.i.i, %cond.end.i.i ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 128
  %sub.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i = and i32 %sub.i.i.i.i, %hash.2.i.i.sink.i.i
  %nest.i.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i4.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i4.i, label %cond.false.i7.i, label %cond.true.i6.i, !prof !268

cond.true.i6.i:                                   ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i5.i = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  br label %rht_bucket_insert.exit.i

cond.false.i7.i:                                  ; preds = %rht_head_hashfn.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i = getelementptr %struct.bucket_table, ptr %5, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket_insert.exit.i

rht_bucket_insert.exit.i:                         ; preds = %cond.false.i7.i, %cond.true.i6.i
  %cond.i8.i = phi ptr [ %call.i5.i, %cond.true.i6.i ], [ %arrayidx.i.i, %cond.false.i7.i ]
  %tobool17.not.i = icmp eq ptr %cond.i8.i, null
  br i1 %tobool17.not.i, label %rht_bucket_insert.exit.i.out.i_crit_edge, label %if.end19.i

rht_bucket_insert.exit.i.out.i_crit_edge:         ; preds = %rht_bucket_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end19.i:                                       ; preds = %rht_bucket_insert.exit.i
  tail call fastcc void @rht_lock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #12
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %5, i32 0, i32 5
  %23 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %future_tbl.i, align 4
  %tobool25.not.i = icmp eq ptr %24, null
  br i1 %tobool25.not.i, label %if.end30.i, label %if.end19.i.slow_path.i_crit_edge, !prof !268

if.end19.i.slow_path.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

slow_path.i:                                      ; preds = %rht_grow_above_100.exit.i.slow_path.i_crit_edge, %for.end.i.slow_path.i_crit_edge, %if.end19.i.slow_path.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #12
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10.i, label %slow_path.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i13.i

slow_path.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %slow_path.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i13.i:                              ; preds = %slow_path.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.69) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i13.i.rcu_read_unlock.exit.i_crit_edge, %slow_path.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !276
  %25 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i17.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i19.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i19.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %call29.i = tail call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef null, ptr noundef %obj) #12
  br label %__rhashtable_insert_fast.exit

if.end30.i:                                       ; preds = %if.end19.i
  %call.i20.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool.not.i21.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool.not.i21.i, label %land.lhs.true.i23.i, label %if.end30.i.rht_ptr.exit.i_crit_edge

if.end30.i.rht_ptr.exit.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

land.lhs.true.i23.i:                              ; preds = %if.end30.i
  %call1.i22.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i22.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge:     ; preds = %land.lhs.true.i23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i23.i
  %.b7.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i, label %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, label %if.then.i24.i

land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge:      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i

if.then.i24.i:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 377, ptr noundef nonnull @.str.71) #12
  br label %rht_ptr.exit.i

rht_ptr.exit.i:                                   ; preds = %if.then.i24.i, %land.lhs.true3.i.i.rht_ptr.exit.i_crit_edge, %land.lhs.true.i23.i.rht_ptr.exit.i_crit_edge, %if.end30.i.rht_ptr.exit.i_crit_edge
  %29 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cond.i8.i, align 4
  %31 = ptrtoint ptr %30 to i32
  %and.i.i.i = and i32 %31, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %32 = ptrtoint ptr %cond.i8.i to i32
  %or.i.i.i = or i32 %32, 1
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 %or.i.i.i, i32 %and.i.i.i
  %and.i63.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i63.i)
  %tobool.i.not64.i = icmp eq i32 %and.i63.i, 0
  br i1 %tobool.i.not64.i, label %for.body.preheader.i, label %rht_ptr.exit.i.if.end152.i_crit_edge

rht_ptr.exit.i.if.end152.i_crit_edge:             ; preds = %rht_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

for.body.preheader.i:                             ; preds = %rht_ptr.exit.i
  %33 = inttoptr i32 %cond.i.i.i to ptr
  br label %for.body.i

for.body.i:                                       ; preds = %do.end147.i.for.body.i_crit_edge, %for.body.preheader.i
  %head.066.i = phi ptr [ %35, %do.end147.i.for.body.i_crit_edge ], [ %33, %for.body.preheader.i ]
  %elasticity.065.i = phi i32 [ %dec.i, %do.end147.i.for.body.i_crit_edge ], [ 16, %for.body.preheader.i ]
  %dec.i = add i32 %elasticity.065.i, -1
  %call137.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %land.lhs.true139.i, label %for.body.i.do.end147.i_crit_edge

for.body.i.do.end147.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

land.lhs.true139.i:                               ; preds = %for.body.i
  %call140.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140.i)
  %tobool141.not.i = icmp eq i32 %call140.i, 0
  br i1 %tobool141.not.i, label %land.lhs.true139.i.do.end147.i_crit_edge, label %land.lhs.true142.i

land.lhs.true139.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true139.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

land.lhs.true142.i:                               ; preds = %land.lhs.true139.i
  %.b2811.i = load i1, ptr @__rhashtable_insert_fast.__warned.72, align 1
  br i1 %.b2811.i, label %land.lhs.true142.i.do.end147.i_crit_edge, label %if.then144.i

land.lhs.true142.i.do.end147.i_crit_edge:         ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end147.i

if.then144.i:                                     ; preds = %land.lhs.true142.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_insert_fast.__warned.72, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 732, ptr noundef nonnull @.str.71) #12
  br label %do.end147.i

do.end147.i:                                      ; preds = %if.then144.i, %land.lhs.true142.i.do.end147.i_crit_edge, %land.lhs.true139.i.do.end147.i_crit_edge, %for.body.i.do.end147.i_crit_edge
  %34 = ptrtoint ptr %head.066.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.066.i, align 4
  %36 = ptrtoint ptr %35 to i32
  %and.i.i = and i32 %36, 1
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.end147.i.for.body.i_crit_edge, label %for.end.i

do.end147.i.for.body.i_crit_edge:                 ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %do.end147.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec.i)
  %phi.cmp.i = icmp slt i32 %dec.i, 1
  br i1 %phi.cmp.i, label %for.end.i.slow_path.i_crit_edge, label %for.end.i.if.end152.i_crit_edge

for.end.i.if.end152.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end152.i

for.end.i.slow_path.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

if.end152.i:                                      ; preds = %for.end.i.if.end152.i_crit_edge, %rht_ptr.exit.i.if.end152.i_crit_edge
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i25.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %max_elems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %39 = ptrtoint ptr %max_elems.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_elems.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i.not.i = icmp ult i32 %38, %40
  br i1 %cmp.i.not.i, label %if.end162.i, label %out_unlock.i, !prof !268

if.end162.i:                                      ; preds = %if.end152.i
  %call.i.i.i27.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %41 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %nelems.i.i, align 4
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp.i28.i = icmp ugt i32 %42, %44
  br i1 %cmp.i28.i, label %rht_grow_above_100.exit.i, label %if.end162.i.if.end171.i_crit_edge

if.end162.i.if.end171.i_crit_edge:                ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i

rht_grow_above_100.exit.i:                        ; preds = %if.end162.i
  %max_size.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %max_size.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %max_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i29.i = icmp eq i32 %46, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp4.i.i = icmp ult i32 %44, %46
  %spec.select.i.i = select i1 %tobool.not.i29.i, i1 true, i1 %cmp4.i.i
  br i1 %spec.select.i.i, label %rht_grow_above_100.exit.i.slow_path.i_crit_edge, label %rht_grow_above_100.exit.i.if.end171.i_crit_edge, !prof !270

rht_grow_above_100.exit.i.if.end171.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end171.i

rht_grow_above_100.exit.i.slow_path.i_crit_edge:  ; preds = %rht_grow_above_100.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path.i

if.end171.i:                                      ; preds = %rht_grow_above_100.exit.i.if.end171.i_crit_edge, %if.end162.i.if.end171.i_crit_edge
  %call.i30.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %5, i32 noundef %and.i3.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %land.lhs.true.i34.i, label %if.end171.i.rht_ptr.exit42.i_crit_edge

if.end171.i.rht_ptr.exit42.i_crit_edge:           ; preds = %if.end171.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i

land.lhs.true.i34.i:                              ; preds = %if.end171.i
  %call1.i32.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32.i)
  %tobool2.not.i33.i = icmp eq i32 %call1.i32.i, 0
  br i1 %tobool2.not.i33.i, label %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, label %land.lhs.true3.i36.i

land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge:   ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i

land.lhs.true3.i36.i:                             ; preds = %land.lhs.true.i34.i
  %.b7.i35.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i35.i, label %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, label %if.then.i37.i

land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge:  ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit42.i

if.then.i37.i:                                    ; preds = %land.lhs.true3.i36.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 377, ptr noundef nonnull @.str.71) #12
  br label %rht_ptr.exit42.i

rht_ptr.exit42.i:                                 ; preds = %if.then.i37.i, %land.lhs.true3.i36.i.rht_ptr.exit42.i_crit_edge, %land.lhs.true.i34.i.rht_ptr.exit42.i_crit_edge, %if.end171.i.rht_ptr.exit42.i_crit_edge
  %47 = ptrtoint ptr %cond.i8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cond.i8.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %and.i.i38.i = and i32 %49, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i38.i)
  %tobool.not.i.i39.i = icmp eq i32 %and.i.i38.i, 0
  %cond.i.i41.i = select i1 %tobool.not.i.i39.i, i32 %or.i.i.i, i32 %and.i.i38.i
  %50 = inttoptr i32 %cond.i.i41.i to ptr
  %51 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %obj, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #12
  %52 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #12, !srcloc !279
  tail call fastcc void @rht_assign_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i, ptr noundef %obj) #12
  %call.i.i.i44.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %53 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i.i, align 4
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %5, align 128
  %div8.i.i = lshr i32 %56, 2
  %mul.i.i = mul nuw i32 %div8.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %mul.i.i)
  %cmp.i45.i = icmp ugt i32 %54, %mul.i.i
  br i1 %cmp.i45.i, label %rht_grow_above_75.exit.i, label %rht_ptr.exit42.i.out.i_crit_edge

rht_ptr.exit42.i.out.i_crit_edge:                 ; preds = %rht_ptr.exit42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

rht_grow_above_75.exit.i:                         ; preds = %rht_ptr.exit42.i
  %max_size.i46.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %57 = ptrtoint ptr %max_size.i46.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %max_size.i46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.i47.i = icmp eq i32 %58, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp4.i48.i = icmp ult i32 %56, %58
  %spec.select.i49.i = select i1 %tobool.not.i47.i, i1 true, i1 %cmp4.i48.i
  br i1 %spec.select.i49.i, label %if.then207.i, label %rht_grow_above_75.exit.i.out.i_crit_edge

rht_grow_above_75.exit.i.out.i_crit_edge:         ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then207.i:                                     ; preds = %rht_grow_above_75.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %59 = load ptr, ptr @system_wq, align 4
  %call.i.i51.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %59, ptr noundef %run_work.i) #12
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.then207.i, %rht_grow_above_75.exit.i.out.i_crit_edge, %rht_ptr.exit42.i.out.i_crit_edge, %rht_bucket_insert.exit.i.out.i_crit_edge
  %data.2.i = phi ptr [ inttoptr (i32 -7 to ptr), %out_unlock.i ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.i.out.i_crit_edge ], [ null, %if.then207.i ], [ null, %rht_grow_above_75.exit.i.out.i_crit_edge ], [ null, %rht_ptr.exit42.i.out.i_crit_edge ]
  %call.i52.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i52.i, label %out.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true.i55.i

out.i.rcu_read_unlock.exit62.i_crit_edge:         ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i

land.lhs.true.i55.i:                              ; preds = %out.i
  %call1.i53.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool.not.i54.i, label %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, label %land.lhs.true2.i57.i

land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true.i55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i

land.lhs.true2.i57.i:                             ; preds = %land.lhs.true.i55.i
  %.b4.i56.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56.i, label %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, label %if.then.i58.i

land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge: ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit62.i

if.then.i58.i:                                    ; preds = %land.lhs.true2.i57.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.69) #12
  br label %rcu_read_unlock.exit62.i

rcu_read_unlock.exit62.i:                         ; preds = %if.then.i58.i, %land.lhs.true2.i57.i.rcu_read_unlock.exit62.i_crit_edge, %land.lhs.true.i55.i.rcu_read_unlock.exit62.i_crit_edge, %out.i.rcu_read_unlock.exit62.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !276
  %60 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i59.i = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i59.i to ptr
  %preempt_count.i.i.i.i60.i = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %preempt_count.i.i.i.i60.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %preempt_count.i.i.i.i60.i, align 4
  %sub.i.i.i61.i = add i32 %63, -1
  store volatile i32 %sub.i.i.i61.i, ptr %preempt_count.i.i.i.i60.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %__rhashtable_insert_fast.exit

out_unlock.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_unlock(ptr noundef %5, ptr noundef nonnull %cond.i8.i) #12
  br label %out.i

__rhashtable_insert_fast.exit:                    ; preds = %rcu_read_unlock.exit62.i, %rcu_read_unlock.exit.i
  %retval.0.i = phi ptr [ %call29.i, %rcu_read_unlock.exit.i ], [ %data.2.i, %rcu_read_unlock.exit62.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %64 = ptrtoint ptr %retval.0.i to i32
  %cmp = icmp eq ptr %retval.0.i, null
  %cond = select i1 %cmp, i32 0, i32 -17
  %retval.0 = select i1 %cmp.i, i32 %64, i32 %cond
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !280
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !281

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !282
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !283
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !268

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !284
  %7 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i1.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i1.i to ptr
  %preempt_count.i.i2.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i2.i, align 4
  %sub.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i2.i, align 4
  br label %do.body4.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %do.body2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !285
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !286
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !287
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #12
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !270

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #12, !srcloc !288
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !289
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #12, !srcloc !290
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !291
  %3 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %6, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !292
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !293
  %2 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i, align 4
  %sub.i = add i32 %5, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i, align 4
  tail call fastcc void @local_bh_enable()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !275
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 696, ptr noundef nonnull @.str.65) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 1076, ptr noundef nonnull @.str.67) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then.i, %land.lhs.true7.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %lor.lhs.false.i.do.end10.i_crit_edge, %rcu_read_lock.exit.i.do.end10.i_crit_edge
  %params.coerce.fca.0.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 0
  %params.coerce.fca.5.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 5
  %6 = inttoptr i32 %params.coerce.fca.5.extract.i.i.i to ptr
  %head_offset.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %params.coerce.fca.5.extract.i.i.i, 0
  %conv.i.i.i = and i32 %params.coerce.fca.0.extract.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  %key_len6.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %params.coerce.fca.1.extract.i.i.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i.i.i = lshr i32 %params.coerce.fca.1.extract.i.i.i, 16
  %hashfn.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %key_len1.i.i.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.end33.i.while.cond.i_crit_edge, %do.end10.i
  %tbl.0.i = phi ptr [ %5, %do.end10.i ], [ %45, %do.end33.i.while.cond.i_crit_edge ]
  %7 = ptrtoint ptr %head_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %head_offset.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %8 to i32
  %idx.neg.i.i.i.i = sub nsw i32 0, %conv.i.i.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i.i.i
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !270

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %key_len6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %key_len6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %10 to i32
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %conv7.i.i.i, %cond.false.i.i.i ], [ %conv.i.i.i, %cond.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %hash_rnd.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %11 = ptrtoint ptr %hash_rnd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hash_rnd.i.i.i, align 8
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #12
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  %hash_rnd.i.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 2
  %13 = ptrtoint ptr %hash_rnd.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hash_rnd.i.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %params.sroa.3.4.extract.shift.i.i.i
  %15 = ptrtoint ptr %hashfn.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hashfn.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %key_len1.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %key_len1.i.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #12
  br label %rht_head_hashfn.exit.i.i

rht_head_hashfn.exit.i.i:                         ; preds = %if.then.i.i.i.i.i, %cond.end.i.i.i
  %hash.2.i.i.sink.i.i.i = phi i32 [ %call8.i.i.i, %cond.end.i.i.i ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %19 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tbl.0.i, align 128
  %sub.i.i.i.i.i = add i32 %20, -1
  %and.i3.i.i.i.i = and i32 %sub.i.i.i.i.i, %hash.2.i.i.sink.i.i.i
  %nest.i.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %nest.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nest.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i3.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !268

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 377, ptr noundef nonnull @.str.71) #12
  br label %rht_ptr.exit.i.i

rht_ptr.exit.i.i:                                 ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, %if.end.i.i.rht_ptr.exit.i.i_crit_edge
  %23 = ptrtoint ptr %cond.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cond.i6.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %and.i.i.i.i = and i32 %25, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %26 = ptrtoint ptr %cond.i6.i.i to i32
  %or.i.i.i.i = or i32 %26, 1
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %or.i.i.i.i, i32 %and.i.i.i.i
  %and.i20.i.i = and i32 %cond.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i20.i.i)
  %tobool.i.not21.i.i = icmp eq i32 %and.i20.i.i, 0
  br i1 %tobool.i.not21.i.i, label %for.body.preheader.i.i, label %rht_ptr.exit.i.i.unlocked.i.i_crit_edge

rht_ptr.exit.i.i.unlocked.i.i_crit_edge:          ; preds = %rht_ptr.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i20.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i20.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i21.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.80, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.80, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 1032, ptr noundef nonnull @.str.71) #12
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !294
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #12
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i21.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.82, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.82, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 1004, ptr noundef nonnull @.str.71) #12
  br label %do.end156.i.i

do.end156.i.i:                                    ; preds = %if.then153.i.i, %land.lhs.true151.i.i.do.end156.i.i_crit_edge, %land.lhs.true148.i.i.do.end156.i.i_crit_edge, %do.body145.i.i.do.end156.i.i_crit_edge
  %31 = ptrtoint ptr %he.022.i21.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %he.022.i21.i, align 4
  %33 = ptrtoint ptr %32 to i32
  %and.i.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %for.body.i.i, label %do.end156.i.i.unlocked.i.i_crit_edge

do.end156.i.i.unlocked.i.i_crit_edge:             ; preds = %do.end156.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #12
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #12
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #12, !srcloc !295
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #12
  %37 = ptrtoint ptr %nelems.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %nelems.i.i, align 4
  %39 = ptrtoint ptr %tbl.0.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %tbl.0.i, align 128
  %mul.i.i.i = mul i32 %40, 3
  %div.i.i.i = udiv i32 %mul.i.i.i, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %div.i.i.i)
  %cmp.i.i.i = icmp ult i32 %38, %div.i.i.i
  br i1 %cmp.i.i.i, label %rht_shrink_below_30.exit.i.i, label %land.rhs162.i.i.while.end.i_crit_edge

land.rhs162.i.i.while.end.i_crit_edge:            ; preds = %land.rhs162.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !270

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #12
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.78, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__rhashtable_remove_fast.__warned.78, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.66, i32 noundef 1085, ptr noundef nonnull @.str.67) #12
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.64, i32 noundef 724, ptr noundef nonnull @.str.69) #12
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !276
  %46 = tail call i32 @llvm.read_register.i32(metadata !258) #12
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_router_xm_cache_flush_work(ptr noundef %work) #0 align 64 {
entry:
  %rlcmld_pl = alloca [48 x i8], align 1
  %rlpmce_pl = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %rlcmld_pl) #12
  %0 = call ptr @memset(ptr %rlcmld_pl, i32 255, i32 48)
  %mlxsw_sp1 = getelementptr i8, ptr %work, i32 100
  %1 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mlxsw_sp1, align 4
  %flush_info2 = getelementptr i8, ptr %work, i32 -28
  %3 = ptrtoint ptr %flush_info2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %flush_info2, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rlpmce_pl) #12
  %5 = ptrtoint ptr %rlpmce_pl to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 16, ptr %rlpmce_pl, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %7, ptr noundef nonnull @mlxsw_reg_rlpmce, ptr noundef nonnull %rlpmce_pl) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %bus_info = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 2
  %8 = ptrtoint ptr %bus_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus_info, align 4
  %dev = getelementptr inbounds %struct.mlxsw_bus_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.86) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %reuses = getelementptr i8, ptr %work, i32 108
  %12 = ptrtoint ptr %reuses to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reuses, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %13)
  %cmp = icmp ult i32 %13, 15
  br i1 %cmp, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %router = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 10
  %14 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %router, align 4
  %xm = getelementptr inbounds %struct.mlxsw_sp_router, ptr %15, i32 0, i32 30
  %16 = ptrtoint ptr %xm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xm, align 4
  %flush_all_mode = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %flush_all_mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %flush_all_mode, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rlpmce_pl) #12
  br label %out

if.end8:                                          ; preds = %entry
  %proto = getelementptr i8, ptr %work, i32 -24
  %19 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %proto, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %20, label %do.end33 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb19
  ]

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %addr = getelementptr i8, ptr %work, i32 -17
  %22 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %addr, align 1
  %prefix_len = getelementptr i8, ptr %work, i32 -18
  %24 = ptrtoint ptr %prefix_len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %prefix_len, align 2
  %conv.i = zext i8 %25 to i32
  %sub.i = sub nsw i32 32, %conv.i
  %shl.neg.i = shl nsw i32 -1, %sub.i
  %and = and i32 %shl.neg.i, %23
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %25)
  %cmp12 = icmp ugt i8 %25, 16
  %spec.select = select i1 %cmp12, i32 0, i32 2
  %virtual_router = getelementptr i8, ptr %work, i32 -20
  %26 = ptrtoint ptr %virtual_router to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %virtual_router, align 4
  call fastcc void @__mlxsw_reg_rlcmld_pack(ptr noundef nonnull %rlcmld_pl, i32 noundef %spec.select, i32 noundef 0, i16 noundef zeroext %27) #12
  %arrayidx.i.i.i105 = getelementptr inbounds i32, ptr %rlcmld_pl, i32 7
  %28 = ptrtoint ptr %arrayidx.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and, ptr %arrayidx.i.i.i105, align 4
  %arrayidx.i.i27.i = getelementptr inbounds i32, ptr %rlcmld_pl, i32 11
  %29 = ptrtoint ptr %arrayidx.i.i27.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl.neg.i, ptr %arrayidx.i.i27.i, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %virtual_router21 = getelementptr i8, ptr %work, i32 -20
  %30 = ptrtoint ptr %virtual_router21 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %virtual_router21, align 4
  %addr22 = getelementptr i8, ptr %work, i32 -17
  %prefix_len24 = getelementptr i8, ptr %work, i32 -18
  %32 = ptrtoint ptr %prefix_len24 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %prefix_len24, align 2
  %34 = call ptr @memset(ptr @mlxsw_sp_router_xm_flush_mask6.mask, i32 0, i32 16)
  %conv.i109 = zext i8 %33 to i32
  %div1.i = lshr i32 %conv.i109, 3
  %35 = call ptr @memset(ptr @mlxsw_sp_router_xm_flush_mask6.mask, i32 255, i32 %div1.i)
  %rem.i = and i32 %conv.i109, 7
  %sub.i110 = sub nuw nsw i32 8, %rem.i
  %shl.neg.i111 = shl nsw i32 -1, %sub.i110
  %conv4.i = trunc i32 %shl.neg.i111 to i8
  %arrayidx.i = getelementptr [16 x i8], ptr @mlxsw_sp_router_xm_flush_mask6.mask, i32 0, i32 %div1.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv4.i, ptr %arrayidx.i, align 1
  call fastcc void @__mlxsw_reg_rlcmld_pack(ptr noundef nonnull %rlcmld_pl, i32 noundef 2, i32 noundef 1, i16 noundef zeroext %31) #12
  %arrayidx.i.i.i115 = getelementptr inbounds i8, ptr %rlcmld_pl, i32 16
  %37 = call ptr @memcpy(ptr %arrayidx.i.i.i115, ptr %addr22, i32 16)
  %arrayidx.i.i4.i = getelementptr inbounds i8, ptr %rlcmld_pl, i32 32
  %38 = call ptr @memcpy(ptr %arrayidx.i.i4.i, ptr @mlxsw_sp_router_xm_flush_mask6.mask, i32 16)
  br label %sw.epilog

do.end33:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 434, i32 noundef 9, ptr noundef null) #12
  br label %out

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb
  %core47 = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 1
  %39 = ptrtoint ptr %core47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core47, align 4
  %call49 = call i32 @mlxsw_reg_write(ptr noundef %40, ptr noundef nonnull @mlxsw_reg_rlcmld, ptr noundef nonnull %rlcmld_pl) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %sw.epilog.out_crit_edge, label %do.end54

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.end54:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %bus_info55 = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 2
  %41 = ptrtoint ptr %bus_info55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %bus_info55, align 4
  %dev56 = getelementptr inbounds %struct.mlxsw_bus_info, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.86) #16
  br label %out

out:                                              ; preds = %do.end54, %sw.epilog.out_crit_edge, %do.end33, %if.end7
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  %router.i = getelementptr inbounds %struct.mlxsw_sp, ptr %2, i32 0, i32 10
  %45 = ptrtoint ptr %router.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %router.i, align 4
  %xm.i = getelementptr inbounds %struct.mlxsw_sp_router, ptr %46, i32 0, i32 30
  %47 = ptrtoint ptr %xm.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xm.i, align 4
  %flush_count.i = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %flush_count.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flush_count.i, align 4
  %dec.i = add i32 %50, -1
  store i32 %dec.i, ptr %flush_count.i, align 4
  %flush_ht.i = getelementptr inbounds %struct.mlxsw_sp_router_xm, ptr %48, i32 0, i32 4
  call fastcc void @rhashtable_remove_fast(ptr noundef %flush_ht.i, ptr noundef %add.ptr, [7 x i32] [i32 28, i32 786432, i32 0, i32 256, i32 0, i32 0, i32 0]) #12
  %tobool.not.i.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i.i, label %out.mlxsw_sp_router_xm_cache_flush_node_destroy.exit_crit_edge, label %lor.lhs.false.i.i

out.mlxsw_sp_router_xm_cache_flush_node_destroy.exit_crit_edge: ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_cache_flush_node_destroy.exit

lor.lhs.false.i.i:                                ; preds = %out
  %refcnt.i.i = getelementptr i8, ptr %work, i32 112
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !271
  call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #12
  %51 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #12, !srcloc !272
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mlxsw_sp_router_xm_cache_flush_node_destroy.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !268

if.end5.i.i.i.i.i.mlxsw_sp_router_xm_cache_flush_node_destroy.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %mlxsw_sp_router_xm_cache_flush_node_destroy.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #12
  br label %mlxsw_sp_router_xm_cache_flush_node_destroy.exit

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !273
  call void @kfree(ptr noundef nonnull %add.ptr) #12
  br label %mlxsw_sp_router_xm_cache_flush_node_destroy.exit

mlxsw_sp_router_xm_cache_flush_node_destroy.exit: ; preds = %if.end.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mlxsw_sp_router_xm_cache_flush_node_destroy.exit_crit_edge, %out.mlxsw_sp_router_xm_cache_flush_node_destroy.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %rlcmld_pl) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_schedule_dw(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mlxsw_reg_rlcmld_pack(ptr nocapture noundef %payload, i32 noundef %select, i32 noundef %protocol, i16 noundef zeroext %virtual_router) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = call ptr @memset(ptr %payload, i32 0, i32 48)
  %spec.select.i.i = shl i32 %select, 16
  %and6.i.i = and i32 %spec.select.i.i, 196608
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, -196864
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  %or.i.i33 = or i32 %or.i.i, 28
  store i32 %or.i.i33, ptr %payload, align 4
  %and6.i.i57 = and i32 %protocol, 15
  %arrayidx.i.i58 = getelementptr i32, ptr %payload, i32 2
  %3 = ptrtoint ptr %arrayidx.i.i58 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i58, align 4
  %and7.i.i60 = and i32 %4, -16
  %or.i.i61 = or i32 %and6.i.i57, %and7.i.i60
  store i32 %or.i.i61, ptr %arrayidx.i.i58, align 4
  %conv2 = zext i16 %virtual_router to i32
  %arrayidx.i.i86 = getelementptr i32, ptr %payload, i32 3
  %5 = ptrtoint ptr %arrayidx.i.i86 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i86, align 4
  %and7.i.i88 = and i32 %6, -65536
  %or.i.i89 = or i32 %and7.i.i88, %conv2
  store i32 %or.i.i89, ptr %arrayidx.i.i86, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.usub.sat.i8(i8, i8) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !45, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !127, !129, !130, !132, !134, !135, !137, !139, !141, !142, !144, !145, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !165, !166, !167, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !253, !254, !256}
!llvm.named.register.sp = !{!258}
!llvm.module.flags = !{!259, !260, !261, !262, !263, !264, !265, !266}
!llvm.ident = !{!267}

!0 = !{ptr @mlxsw_sp_router_ll_xm_ops, !1, !"mlxsw_sp_router_ll_xm_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 714, i32 37}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 756, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mlxsw_sp_router_xm_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @mlxsw_sp_router_xm_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 762, i32 3}
!12 = !{ptr @mlxsw_sp_router_xm_init._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mlxsw_sp_router_xm_init._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__mlxsw_item_offset._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @__mlxsw_item_offset._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8811, i32 1}
!22 = distinct !{null, !21, !"mlxsw_reg_rxlte_virtual_router_item", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8821, i32 1}
!25 = distinct !{null, !24, !"mlxsw_reg_rxlte_protocol_item", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8826, i32 1}
!28 = distinct !{null, !27, !"mlxsw_reg_rxlte_lpm_xlt_en_item", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8804, i32 1}
!31 = !{ptr @mlxsw_reg_rxlte, !30, !"mlxsw_reg_rxlte", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9382, i32 1}
!34 = !{ptr @mlxsw_reg_xralta, !33, !"mlxsw_reg_xralta", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9404, i32 1}
!37 = !{ptr @mlxsw_reg_xralst, !36, !"mlxsw_reg_xralst", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9435, i32 1}
!40 = !{ptr @mlxsw_reg_xraltb, !39, !"mlxsw_reg_xraltb", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 157, i32 3}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 175, i32 3}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 181, i32 3}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9090, i32 1}
!49 = !{ptr @mlxsw_reg_xmdr, !48, !"mlxsw_reg_xmdr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9098, i32 1}
!52 = distinct !{null, !51, !"mlxsw_reg_xmdr_bulk_entry_item", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9107, i32 1}
!55 = distinct !{null, !54, !"mlxsw_reg_xmdr_num_rec_item", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9137, i32 1}
!58 = distinct !{null, !57, !"mlxsw_reg_xmdr_c_cmd_id_item", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9141, i32 1}
!61 = distinct !{null, !60, !"mlxsw_reg_xmdr_c_seq_number_item", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9154, i32 1}
!64 = distinct !{null, !63, !"mlxsw_reg_xmdr_c_ltr_op_item", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9178, i32 1}
!67 = distinct !{null, !66, !"mlxsw_reg_xmdr_c_ltr_virtual_router_item", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9183, i32 1}
!70 = distinct !{null, !69, !"mlxsw_reg_xmdr_c_ltr_prefix_len_item", i1 false, i1 false}
!71 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9196, i32 1}
!73 = distinct !{null, !72, !"mlxsw_reg_xmdr_c_ltr_entry_type_item", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9190, i32 1}
!76 = distinct !{null, !75, !"mlxsw_reg_xmdr_c_ltr_bmp_len_item", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9242, i32 1}
!79 = distinct !{null, !78, !"mlxsw_reg_xmdr_c_ltr_dip4_item", i1 false, i1 false}
!80 = distinct !{null, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9243, i32 1}
!82 = distinct !{null, !81, !"mlxsw_reg_xmdr_c_ltr_dip6_item", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 115, i32 2}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9207, i32 1}
!87 = distinct !{null, !86, !"mlxsw_reg_xmdr_c_ltr_action_type_item", i1 false, i1 false}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9160, i32 1}
!90 = distinct !{null, !89, !"mlxsw_reg_xmdr_c_ltr_trap_action_item", i1 false, i1 false}
!91 = !{ptr @.str.49, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9172, i32 1}
!93 = distinct !{null, !92, !"mlxsw_reg_xmdr_c_ltr_trap_id_num_item", i1 false, i1 false}
!94 = !{ptr @.str.51, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9219, i32 1}
!96 = distinct !{null, !95, !"mlxsw_reg_xmdr_c_ltr_adjacency_index_item", i1 false, i1 false}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9234, i32 1}
!99 = distinct !{null, !98, !"mlxsw_reg_xmdr_c_ltr_ecmp_size_item", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9213, i32 1}
!102 = distinct !{null, !101, !"mlxsw_reg_xmdr_c_ltr_erif_item", i1 false, i1 false}
!103 = !{ptr @.str.57, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9226, i32 1}
!105 = distinct !{null, !104, !"mlxsw_reg_xmdr_c_ltr_pointer_to_tunnel_item", i1 false, i1 false}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 675, i32 3}
!108 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @mlxsw_sp_router_ll_xm_fib_entry_commit._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @mlxsw_sp_router_ll_xm_fib_entry_commit._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.62, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 681, i32 4}
!113 = !{ptr @mlxsw_sp_router_ll_xm_fib_entry_commit._entry.61, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @mlxsw_sp_router_ll_xm_fib_entry_commit._entry_ptr.63, !112, !"_entry_ptr", i1 false, i1 false}
!115 = distinct !{null, !116, !"__warned", i1 false, i1 false}
!116 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!117 = !{ptr @.str.64, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!119 = distinct !{null, !120, !"__warned", i1 false, i1 false}
!120 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!121 = !{ptr @.str.66, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!123 = distinct !{null, !124, !"__warned", i1 false, i1 false}
!124 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!127 = distinct !{null, !128, !"__warned", i1 false, i1 false}
!128 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!129 = !{ptr @.str.69, !128, !"<string literal>", i1 false, i1 false}
!130 = distinct !{null, !131, !"__warned", i1 false, i1 false}
!131 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!134 = !{ptr @.str.71, !133, !"<string literal>", i1 false, i1 false}
!135 = distinct !{null, !136, !"__warned", i1 false, i1 false}
!136 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!137 = distinct !{null, !138, !"__warned", i1 false, i1 false}
!138 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!139 = !{ptr @.str.73, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9358, i32 1}
!141 = distinct !{null, !140, !"mlxsw_reg_xrmt_index_item", i1 false, i1 false}
!142 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9363, i32 1}
!144 = distinct !{null, !143, !"mlxsw_reg_xrmt_l0_val_item", i1 false, i1 false}
!145 = !{ptr @.str.77, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9351, i32 1}
!147 = !{ptr @mlxsw_reg_xrmt, !146, !"mlxsw_reg_xrmt", i1 false, i1 false}
!148 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!149 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!150 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!151 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!152 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!153 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!156 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!157 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!160 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!161 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 215, i32 3}
!164 = !{ptr @.str.84, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @__mlxsw_item_bit_array_offset._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @__mlxsw_item_bit_array_offset._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.85, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9119, i32 1}
!169 = distinct !{null, !168, !"mlxsw_reg_xmdr_reply_vect_item", i1 false, i1 false}
!170 = !{ptr @.str.86, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 632, i32 4}
!172 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @mlxsw_sp_router_xm_ml_entries_cache_flush._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @mlxsw_sp_router_xm_ml_entries_cache_flush._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @mlxsw_sp_router_xm_cache_flush_schedule.__key, !176, !"__key", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 505, i32 2}
!177 = !{ptr @.str.88, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @mlxsw_sp_router_xm_cache_flush_schedule.__key.89, !176, !"__key", i1 false, i1 false}
!179 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 401, i32 4}
!182 = !{ptr @mlxsw_sp_router_xm_cache_flush_work._entry, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @mlxsw_sp_router_xm_cache_flush_work._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @mlxsw_sp_router_xm_cache_flush_work._entry.92, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 439, i32 3}
!186 = !{ptr @mlxsw_sp_router_xm_cache_flush_work._entry_ptr.93, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.94, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8995, i32 1}
!189 = distinct !{null, !188, !"mlxsw_reg_rlpmce_flush_item", i1 false, i1 false}
!190 = !{ptr @.str.96, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9003, i32 1}
!192 = distinct !{null, !191, !"mlxsw_reg_rlpmce_disable_item", i1 false, i1 false}
!193 = !{ptr @.str.98, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8987, i32 1}
!195 = !{ptr @mlxsw_reg_rlpmce, !194, !"mlxsw_reg_rlpmce", i1 false, i1 false}
!196 = !{ptr @.str.99, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8891, i32 1}
!198 = distinct !{null, !197, !"mlxsw_reg_rlcmld_select_item", i1 false, i1 false}
!199 = !{ptr @.str.101, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8903, i32 1}
!201 = distinct !{null, !200, !"mlxsw_reg_rlcmld_filter_fields_item", i1 false, i1 false}
!202 = !{ptr @.str.103, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8913, i32 1}
!204 = distinct !{null, !203, !"mlxsw_reg_rlcmld_protocol_item", i1 false, i1 false}
!205 = !{ptr @.str.105, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8920, i32 1}
!207 = distinct !{null, !206, !"mlxsw_reg_rlcmld_virtual_router_item", i1 false, i1 false}
!208 = !{ptr @.str.107, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8927, i32 1}
!210 = distinct !{null, !209, !"mlxsw_reg_rlcmld_dip4_item", i1 false, i1 false}
!211 = !{ptr @.str.109, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8936, i32 1}
!213 = distinct !{null, !212, !"mlxsw_reg_rlcmld_dip_mask4_item", i1 false, i1 false}
!214 = distinct !{null, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8928, i32 1}
!216 = distinct !{null, !215, !"mlxsw_reg_rlcmld_dip6_item", i1 false, i1 false}
!217 = distinct !{null, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8937, i32 1}
!219 = distinct !{null, !218, !"mlxsw_reg_rlcmld_dip_mask6_item", i1 false, i1 false}
!220 = !{ptr @mlxsw_sp_router_xm_flush_mask6.mask, !221, !"mask", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 366, i32 23}
!222 = !{ptr @.str.113, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8879, i32 1}
!224 = !{ptr @mlxsw_reg_rlcmld, !223, !"mlxsw_reg_rlcmld", i1 false, i1 false}
!225 = !{ptr @.str.114, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9026, i32 1}
!227 = !{ptr @mlxsw_reg_xltq, !226, !"mlxsw_reg_xltq", i1 false, i1 false}
!228 = !{ptr @.str.115, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9037, i32 1}
!230 = distinct !{null, !229, !"mlxsw_reg_xltq_xm_device_id_item", i1 false, i1 false}
!231 = !{ptr @.str.117, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9042, i32 1}
!233 = distinct !{null, !232, !"mlxsw_reg_xltq_xlt_cap_ipv4_lpm_item", i1 false, i1 false}
!234 = !{ptr @.str.119, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9047, i32 1}
!236 = distinct !{null, !235, !"mlxsw_reg_xltq_xlt_cap_ipv6_lpm_item", i1 false, i1 false}
!237 = !{ptr @.str.121, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9054, i32 1}
!239 = distinct !{null, !238, !"mlxsw_reg_xltq_cap_xlt_entries_item", i1 false, i1 false}
!240 = !{ptr @.str.123, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 9060, i32 1}
!242 = distinct !{null, !241, !"mlxsw_reg_xltq_cap_xlt_mtable_item", i1 false, i1 false}
!243 = !{ptr @.str.125, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8853, i32 1}
!245 = distinct !{null, !244, !"mlxsw_reg_rxltm_m0_val_v6_item", i1 false, i1 false}
!246 = !{ptr @.str.127, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8860, i32 1}
!248 = distinct !{null, !247, !"mlxsw_reg_rxltm_m0_val_v4_item", i1 false, i1 false}
!249 = !{ptr @mlxsw_sp_router_xm_m_val, !250, !"mlxsw_sp_router_xm_m_val", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 15, i32 17}
!251 = !{ptr @.str.129, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 8846, i32 1}
!253 = !{ptr @mlxsw_reg_rxltm, !252, !"mlxsw_reg_rxltm", i1 false, i1 false}
!254 = !{ptr @mlxsw_sp_router_xm_ltable_ht_params, !255, !"mlxsw_sp_router_xm_ltable_ht_params", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 40, i32 39}
!256 = !{ptr @mlxsw_sp_router_xm_flush_ht_params, !257, !"mlxsw_sp_router_xm_flush_ht_params", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_router_xm.c", i32 298, i32 39}
!258 = !{!"sp"}
!259 = !{i32 1, !"wchar_size", i32 2}
!260 = !{i32 1, !"min_enum_size", i32 4}
!261 = !{i32 8, !"branch-target-enforcement", i32 0}
!262 = !{i32 8, !"sign-return-address", i32 0}
!263 = !{i32 8, !"sign-return-address-all", i32 0}
!264 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!265 = !{i32 7, !"uwtable", i32 1}
!266 = !{i32 7, !"frame-pointer", i32 2}
!267 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!268 = !{!"branch_weights", i32 2000, i32 1}
!269 = !{i64 2148234568, i64 2148234600, i64 2148234629, i64 2148234663, i64 2148234694, i64 2148234717}
!270 = !{!"branch_weights", i32 1, i32 2000}
!271 = !{i64 2148322569}
!272 = !{i64 2148237033, i64 2148237065, i64 2148237094, i64 2148237128, i64 2148237159, i64 2148237182}
!273 = !{i64 2149926706}
!274 = !{i8 0, i8 2}
!275 = !{i64 2149424889}
!276 = !{i64 2149425155}
!277 = !{i64 2149664535}
!278 = !{i64 2149667969}
!279 = !{i64 2148233038, i64 2148233064, i64 2148233093, i64 2148233127, i64 2148233158, i64 2148233181}
!280 = !{i64 2149615714}
!281 = !{!"branch_weights", i32 2146410443, i32 1073205}
!282 = !{i64 2148241896, i64 2148241928, i64 2148241957, i64 2148241991, i64 2148242022, i64 2148242045}
!283 = !{i64 2148330977}
!284 = !{i64 2149615874}
!285 = !{i64 2149616151}
!286 = !{i64 2149615993}
!287 = !{i64 2149616356}
!288 = !{i64 2149617419, i64 2149617911, i64 2149617456, i64 2149617512, i64 2149617546, i64 2149617570, i64 2149617611, i64 2149617632, i64 2149617660, i64 2149617694}
!289 = !{i64 2148329864}
!290 = !{i64 2148240283, i64 2148240315, i64 2148240344, i64 2148240378, i64 2148240409, i64 2148240432}
!291 = !{i64 2149618814}
!292 = !{i64 2149657608}
!293 = !{i64 2149659907}
!294 = !{i64 2149731911}
!295 = !{i64 2148235503, i64 2148235529, i64 2148235558, i64 2148235592, i64 2148235623, i64 2148235646}
