; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c_pt.bc'
source_filename = "../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mlxsw_reg_info = type { i16, i16, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlxsw_sp_fid_family = type { i32, i32, i16, i16, %struct.list_head, ptr, ptr, i32, i32, ptr, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mlxsw_sp_flood_table = type { i32, i32, i32, i32 }
%struct.mlxsw_sp_fid_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mlxsw_sp = type { ptr, ptr, ptr, [6 x i8], ptr, ptr, ptr, %struct.rhashtable, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, ptr, ptr, ptr, %struct.mlxsw_sp_parsing, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.rhashtable, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlxsw_sp_parsing = type { %struct.refcount_struct, i16, i16, %struct.mutex }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mlxsw_sp_fid_core = type { %struct.rhashtable, %struct.rhashtable, [4 x ptr], ptr }
%struct.mlxsw_sp_fid = type { %struct.list_head, ptr, %struct.refcount_struct, i16, ptr, %struct.rhash_head, %struct.rhash_head, i32, i32, i32, i32, i8 }
%struct.rhash_head = type { ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [68 x i8], [0 x ptr] }
%struct.callback_head = type { ptr, ptr }
%struct.mlxsw_sp_fid_8021q = type { %struct.mlxsw_sp_fid, i16 }
%struct.mlxsw_sp_port = type { ptr, ptr, ptr, i16, i8, i16, i16, %struct.anon.161, %struct.anon.162, %struct.mlxsw_sp_port_mapping, %struct.anon.163, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.anon.165, i32, i32, ptr, i64 }
%struct.anon.161 = type { i8 }
%struct.anon.162 = type { ptr, ptr, ptr, i32 }
%struct.mlxsw_sp_port_mapping = type { i8, i8, i8, i8 }
%struct.anon.163 = type { %struct.rtnl_link_stats64, %struct.mlxsw_sp_port_xstats, %struct.delayed_work }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.mlxsw_sp_port_xstats = type { i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], [8 x i64], [8 x i64] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.165 = type { %struct.delayed_work, %struct.hwtstamp_config, i16, i16, %struct.mlxsw_sp_ptp_port_stats }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mlxsw_sp_ptp_port_stats = type { %struct.mlxsw_sp_ptp_port_dir_stats, %struct.mlxsw_sp_ptp_port_dir_stats }
%struct.mlxsw_sp_ptp_port_dir_stats = type { i64, i64 }
%struct.mlxsw_sp_port_vlan = type { %struct.list_head, ptr, ptr, i16, ptr, %struct.list_head }
%struct.mlxsw_sp_fid_8021d = type { %struct.mlxsw_sp_fid, i32 }

@mlxsw_sp_fid_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 2, i16 16, i16 24, i32 0, i16 0, i8 0, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mlxsw_sp_fid_vni_ht_params = internal constant { %struct.rhashtable_params, [36 x i8] } { %struct.rhashtable_params { i16 0, i16 4, i16 36, i16 28, i32 0, i16 0, i8 0, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c\00", [45 x i8] zeroinitializer }, align 32
@mlxsw_reg_sftr2 = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 8239, i16 288, ptr @.str.32 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_fid_family_arr = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @mlxsw_sp_fid_8021q_emu_family, ptr @mlxsw_sp_fid_8021d_family, ptr @mlxsw_sp_fid_rfid_family, ptr @mlxsw_sp_fid_dummy_family], [16 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/rhashtable.h\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__rhashtable_lookup.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__rhashtable_insert_fast.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rht_ptr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__rhashtable_remove_fast.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__rhashtable_remove_fast_one.__warned.14 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__mlxsw_item_offset._entry = internal constant %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 35, ptr null, ptr null }, align 1
@.str.15 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,step=%x,in_step_offset=%x,typesize=%zx)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__mlxsw_item_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/mellanox/mlxsw/item.h\00", [53 x i8] zeroinitializer }, align 32
@__mlxsw_item_offset._entry_ptr = internal global ptr @__mlxsw_item_offset._entry, section ".printk_index", align 4
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_sftr2_swid\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"reg_sftr2_flood_table\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_sftr2_index\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_sftr2_table_type\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_sftr2_range\00", [16 x i8] zeroinitializer }, align 32
@__mlxsw_item_bit_array_offset._entry = internal constant %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.17, i32 216, ptr null, ptr null }, align 1
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013mlxsw: item bug (name=%s,offset=%x,element_size=%x)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"__mlxsw_item_bit_array_offset\00", [34 x i8] zeroinitializer }, align 32
@__mlxsw_item_bit_array_offset._entry_ptr = internal global ptr @__mlxsw_item_bit_array_offset._entry, section ".printk_index", align 4
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg_sftr2_port\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_sftr2_port_mask\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sftr2\00", [26 x i8] zeroinitializer }, align 32
@mlxsw_sp_packet_type_sfgc_types = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @mlxsw_sp_sfgc_uc_packet_types, ptr @mlxsw_sp_sfgc_bc_packet_types, ptr @mlxsw_sp_sfgc_mc_packet_types], [20 x i8] zeroinitializer }, align 32
@mlxsw_reg_sfgc = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 8209, i16 16, ptr @.str.43 }, [24 x i8] zeroinitializer }, align 32
@mlxsw_sp_sfgc_uc_packet_types = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_sfgc_bc_packet_types = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 0, i32 0, i32 1, i32 0, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@mlxsw_sp_sfgc_mc_packet_types = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_sfgc_type\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_sfgc_bridge_type\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_sfgc_table_type\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reg_sfgc_flood_table\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_sfgc_mid\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sfgc\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_sp_fid_8021q_emu_family = internal constant { %struct.mlxsw_sp_fid_family, [48 x i8] } { %struct.mlxsw_sp_fid_family { i32 0, i32 56, i16 5120, i16 9213, %struct.list_head zeroinitializer, ptr null, ptr @mlxsw_sp_fid_8021d_flood_tables, i32 3, i32 1, ptr @mlxsw_sp_fid_8021q_emu_ops, ptr null, i8 -128 }, [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_fid_8021d_family = internal constant { %struct.mlxsw_sp_fid_family, [48 x i8] } { %struct.mlxsw_sp_fid_family { i32 1, i32 56, i16 4096, i16 5119, %struct.list_head zeroinitializer, ptr null, ptr @mlxsw_sp_fid_8021d_flood_tables, i32 3, i32 2, ptr @mlxsw_sp_fid_8021d_ops, ptr null, i8 -128 }, [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_fid_rfid_family = internal constant { %struct.mlxsw_sp_fid_family, [48 x i8] } { %struct.mlxsw_sp_fid_family { i32 2, i32 52, i16 15360, i16 16383, %struct.list_head zeroinitializer, ptr null, ptr null, i32 0, i32 0, ptr @mlxsw_sp_fid_rfid_ops, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_fid_dummy_family = internal constant { %struct.mlxsw_sp_fid_family, [48 x i8] } { %struct.mlxsw_sp_fid_family { i32 3, i32 52, i16 4095, i16 4095, %struct.list_head zeroinitializer, ptr null, ptr null, i32 0, i32 0, ptr @mlxsw_sp_fid_dummy_ops, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_fid_8021d_flood_tables = internal constant { [3 x %struct.mlxsw_sp_flood_table], [48 x i8] } { [3 x %struct.mlxsw_sp_flood_table] [%struct.mlxsw_sp_flood_table { i32 0, i32 1, i32 4, i32 0 }, %struct.mlxsw_sp_flood_table { i32 2, i32 1, i32 4, i32 1 }, %struct.mlxsw_sp_flood_table { i32 1, i32 1, i32 4, i32 2 }], [48 x i8] zeroinitializer }, align 32
@mlxsw_sp_fid_8021q_emu_ops = internal constant { %struct.mlxsw_sp_fid_ops, [44 x i8] } { %struct.mlxsw_sp_fid_ops { ptr @mlxsw_sp_fid_8021q_setup, ptr @mlxsw_sp_fid_8021d_configure, ptr @mlxsw_sp_fid_8021d_deconfigure, ptr @mlxsw_sp_fid_8021d_index_alloc, ptr @mlxsw_sp_fid_8021q_compare, ptr @mlxsw_sp_fid_8021d_flood_index, ptr @mlxsw_sp_fid_8021d_port_vid_map, ptr @mlxsw_sp_fid_8021d_port_vid_unmap, ptr @mlxsw_sp_fid_8021d_vni_set, ptr @mlxsw_sp_fid_8021d_vni_clear, ptr @mlxsw_sp_fid_8021d_nve_flood_index_set, ptr @mlxsw_sp_fid_8021d_nve_flood_index_clear, ptr @mlxsw_sp_fid_8021q_fdb_clear_offload }, [44 x i8] zeroinitializer }, align 32
@mlxsw_reg_sfmr = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 8223, i16 24, ptr @.str.54 }, [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_sfmr_op\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_sfmr_fid\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_sfmr_fid_offset\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_sfmr_vtfp\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg_sfmr_vv\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sfmr\00", [27 x i8] zeroinitializer }, align 32
@mlxsw_reg_svfa = internal constant { %struct.mlxsw_reg_info, [24 x i8] } { %struct.mlxsw_reg_info { i16 8220, i16 16, ptr @.str.69 }, [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reg_svfa_swid\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg_svfa_local_port\00", [44 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"reg_svfa_lp_msb\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reg_svfa_mapping_table\00", [41 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reg_svfa_v\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_svfa_fid\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_svfa_vid\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"svfa\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reg_sfmr_vni\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reg_sfmr_nve_tunnel_flood_ptr\00", [34 x i8] zeroinitializer }, align 32
@mlxsw_sp_fid_8021d_ops = internal constant { %struct.mlxsw_sp_fid_ops, [44 x i8] } { %struct.mlxsw_sp_fid_ops { ptr @mlxsw_sp_fid_8021d_setup, ptr @mlxsw_sp_fid_8021d_configure, ptr @mlxsw_sp_fid_8021d_deconfigure, ptr @mlxsw_sp_fid_8021d_index_alloc, ptr @mlxsw_sp_fid_8021d_compare, ptr @mlxsw_sp_fid_8021d_flood_index, ptr @mlxsw_sp_fid_8021d_port_vid_map, ptr @mlxsw_sp_fid_8021d_port_vid_unmap, ptr @mlxsw_sp_fid_8021d_vni_set, ptr @mlxsw_sp_fid_8021d_vni_clear, ptr @mlxsw_sp_fid_8021d_nve_flood_index_set, ptr @mlxsw_sp_fid_8021d_nve_flood_index_clear, ptr @mlxsw_sp_fid_8021d_fdb_clear_offload }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_fid_rfid_ops = internal constant { %struct.mlxsw_sp_fid_ops, [44 x i8] } { %struct.mlxsw_sp_fid_ops { ptr null, ptr @mlxsw_sp_fid_rfid_configure, ptr @mlxsw_sp_fid_rfid_deconfigure, ptr @mlxsw_sp_fid_rfid_index_alloc, ptr @mlxsw_sp_fid_rfid_compare, ptr null, ptr @mlxsw_sp_fid_rfid_port_vid_map, ptr @mlxsw_sp_fid_rfid_port_vid_unmap, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_fid_dummy_ops = internal constant { %struct.mlxsw_sp_fid_ops, [44 x i8] } { %struct.mlxsw_sp_fid_ops { ptr null, ptr @mlxsw_sp_fid_dummy_configure, ptr @mlxsw_sp_fid_dummy_deconfigure, ptr @mlxsw_sp_fid_dummy_index_alloc, ptr @mlxsw_sp_fid_dummy_compare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mlxsw_sp_fid_family_unregister.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"mlxsw_sp_fid_ht_params\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 52, i32 39 }
@___asan_gen_.77 = private unnamed_addr constant [27 x i8] c"mlxsw_sp_fid_vni_ht_params\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 58, i32 39 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 209, i32 6 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"mlxsw_reg_sftr2\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"mlxsw_sp_fid_family_arr\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 880, i32 42 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 695, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 594, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 723, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [30 x i8] c"../include/linux/rhashtable.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 755, i32 10 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 33, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2030, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2037, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2044, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2050, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2056, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant [46 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/item.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 215, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2062, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2068, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 2024, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_packet_type_sfgc_types\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 124, i32 19 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_sfgc\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [30 x i8] c"mlxsw_sp_sfgc_uc_packet_types\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 108, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant [30 x i8] c"mlxsw_sp_sfgc_bc_packet_types\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 112, i32 18 }
@___asan_gen_.158 = private unnamed_addr constant [30 x i8] c"mlxsw_sp_sfgc_mc_packet_types\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 120, i32 18 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1020, i32 1 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1032, i32 1 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1048, i32 1 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1055, i32 1 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1061, i32 1 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1002, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant [30 x i8] c"mlxsw_sp_fid_8021q_emu_family\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 742, i32 41 }
@___asan_gen_.182 = private unnamed_addr constant [26 x i8] c"mlxsw_sp_fid_8021d_family\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 693, i32 41 }
@___asan_gen_.185 = private unnamed_addr constant [25 x i8] c"mlxsw_sp_fid_rfid_family\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 830, i32 41 }
@___asan_gen_.188 = private unnamed_addr constant [26 x i8] c"mlxsw_sp_fid_dummy_family\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 872, i32 41 }
@___asan_gen_.191 = private unnamed_addr constant [32 x i8] c"mlxsw_sp_fid_8021d_flood_tables\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 671, i32 42 }
@___asan_gen_.194 = private unnamed_addr constant [27 x i8] c"mlxsw_sp_fid_8021q_emu_ops\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 720, i32 38 }
@___asan_gen_.197 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_sfmr\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1759, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1765, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1773, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1782, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1799, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1746, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant [15 x i8] c"mlxsw_reg_svfa\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1527, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1535, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1550, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1559, i32 1 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1565, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1571, i32 1 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1521, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1807, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [45 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/reg.h\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 1790, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant [23 x i8] c"mlxsw_sp_fid_8021d_ops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 655, i32 38 }
@___asan_gen_.254 = private unnamed_addr constant [22 x i8] c"mlxsw_sp_fid_rfid_ops\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 818, i32 38 }
@___asan_gen_.257 = private unnamed_addr constant [23 x i8] c"mlxsw_sp_fid_dummy_ops\00", align 1
@___asan_gen_.258 = private constant [54 x i8] c"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 865, i32 38 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__mlxsw_item_bit_array_offset._entry, ptr @__mlxsw_item_bit_array_offset._entry_ptr, ptr @__mlxsw_item_offset._entry, ptr @__mlxsw_item_offset._entry_ptr, ptr @mlxsw_sp_fid_ht_params, ptr @mlxsw_sp_fid_vni_ht_params, ptr @.str, ptr @mlxsw_reg_sftr2, ptr @mlxsw_sp_fid_family_arr, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @mlxsw_sp_packet_type_sfgc_types, ptr @mlxsw_reg_sfgc, ptr @mlxsw_sp_sfgc_uc_packet_types, ptr @mlxsw_sp_sfgc_bc_packet_types, ptr @mlxsw_sp_sfgc_mc_packet_types, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @mlxsw_sp_fid_8021q_emu_family, ptr @mlxsw_sp_fid_8021d_family, ptr @mlxsw_sp_fid_rfid_family, ptr @mlxsw_sp_fid_dummy_family, ptr @mlxsw_sp_fid_8021d_flood_tables, ptr @mlxsw_sp_fid_8021q_emu_ops, ptr @mlxsw_reg_sfmr, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @mlxsw_reg_svfa, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @mlxsw_sp_fid_8021d_ops, ptr @mlxsw_sp_fid_rfid_ops, ptr @mlxsw_sp_fid_dummy_ops], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fid_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fid_vni_ht_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sftr2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fid_family_arr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_packet_type_sfgc_types to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sfgc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_sfgc_uc_packet_types to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_sfgc_bc_packet_types to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_sfgc_mc_packet_types to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fid_8021q_emu_family to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fid_8021d_family to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fid_rfid_family to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fid_dummy_family to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fid_8021d_flood_tables to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fid_8021q_emu_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_sfmr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_reg_svfa to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fid_8021d_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fid_rfid_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxsw_sp_fid_dummy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlxsw_sp_fid_is_dummy(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %fid_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 14
  %0 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_core, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_fid_core, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %start_index = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %start_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %start_index, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %fid_index)
  %cmp = icmp eq i16 %5, %fid_index
  ret i1 %cmp
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlxsw_sp_fid_lag_vid_valid(ptr nocapture noundef readonly %fid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family, align 4
  %lag_vid_valid = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %lag_vid_valid to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %lag_vid_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_fid_lookup_by_index(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %fid_index) local_unnamed_addr #2 align 64 {
entry:
  %fid_index.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fid_index.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %fid_index, ptr %fid_index.addr, align 2
  %fid_core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 14
  %1 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fid_core, align 4
  %call = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %2, ptr noundef nonnull %fid_index.addr, [7 x i32] [i32 2, i32 1048600, i32 0, i32 0, i32 0, i32 0, i32 0])
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %ref_count = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %call, i32 0, i32 2
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #16
  %3 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #16, !srcloc !184
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !185

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !186

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef %.sink.i.i.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup_fast(ptr noundef %ht, ptr noundef %key, [7 x i32] %params.coerce) unnamed_addr #3 align 64 {
entry:
  %arg.i.i = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !187
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %params.coerce.fca.6.extract.i.i = extractvalue [7 x i32] %params.coerce, 6
  %4 = inttoptr i32 %params.coerce.fca.6.extract.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg.i.i) #16
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
  %call.i.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %rcu_read_lock.exit.do.end12.i.i_crit_edge

rcu_read_lock.exit.do.end12.i.i_crit_edge:        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit
  %call5.i.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end12.i.i_crit_edge

lor.lhs.false.i.i.do.end12.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call7.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %land.lhs.true.i.i.do.end12.i.i_crit_edge, label %land.lhs.true9.i.i

land.lhs.true.i.i.do.end12.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12.i.i

land.lhs.true9.i.i:                               ; preds = %land.lhs.true.i.i
  %.b92.i.i = load i1, ptr @__rhashtable_lookup.__warned, align 1
  br i1 %.b92.i.i, label %land.lhs.true9.i.i.do.end12.i.i_crit_edge, label %if.then.i.i

land.lhs.true9.i.i.do.end12.i.i_crit_edge:        ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12.i.i

if.then.i.i:                                      ; preds = %land.lhs.true9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 594, ptr noundef nonnull @.str.4) #16
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
  %call.i.i.i.i = call i32 %13(ptr noundef %key, i32 noundef %15, i32 noundef %11) #16
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
  br i1 %tobool.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i, !prof !186

cond.true.i.i.i:                                  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = call ptr @rht_bucket_nested(ptr noundef %tbl.0.i.i, i32 noundef %and.i3.i.i.i) #16
  br label %rht_bucket.exit.i.i

cond.false.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 8, i32 %and.i3.i.i.i
  br label %rht_bucket.exit.i.i

rht_bucket.exit.i.i:                              ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %cond.i.i.i = phi ptr [ %call.i.i.i, %cond.true.i.i.i ], [ %arrayidx.i.i.i, %cond.false.i.i.i ]
  %20 = ptrtoint ptr %cond.i.i.i to i32
  %or.i.i.i.i = or i32 %20, 1
  %21 = inttoptr i32 %or.i.i.i.i to ptr
  br label %do.body16.i.i

do.body16.i.i:                                    ; preds = %do.cond34.i.i.do.body16.i.i_crit_edge, %rht_bucket.exit.i.i
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !188
  %22 = ptrtoint ptr %cond.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %cond.i.i.i, align 4
  %call.i93.i.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i.i.i, label %do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge

do.body16.i.i.rht_ptr_rcu.exit.i.i_crit_edge:     ; preds = %do.body16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %do.body16.i.i
  %call2.i.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %land.lhs.true4.i.i.i

land.lhs.true.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr_rcu.exit.i.i

land.lhs.true4.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b11.i.i.i = load i1, ptr @rht_ptr_rcu.__warned, align 1
  br i1 %.b11.i.i.i, label %land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true4.i.i.i.rht_ptr_rcu.exit.i.i_crit_edge: ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr_rcu.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rht_ptr_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 369, ptr noundef nonnull @.str.4) #16
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
  call void @__sanitizer_cov_trace_pc() #18
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
  %call22.i.i = call i32 %4(ptr noundef nonnull %arg.i.i, ptr noundef %add.ptr.i100.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.true.i.i.for.inc.i.i_crit_edge

cond.true.i.i.for.inc.i.i_crit_edge:              ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
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
  %bcmp.i.i = call i32 @bcmp(ptr %add.ptr.i102.i.i, ptr %33, i32 %conv3.i.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool26.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, label %cond.false.i.i.for.inc.i.i_crit_edge

cond.false.i.i.for.inc.i.i_crit_edge:             ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i

cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge: ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond34.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

do.cond34.i.i:                                    ; preds = %for.inc.i.i.do.cond34.i.i_crit_edge, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge
  %he.0.lcssa.i.i = phi ptr [ %25, %rht_ptr_rcu.exit.i.i.do.cond34.i.i_crit_edge ], [ %37, %for.inc.i.i.do.cond34.i.i_crit_edge ]
  %cmp.not.i.i = icmp eq ptr %he.0.lcssa.i.i, %21
  br i1 %cmp.not.i.i, label %do.end39.i.i, label %do.cond34.i.i.do.body16.i.i_crit_edge

do.cond34.i.i.do.body16.i.i_crit_edge:            ; preds = %do.cond34.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body16.i.i

do.end39.i.i:                                     ; preds = %do.cond34.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !189
  %future_tbl.i.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %future_tbl.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %future_tbl.i.i, align 4
  %call47.i.i = call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %do.end39.i.i.do.end60.i.i_crit_edge

do.end39.i.i.do.end60.i.i_crit_edge:              ; preds = %do.end39.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end60.i.i

lor.lhs.false49.i.i:                              ; preds = %do.end39.i.i
  %call50.i.i = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %lor.lhs.false49.i.i.do.end60.i.i_crit_edge

lor.lhs.false49.i.i.do.end60.i.i_crit_edge:       ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end60.i.i

land.lhs.true52.i.i:                              ; preds = %lor.lhs.false49.i.i
  %call53.i.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %land.lhs.true52.i.i.do.end60.i.i_crit_edge, label %land.lhs.true55.i.i

land.lhs.true52.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end60.i.i

land.lhs.true55.i.i:                              ; preds = %land.lhs.true52.i.i
  %.b9091.i.i = load i1, ptr @__rhashtable_lookup.__warned.5, align 1
  br i1 %.b9091.i.i, label %land.lhs.true55.i.i.do.end60.i.i_crit_edge, label %if.then57.i.i

land.lhs.true55.i.i.do.end60.i.i_crit_edge:       ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end60.i.i

if.then57.i.i:                                    ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_lookup.__warned.5, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 614, ptr noundef nonnull @.str.4) #16
  br label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.then57.i.i, %land.lhs.true55.i.i.do.end60.i.i_crit_edge, %land.lhs.true52.i.i.do.end60.i.i_crit_edge, %lor.lhs.false49.i.i.do.end60.i.i_crit_edge, %do.end39.i.i.do.end60.i.i_crit_edge
  %tobool62.not.i.i = icmp eq ptr %40, null
  br i1 %tobool62.not.i.i, label %__rhashtable_lookup.exit.thread.i, label %do.end60.i.i.if.then.i.i.i.i_crit_edge, !prof !186

do.end60.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i.i

__rhashtable_lookup.exit.thread.i:                ; preds = %do.end60.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #16
  br label %rhashtable_lookup.exit

__rhashtable_lookup.exit.i:                       ; preds = %cond.false.i.i.__rhashtable_lookup.exit.i_crit_edge, %cond.true.i.i.__rhashtable_lookup.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg.i.i) #16
  %tobool.not.i1 = icmp eq ptr %he.0108.i.i, null
  br i1 %tobool.not.i1, label %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, label %cond.true.i

__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge: ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rhashtable_lookup.exit

cond.true.i:                                      ; preds = %__rhashtable_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %head_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %head_offset.i.i.i, align 2
  %conv.i.i = zext i16 %42 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %he.0108.i.i, i32 %idx.neg.i.i
  br label %rhashtable_lookup.exit

rhashtable_lookup.exit:                           ; preds = %cond.true.i, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge, %__rhashtable_lookup.exit.thread.i
  %cond.i = phi ptr [ %add.ptr.i.i, %cond.true.i ], [ null, %__rhashtable_lookup.exit.i.rhashtable_lookup.exit_crit_edge ], [ null, %__rhashtable_lookup.exit.thread.i ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i2, label %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rhashtable_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %rhashtable_lookup.exit
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %rhashtable_lookup.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !190
  %43 = call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i.i.i9 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret ptr %cond.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlxsw_sp_fid_nve_ifindex(ptr nocapture noundef readonly %fid, ptr nocapture noundef writeonly %nve_ifindex) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vni_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %0 = ptrtoint ptr %vni_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %vni_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %nve_ifindex1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 10
  %1 = ptrtoint ptr %nve_ifindex1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nve_ifindex1, align 4
  %3 = ptrtoint ptr %nve_ifindex to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %nve_ifindex, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlxsw_sp_fid_nve_type(ptr nocapture noundef readonly %fid, ptr nocapture noundef writeonly %p_type) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vni_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %0 = ptrtoint ptr %vni_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %vni_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %nve_type = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 7
  %1 = ptrtoint ptr %nve_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nve_type, align 4
  %3 = ptrtoint ptr %p_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %p_type, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_fid_lookup_by_vni(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %vni) local_unnamed_addr #2 align 64 {
entry:
  %vni.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vni.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %vni, ptr %vni.addr, align 4
  %fid_core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 14
  %1 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fid_core, align 4
  %vni_ht = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %2, i32 0, i32 1
  %call = call fastcc ptr @rhashtable_lookup_fast(ptr noundef %vni_ht, ptr noundef nonnull %vni.addr, [7 x i32] [i32 4, i32 2359324, i32 0, i32 0, i32 0, i32 0, i32 0])
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %ref_count = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %call, i32 0, i32 2
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #16
  %3 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #16, !srcloc !184
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !185

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !186

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef %.sink.i.i.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlxsw_sp_fid_vni(ptr nocapture noundef readonly %fid, ptr nocapture noundef writeonly %vni) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vni_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %0 = ptrtoint ptr %vni_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %vni_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %vni1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 8
  %1 = ptrtoint ptr %vni1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %vni1, align 4
  %3 = ptrtoint ptr %vni to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %vni, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_fid_nve_flood_index_set(ptr noundef %fid, i32 noundef %nve_flood_index) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family1, align 4
  %ops2 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops2, align 4
  %nve_flood_index_set = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %nve_flood_index_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nve_flood_index_set, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %nve_flood_index_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %6 = ptrtoint ptr %nve_flood_index_valid to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %nve_flood_index_valid, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %if.end25, label %lor.rhs.do.end_crit_edge, !prof !186

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 209, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end25:                                         ; preds = %lor.rhs
  %call = tail call i32 %5(ptr noundef %fid, i32 noundef %nve_flood_index) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool27.not = icmp eq i32 %call, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #18
  %nve_flood_index30 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 9
  %8 = ptrtoint ptr %nve_flood_index30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %nve_flood_index, ptr %nve_flood_index30, align 4
  %9 = ptrtoint ptr %nve_flood_index_valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load32 = load i8, ptr %nve_flood_index_valid, align 4
  %bf.set = or i8 %bf.load32, 64
  store i8 %bf.set, ptr %nve_flood_index_valid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %if.end25.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end29 ], [ %call, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_fid_nve_flood_index_clear(ptr noundef %fid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family1, align 4
  %ops2 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops2, align 4
  %nve_flood_index_clear = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %nve_flood_index_clear to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nve_flood_index_clear, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %nve_flood_index_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %6 = ptrtoint ptr %nve_flood_index_valid to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %nve_flood_index_valid, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %lor.rhs.do.end_crit_edge, label %if.end26, !prof !185

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 227, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end26:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  %bf.clear29 = and i8 %bf.load, -65
  %8 = ptrtoint ptr %nve_flood_index_valid to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.clear29, ptr %nve_flood_index_valid, align 4
  %9 = ptrtoint ptr %nve_flood_index_clear to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nve_flood_index_clear, align 4
  tail call void %10(ptr noundef %fid) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlxsw_sp_fid_nve_flood_index_is_set(ptr nocapture noundef readonly %fid) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %nve_flood_index_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %0 = ptrtoint ptr %nve_flood_index_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %nve_flood_index_valid, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_fid_vni_set(ptr noundef %fid, i32 noundef %type, i32 noundef %vni, i32 noundef %nve_ifindex) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family1, align 4
  %ops2 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops2, align 4
  %mlxsw_sp3 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %mlxsw_sp3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mlxsw_sp3, align 4
  %vni_set = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %vni_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vni_set, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %vni_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %8 = ptrtoint ptr %vni_valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %vni_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool4 = icmp slt i8 %bf.load, 0
  br i1 %tobool4, label %lor.rhs.do.end_crit_edge, label %if.end26, !prof !185

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end26:                                         ; preds = %lor.rhs
  %nve_type = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 7
  %9 = ptrtoint ptr %nve_type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %type, ptr %nve_type, align 4
  %nve_ifindex27 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 10
  %10 = ptrtoint ptr %nve_ifindex27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %nve_ifindex, ptr %nve_ifindex27, align 4
  %vni28 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 8
  %11 = ptrtoint ptr %vni28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %vni, ptr %vni28, align 4
  %fid_core = getelementptr inbounds %struct.mlxsw_sp, ptr %5, i32 0, i32 14
  %12 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fid_core, align 4
  %vni_ht_node = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 6
  %obj_hashfn.i = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %13, i32 0, i32 1, i32 3, i32 8
  %14 = ptrtoint ptr %obj_hashfn.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %obj_hashfn.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %rhashtable_lookup_insert_fast.exit, label %do.body3.i, !prof !186

do.body3.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/rhashtable.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 903, 0\0A.popsection", ""() #16, !srcloc !191
  unreachable

rhashtable_lookup_insert_fast.exit:               ; preds = %if.end26
  %vni_ht = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %13, i32 0, i32 1
  %head_offset.i.i = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %13, i32 0, i32 1, i32 3, i32 3
  %16 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %17 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %vni_ht_node, i32 %idx.neg.i.i
  %key_offset.i = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %13, i32 0, i32 1, i32 3, i32 2
  %18 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %key_offset.i, align 4
  %conv.i = zext i16 %19 to i32
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv.i
  %call10.i = tail call fastcc ptr @__rhashtable_insert_fast(ptr noundef %vni_ht, ptr noundef %add.ptr.i, ptr noundef %vni_ht_node, [7 x i32] [i32 4, i32 2359324, i32 0, i32 0, i32 0, i32 0, i32 0]) #16
  %cmp.i.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  %20 = ptrtoint ptr %call10.i to i32
  %cmp.i = icmp eq ptr %call10.i, null
  %cond.i = select i1 %cmp.i, i32 0, i32 -17
  %retval.0.i = select i1 %cmp.i.i, i32 %20, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool29.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool29.not, label %if.end31, label %rhashtable_lookup_insert_fast.exit.cleanup_crit_edge

rhashtable_lookup_insert_fast.exit.cleanup_crit_edge: ; preds = %rhashtable_lookup_insert_fast.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end31:                                         ; preds = %rhashtable_lookup_insert_fast.exit
  %21 = ptrtoint ptr %vni_set to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vni_set, align 4
  %call33 = tail call i32 %22(ptr noundef %fid, i32 noundef %vni) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %err_vni_set

if.end36:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %vni_valid to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load38 = load i8, ptr %vni_valid, align 4
  %bf.set = or i8 %bf.load38, -128
  store i8 %bf.set, ptr %vni_valid, align 4
  br label %cleanup

err_vni_set:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  %24 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fid_core, align 4
  %vni_ht40 = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %25, i32 0, i32 1
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %vni_ht40, ptr noundef %vni_ht_node, [7 x i32] [i32 4, i32 2359324, i32 0, i32 0, i32 0, i32 0, i32 0])
  br label %cleanup

cleanup:                                          ; preds = %err_vni_set, %if.end36, %rhashtable_lookup_insert_fast.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call33, %err_vni_set ], [ 0, %if.end36 ], [ %retval.0.i, %rhashtable_lookup_insert_fast.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rhashtable_remove_fast(ptr noundef %ht, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !187
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %4 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ht, align 4
  %call.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %rcu_read_lock.exit.i.do.end10.i_crit_edge

rcu_read_lock.exit.i.do.end10.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end10.i_crit_edge

lor.lhs.false.i.do.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @__rhashtable_remove_fast.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true7.i.do.end10.i_crit_edge, label %if.then.i

land.lhs.true7.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end10.i

if.then.i:                                        ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1076, ptr noundef nonnull @.str.4) #16
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
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.i.i, label %cond.true.i.i.i, !prof !185

cond.true.i.i.i:                                  ; preds = %while.cond.i
  br i1 %tobool4.not.i.i.i, label %cond.false.i.i.i, label %cond.true.i.i.i.cond.end.i.i.i_crit_edge

cond.true.i.i.i.cond.end.i.i.i_crit_edge:         ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i.i.i

cond.false.i.i.i:                                 ; preds = %cond.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
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
  %call8.i.i.i = tail call i32 %6(ptr noundef %add.ptr.i.i.i.i, i32 noundef %cond.i.i.i, i32 noundef %12) #16
  br label %rht_head_hashfn.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
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
  %call.i.i.i.i.i = tail call i32 %16(ptr noundef %add.ptr.i.i.i, i32 noundef %18, i32 noundef %14) #16
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
  br i1 %tobool.not.i3.i.i, label %cond.false.i5.i.i, label %cond.true.i4.i.i, !prof !186

cond.true.i4.i.i:                                 ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call ptr @__rht_bucket_nested(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #16
  br label %rht_bucket_var.exit.i.i

cond.false.i5.i.i:                                ; preds = %rht_head_hashfn.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i.i = getelementptr %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 8, i32 %and.i3.i.i.i.i
  br label %rht_bucket_var.exit.i.i

rht_bucket_var.exit.i.i:                          ; preds = %cond.false.i5.i.i, %cond.true.i4.i.i
  %cond.i6.i.i = phi ptr [ %call.i.i.i, %cond.true.i4.i.i ], [ %arrayidx.i.i.i, %cond.false.i5.i.i ]
  %tobool.not.i3.i = icmp eq ptr %cond.i6.i.i, null
  br i1 %tobool.not.i3.i, label %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge, label %if.end.i.i

rht_bucket_var.exit.i.i.land.rhs.i_crit_edge:     ; preds = %rht_bucket_var.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.rhs.i

if.end.i.i:                                       ; preds = %rht_bucket_var.exit.i.i
  tail call fastcc void @rht_lock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #16
  %call.i8.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i)
  %tobool.not.i9.i.i = icmp eq i32 %call.i8.i.i, 0
  br i1 %tobool.not.i9.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.rht_ptr.exit.i.i_crit_edge

if.end.i.i.rht_ptr.exit.i.i_crit_edge:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.rht_ptr.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit.i.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.rht_ptr.exit.i.i_crit_edge:  ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 377, ptr noundef nonnull @.str.8) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlocked.i.i

for.body.preheader.i.i:                           ; preds = %rht_ptr.exit.i.i
  %27 = inttoptr i32 %cond.i.i.i.i to ptr
  %cmp.not.i20.i = icmp eq ptr %27, %obj
  br i1 %cmp.not.i20.i, label %for.body.preheader.i.i.do.body54.i.i_crit_edge, label %for.body.preheader.i.i.do.body145.i.i_crit_edge

for.body.preheader.i.i.do.body145.i.i_crit_edge:  ; preds = %for.body.preheader.i.i
  br label %do.body145.i.i

for.body.preheader.i.i.do.body54.i.i_crit_edge:   ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body54.i.i

for.body.i.i:                                     ; preds = %do.end156.i.i
  %cmp.not.i.i = icmp eq ptr %32, %obj
  br i1 %cmp.not.i.i, label %for.body.i.i.do.body54.i.i_crit_edge, label %for.body.i.i.do.body145.i.i_crit_edge

for.body.i.i.do.body145.i.i_crit_edge:            ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body145.i.i

for.body.i.i.do.body54.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body54.i.i

do.body54.i.i:                                    ; preds = %for.body.i.i.do.body54.i.i_crit_edge, %for.body.preheader.i.i.do.body54.i.i_crit_edge
  %pprev.023.i.lcssa.i = phi ptr [ %he.022.i21.i, %for.body.i.i.do.body54.i.i_crit_edge ], [ null, %for.body.preheader.i.i.do.body54.i.i_crit_edge ]
  %call55.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %land.lhs.true57.i.i, label %do.body54.i.i.do.end65.i.i_crit_edge

do.body54.i.i.do.end65.i.i_crit_edge:             ; preds = %do.body54.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65.i.i

land.lhs.true57.i.i:                              ; preds = %do.body54.i.i
  %call58.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i.i)
  %tobool59.not.i.i = icmp eq i32 %call58.i.i, 0
  br i1 %tobool59.not.i.i, label %land.lhs.true57.i.i.do.end65.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true57.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true57.i.i
  %.b2.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.12, align 1
  br i1 %.b2.i.i, label %land.lhs.true60.i.i.do.end65.i.i_crit_edge, label %if.then62.i.i

land.lhs.true60.i.i.do.end65.i.i_crit_edge:       ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65.i.i

if.then62.i.i:                                    ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1032, ptr noundef nonnull @.str.8) #16
  br label %do.end65.i.i

do.end65.i.i:                                     ; preds = %if.then62.i.i, %land.lhs.true60.i.i.do.end65.i.i_crit_edge, %land.lhs.true57.i.i.do.end65.i.i_crit_edge, %do.body54.i.i.do.end65.i.i_crit_edge
  %28 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %obj, align 4
  %tobool103.not.i.i = icmp eq ptr %pprev.023.i.lcssa.i, null
  br i1 %tobool103.not.i.i, label %if.else142.i.i, label %do.body105.i.i

do.body105.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !192
  %30 = ptrtoint ptr %pprev.023.i.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %29, ptr %pprev.023.i.lcssa.i, align 4
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #16
  br label %if.then160.i.i

if.else142.i.i:                                   ; preds = %do.end65.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @rht_assign_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i, ptr noundef %29) #16
  br label %if.then160.i.i

do.body145.i.i:                                   ; preds = %for.body.i.i.do.body145.i.i_crit_edge, %for.body.preheader.i.i.do.body145.i.i_crit_edge
  %he.022.i21.i = phi ptr [ %32, %for.body.i.i.do.body145.i.i_crit_edge ], [ %27, %for.body.preheader.i.i.do.body145.i.i_crit_edge ]
  %call146.i.i = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %tbl.0.i, i32 noundef %and.i3.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146.i.i)
  %tobool147.not.i.i = icmp eq i32 %call146.i.i, 0
  br i1 %tobool147.not.i.i, label %land.lhs.true148.i.i, label %do.body145.i.i.do.end156.i.i_crit_edge

do.body145.i.i.do.end156.i.i_crit_edge:           ; preds = %do.body145.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end156.i.i

land.lhs.true148.i.i:                             ; preds = %do.body145.i.i
  %call149.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i.i)
  %tobool150.not.i.i = icmp eq i32 %call149.i.i, 0
  br i1 %tobool150.not.i.i, label %land.lhs.true148.i.i.do.end156.i.i_crit_edge, label %land.lhs.true151.i.i

land.lhs.true148.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true148.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end156.i.i

land.lhs.true151.i.i:                             ; preds = %land.lhs.true148.i.i
  %.b2281.i.i = load i1, ptr @__rhashtable_remove_fast_one.__warned.14, align 1
  br i1 %.b2281.i.i, label %land.lhs.true151.i.i.do.end156.i.i_crit_edge, label %if.then153.i.i

land.lhs.true151.i.i.do.end156.i.i_crit_edge:     ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end156.i.i

if.then153.i.i:                                   ; preds = %land.lhs.true151.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast_one.__warned.14, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1004, ptr noundef nonnull @.str.8) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %unlocked.i.i

unlocked.i.i:                                     ; preds = %do.end156.i.i.unlocked.i.i_crit_edge, %rht_ptr.exit.i.i.unlocked.i.i_crit_edge
  tail call fastcc void @rht_unlock(ptr noundef %tbl.0.i, ptr noundef nonnull %cond.i6.i.i) #16
  br label %land.rhs.i

if.then160.i.i:                                   ; preds = %if.else142.i.i, %do.body105.i.i
  %nelems.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %nelems.i.i, i32 1, i32 3, i32 1) #16
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i.i, ptr %nelems.i.i, i32 1, ptr elementtype(i32) %nelems.i.i) #16, !srcloc !193
  %automatic_shrinking.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 6
  %35 = ptrtoint ptr %automatic_shrinking.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %automatic_shrinking.i.i, align 2, !range !194
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool161.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool161.not.i.i, label %if.then160.i.i.while.end.i_crit_edge, label %land.rhs162.i.i

if.then160.i.i.while.end.i_crit_edge:             ; preds = %if.then160.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

land.rhs162.i.i:                                  ; preds = %if.then160.i.i
  %call.i.i.i10.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i.i, i32 noundef 4) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

rht_shrink_below_30.exit.i.i:                     ; preds = %land.rhs162.i.i
  %min_size.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 5
  %41 = ptrtoint ptr %min_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %min_size.i.i.i, align 4
  %conv.i11.i.i = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.i11.i.i)
  %cmp2.i.i.i = icmp ugt i32 %40, %conv.i11.i.i
  br i1 %cmp2.i.i.i, label %if.then168.i.i, label %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, !prof !185

rht_shrink_below_30.exit.i.i.while.end.i_crit_edge: ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

if.then168.i.i:                                   ; preds = %rht_shrink_below_30.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %run_work.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i12.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %run_work.i.i) #16
  br label %while.end.i

land.rhs.i:                                       ; preds = %unlocked.i.i, %rht_bucket_var.exit.i.i.land.rhs.i_crit_edge
  %future_tbl.i = getelementptr inbounds %struct.bucket_table, ptr %tbl.0.i, i32 0, i32 5
  %44 = ptrtoint ptr %future_tbl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %future_tbl.i, align 4
  %call20.i = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %land.rhs.i.do.end33.i_crit_edge

land.rhs.i.do.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end33.i

lor.lhs.false22.i:                                ; preds = %land.rhs.i
  %call23.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %lor.lhs.false22.i.do.end33.i_crit_edge

lor.lhs.false22.i.do.end33.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %lor.lhs.false22.i
  %call26.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b401.i = load i1, ptr @__rhashtable_remove_fast.__warned.10, align 1
  br i1 %.b401.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_remove_fast.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1085, ptr noundef nonnull @.str.4) #16
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %lor.lhs.false22.i.do.end33.i_crit_edge, %land.rhs.i.do.end33.i_crit_edge
  %tobool35.not.i = icmp eq ptr %45, null
  br i1 %tobool35.not.i, label %do.end33.i.while.end.i_crit_edge, label %do.end33.i.while.cond.i_crit_edge

do.end33.i.while.cond.i_crit_edge:                ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond.i

do.end33.i.while.end.i_crit_edge:                 ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end.i

while.end.i:                                      ; preds = %do.end33.i.while.end.i_crit_edge, %if.then168.i.i, %rht_shrink_below_30.exit.i.i.while.end.i_crit_edge, %land.rhs162.i.i.while.end.i_crit_edge, %if.then160.i.i.while.end.i_crit_edge
  %call.i4.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i4.i, label %while.end.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true.i7.i

while.end.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast.exit

land.lhs.true.i7.i:                               ; preds = %while.end.i
  %call1.i5.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5.i)
  %tobool.not.i6.i = icmp eq i32 %call1.i5.i, 0
  br i1 %tobool.not.i6.i, label %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, label %land.lhs.true2.i9.i

land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true.i7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast.exit

land.lhs.true2.i9.i:                              ; preds = %land.lhs.true.i7.i
  %.b4.i8.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i8.i, label %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, label %if.then.i10.i

land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge: ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__rhashtable_remove_fast.exit

if.then.i10.i:                                    ; preds = %land.lhs.true2.i9.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %__rhashtable_remove_fast.exit

__rhashtable_remove_fast.exit:                    ; preds = %if.then.i10.i, %land.lhs.true2.i9.i.__rhashtable_remove_fast.exit_crit_edge, %land.lhs.true.i7.i.__rhashtable_remove_fast.exit_crit_edge, %while.end.i.__rhashtable_remove_fast.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !190
  %46 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i.i.i11.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i11.i to ptr
  %preempt_count.i.i.i.i12.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i12.i, align 4
  %sub.i.i.i.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i12.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_fid_vni_clear(ptr noundef %fid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family1, align 4
  %ops2 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops2, align 4
  %mlxsw_sp3 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %mlxsw_sp3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mlxsw_sp3, align 4
  %vni_clear = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %vni_clear to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vni_clear, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %vni_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %8 = ptrtoint ptr %vni_valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %vni_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %lor.rhs.do.end_crit_edge, label %if.end27, !prof !185

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 279, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end27:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  %bf.clear = and i8 %bf.load, 127
  %9 = ptrtoint ptr %vni_valid to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %bf.clear, ptr %vni_valid, align 4
  %10 = ptrtoint ptr %vni_clear to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vni_clear, align 4
  tail call void %11(ptr noundef %fid) #16
  %fid_core = getelementptr inbounds %struct.mlxsw_sp, ptr %5, i32 0, i32 14
  %12 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fid_core, align 4
  %vni_ht = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %13, i32 0, i32 1
  %vni_ht_node = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 6
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %vni_ht, ptr noundef %vni_ht_node, [7 x i32] [i32 4, i32 2359324, i32 0, i32 0, i32 0, i32 0, i32 0])
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mlxsw_sp_fid_vni_is_set(ptr nocapture noundef readonly %fid) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vni_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %0 = ptrtoint ptr %vni_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %vni_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_fid_fdb_clear_offload(ptr noundef %fid, ptr noundef %nve_dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family1, align 4
  %ops2 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops2, align 4
  %fdb_clear_offload = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %fdb_clear_offload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fdb_clear_offload, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %5(ptr noundef %fid, ptr noundef %nve_dev) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_fid_flood_set(ptr noundef %fid, i32 noundef %packet_type, i16 noundef zeroext %local_port, i1 noundef zeroext %member) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family1, align 4
  %flood_tables = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flood_tables to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flood_tables, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %ops2 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %ops2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops2, align 4
  %flood_index = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %flood_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %flood_index, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %lor.rhs.do.end_crit_edge, label %if.end26, !prof !185

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 329, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end26:                                         ; preds = %lor.rhs
  %nr_flood_tables.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %nr_flood_tables.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_flood_tables.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12.i = icmp sgt i32 %9, 0
  br i1 %cmp12.i, label %if.end26.for.body.i_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end26.for.body.i_crit_edge:                    ; preds = %if.end26
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end26.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end26.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlxsw_sp_flood_table, ptr %3, i32 %i.013.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %packet_type)
  %cmp3.not.i = icmp eq i32 %11, %packet_type
  br i1 %cmp3.not.i, label %mlxsw_sp_fid_flood_table_lookup.exit, label %for.cond.i

mlxsw_sp_fid_flood_table_lookup.exit:             ; preds = %for.body.i
  %tobool27.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool27.not, label %mlxsw_sp_fid_flood_table_lookup.exit.cleanup_crit_edge, label %if.end29

mlxsw_sp_fid_flood_table_lookup.exit.cleanup_crit_edge: ; preds = %mlxsw_sp_fid_flood_table_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end29:                                         ; preds = %mlxsw_sp_fid_flood_table_lookup.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 288) #20
  %tobool31.not = icmp eq ptr %call7.i, null
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %table_index = getelementptr %struct.mlxsw_sp_flood_table, ptr %3, i32 %i.013.i, i32 3
  %13 = ptrtoint ptr %table_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %table_index, align 4
  %15 = ptrtoint ptr %flood_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %flood_index, align 4
  %call35 = tail call zeroext i16 %16(ptr noundef %fid) #16
  %conv = zext i16 %call35 to i32
  %table_type = getelementptr %struct.mlxsw_sp_flood_table, ptr %3, i32 %i.013.i, i32 2
  %17 = ptrtoint ptr %table_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %table_type, align 4
  %19 = call ptr @memset(ptr %call7.i, i32 0, i32 288)
  %20 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call7.i, align 8
  %spec.select.i.i.i = shl i32 %14, 16
  %and6.i.i.i = and i32 %spec.select.i.i.i, 4128768
  %and7.i.i23.i = and i32 %21, 12582912
  %or.i.i.i = or i32 %and6.i.i.i, %and7.i.i23.i
  %or.i.i51.i = or i32 %or.i.i.i, %conv
  store i32 %or.i.i51.i, ptr %call7.i, align 8
  %spec.select.i.i70.i = shl i32 %18, 16
  %and6.i.i75.i = and i32 %spec.select.i.i70.i, 458752
  %arrayidx.i.i76.i = getelementptr i32, ptr %call7.i, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i76.i, align 4
  %and7.i.i78.i = and i32 %23, -524288
  %or.i.i79.i = or i32 %and6.i.i75.i, %and7.i.i78.i
  %arrayidx.i.i103.i = getelementptr i32, ptr %call7.i, i32 1
  %or.i.i106.i = or i32 %or.i.i79.i, 1
  %24 = ptrtoint ptr %arrayidx.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i.i106.i, ptr %arrayidx.i.i103.i, align 4
  %conv41.i.i.i.i = sub i16 1023, %local_port
  %25 = lshr i16 %conv41.i.i.i.i, 3
  %26 = and i16 %local_port, 7
  %27 = zext i16 %26 to i32
  %conv60.i.i.i.i = add nuw nsw i16 %25, 32
  %shl.i.i113.i = shl i32 1, %27
  %conv5.i.i.i = zext i1 %member to i32
  %shl6.i.i.i = shl nuw i32 %conv5.i.i.i, %27
  %and10.i.i.i = and i32 %shl6.i.i.i, %shl.i.i113.i
  %idxprom.i.i.i = zext i16 %conv60.i.i.i.i to i32
  %arrayidx.i.i114.i = getelementptr i8, ptr %call7.i, i32 %idxprom.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i114.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i114.i, align 1
  %30 = trunc i32 %shl.i.i113.i to i8
  %31 = xor i8 %30, -1
  %conv15.i.i.i = and i8 %29, %31
  %32 = trunc i32 %and10.i.i.i to i8
  %conv18.i.i.i = or i8 %conv15.i.i.i, %32
  store i8 %conv18.i.i.i, ptr %arrayidx.i.i114.i, align 1
  %conv41.i.i.i132.i = sub i16 1023, %local_port
  %33 = lshr i16 %conv41.i.i.i132.i, 3
  %34 = and i16 %local_port, 7
  %35 = trunc i16 %34 to i8
  %conv60.i.i.i139.i = add nuw nsw i16 %33, 160
  %shl.i.i143.i = shl i16 1, %34
  %and10.i.i145.i = shl i8 1, %35
  %idxprom.i.i146.i = zext i16 %conv60.i.i.i139.i to i32
  %arrayidx.i.i147.i = getelementptr i8, ptr %call7.i, i32 %idxprom.i.i146.i
  %36 = ptrtoint ptr %arrayidx.i.i147.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i147.i, align 1
  %38 = trunc i16 %shl.i.i143.i to i8
  %39 = xor i8 %38, -1
  %conv15.i.i148.i = and i8 %37, %39
  %conv18.i.i149.i = or i8 %conv15.i.i148.i, %and10.i.i145.i
  store i8 %conv18.i.i149.i, ptr %arrayidx.i.i147.i, align 1
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 10
  %40 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mlxsw_sp, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %core, align 4
  %call37 = tail call i32 @mlxsw_reg_write(ptr noundef %43, ptr noundef nonnull @mlxsw_reg_sftr2, ptr noundef nonnull %call7.i) #16
  tail call void @kfree(ptr noundef nonnull %call7.i) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end29.cleanup_crit_edge, %mlxsw_sp_fid_flood_table_lookup.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call37, %if.end33 ], [ -3, %mlxsw_sp_fid_flood_table_lookup.exit.cleanup_crit_edge ], [ -12, %if.end29.cleanup_crit_edge ], [ -3, %if.end26.cleanup_crit_edge ], [ -3, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_reg_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_fid_port_vid_map(ptr noundef %fid, ptr noundef %mlxsw_sp_port, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family, align 4
  %ops = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %port_vid_map = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %port_vid_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_vid_map, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !185

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 352, i32 noundef 9, ptr noundef null) #16
  br label %return

if.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 %5(ptr noundef %fid, ptr noundef %mlxsw_sp_port, i16 noundef zeroext %vid) #16
  br label %return

return:                                           ; preds = %if.end23, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_fid_port_vid_unmap(ptr noundef %fid, ptr noundef %mlxsw_sp_port, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family, align 4
  %ops = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %port_vid_unmap = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %port_vid_unmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_vid_unmap, align 4
  tail call void %5(ptr noundef %fid, ptr noundef %mlxsw_sp_port, i16 noundef zeroext %vid) #16
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mlxsw_sp_fid_index(ptr nocapture noundef readonly %fid) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %0 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fid_index, align 4
  ret i16 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlxsw_sp_fid_type(ptr nocapture noundef readonly %fid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  ret i32 %3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mlxsw_sp_fid_rif_set(ptr nocapture noundef writeonly %fid, ptr noundef %rif) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rif1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 1
  %0 = ptrtoint ptr %rif1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %rif, ptr %rif1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @mlxsw_sp_fid_rif(ptr nocapture noundef readonly %fid) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %rif = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 1
  %0 = ptrtoint ptr %rif to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rif, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mlxsw_sp_fid_type_rif_type(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_core1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 14
  %0 = ptrtoint ptr %fid_core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_core1, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_fid_core, ptr %1, i32 0, i32 2, i32 %type
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %rif_type = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %rif_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rif_type, align 4
  ret i32 %5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i16 @mlxsw_sp_fid_8021q_vid(ptr nocapture noundef readonly %fid) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vid = getelementptr inbounds %struct.mlxsw_sp_fid_8021q, ptr %fid, i32 0, i32 1
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vid, align 4
  ret i16 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_fid_put(ptr noundef %fid) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family1, align 4
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp2, align 4
  %ref_count = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !195
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #16, !srcloc !196
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !186

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !197
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %fid) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %fid, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %fid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fid, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %fid to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %fid, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %fid, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %fid_core = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fid_core, align 4
  %ht_node = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 5
  tail call fastcc void @rhashtable_remove_fast(ptr noundef %14, ptr noundef %ht_node, [7 x i32] [i32 2, i32 1048600, i32 0, i32 0, i32 0, i32 0, i32 0])
  %15 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fid_family1, align 4
  %ops = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %deconfigure = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %deconfigure to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %deconfigure, align 4
  tail call void %20(ptr noundef %fid) #16
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %21 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fid_index, align 4
  %conv = zext i16 %22 to i32
  %start_index = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %start_index to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %start_index, align 4
  %conv5 = zext i16 %24 to i32
  %sub = sub nsw i32 %conv, %conv5
  %fids_bitmap = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %fids_bitmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fids_bitmap, align 4
  %rem.i = and i32 %sub, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %sub, 5
  %add.ptr.i = getelementptr i32, ptr %26, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %28, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  tail call void @kfree(ptr noundef %fid) #16
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_fid_8021q_get(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  %vid.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vid.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %vid, ptr %vid.addr, align 2
  %call = call fastcc ptr @mlxsw_sp_fid_get(ptr noundef %mlxsw_sp, i32 noundef 0, ptr noundef nonnull %vid.addr)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mlxsw_sp_fid_get(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %type, ptr noundef %arg) unnamed_addr #2 align 64 {
entry:
  %fid_index = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %fid_index) #16
  %0 = ptrtoint ptr %fid_index to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %fid_index, align 2, !annotation !198
  %fid_core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 14
  %1 = ptrtoint ptr %fid_core.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fid_core.i, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_sp_fid_core, ptr %2, i32 0, i32 2, i32 %type
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %fids_list.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %4, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %fid.0.in.i = phi ptr [ %fids_list.i, %entry ], [ %fid.0.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %fid.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %fid.0.i = load ptr, ptr %fid.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %fid.0.i, %fids_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %fid_family2.i = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid.0.i, i32 0, i32 4
  %6 = ptrtoint ptr %fid_family2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fid_family2.i, align 4
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %compare.i = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %compare.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %compare.i, align 4
  %call.i = tail call zeroext i1 %11(ptr noundef %fid.0.i, ptr noundef %arg) #16
  br i1 %call.i, label %if.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.end.i:                                         ; preds = %for.body.i
  %ref_count.i = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid.0.i, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #16
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #16, !srcloc !184
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !185

if.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.mlxsw_sp_fid_lookup.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !186

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.mlxsw_sp_fid_lookup.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_lookup.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef %.sink.i.i.i.i) #16
  br label %mlxsw_sp_fid_lookup.exit

mlxsw_sp_fid_lookup.exit:                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.mlxsw_sp_fid_lookup.exit_crit_edge
  %tobool.not = icmp eq ptr %fid.0.i, null
  br i1 %tobool.not, label %mlxsw_sp_fid_lookup.exit.if.end_crit_edge, label %mlxsw_sp_fid_lookup.exit.cleanup_crit_edge

mlxsw_sp_fid_lookup.exit.cleanup_crit_edge:       ; preds = %mlxsw_sp_fid_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

mlxsw_sp_fid_lookup.exit.if.end_crit_edge:        ; preds = %mlxsw_sp_fid_lookup.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %mlxsw_sp_fid_lookup.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %14 = ptrtoint ptr %fid_core.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fid_core.i, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_fid_core, ptr %15, i32 0, i32 2, i32 %type
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %fid_size = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %fid_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fid_size, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #21
  %tobool2.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %fid_family6 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %call9.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %fid_family6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %fid_family6, align 4
  %ops = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %17, i32 0, i32 9
  %21 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops, align 4
  %index_alloc = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %index_alloc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %index_alloc, align 4
  %call8 = call i32 %24(ptr noundef nonnull %call9.i.i, ptr noundef %arg, ptr noundef nonnull %fid_index) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.err_index_alloc_crit_edge

if.end5.err_index_alloc_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_index_alloc

if.end11:                                         ; preds = %if.end5
  %25 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %fid_index, align 2
  %fid_index12 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %call9.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %fid_index12 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %fid_index12, align 16
  %conv = zext i16 %26 to i32
  %start_index = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %17, i32 0, i32 2
  %28 = ptrtoint ptr %start_index to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %start_index, align 4
  %conv13 = zext i16 %29 to i32
  %sub = sub nsw i32 %conv, %conv13
  %fids_bitmap = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %17, i32 0, i32 5
  %30 = ptrtoint ptr %fids_bitmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fids_bitmap, align 4
  %rem.i = and i32 %sub, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %sub, 5
  %add.ptr.i = getelementptr i32, ptr %31, i32 %div2.i
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %33
  store i32 %or.i, ptr %add.ptr.i, align 4
  %34 = ptrtoint ptr %fid_family6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %fid_family6, align 4
  %ops15 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %ops15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops15, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool16.not = icmp eq ptr %39, null
  br i1 %tobool16.not, label %if.end11.if.end21_crit_edge, label %if.then17

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  call void %39(ptr noundef nonnull %call9.i.i, ptr noundef %arg) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end11.if.end21_crit_edge
  %40 = ptrtoint ptr %fid_family6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fid_family6, align 4
  %ops23 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %ops23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops23, align 4
  %configure = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %configure to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %configure, align 4
  %call24 = call i32 %45(ptr noundef nonnull %call9.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end21.err_configure_crit_edge

if.end21.err_configure_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_configure

if.end27:                                         ; preds = %if.end21
  %46 = ptrtoint ptr %fid_core.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fid_core.i, align 4
  %ht_node = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %call9.i.i, i32 0, i32 5
  %call.i86 = call fastcc ptr @__rhashtable_insert_fast(ptr noundef %47, ptr noundef null, ptr noundef %ht_node, [7 x i32] [i32 2, i32 1048600, i32 0, i32 0, i32 0, i32 0, i32 0]) #16
  %cmp.i.i87 = icmp ugt ptr %call.i86, inttoptr (i32 -4096 to ptr)
  %48 = ptrtoint ptr %call.i86 to i32
  %cmp.i = icmp eq ptr %call.i86, null
  %cond.i = select i1 %cmp.i, i32 0, i32 -17
  %retval.0.i88 = select i1 %cmp.i.i87, i32 %48, i32 %cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i88)
  %tobool30.not = icmp eq i32 %retval.0.i88, 0
  br i1 %tobool30.not, label %if.end32, label %err_rhashtable_insert

if.end32:                                         ; preds = %if.end27
  %fids_list = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %17, i32 0, i32 4
  %49 = ptrtoint ptr %fids_list to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fids_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9.i.i, ptr noundef %fids_list, ptr noundef %50) #16
  br i1 %call.i.i, label %if.end.i.i89, label %if.end32.list_add.exit_crit_edge

if.end32.list_add.exit_crit_edge:                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i89:                                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call9.i.i, ptr %prev1.i.i, align 4
  %52 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %call9.i.i, align 128
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call9.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %fids_list, ptr %prev3.i.i, align 4
  %54 = ptrtoint ptr %fids_list to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %call9.i.i, ptr %fids_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i89, %if.end32.list_add.exit_crit_edge
  %ref_count = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %call9.i.i, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #16
  %55 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile i32 1, ptr %ref_count, align 4
  br label %cleanup

err_rhashtable_insert:                            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  %56 = ptrtoint ptr %fid_family6 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fid_family6, align 4
  %ops34 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %ops34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ops34, align 4
  %deconfigure = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %deconfigure to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %deconfigure, align 4
  call void %61(ptr noundef nonnull %call9.i.i) #16
  br label %err_configure

err_configure:                                    ; preds = %err_rhashtable_insert, %if.end21.err_configure_crit_edge
  %err.0 = phi i32 [ %call24, %if.end21.err_configure_crit_edge ], [ %retval.0.i88, %err_rhashtable_insert ]
  %62 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %fid_index, align 2
  %conv35 = zext i16 %63 to i32
  %64 = ptrtoint ptr %start_index to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %start_index, align 4
  %conv37 = zext i16 %65 to i32
  %sub38 = sub nsw i32 %conv35, %conv37
  %66 = ptrtoint ptr %fids_bitmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fids_bitmap, align 4
  %rem.i82 = and i32 %sub38, 31
  %shl.i83 = shl nuw i32 1, %rem.i82
  %div2.i84 = lshr i32 %sub38, 5
  %add.ptr.i85 = getelementptr i32, ptr %67, i32 %div2.i84
  %neg.i = xor i32 %shl.i83, -1
  %68 = ptrtoint ptr %add.ptr.i85 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i85, align 4
  %and.i = and i32 %69, %neg.i
  store i32 %and.i, ptr %add.ptr.i85, align 4
  br label %err_index_alloc

err_index_alloc:                                  ; preds = %err_configure, %if.end5.err_index_alloc_crit_edge
  %err.1 = phi i32 [ %call8, %if.end5.err_index_alloc_crit_edge ], [ %err.0, %err_configure ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #16
  %70 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_index_alloc, %list_add.exit, %if.end.cleanup_crit_edge, %mlxsw_sp_fid_lookup.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %70, %err_index_alloc ], [ %call9.i.i, %list_add.exit ], [ %fid.0.i, %mlxsw_sp_fid_lookup.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %fid_index) #16
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_fid_8021d_get(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %br_ifindex) local_unnamed_addr #2 align 64 {
entry:
  %br_ifindex.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %br_ifindex.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %br_ifindex, ptr %br_ifindex.addr, align 4
  %call = call fastcc ptr @mlxsw_sp_fid_get(ptr noundef %mlxsw_sp, i32 noundef 1, ptr noundef nonnull %br_ifindex.addr)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_fid_8021q_lookup(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %vid) local_unnamed_addr #2 align 64 {
entry:
  %vid.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vid.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %vid, ptr %vid.addr, align 2
  %fid_core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 14
  %1 = ptrtoint ptr %fid_core.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fid_core.i, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_sp_fid_core, ptr %2, i32 0, i32 2, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %fids_list.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %4, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %fid.0.in.i = phi ptr [ %fids_list.i, %entry ], [ %fid.0.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %fid.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %fid.0.i = load ptr, ptr %fid.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %fid.0.i, %fids_list.i
  br i1 %cmp.not.i, label %for.cond.i.mlxsw_sp_fid_lookup.exit_crit_edge, label %for.body.i

for.cond.i.mlxsw_sp_fid_lookup.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_lookup.exit

for.body.i:                                       ; preds = %for.cond.i
  %fid_family2.i = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid.0.i, i32 0, i32 4
  %6 = ptrtoint ptr %fid_family2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fid_family2.i, align 4
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %compare.i = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %compare.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %compare.i, align 4
  %call.i = call zeroext i1 %11(ptr noundef %fid.0.i, ptr noundef nonnull %vid.addr) #16
  br i1 %call.i, label %if.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.end.i:                                         ; preds = %for.body.i
  %ref_count.i = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid.0.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #16
  %12 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #16, !srcloc !184
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !185

if.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.mlxsw_sp_fid_lookup.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !186

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.mlxsw_sp_fid_lookup.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_lookup.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef %.sink.i.i.i.i) #16
  br label %mlxsw_sp_fid_lookup.exit

mlxsw_sp_fid_lookup.exit:                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.mlxsw_sp_fid_lookup.exit_crit_edge, %for.cond.i.mlxsw_sp_fid_lookup.exit_crit_edge
  %retval.0.i = phi ptr [ %fid.0.i, %if.else.i.i.i.i.mlxsw_sp_fid_lookup.exit_crit_edge ], [ %fid.0.i, %if.end15.sink.split.i.i.i.i ], [ null, %for.cond.i.mlxsw_sp_fid_lookup.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_fid_8021d_lookup(ptr nocapture noundef readonly %mlxsw_sp, i32 noundef %br_ifindex) local_unnamed_addr #2 align 64 {
entry:
  %br_ifindex.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %br_ifindex.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %br_ifindex, ptr %br_ifindex.addr, align 4
  %fid_core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 14
  %1 = ptrtoint ptr %fid_core.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fid_core.i, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_sp_fid_core, ptr %2, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %fids_list.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %4, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %fid.0.in.i = phi ptr [ %fids_list.i, %entry ], [ %fid.0.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %fid.0.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %fid.0.i = load ptr, ptr %fid.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %fid.0.i, %fids_list.i
  br i1 %cmp.not.i, label %for.cond.i.mlxsw_sp_fid_lookup.exit_crit_edge, label %for.body.i

for.cond.i.mlxsw_sp_fid_lookup.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_lookup.exit

for.body.i:                                       ; preds = %for.cond.i
  %fid_family2.i = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid.0.i, i32 0, i32 4
  %6 = ptrtoint ptr %fid_family2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fid_family2.i, align 4
  %ops.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %compare.i = getelementptr inbounds %struct.mlxsw_sp_fid_ops, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %compare.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %compare.i, align 4
  %call.i = call zeroext i1 %11(ptr noundef %fid.0.i, ptr noundef nonnull %br_ifindex.addr) #16
  br i1 %call.i, label %if.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

if.end.i:                                         ; preds = %for.body.i
  %ref_count.i = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid.0.i, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #16
  %12 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #16, !srcloc !184
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !185

if.end.i.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.mlxsw_sp_fid_lookup.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !186

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.mlxsw_sp_fid_lookup.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_lookup.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef %.sink.i.i.i.i) #16
  br label %mlxsw_sp_fid_lookup.exit

mlxsw_sp_fid_lookup.exit:                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.mlxsw_sp_fid_lookup.exit_crit_edge, %for.cond.i.mlxsw_sp_fid_lookup.exit_crit_edge
  %retval.0.i = phi ptr [ %fid.0.i, %if.else.i.i.i.i.mlxsw_sp_fid_lookup.exit_crit_edge ], [ %fid.0.i, %if.end15.sink.split.i.i.i.i ], [ null, %for.cond.i.mlxsw_sp_fid_lookup.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_fid_rfid_get(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %rif_index) local_unnamed_addr #2 align 64 {
entry:
  %rif_index.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rif_index.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %rif_index, ptr %rif_index.addr, align 2
  %call = call fastcc ptr @mlxsw_sp_fid_get(ptr noundef %mlxsw_sp, i32 noundef 2, ptr noundef nonnull %rif_index.addr)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mlxsw_sp_fid_dummy_get(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @mlxsw_sp_fid_get(ptr noundef %mlxsw_sp, i32 noundef 3, ptr noundef null)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_port_fids_init(ptr noundef %mlxsw_sp_port) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %fid_core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fid_core, align 4
  %port_fid_mappings = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %port_fid_mappings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_fid_mappings, align 4
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %6 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %local_port, align 4
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr i32, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx, align 4
  %call = tail call i32 @mlxsw_sp_port_vp_mode_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext false) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_sp_port_vp_mode_set(ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mlxsw_sp_port_fids_fini(ptr nocapture noundef readonly %mlxsw_sp_port) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %fid_core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fid_core, align 4
  %port_fid_mappings = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %port_fid_mappings to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_fid_mappings, align 4
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %6 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %local_port, align 4
  %idxprom = zext i16 %7 to i32
  %arrayidx = getelementptr i32, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlxsw_sp_fids_init(ptr noundef %mlxsw_sp) local_unnamed_addr #2 align 64 {
entry:
  %sfgc_pl.i.i.i = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %call = tail call i32 @mlxsw_core_max_ports(ptr noundef %1) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 476) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %fid_core2 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 14
  %3 = ptrtoint ptr %fid_core2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %fid_core2, align 4
  %call3 = tail call i32 @rhashtable_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @mlxsw_sp_fid_ht_params) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.err_rhashtable_fid_init_crit_edge

if.end.err_rhashtable_fid_init_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_rhashtable_fid_init

if.end6:                                          ; preds = %if.end
  %vni_ht = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %call7.i.i, i32 0, i32 1
  %call7 = tail call i32 @rhashtable_init(ptr noundef %vni_ht, ptr noundef nonnull @mlxsw_sp_fid_vni_ht_params) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.err_rhashtable_vni_init_crit_edge

if.end6.err_rhashtable_vni_init_crit_edge:        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_rhashtable_vni_init

if.end10:                                         ; preds = %if.end6
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 4) #16
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !185

kcalloc.exit.thread:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %port_fid_mappings61 = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %port_fid_mappings61 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %port_fid_mappings61, align 8
  br label %err_alloc_port_fid_mappings

if.end7.i.i:                                      ; preds = %if.end10
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #21
  %port_fid_mappings = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %port_fid_mappings to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %port_fid_mappings, align 8
  %tobool13.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool13.not, label %if.end7.i.i.err_alloc_port_fid_mappings_crit_edge, label %for.body.preheader

if.end7.i.i.err_alloc_port_fid_mappings_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_alloc_port_fid_mappings

for.body.preheader:                               ; preds = %if.end7.i.i
  %arrayidx.i.i30.i.i.i.i = getelementptr inbounds i32, ptr %sfgc_pl.i.i.i, i32 1
  %arrayidx.i.i86.i.i.i.i = getelementptr inbounds i32, ptr %sfgc_pl.i.i.i, i32 1
  %arrayidx.i.i113.i.i.i.i = getelementptr inbounds i32, ptr %sfgc_pl.i.i.i, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0108 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [4 x ptr], ptr @mlxsw_sp_fid_family_arr, i32 0, i32 %i.0108
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %end_index.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %end_index.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %end_index.i, align 2
  %start_index.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %start_index.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %start_index.i, align 4
  %call.i = call ptr @kmemdup(ptr noundef %10, i32 noundef 48, i32 noundef 3264) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.mlxsw_sp_fid_family_register.exit_crit_edge, label %if.end.i

for.body.mlxsw_sp_fid_family_register.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_register.exit

if.end.i:                                         ; preds = %for.body
  %sub.i = add i16 %12, 1
  %add.i = sub i16 %sub.i, %14
  %mlxsw_sp3.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %mlxsw_sp3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mlxsw_sp, ptr %mlxsw_sp3.i, align 4
  %fids_list.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %fids_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %fids_list.i, ptr %fids_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %call.i, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %fids_list.i, ptr %prev.i.i, align 4
  %conv4.i = zext i16 %add.i to i32
  %call5.i = call ptr @bitmap_zalloc(i32 noundef %conv4.i, i32 noundef 3264) #16
  %fids_bitmap.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %call.i, i32 0, i32 5
  %18 = ptrtoint ptr %fids_bitmap.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i, ptr %fids_bitmap.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool7.not.i, label %if.end.i.err_alloc_fids_bitmap.i_crit_edge, label %if.end9.i

if.end.i.err_alloc_fids_bitmap.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_alloc_fids_bitmap.i

if.end9.i:                                        ; preds = %if.end.i
  %flood_tables.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %call.i, i32 0, i32 6
  %19 = ptrtoint ptr %flood_tables.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %flood_tables.i, align 4
  %tobool10.not.i = icmp eq ptr %20, null
  br i1 %tobool10.not.i, label %if.end9.i.for.inc_crit_edge, label %if.then11.i

if.end9.i.for.inc_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then11.i:                                      ; preds = %if.end9.i
  %nr_flood_tables.i.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %call.i, i32 0, i32 7
  %21 = ptrtoint ptr %nr_flood_tables.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_flood_tables.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp31.i.i = icmp sgt i32 %22, 0
  br i1 %cmp31.i.i, label %if.then11.i.for.body.i.i_crit_edge, label %if.then11.i.for.inc_crit_edge

if.then11.i.for.inc_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then11.i.for.body.i.i_crit_edge:               ; preds = %if.then11.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then11.i.for.body.i.i_crit_edge
  %i.032.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then11.i.for.body.i.i_crit_edge ]
  %23 = ptrtoint ptr %flood_tables.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %flood_tables.i, align 4
  %arrayidx.i.i = getelementptr %struct.mlxsw_sp_flood_table, ptr %24, i32 %i.032.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr [3 x ptr], ptr @mlxsw_sp_packet_type_sfgc_types, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i.i, align 4
  %bridge_type.i.i.i = getelementptr %struct.mlxsw_sp_flood_table, ptr %24, i32 %i.032.i.i, i32 1
  %table_type.i.i.i = getelementptr %struct.mlxsw_sp_flood_table, ptr %24, i32 %i.032.i.i, i32 2
  %table_index.i.i.i = getelementptr %struct.mlxsw_sp_flood_table, ptr %24, i32 %i.032.i.i, i32 3
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i
  %i.042.i.i.i = phi i32 [ 0, %for.body.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %29 = ptrtoint ptr %mlxsw_sp3.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mlxsw_sp3.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sfgc_pl.i.i.i) #16
  %arrayidx3.i.i.i = getelementptr i32, ptr %28, i32 %i.042.i.i.i
  %31 = call ptr @memset(ptr %sfgc_pl.i.i.i, i32 255, i32 16)
  %32 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.end.i.i.i55

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

if.end.i.i.i55:                                   ; preds = %for.body.i.i.i
  %34 = ptrtoint ptr %bridge_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bridge_type.i.i.i, align 4
  %36 = ptrtoint ptr %table_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %table_type.i.i.i, align 4
  %38 = ptrtoint ptr %table_index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %table_index.i.i.i, align 4
  %40 = call ptr @memset(ptr %sfgc_pl.i.i.i, i32 0, i32 16)
  %and6.i.i.i.i.i.i = and i32 %i.042.i.i.i, 15
  %41 = ptrtoint ptr %sfgc_pl.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sfgc_pl.i.i.i, align 4
  %and7.i.i.i.i.i.i = and i32 %42, -16
  %or.i.i.i.i.i.i = or i32 %and6.i.i.i.i.i.i, %and7.i.i.i.i.i.i
  store i32 %or.i.i.i.i.i.i, ptr %sfgc_pl.i.i.i, align 4
  %spec.select.i.i24.i.i.i.i = shl i32 %35, 24
  %and6.i.i29.i.i.i.i = and i32 %spec.select.i.i24.i.i.i.i, 117440512
  %43 = ptrtoint ptr %arrayidx.i.i30.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i.i30.i.i.i.i, align 4
  %and7.i.i32.i.i.i.i = and i32 %44, -117899328
  %or.i.i33.i.i.i.i = or i32 %and6.i.i29.i.i.i.i, %and7.i.i32.i.i.i.i
  %spec.select.i.i52.i.i.i.i = shl i32 %37, 16
  %and6.i.i57.i.i.i.i = and i32 %spec.select.i.i52.i.i.i.i, 458752
  %or.i.i61.i.i.i.i = or i32 %and6.i.i57.i.i.i.i, %or.i.i33.i.i.i.i
  %and6.i.i85.i.i.i.i = and i32 %39, 63
  %or.i.i89.i.i.i.i = or i32 %and6.i.i85.i.i.i.i, %or.i.i61.i.i.i.i
  %45 = ptrtoint ptr %arrayidx.i.i86.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i.i89.i.i.i.i, ptr %arrayidx.i.i86.i.i.i.i, align 4
  %46 = ptrtoint ptr %arrayidx.i.i113.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i113.i.i.i.i, align 4
  %and7.i.i115.i.i.i.i = and i32 %47, -65536
  %or.i.i116.i.i.i.i = or i32 %and7.i.i115.i.i.i.i, 53248
  store i32 %or.i.i116.i.i.i.i, ptr %arrayidx.i.i113.i.i.i.i, align 4
  %core.i.i.i = getelementptr inbounds %struct.mlxsw_sp, ptr %30, i32 0, i32 1
  %48 = ptrtoint ptr %core.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %core.i.i.i, align 4
  %call.i.i.i = call i32 @mlxsw_reg_write(ptr noundef %49, ptr noundef nonnull @mlxsw_reg_sfgc, ptr noundef nonnull %sfgc_pl.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i55.for.inc.i.i.i_crit_edge, label %err_fid_flood_tables_init.i

if.end.i.i.i55.for.inc.i.i.i_crit_edge:           ; preds = %if.end.i.i.i55
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i55.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sfgc_pl.i.i.i) #16
  %inc.i.i.i = add nuw nsw i32 %i.042.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 8
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

for.inc.i.i:                                      ; preds = %for.inc.i.i.i
  %inc.i.i = add nuw nsw i32 %i.032.i.i, 1
  %50 = ptrtoint ptr %nr_flood_tables.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_flood_tables.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %51
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.inc_crit_edge

for.inc.i.i.for.inc_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

err_fid_flood_tables_init.i:                      ; preds = %if.end.i.i.i55
  call void @__sanitizer_cov_trace_pc() #18
  %fids_bitmap.i.le = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %call.i, i32 0, i32 5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sfgc_pl.i.i.i) #16
  %52 = ptrtoint ptr %fids_bitmap.i.le to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fids_bitmap.i.le, align 4
  call void @bitmap_free(ptr noundef %53) #16
  br label %err_alloc_fids_bitmap.i

err_alloc_fids_bitmap.i:                          ; preds = %err_fid_flood_tables_init.i, %if.end.i.err_alloc_fids_bitmap.i_crit_edge
  %err.0.i = phi i32 [ %call.i.i.i, %err_fid_flood_tables_init.i ], [ -12, %if.end.i.err_alloc_fids_bitmap.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call.i) #16
  br label %mlxsw_sp_fid_family_register.exit

mlxsw_sp_fid_family_register.exit:                ; preds = %err_alloc_fids_bitmap.i, %for.body.mlxsw_sp_fid_family_register.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %err_alloc_fids_bitmap.i ], [ -12, %for.body.mlxsw_sp_fid_family_register.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0108)
  %cmp21111.not = icmp eq i32 %i.0108, 0
  br i1 %cmp21111.not, label %mlxsw_sp_fid_family_register.exit.for.end26_crit_edge, label %for.body22

mlxsw_sp_fid_family_register.exit.for.end26_crit_edge: ; preds = %mlxsw_sp_fid_family_register.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end26

for.inc:                                          ; preds = %for.inc.i.i.for.inc_crit_edge, %if.then11.i.for.inc_crit_edge, %if.end9.i.for.inc_crit_edge
  %54 = ptrtoint ptr %fid_core2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fid_core2, align 4
  %56 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %10, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_sp_fid_core, ptr %55, i32 0, i32 2, i32 %57
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %arrayidx.i, align 4
  %inc = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body22:                                       ; preds = %mlxsw_sp_fid_family_register.exit
  %i.1112 = add nsw i32 %i.0108, -1
  %arrayidx23 = getelementptr %struct.mlxsw_sp_fid_core, ptr %call7.i.i, i32 0, i32 2, i32 %i.1112
  %59 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx23, align 4
  %61 = ptrtoint ptr %fid_core2 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fid_core2, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %60, align 4
  %arrayidx.i57 = getelementptr %struct.mlxsw_sp_fid_core, ptr %62, i32 0, i32 2, i32 %64
  %65 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx.i57, align 4
  %fids_bitmap.i58 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %60, i32 0, i32 5
  %66 = ptrtoint ptr %fids_bitmap.i58 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fids_bitmap.i58, align 4
  call void @bitmap_free(ptr noundef %67) #16
  %fids_list.i59 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %60, i32 0, i32 4
  %68 = ptrtoint ptr %fids_list.i59 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %fids_list.i59, align 4
  %cmp.i.not.i = icmp eq ptr %69, %fids_list.i59
  br i1 %cmp.i.not.i, label %for.body22.mlxsw_sp_fid_family_unregister.exit_crit_edge, label %land.rhs.i

for.body22.mlxsw_sp_fid_family_unregister.exit_crit_edge: ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit

land.rhs.i:                                       ; preds = %for.body22
  %.b42.i = load i1, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  br i1 %.b42.i, label %land.rhs.i.mlxsw_sp_fid_family_unregister.exit_crit_edge, label %if.then.i, !prof !186

land.rhs.i.mlxsw_sp_fid_family_unregister.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #16
  br label %mlxsw_sp_fid_family_unregister.exit

mlxsw_sp_fid_family_unregister.exit:              ; preds = %if.then.i, %land.rhs.i.mlxsw_sp_fid_family_unregister.exit_crit_edge, %for.body22.mlxsw_sp_fid_family_unregister.exit_crit_edge
  call void @kfree(ptr noundef %60) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0108)
  %cmp21 = icmp ugt i32 %i.0108, 1
  br i1 %cmp21, label %for.body22.1, label %mlxsw_sp_fid_family_unregister.exit.for.end26_crit_edge

mlxsw_sp_fid_family_unregister.exit.for.end26_crit_edge: ; preds = %mlxsw_sp_fid_family_unregister.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end26

for.body22.1:                                     ; preds = %mlxsw_sp_fid_family_unregister.exit
  %i.1112.1 = add nsw i32 %i.0108, -2
  %arrayidx23.1 = getelementptr %struct.mlxsw_sp_fid_core, ptr %call7.i.i, i32 0, i32 2, i32 %i.1112.1
  %70 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx23.1, align 4
  %72 = ptrtoint ptr %fid_core2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fid_core2, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %71, align 4
  %arrayidx.i57.1 = getelementptr %struct.mlxsw_sp_fid_core, ptr %73, i32 0, i32 2, i32 %75
  %76 = ptrtoint ptr %arrayidx.i57.1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx.i57.1, align 4
  %fids_bitmap.i58.1 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %71, i32 0, i32 5
  %77 = ptrtoint ptr %fids_bitmap.i58.1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fids_bitmap.i58.1, align 4
  call void @bitmap_free(ptr noundef %78) #16
  %fids_list.i59.1 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %71, i32 0, i32 4
  %79 = ptrtoint ptr %fids_list.i59.1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %fids_list.i59.1, align 4
  %cmp.i.not.i.1 = icmp eq ptr %80, %fids_list.i59.1
  br i1 %cmp.i.not.i.1, label %for.body22.1.mlxsw_sp_fid_family_unregister.exit.1_crit_edge, label %land.rhs.i.1

for.body22.1.mlxsw_sp_fid_family_unregister.exit.1_crit_edge: ; preds = %for.body22.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit.1

land.rhs.i.1:                                     ; preds = %for.body22.1
  %.b42.i.1 = load i1, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  br i1 %.b42.i.1, label %land.rhs.i.1.mlxsw_sp_fid_family_unregister.exit.1_crit_edge, label %if.then.i.1, !prof !186

land.rhs.i.1.mlxsw_sp_fid_family_unregister.exit.1_crit_edge: ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit.1

if.then.i.1:                                      ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #16
  br label %mlxsw_sp_fid_family_unregister.exit.1

mlxsw_sp_fid_family_unregister.exit.1:            ; preds = %if.then.i.1, %land.rhs.i.1.mlxsw_sp_fid_family_unregister.exit.1_crit_edge, %for.body22.1.mlxsw_sp_fid_family_unregister.exit.1_crit_edge
  call void @kfree(ptr noundef %71) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0108)
  %cmp21.1 = icmp ugt i32 %i.0108, 2
  br i1 %cmp21.1, label %for.body22.2, label %mlxsw_sp_fid_family_unregister.exit.1.for.end26_crit_edge

mlxsw_sp_fid_family_unregister.exit.1.for.end26_crit_edge: ; preds = %mlxsw_sp_fid_family_unregister.exit.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end26

for.body22.2:                                     ; preds = %mlxsw_sp_fid_family_unregister.exit.1
  %i.1112.2 = add nsw i32 %i.0108, -3
  %arrayidx23.2 = getelementptr %struct.mlxsw_sp_fid_core, ptr %call7.i.i, i32 0, i32 2, i32 %i.1112.2
  %81 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx23.2, align 4
  %83 = ptrtoint ptr %fid_core2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %fid_core2, align 4
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %82, align 4
  %arrayidx.i57.2 = getelementptr %struct.mlxsw_sp_fid_core, ptr %84, i32 0, i32 2, i32 %86
  %87 = ptrtoint ptr %arrayidx.i57.2 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %arrayidx.i57.2, align 4
  %fids_bitmap.i58.2 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %82, i32 0, i32 5
  %88 = ptrtoint ptr %fids_bitmap.i58.2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fids_bitmap.i58.2, align 4
  call void @bitmap_free(ptr noundef %89) #16
  %fids_list.i59.2 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %82, i32 0, i32 4
  %90 = ptrtoint ptr %fids_list.i59.2 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %fids_list.i59.2, align 4
  %cmp.i.not.i.2 = icmp eq ptr %91, %fids_list.i59.2
  br i1 %cmp.i.not.i.2, label %for.body22.2.mlxsw_sp_fid_family_unregister.exit.2_crit_edge, label %land.rhs.i.2

for.body22.2.mlxsw_sp_fid_family_unregister.exit.2_crit_edge: ; preds = %for.body22.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit.2

land.rhs.i.2:                                     ; preds = %for.body22.2
  %.b42.i.2 = load i1, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  br i1 %.b42.i.2, label %land.rhs.i.2.mlxsw_sp_fid_family_unregister.exit.2_crit_edge, label %if.then.i.2, !prof !186

land.rhs.i.2.mlxsw_sp_fid_family_unregister.exit.2_crit_edge: ; preds = %land.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit.2

if.then.i.2:                                      ; preds = %land.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #16
  br label %mlxsw_sp_fid_family_unregister.exit.2

mlxsw_sp_fid_family_unregister.exit.2:            ; preds = %if.then.i.2, %land.rhs.i.2.mlxsw_sp_fid_family_unregister.exit.2_crit_edge, %for.body22.2.mlxsw_sp_fid_family_unregister.exit.2_crit_edge
  call void @kfree(ptr noundef %82) #16
  br label %for.end26

for.end26:                                        ; preds = %mlxsw_sp_fid_family_unregister.exit.2, %mlxsw_sp_fid_family_unregister.exit.1.for.end26_crit_edge, %mlxsw_sp_fid_family_unregister.exit.for.end26_crit_edge, %mlxsw_sp_fid_family_register.exit.for.end26_crit_edge
  %92 = ptrtoint ptr %port_fid_mappings to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %port_fid_mappings, align 8
  call void @kfree(ptr noundef %93) #16
  br label %err_alloc_port_fid_mappings

err_alloc_port_fid_mappings:                      ; preds = %for.end26, %if.end7.i.i.err_alloc_port_fid_mappings_crit_edge, %kcalloc.exit.thread
  %err.0 = phi i32 [ %retval.0.i, %for.end26 ], [ -12, %if.end7.i.i.err_alloc_port_fid_mappings_crit_edge ], [ -12, %kcalloc.exit.thread ]
  call void @rhashtable_destroy(ptr noundef %vni_ht) #16
  br label %err_rhashtable_vni_init

err_rhashtable_vni_init:                          ; preds = %err_alloc_port_fid_mappings, %if.end6.err_rhashtable_vni_init_crit_edge
  %err.1 = phi i32 [ %call7, %if.end6.err_rhashtable_vni_init_crit_edge ], [ %err.0, %err_alloc_port_fid_mappings ]
  call void @rhashtable_destroy(ptr noundef nonnull %call7.i.i) #16
  br label %err_rhashtable_fid_init

err_rhashtable_fid_init:                          ; preds = %err_rhashtable_vni_init, %if.end.err_rhashtable_fid_init_crit_edge
  %err.2 = phi i32 [ %call3, %if.end.err_rhashtable_fid_init_crit_edge ], [ %err.1, %err_rhashtable_vni_init ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %err_rhashtable_fid_init, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err_rhashtable_fid_init ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlxsw_core_max_ports(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlxsw_sp_fids_fini(ptr nocapture noundef readonly %mlxsw_sp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_core1 = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 14
  %0 = ptrtoint ptr %fid_core1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_core1, align 4
  %arrayidx = getelementptr %struct.mlxsw_sp_fid_core, ptr %1, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %arrayidx.i = getelementptr %struct.mlxsw_sp_fid_core, ptr %1, i32 0, i32 2, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.i, align 4
  %fids_bitmap.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %fids_bitmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fids_bitmap.i, align 4
  tail call void @bitmap_free(ptr noundef %8) #16
  %fids_list.i = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %fids_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %fids_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %fids_list.i
  br i1 %cmp.i.not.i, label %entry.mlxsw_sp_fid_family_unregister.exit_crit_edge, label %land.rhs.i

entry.mlxsw_sp_fid_family_unregister.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit

land.rhs.i:                                       ; preds = %entry
  %.b42.i = load i1, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  br i1 %.b42.i, label %land.rhs.i.mlxsw_sp_fid_family_unregister.exit_crit_edge, label %if.then.i, !prof !186

land.rhs.i.mlxsw_sp_fid_family_unregister.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #16
  br label %mlxsw_sp_fid_family_unregister.exit

mlxsw_sp_fid_family_unregister.exit:              ; preds = %if.then.i, %land.rhs.i.mlxsw_sp_fid_family_unregister.exit_crit_edge, %entry.mlxsw_sp_fid_family_unregister.exit_crit_edge
  tail call void @kfree(ptr noundef %3) #16
  %arrayidx.1 = getelementptr %struct.mlxsw_sp_fid_core, ptr %1, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  %13 = ptrtoint ptr %fid_core1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fid_core1, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 4
  %arrayidx.i.1 = getelementptr %struct.mlxsw_sp_fid_core, ptr %14, i32 0, i32 2, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.i.1, align 4
  %fids_bitmap.i.1 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %12, i32 0, i32 5
  %18 = ptrtoint ptr %fids_bitmap.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fids_bitmap.i.1, align 4
  tail call void @bitmap_free(ptr noundef %19) #16
  %fids_list.i.1 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %12, i32 0, i32 4
  %20 = ptrtoint ptr %fids_list.i.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %fids_list.i.1, align 4
  %cmp.i.not.i.1 = icmp eq ptr %21, %fids_list.i.1
  br i1 %cmp.i.not.i.1, label %mlxsw_sp_fid_family_unregister.exit.mlxsw_sp_fid_family_unregister.exit.1_crit_edge, label %land.rhs.i.1

mlxsw_sp_fid_family_unregister.exit.mlxsw_sp_fid_family_unregister.exit.1_crit_edge: ; preds = %mlxsw_sp_fid_family_unregister.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit.1

land.rhs.i.1:                                     ; preds = %mlxsw_sp_fid_family_unregister.exit
  %.b42.i.1 = load i1, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  br i1 %.b42.i.1, label %land.rhs.i.1.mlxsw_sp_fid_family_unregister.exit.1_crit_edge, label %if.then.i.1, !prof !186

land.rhs.i.1.mlxsw_sp_fid_family_unregister.exit.1_crit_edge: ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit.1

if.then.i.1:                                      ; preds = %land.rhs.i.1
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #16
  br label %mlxsw_sp_fid_family_unregister.exit.1

mlxsw_sp_fid_family_unregister.exit.1:            ; preds = %if.then.i.1, %land.rhs.i.1.mlxsw_sp_fid_family_unregister.exit.1_crit_edge, %mlxsw_sp_fid_family_unregister.exit.mlxsw_sp_fid_family_unregister.exit.1_crit_edge
  tail call void @kfree(ptr noundef %12) #16
  %arrayidx.2 = getelementptr %struct.mlxsw_sp_fid_core, ptr %1, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2, align 4
  %24 = ptrtoint ptr %fid_core1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fid_core1, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %23, align 4
  %arrayidx.i.2 = getelementptr %struct.mlxsw_sp_fid_core, ptr %25, i32 0, i32 2, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx.i.2, align 4
  %fids_bitmap.i.2 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %23, i32 0, i32 5
  %29 = ptrtoint ptr %fids_bitmap.i.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fids_bitmap.i.2, align 4
  tail call void @bitmap_free(ptr noundef %30) #16
  %fids_list.i.2 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %23, i32 0, i32 4
  %31 = ptrtoint ptr %fids_list.i.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %fids_list.i.2, align 4
  %cmp.i.not.i.2 = icmp eq ptr %32, %fids_list.i.2
  br i1 %cmp.i.not.i.2, label %mlxsw_sp_fid_family_unregister.exit.1.mlxsw_sp_fid_family_unregister.exit.2_crit_edge, label %land.rhs.i.2

mlxsw_sp_fid_family_unregister.exit.1.mlxsw_sp_fid_family_unregister.exit.2_crit_edge: ; preds = %mlxsw_sp_fid_family_unregister.exit.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit.2

land.rhs.i.2:                                     ; preds = %mlxsw_sp_fid_family_unregister.exit.1
  %.b42.i.2 = load i1, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  br i1 %.b42.i.2, label %land.rhs.i.2.mlxsw_sp_fid_family_unregister.exit.2_crit_edge, label %if.then.i.2, !prof !186

land.rhs.i.2.mlxsw_sp_fid_family_unregister.exit.2_crit_edge: ; preds = %land.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit.2

if.then.i.2:                                      ; preds = %land.rhs.i.2
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #16
  br label %mlxsw_sp_fid_family_unregister.exit.2

mlxsw_sp_fid_family_unregister.exit.2:            ; preds = %if.then.i.2, %land.rhs.i.2.mlxsw_sp_fid_family_unregister.exit.2_crit_edge, %mlxsw_sp_fid_family_unregister.exit.1.mlxsw_sp_fid_family_unregister.exit.2_crit_edge
  tail call void @kfree(ptr noundef %23) #16
  %arrayidx.3 = getelementptr %struct.mlxsw_sp_fid_core, ptr %1, i32 0, i32 2, i32 3
  %33 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.3, align 4
  %35 = ptrtoint ptr %fid_core1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fid_core1, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %34, align 4
  %arrayidx.i.3 = getelementptr %struct.mlxsw_sp_fid_core, ptr %36, i32 0, i32 2, i32 %38
  %39 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.i.3, align 4
  %fids_bitmap.i.3 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %34, i32 0, i32 5
  %40 = ptrtoint ptr %fids_bitmap.i.3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fids_bitmap.i.3, align 4
  tail call void @bitmap_free(ptr noundef %41) #16
  %fids_list.i.3 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %34, i32 0, i32 4
  %42 = ptrtoint ptr %fids_list.i.3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %fids_list.i.3, align 4
  %cmp.i.not.i.3 = icmp eq ptr %43, %fids_list.i.3
  br i1 %cmp.i.not.i.3, label %mlxsw_sp_fid_family_unregister.exit.2.mlxsw_sp_fid_family_unregister.exit.3_crit_edge, label %land.rhs.i.3

mlxsw_sp_fid_family_unregister.exit.2.mlxsw_sp_fid_family_unregister.exit.3_crit_edge: ; preds = %mlxsw_sp_fid_family_unregister.exit.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit.3

land.rhs.i.3:                                     ; preds = %mlxsw_sp_fid_family_unregister.exit.2
  %.b42.i.3 = load i1, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  br i1 %.b42.i.3, label %land.rhs.i.3.mlxsw_sp_fid_family_unregister.exit.3_crit_edge, label %if.then.i.3, !prof !186

land.rhs.i.3.mlxsw_sp_fid_family_unregister.exit.3_crit_edge: ; preds = %land.rhs.i.3
  call void @__sanitizer_cov_trace_pc() #18
  br label %mlxsw_sp_fid_family_unregister.exit.3

if.then.i.3:                                      ; preds = %land.rhs.i.3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @mlxsw_sp_fid_family_unregister.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1095, i32 noundef 9, ptr noundef null) #16
  br label %mlxsw_sp_fid_family_unregister.exit.3

mlxsw_sp_fid_family_unregister.exit.3:            ; preds = %if.then.i.3, %land.rhs.i.3.mlxsw_sp_fid_family_unregister.exit.3_crit_edge, %mlxsw_sp_fid_family_unregister.exit.2.mlxsw_sp_fid_family_unregister.exit.3_crit_edge
  tail call void @kfree(ptr noundef %34) #16
  %port_fid_mappings = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %port_fid_mappings to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %port_fid_mappings, align 4
  tail call void @kfree(ptr noundef %45) #16
  %vni_ht = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %1, i32 0, i32 1
  tail call void @rhashtable_destroy(ptr noundef %vni_ht) #16
  tail call void @rhashtable_destroy(ptr noundef %1) #16
  tail call void @kfree(ptr noundef %1) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_mutex_is_held(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__rhashtable_insert_fast(ptr noundef %ht, ptr noundef %key, ptr noundef %obj, [7 x i32] %params.coerce) unnamed_addr #3 align 64 {
entry:
  %arg = alloca %struct.rhashtable_compare_arg, align 4
  call void @__sanitizer_cov_trace_pc() #18
  %params.coerce.fca.6.extract = extractvalue [7 x i32] %params.coerce, 6
  %0 = inttoptr i32 %params.coerce.fca.6.extract to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %arg) #16
  %1 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ht, ptr %arg, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %key, ptr %1, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !187
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %8 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ht, align 4
  %call = tail call i32 @lockdep_rht_mutex_is_held(ptr noundef %ht) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %rcu_read_lock.exit.do.end12_crit_edge

rcu_read_lock.exit.do.end12_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

lor.lhs.false:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true, label %lor.lhs.false.do.end12_crit_edge

lor.lhs.false.do.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b2 = load i1, ptr @__rhashtable_insert_fast.__warned, align 1
  br i1 %.b2, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_insert_fast.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 715, ptr noundef nonnull @.str.4) #16
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %lor.lhs.false.do.end12_crit_edge, %rcu_read_lock.exit.do.end12_crit_edge
  %params.coerce.fca.5.extract.i = extractvalue [7 x i32] %params.coerce, 5
  %10 = inttoptr i32 %params.coerce.fca.5.extract.i to ptr
  %head_offset.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %head_offset.i.i, align 2
  %conv.i.i = zext i16 %12 to i32
  %idx.neg.i.i = sub nsw i32 0, %conv.i.i
  %add.ptr.i.i = getelementptr i8, ptr %obj, i32 %idx.neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.5.extract.i)
  %tobool.not.i4 = icmp eq i32 %params.coerce.fca.5.extract.i, 0
  br i1 %tobool.not.i4, label %if.then.i.i.i, label %cond.true.i, !prof !185

cond.true.i:                                      ; preds = %do.end12
  %params.coerce.fca.0.extract.i = extractvalue [7 x i32] %params.coerce, 0
  %conv.i = and i32 %params.coerce.fca.0.extract.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i)
  %tobool4.not.i = icmp eq i32 %conv.i, 0
  br i1 %tobool4.not.i, label %cond.false.i, label %cond.true.i.cond.end.i_crit_edge

cond.true.i.cond.end.i_crit_edge:                 ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end.i

cond.false.i:                                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #18
  %key_len6.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %key_len6.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %key_len6.i, align 2
  %conv7.i = zext i16 %14 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv7.i, %cond.false.i ], [ %conv.i, %cond.true.i.cond.end.i_crit_edge ]
  %hash_rnd.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2
  %15 = ptrtoint ptr %hash_rnd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hash_rnd.i, align 8
  %call8.i = tail call i32 %10(ptr noundef %add.ptr.i.i, i32 noundef %cond.i, i32 noundef %16) #16
  br label %rht_head_hashfn.exit

if.then.i.i.i:                                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #18
  %hash_rnd.i.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 2
  %17 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hash_rnd.i.i, align 8
  %params.coerce.fca.1.extract.i = extractvalue [7 x i32] %params.coerce, 1
  %params.sroa.3.4.extract.shift.i = lshr i32 %params.coerce.fca.1.extract.i, 16
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %params.sroa.3.4.extract.shift.i
  %hashfn.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 7
  %19 = ptrtoint ptr %hashfn.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hashfn.i.i.i, align 4
  %key_len1.i.i.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 1
  %21 = ptrtoint ptr %key_len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_len1.i.i.i, align 4
  %call.i.i.i = tail call i32 %20(ptr noundef %add.ptr.i, i32 noundef %22, i32 noundef %18) #16
  br label %rht_head_hashfn.exit

rht_head_hashfn.exit:                             ; preds = %if.then.i.i.i, %cond.end.i
  %hash.2.i.i.sink.i = phi i32 [ %call8.i, %cond.end.i ], [ %call.i.i.i, %if.then.i.i.i ]
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %9, align 128
  %sub.i.i.i = add i32 %24, -1
  %and.i3.i.i = and i32 %sub.i.i.i, %hash.2.i.i.sink.i
  %nest.i = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 1
  %25 = ptrtoint ptr %nest.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nest.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i5 = icmp eq i32 %26, 0
  br i1 %tobool.not.i5, label %cond.false.i8, label %cond.true.i7, !prof !186

cond.true.i7:                                     ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call.i6 = tail call ptr @rht_bucket_nested_insert(ptr noundef %ht, ptr noundef %9, i32 noundef %and.i3.i.i) #16
  br label %rht_bucket_insert.exit

cond.false.i8:                                    ; preds = %rht_head_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr %struct.bucket_table, ptr %9, i32 0, i32 8, i32 %and.i3.i.i
  br label %rht_bucket_insert.exit

rht_bucket_insert.exit:                           ; preds = %cond.false.i8, %cond.true.i7
  %cond.i9 = phi ptr [ %call.i6, %cond.true.i7 ], [ %arrayidx.i, %cond.false.i8 ]
  %tobool17.not = icmp eq ptr %cond.i9, null
  br i1 %tobool17.not, label %rht_bucket_insert.exit.out_crit_edge, label %if.end19

rht_bucket_insert.exit.out_crit_edge:             ; preds = %rht_bucket_insert.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end19:                                         ; preds = %rht_bucket_insert.exit
  tail call fastcc void @rht_lock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  %future_tbl = getelementptr inbounds %struct.bucket_table, ptr %9, i32 0, i32 5
  %27 = ptrtoint ptr %future_tbl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %future_tbl, align 4
  %tobool25.not = icmp eq ptr %28, null
  br i1 %tobool25.not, label %if.end30, label %if.end19.slow_path_crit_edge, !prof !186

if.end19.slow_path_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %slow_path

slow_path:                                        ; preds = %rht_grow_above_100.exit.slow_path_crit_edge, %for.end.slow_path_crit_edge, %if.end19.slow_path_crit_edge
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  %call.i11 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i11, label %slow_path.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

slow_path.rcu_read_unlock.exit_crit_edge:         ; preds = %slow_path
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %slow_path
  %call1.i12 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %slow_path.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !190
  %29 = call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i.i.i18 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i20 = add i32 %32, -1
  store volatile i32 %sub.i.i.i20, ptr %preempt_count.i.i.i.i19, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %call29 = call ptr @rhashtable_insert_slow(ptr noundef %ht, ptr noundef %key, ptr noundef %obj) #16
  br label %cleanup210

if.end30:                                         ; preds = %if.end19
  %call.i21 = tail call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool.not.i22 = icmp eq i32 %call.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i24, label %if.end30.rht_ptr.exit_crit_edge

if.end30.rht_ptr.exit_crit_edge:                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit

land.lhs.true.i24:                                ; preds = %if.end30
  %call1.i23 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23)
  %tobool2.not.i = icmp eq i32 %call1.i23, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i24.rht_ptr.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i24.rht_ptr.exit_crit_edge:         ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i24
  %.b7.i = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i, label %land.lhs.true3.i.rht_ptr.exit_crit_edge, label %if.then.i25

land.lhs.true3.i.rht_ptr.exit_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit

if.then.i25:                                      ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rht_ptr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 377, ptr noundef nonnull @.str.8) #16
  br label %rht_ptr.exit

rht_ptr.exit:                                     ; preds = %if.then.i25, %land.lhs.true3.i.rht_ptr.exit_crit_edge, %land.lhs.true.i24.rht_ptr.exit_crit_edge, %if.end30.rht_ptr.exit_crit_edge
  %33 = ptrtoint ptr %cond.i9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cond.i9, align 4
  %35 = ptrtoint ptr %34 to i32
  %and.i.i = and i32 %35, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %36 = ptrtoint ptr %cond.i9 to i32
  %or.i.i = or i32 %36, 1
  %cond.i.i = select i1 %tobool.not.i.i, i32 %or.i.i, i32 %and.i.i
  %and.i84 = and i32 %cond.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.i.not85 = icmp eq i32 %and.i84, 0
  br i1 %tobool.i.not85, label %for.body.lr.ph, label %rht_ptr.exit.if.end152_crit_edge

rht_ptr.exit.if.end152_crit_edge:                 ; preds = %rht_ptr.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end152

for.body.lr.ph:                                   ; preds = %rht_ptr.exit
  %37 = inttoptr i32 %cond.i.i to ptr
  %tobool35.not = icmp eq ptr %key, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.coerce.fca.6.extract)
  %tobool37.not = icmp eq i32 %params.coerce.fca.6.extract, 0
  br label %for.body

for.body:                                         ; preds = %do.end147.for.body_crit_edge, %for.body.lr.ph
  %head.087 = phi ptr [ %37, %for.body.lr.ph ], [ %51, %do.end147.for.body_crit_edge ]
  %elasticity.086 = phi i32 [ 16, %for.body.lr.ph ], [ %dec, %do.end147.for.body_crit_edge ]
  %dec = add i32 %elasticity.086, -1
  br i1 %tobool35.not, label %for.body.do.body136_crit_edge, label %lor.lhs.false36

for.body.do.body136_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body136

lor.lhs.false36:                                  ; preds = %for.body
  %38 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %head_offset.i.i, align 2
  %conv.i29 = zext i16 %39 to i32
  %idx.neg.i30 = sub nsw i32 0, %conv.i29
  %add.ptr.i31 = getelementptr i8, ptr %head.087, i32 %idx.neg.i30
  br i1 %tobool37.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %lor.lhs.false36
  %call40 = call i32 %0(ptr noundef nonnull %arg, ptr noundef %add.ptr.i31) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %cond.true.cleanup_crit_edge, label %cond.true.do.body136_crit_edge

cond.true.do.body136_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body136

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cond.false:                                       ; preds = %lor.lhs.false36
  %40 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arg, align 4
  %key_offset.i = getelementptr inbounds %struct.rhashtable, ptr %41, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %key_offset.i, align 4
  %conv.i32 = zext i16 %43 to i32
  %add.ptr.i33 = getelementptr i8, ptr %add.ptr.i31, i32 %conv.i32
  %44 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %1, align 4
  %key_len.i = getelementptr inbounds %struct.rhashtable, ptr %41, i32 0, i32 3, i32 1
  %46 = ptrtoint ptr %key_len.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %key_len.i, align 2
  %conv3.i = zext i16 %47 to i32
  %bcmp = call i32 @bcmp(ptr %add.ptr.i33, ptr %45, i32 %conv3.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool44.not = icmp eq i32 %bcmp, 0
  br i1 %tobool44.not, label %cond.false.cleanup_crit_edge, label %cond.false.do.body136_crit_edge

cond.false.do.body136_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body136

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup:                                          ; preds = %cond.false.cleanup_crit_edge, %cond.true.cleanup_crit_edge
  %48 = ptrtoint ptr %head_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %head_offset.i.i, align 2
  %conv.i36 = zext i16 %49 to i32
  %idx.neg.i37 = sub nsw i32 0, %conv.i36
  %add.ptr.i38 = getelementptr i8, ptr %head.087, i32 %idx.neg.i37
  br label %out_unlock

do.body136:                                       ; preds = %cond.false.do.body136_crit_edge, %cond.true.do.body136_crit_edge, %for.body.do.body136_crit_edge
  %call137 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %land.lhs.true139, label %do.body136.do.end147_crit_edge

do.body136.do.end147_crit_edge:                   ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end147

land.lhs.true139:                                 ; preds = %do.body136
  %call140 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %land.lhs.true139.do.end147_crit_edge, label %land.lhs.true142

land.lhs.true139.do.end147_crit_edge:             ; preds = %land.lhs.true139
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end147

land.lhs.true142:                                 ; preds = %land.lhs.true139
  %.b2811 = load i1, ptr @__rhashtable_insert_fast.__warned.9, align 1
  br i1 %.b2811, label %land.lhs.true142.do.end147_crit_edge, label %if.then144

land.lhs.true142.do.end147_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end147

if.then144:                                       ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__rhashtable_insert_fast.__warned.9, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 732, ptr noundef nonnull @.str.8) #16
  br label %do.end147

do.end147:                                        ; preds = %if.then144, %land.lhs.true142.do.end147_crit_edge, %land.lhs.true139.do.end147_crit_edge, %do.body136.do.end147_crit_edge
  %50 = ptrtoint ptr %head.087 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.087, align 4
  %52 = ptrtoint ptr %51 to i32
  %and.i = and i32 %52, 1
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.end147.for.body_crit_edge, label %for.end

do.end147.for.body_crit_edge:                     ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %do.end147
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %phi.cmp = icmp slt i32 %dec, 1
  br i1 %phi.cmp, label %for.end.slow_path_crit_edge, label %for.end.if.end152_crit_edge

for.end.if.end152_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end152

for.end.slow_path_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %slow_path

if.end152:                                        ; preds = %for.end.if.end152_crit_edge, %rht_ptr.exit.if.end152_crit_edge
  %nelems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 8
  %call.i.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #16
  %53 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %nelems.i, align 4
  %max_elems.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 2
  %55 = ptrtoint ptr %max_elems.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %max_elems.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp.i.not = icmp ult i32 %54, %56
  br i1 %cmp.i.not, label %if.end162, label %if.end152.out_unlock_crit_edge, !prof !186

if.end152.out_unlock_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #18
  br label %out_unlock

if.end162:                                        ; preds = %if.end152
  %call.i.i.i41 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #16
  %57 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %nelems.i, align 4
  %59 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %9, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp.i42 = icmp ugt i32 %58, %60
  br i1 %cmp.i42, label %rht_grow_above_100.exit, label %if.end162.if.end171_crit_edge

if.end162.if.end171_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end171

rht_grow_above_100.exit:                          ; preds = %if.end162
  %max_size.i = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %61 = ptrtoint ptr %max_size.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool.not.i43 = icmp eq i32 %62, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp4.i = icmp ult i32 %60, %62
  %spec.select.i = select i1 %tobool.not.i43, i1 true, i1 %cmp4.i
  br i1 %spec.select.i, label %rht_grow_above_100.exit.slow_path_crit_edge, label %rht_grow_above_100.exit.if.end171_crit_edge, !prof !185

rht_grow_above_100.exit.if.end171_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end171

rht_grow_above_100.exit.slow_path_crit_edge:      ; preds = %rht_grow_above_100.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %slow_path

if.end171:                                        ; preds = %rht_grow_above_100.exit.if.end171_crit_edge, %if.end162.if.end171_crit_edge
  %call.i44 = call i32 @lockdep_rht_bucket_is_held(ptr noundef %9, i32 noundef %and.i3.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %land.lhs.true.i48, label %if.end171.rht_ptr.exit56_crit_edge

if.end171.rht_ptr.exit56_crit_edge:               ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit56

land.lhs.true.i48:                                ; preds = %if.end171
  %call1.i46 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46)
  %tobool2.not.i47 = icmp eq i32 %call1.i46, 0
  br i1 %tobool2.not.i47, label %land.lhs.true.i48.rht_ptr.exit56_crit_edge, label %land.lhs.true3.i50

land.lhs.true.i48.rht_ptr.exit56_crit_edge:       ; preds = %land.lhs.true.i48
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit56

land.lhs.true3.i50:                               ; preds = %land.lhs.true.i48
  %.b7.i49 = load i1, ptr @rht_ptr.__warned, align 1
  br i1 %.b7.i49, label %land.lhs.true3.i50.rht_ptr.exit56_crit_edge, label %if.then.i51

land.lhs.true3.i50.rht_ptr.exit56_crit_edge:      ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #18
  br label %rht_ptr.exit56

if.then.i51:                                      ; preds = %land.lhs.true3.i50
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rht_ptr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 377, ptr noundef nonnull @.str.8) #16
  br label %rht_ptr.exit56

rht_ptr.exit56:                                   ; preds = %if.then.i51, %land.lhs.true3.i50.rht_ptr.exit56_crit_edge, %land.lhs.true.i48.rht_ptr.exit56_crit_edge, %if.end171.rht_ptr.exit56_crit_edge
  %63 = ptrtoint ptr %cond.i9 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %cond.i9, align 4
  %65 = ptrtoint ptr %64 to i32
  %and.i.i52 = and i32 %65, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52)
  %tobool.not.i.i53 = icmp eq i32 %and.i.i52, 0
  %cond.i.i55 = select i1 %tobool.not.i.i53, i32 %or.i.i, i32 %and.i.i52
  %66 = inttoptr i32 %cond.i.i55 to ptr
  %67 = ptrtoint ptr %obj to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %66, ptr %obj, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nelems.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %nelems.i, i32 1, i32 3, i32 1) #16
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems.i, ptr %nelems.i, i32 1, ptr elementtype(i32) %nelems.i) #16, !srcloc !199
  call fastcc void @rht_assign_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9, ptr noundef %obj)
  %call.i.i.i58 = call zeroext i1 @__kasan_check_read(ptr noundef %nelems.i, i32 noundef 4) #16
  %69 = ptrtoint ptr %nelems.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %nelems.i, align 4
  %71 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %9, align 128
  %div8.i = lshr i32 %72, 2
  %mul.i = mul nuw i32 %div8.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %mul.i)
  %cmp.i59 = icmp ugt i32 %70, %mul.i
  br i1 %cmp.i59, label %rht_grow_above_75.exit, label %rht_ptr.exit56.out_crit_edge

rht_ptr.exit56.out_crit_edge:                     ; preds = %rht_ptr.exit56
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

rht_grow_above_75.exit:                           ; preds = %rht_ptr.exit56
  %max_size.i60 = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 3, i32 4
  %73 = ptrtoint ptr %max_size.i60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max_size.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i61 = icmp eq i32 %74, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %74)
  %cmp4.i62 = icmp ult i32 %72, %74
  %spec.select.i63 = select i1 %tobool.not.i61, i1 true, i1 %cmp4.i62
  br i1 %spec.select.i63, label %if.then207, label %rht_grow_above_75.exit.out_crit_edge

rht_grow_above_75.exit.out_crit_edge:             ; preds = %rht_grow_above_75.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then207:                                       ; preds = %rht_grow_above_75.exit
  call void @__sanitizer_cov_trace_pc() #18
  %run_work = getelementptr inbounds %struct.rhashtable, ptr %ht, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %75 = load ptr, ptr @system_wq, align 4
  %call.i.i65 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %75, ptr noundef %run_work) #16
  br label %out

out:                                              ; preds = %out_unlock, %if.then207, %rht_grow_above_75.exit.out_crit_edge, %rht_ptr.exit56.out_crit_edge, %rht_bucket_insert.exit.out_crit_edge
  %data.2 = phi ptr [ %data.3, %out_unlock ], [ inttoptr (i32 -12 to ptr), %rht_bucket_insert.exit.out_crit_edge ], [ null, %if.then207 ], [ null, %rht_grow_above_75.exit.out_crit_edge ], [ null, %rht_ptr.exit56.out_crit_edge ]
  %call.i66 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i66, label %out.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true.i69

out.rcu_read_unlock.exit76_crit_edge:             ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit76

land.lhs.true.i69:                                ; preds = %out
  %call1.i67 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit76

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit76

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.6) #16
  br label %rcu_read_unlock.exit76

rcu_read_unlock.exit76:                           ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit76_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit76_crit_edge, %out.rcu_read_unlock.exit76_crit_edge
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !190
  %76 = call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i.i.i73 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i75 = add i32 %79, -1
  store volatile i32 %sub.i.i.i75, ptr %preempt_count.i.i.i.i74, align 4
  call void @rcu_read_unlock_strict() #16
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup210

out_unlock:                                       ; preds = %if.end152.out_unlock_crit_edge, %cleanup
  %data.3 = phi ptr [ %add.ptr.i38, %cleanup ], [ inttoptr (i32 -7 to ptr), %if.end152.out_unlock_crit_edge ]
  call fastcc void @rht_unlock(ptr noundef %9, ptr noundef nonnull %cond.i9)
  br label %out

cleanup210:                                       ; preds = %rcu_read_unlock.exit76, %rcu_read_unlock.exit
  %retval.0 = phi ptr [ %call29, %rcu_read_unlock.exit ], [ %data.2, %rcu_read_unlock.exit76 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %arg) #16
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_lock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @local_bh_disable()
  %0 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !200
  br label %while.cond.i

while.cond.i:                                     ; preds = %do.body14.i, %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #16
  %4 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %bkt, align 4
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %test_and_set_bit_lock.exit.i, label %while.cond.i.do.body2.i_crit_edge, !prof !201

while.cond.i.do.body2.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i

test_and_set_bit_lock.exit.i:                     ; preds = %while.cond.i
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #16, !srcloc !202
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !203
  %and1.i.i.i = and i32 %asmresult.i.i.i.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %phi.cmp.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %phi.cmp.i.not.i, label %__here, label %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, !prof !186

test_and_set_bit_lock.exit.i.do.body2.i_crit_edge: ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i

do.body2.i:                                       ; preds = %test_and_set_bit_lock.exit.i.do.body2.i_crit_edge, %while.cond.i.do.body2.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !204
  %7 = tail call i32 @llvm.read_register.i32(metadata !174) #16
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !205
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !206
  %11 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %12, 1
  %tobool12.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not.i, label %do.body14.i, label %do.body4.i.do.body4.i_crit_edge

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body4.i

do.body14.i:                                      ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #18
  %13 = tail call i32 @llvm.read_register.i32(metadata !174) #16
  %and.i.i.i3.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i3.i to ptr
  %preempt_count.i.i4.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i4.i, align 4
  %add.i5.i = add i32 %16, 1
  store volatile i32 %add.i5.i, ptr %preempt_count.i.i4.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !207
  br label %while.cond.i

__here:                                           ; preds = %test_and_set_bit_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_acquire(ptr noundef %dep_map, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rht_lock, %__here) to i32)) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_unlock(ptr noundef %tbl, ptr noundef %bkt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_unlock, %__here) to i32)) #16
  %0 = ptrtoint ptr %bkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %bkt, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %do.body4.i, label %bit_spin_unlock.exit, !prof !185

do.body4.i:                                       ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/bit_spinlock.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 60, 0\0A.popsection", ""() #16, !srcloc !208
  unreachable

bit_spin_unlock.exit:                             ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %bkt, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !209
  tail call void @llvm.prefetch.p0(ptr %bkt, i32 1, i32 3, i32 1) #16
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %bkt, ptr %bkt, i32 1, ptr elementtype(i32) %bkt) #16, !srcloc !210
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !211
  %3 = tail call i32 @llvm.read_register.i32(metadata !174) #16
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
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lockdep_rht_bucket_is_held(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rht_assign_unlock(ptr noundef %tbl, ptr noundef %bkt, ptr noundef %obj) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %obj to i32
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, ptr %obj, ptr null
  %dep_map = getelementptr inbounds %struct.bucket_table, ptr %tbl, i32 0, i32 6
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@rht_assign_unlock, %__here) to i32)) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !212
  %1 = ptrtoint ptr %bkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %spec.select, ptr %bkt, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !213
  %2 = tail call i32 @llvm.read_register.i32(metadata !174) #16
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
declare dso_local ptr @rht_bucket_nested_insert(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_fid_8021q_setup(ptr nocapture noundef writeonly %fid, ptr nocapture noundef readonly %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arg, align 2
  %vid1 = getelementptr inbounds %struct.mlxsw_sp_fid_8021q, ptr %fid, i32 0, i32 1
  %2 = ptrtoint ptr %vid1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %vid1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_fid_8021d_configure(ptr nocapture noundef readonly %fid) #2 align 64 {
entry:
  %sfmr_pl.i = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family1, align 4
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %4 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fid_index, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sfmr_pl.i) #16
  %6 = call ptr @memset(ptr %sfmr_pl.i, i32 255, i32 24)
  call fastcc void @mlxsw_reg_sfmr_pack(ptr noundef nonnull %sfmr_pl.i, i32 noundef 0, i16 noundef zeroext %5) #16
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core.i, align 4
  %call2.i = call i32 @mlxsw_reg_write(ptr noundef %8, ptr noundef nonnull @mlxsw_reg_sfmr, ptr noundef nonnull %sfmr_pl.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sfmr_pl.i) #16
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_fid_8021d_deconfigure(ptr noundef %fid) #2 align 64 {
entry:
  %sfmr_pl.i = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vni_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %0 = ptrtoint ptr %vni_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %vni_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %fid_family = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %1 = ptrtoint ptr %fid_family to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fid_family, align 4
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %2, i32 0, i32 10
  %3 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mlxsw_sp, align 4
  tail call void @mlxsw_sp_nve_fid_disable(ptr noundef %4, ptr noundef %fid) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %5 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fid_family1, align 4
  %mlxsw_sp2 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %mlxsw_sp2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mlxsw_sp2, align 4
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %9 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %fid_index, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sfmr_pl.i) #16
  %11 = call ptr @memset(ptr %sfmr_pl.i, i32 255, i32 24)
  call fastcc void @mlxsw_reg_sfmr_pack(ptr noundef nonnull %sfmr_pl.i, i32 noundef 1, i16 noundef zeroext %10) #16
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %8, i32 0, i32 1
  %12 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core.i, align 4
  %call2.i = call i32 @mlxsw_reg_write(ptr noundef %13, ptr noundef nonnull @mlxsw_reg_sfmr, ptr noundef nonnull %sfmr_pl.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sfmr_pl.i) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_fid_8021d_index_alloc(ptr nocapture noundef readonly %fid, ptr nocapture noundef readnone %arg, ptr nocapture noundef writeonly %p_fid_index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family1, align 4
  %end_index = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %end_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %end_index, align 2
  %start_index = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %start_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %start_index, align 4
  %sub = add i16 %3, 1
  %add = sub i16 %sub, %5
  %fids_bitmap = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %fids_bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fids_bitmap, align 4
  %conv4 = zext i16 %add to i32
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %7, i32 noundef %conv4) #16
  %conv6 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv6, i32 %conv4)
  %cmp = icmp eq i32 %conv6, %conv4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %start_index to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %start_index, align 4
  %10 = trunc i32 %call to i16
  %conv13 = add i16 %9, %10
  %11 = ptrtoint ptr %p_fid_index to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv13, ptr %p_fid_index, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -105, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp_fid_8021q_compare(ptr nocapture noundef readonly %fid, ptr nocapture noundef readonly %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arg, align 2
  %vid1 = getelementptr inbounds %struct.mlxsw_sp_fid_8021q, ptr %fid, i32 0, i32 1
  %2 = ptrtoint ptr %vid1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vid1, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %1)
  %cmp = icmp eq i16 %3, %1
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @mlxsw_sp_fid_8021d_flood_index(ptr nocapture noundef readonly %fid) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %0 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %fid_index, align 4
  %sub = add i16 %1, -4096
  ret i16 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_fid_8021d_port_vid_map(ptr nocapture noundef readonly %fid, ptr noundef %mlxsw_sp_port, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %2 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port2, align 4
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %4 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fid_index, align 4
  %call = tail call fastcc i32 @__mlxsw_sp_fid_port_vid_map(ptr noundef %1, i16 noundef zeroext %5, i16 noundef zeroext %3, i16 noundef zeroext %vid, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %fid_core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fid_core, align 4
  %port_fid_mappings = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %port_fid_mappings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_fid_mappings, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr i32, ptr %9, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %call5 = tail call fastcc i32 @mlxsw_sp_port_vp_mode_trans(ptr noundef %mlxsw_sp_port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %err_port_vp_mode_trans

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

err_port_vp_mode_trans:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fid_core, align 4
  %port_fid_mappings11 = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %port_fid_mappings11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_fid_mappings11, align 4
  %arrayidx13 = getelementptr i32, ptr %15, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx13, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %arrayidx13, align 4
  %18 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %fid_index, align 4
  %20 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %local_port2, align 4
  %call16 = tail call fastcc i32 @__mlxsw_sp_fid_port_vid_map(ptr noundef %1, i16 noundef zeroext %19, i16 noundef zeroext %21, i16 noundef zeroext %vid, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %err_port_vp_mode_trans, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %err_port_vp_mode_trans ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_fid_8021d_port_vid_unmap(ptr nocapture noundef readonly %fid, ptr noundef %mlxsw_sp_port, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %2 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port2, align 4
  %fid_core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fid_core, align 4
  %port_fid_mappings = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %port_fid_mappings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_fid_mappings, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr i32, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @mlxsw_sp_port_vp_mode_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext false) #16
  %vlans_list.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %mlxsw_sp_port_vlan.020.i = load ptr, ptr %prev.i, align 4
  %cmp.not21.i = icmp eq ptr %mlxsw_sp_port_vlan.020.i, %vlans_list.i
  br i1 %cmp.not21.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %mlxsw_sp_port_vlan.022.i = phi ptr [ %mlxsw_sp_port_vlan.0.i, %cleanup.i.for.body.i_crit_edge ], [ %mlxsw_sp_port_vlan.020.i, %if.then.for.body.i_crit_edge ]
  %fid3.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.022.i, i32 0, i32 2
  %11 = ptrtoint ptr %fid3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fid3.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %vid4.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.022.i, i32 0, i32 3
  %13 = ptrtoint ptr %vid4.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vid4.i, align 4
  %fid_index.i = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %fid_index.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fid_index.i, align 4
  %17 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %local_port2, align 4
  %call5.i = tail call fastcc i32 @__mlxsw_sp_fid_port_vid_map(ptr noundef %1, i16 noundef zeroext %16, i16 noundef zeroext %18, i16 noundef zeroext %14, i1 noundef zeroext false) #16
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %prev9.i = getelementptr inbounds %struct.list_head, ptr %mlxsw_sp_port_vlan.022.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %mlxsw_sp_port_vlan.0.i = load ptr, ptr %prev9.i, align 4
  %cmp.not.i = icmp eq ptr %mlxsw_sp_port_vlan.0.i, %vlans_list.i
  br i1 %cmp.not.i, label %cleanup.i.if.end_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fid_core, align 4
  %port_fid_mappings4 = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %port_fid_mappings4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_fid_mappings4, align 4
  %arrayidx6 = getelementptr i32, ptr %23, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %arrayidx6, align 4
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %26 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %fid_index, align 4
  %28 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %local_port2, align 4
  %call = tail call fastcc i32 @__mlxsw_sp_fid_port_vid_map(ptr noundef %1, i16 noundef zeroext %27, i16 noundef zeroext %29, i16 noundef zeroext %vid, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_fid_8021d_vni_set(ptr nocapture noundef readonly %fid, i32 noundef %vni) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family1, align 4
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %4 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fid_index, align 4
  %nve_flood_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 9
  %6 = ptrtoint ptr %nve_flood_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nve_flood_index, align 4
  %nve_flood_index_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %8 = ptrtoint ptr %nve_flood_index_valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %nve_flood_index_valid, align 4
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  %call = tail call fastcc i32 @mlxsw_sp_fid_vni_op(ptr noundef %3, i16 noundef zeroext %5, i32 noundef %vni, i1 noundef zeroext true, i32 noundef %7, i1 noundef zeroext %tobool)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_fid_8021d_vni_clear(ptr nocapture noundef readonly %fid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family1, align 4
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %4 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fid_index, align 4
  %nve_flood_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 9
  %6 = ptrtoint ptr %nve_flood_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nve_flood_index, align 4
  %nve_flood_index_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %8 = ptrtoint ptr %nve_flood_index_valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %nve_flood_index_valid, align 4
  %9 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool = icmp ne i8 %9, 0
  %call = tail call fastcc i32 @mlxsw_sp_fid_vni_op(ptr noundef %3, i16 noundef zeroext %5, i32 noundef 0, i1 noundef zeroext false, i32 noundef %7, i1 noundef zeroext %tobool)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_fid_8021d_nve_flood_index_set(ptr nocapture noundef readonly %fid, i32 noundef %nve_flood_index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family1, align 4
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %4 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fid_index, align 4
  %vni = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 8
  %6 = ptrtoint ptr %vni to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vni, align 4
  %vni_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %8 = ptrtoint ptr %vni_valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %vni_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  %call = tail call fastcc i32 @mlxsw_sp_fid_vni_op(ptr noundef %3, i16 noundef zeroext %5, i32 noundef %7, i1 noundef zeroext %tobool, i32 noundef %nve_flood_index, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_fid_8021d_nve_flood_index_clear(ptr nocapture noundef readonly %fid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family1 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family1, align 4
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %4 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fid_index, align 4
  %vni = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 8
  %6 = ptrtoint ptr %vni to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vni, align 4
  %vni_valid = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 11
  %8 = ptrtoint ptr %vni_valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %vni_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool = icmp slt i8 %bf.load, 0
  %call = tail call fastcc i32 @mlxsw_sp_fid_vni_op(ptr noundef %3, i16 noundef zeroext %5, i32 noundef %7, i1 noundef zeroext %tobool, i32 noundef 0, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_fid_8021q_fdb_clear_offload(ptr nocapture noundef readonly %fid, ptr noundef %nve_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vid.i = getelementptr inbounds %struct.mlxsw_sp_fid_8021q, ptr %fid, i32 0, i32 1
  %0 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vid.i, align 4
  tail call void @br_fdb_clear_offload(ptr noundef %nve_dev, i16 noundef zeroext %1) #16
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlxsw_reg_sfmr_pack(ptr nocapture noundef %payload, i32 noundef %op, i16 noundef zeroext %fid) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = call ptr @memset(ptr %payload, i32 0, i32 24)
  %spec.select.i.i = shl i32 %op, 24
  %and6.i.i = and i32 %spec.select.i.i, 251658240
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %payload, align 4
  %and7.i.i = and i32 %2, -251723776
  %or.i.i = or i32 %and6.i.i, %and7.i.i
  %conv1 = zext i16 %fid to i32
  %or.i.i28 = or i32 %or.i.i, %conv1
  store i32 %or.i.i28, ptr %payload, align 4
  %arrayidx.i.i49 = getelementptr i32, ptr %payload, i32 2
  %3 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i49, align 4
  %and7.i.i51 = and i32 %4, -65536
  store i32 %and7.i.i51, ptr %arrayidx.i.i49, align 4
  %arrayidx.i.i74 = getelementptr i32, ptr %payload, i32 3
  %5 = ptrtoint ptr %arrayidx.i.i74 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i74, align 4
  %and7.i.i76 = and i32 %6, 2147483647
  store i32 %and7.i.i76, ptr %arrayidx.i.i74, align 4
  %arrayidx.i.i99 = getelementptr i32, ptr %payload, i32 4
  %7 = ptrtoint ptr %arrayidx.i.i99 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i99, align 4
  %and7.i.i101 = and i32 %8, 2147483647
  store i32 %and7.i.i101, ptr %arrayidx.i.i99, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlxsw_sp_nve_fid_disable(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mlxsw_sp_fid_port_vid_map(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %fid_index, i16 noundef zeroext %local_port, i16 noundef zeroext %vid, i1 noundef zeroext %valid) unnamed_addr #2 align 64 {
entry:
  %svfa_pl = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %svfa_pl) #16
  %0 = call ptr @memset(ptr %svfa_pl, i32 0, i32 16)
  %1 = ptrtoint ptr %svfa_pl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %svfa_pl, align 4
  %conv4.i = zext i16 %local_port to i32
  %and.i.i = shl nuw i32 %conv4.i, 16
  %and7.i.i23.i = and i32 %2, 51454
  %3 = shl nuw nsw i32 %conv4.i, 4
  %and6.i26.i.i = and i32 %3, 12288
  %conv5.i = zext i1 %valid to i32
  %and.i.i.masked = and i32 %and.i.i, 16711680
  %or.i.i.i.masked = or i32 %and.i.i.masked, %and7.i.i23.i
  %or.i.i50.i = or i32 %and6.i26.i.i, %or.i.i.i.masked
  %and7.i.i78.i = or i32 %or.i.i50.i, %conv5.i
  %or.i.i79.i = or i32 %and7.i.i78.i, 256
  store i32 %or.i.i79.i, ptr %svfa_pl, align 4
  %conv6.i = zext i16 %fid_index to i32
  %spec.select.i.i99.i = shl nuw i32 %conv6.i, 16
  %arrayidx.i.i105.i = getelementptr inbounds i32, ptr %svfa_pl, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i105.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i105.i, align 4
  %and7.i.i107.i = and i32 %5, 61440
  %or.i.i108.i = or i32 %spec.select.i.i99.i, %and7.i.i107.i
  %6 = and i16 %vid, 4095
  %and6.i.i133.i = zext i16 %6 to i32
  %arrayidx.i.i134.i = getelementptr inbounds i32, ptr %svfa_pl, i32 1
  %or.i.i137.i = or i32 %or.i.i108.i, %and6.i.i133.i
  %7 = ptrtoint ptr %arrayidx.i.i134.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or.i.i137.i, ptr %arrayidx.i.i134.i, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %8 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %9, ptr noundef nonnull @mlxsw_reg_svfa, ptr noundef nonnull %svfa_pl) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %svfa_pl) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_port_vp_mode_trans(ptr noundef %mlxsw_sp_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %vlans_list = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 11
  %2 = ptrtoint ptr %vlans_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %mlxsw_sp_port_vlan.077 = load ptr, ptr %vlans_list, align 4
  %cmp.not78 = icmp eq ptr %mlxsw_sp_port_vlan.077, %vlans_list
  br i1 %cmp.not78, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %local_port = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mlxsw_sp_port_vlan.079 = phi ptr [ %mlxsw_sp_port_vlan.077, %for.body.lr.ph ], [ %mlxsw_sp_port_vlan.0, %for.inc.for.body_crit_edge ]
  %fid3 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.079, i32 0, i32 2
  %3 = ptrtoint ptr %fid3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fid3, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %vid4 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.079, i32 0, i32 3
  %5 = ptrtoint ptr %vid4 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vid4, align 4
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %4, i32 0, i32 3
  %7 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %fid_index, align 4
  %9 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %local_port, align 4
  %call = tail call fastcc i32 @__mlxsw_sp_fid_port_vid_map(ptr noundef %1, i16 noundef zeroext %8, i16 noundef zeroext %10, i16 noundef zeroext %6, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %if.end.err_fid_port_vid_map_crit_edge

if.end.err_fid_port_vid_map_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_fid_port_vid_map

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %mlxsw_sp_port_vlan.079 to i32
  call void @__asan_load4_noabort(i32 %11)
  %mlxsw_sp_port_vlan.0 = load ptr, ptr %mlxsw_sp_port_vlan.079, align 4
  %cmp.not = icmp eq ptr %mlxsw_sp_port_vlan.0, %vlans_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call14 = tail call i32 @mlxsw_sp_port_vp_mode_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext true) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %for.end.cleanup49_crit_edge, label %for.end.err_fid_port_vid_map_crit_edge

for.end.err_fid_port_vid_map_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_fid_port_vid_map

for.end.cleanup49_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49

err_fid_port_vid_map:                             ; preds = %for.end.err_fid_port_vid_map_crit_edge, %if.end.err_fid_port_vid_map_crit_edge
  %mlxsw_sp_port_vlan.076 = phi ptr [ %vlans_list, %for.end.err_fid_port_vid_map_crit_edge ], [ %mlxsw_sp_port_vlan.079, %if.end.err_fid_port_vid_map_crit_edge ]
  %err.2 = phi i32 [ %call14, %for.end.err_fid_port_vid_map_crit_edge ], [ %call, %if.end.err_fid_port_vid_map_crit_edge ]
  %mlxsw_sp_port_vlan.1.in80 = getelementptr inbounds %struct.list_head, ptr %mlxsw_sp_port_vlan.076, i32 0, i32 1
  %12 = ptrtoint ptr %mlxsw_sp_port_vlan.1.in80 to i32
  call void @__asan_load4_noabort(i32 %12)
  %mlxsw_sp_port_vlan.181 = load ptr, ptr %mlxsw_sp_port_vlan.1.in80, align 4
  %cmp25.not82 = icmp eq ptr %mlxsw_sp_port_vlan.181, %vlans_list
  br i1 %cmp25.not82, label %err_fid_port_vid_map.cleanup49_crit_edge, label %for.body27.lr.ph

err_fid_port_vid_map.cleanup49_crit_edge:         ; preds = %err_fid_port_vid_map
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49

for.body27.lr.ph:                                 ; preds = %err_fid_port_vid_map
  %local_port36 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  br label %for.body27

for.body27:                                       ; preds = %cleanup38.for.body27_crit_edge, %for.body27.lr.ph
  %mlxsw_sp_port_vlan.183 = phi ptr [ %mlxsw_sp_port_vlan.181, %for.body27.lr.ph ], [ %mlxsw_sp_port_vlan.1, %cleanup38.for.body27_crit_edge ]
  %fid29 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.183, i32 0, i32 2
  %13 = ptrtoint ptr %fid29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fid29, align 4
  %tobool32.not = icmp eq ptr %14, null
  br i1 %tobool32.not, label %for.body27.cleanup38_crit_edge, label %if.end34

for.body27.cleanup38_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup38

if.end34:                                         ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #18
  %vid31 = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.183, i32 0, i32 3
  %15 = ptrtoint ptr %vid31 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vid31, align 4
  %fid_index35 = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %fid_index35 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %fid_index35, align 4
  %19 = ptrtoint ptr %local_port36 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %local_port36, align 4
  %call37 = tail call fastcc i32 @__mlxsw_sp_fid_port_vid_map(ptr noundef %1, i16 noundef zeroext %18, i16 noundef zeroext %20, i16 noundef zeroext %16, i1 noundef zeroext false)
  br label %cleanup38

cleanup38:                                        ; preds = %if.end34, %for.body27.cleanup38_crit_edge
  %mlxsw_sp_port_vlan.1.in = getelementptr inbounds %struct.list_head, ptr %mlxsw_sp_port_vlan.183, i32 0, i32 1
  %21 = ptrtoint ptr %mlxsw_sp_port_vlan.1.in to i32
  call void @__asan_load4_noabort(i32 %21)
  %mlxsw_sp_port_vlan.1 = load ptr, ptr %mlxsw_sp_port_vlan.1.in, align 4
  %cmp25.not = icmp eq ptr %mlxsw_sp_port_vlan.1, %vlans_list
  br i1 %cmp25.not, label %cleanup38.cleanup49_crit_edge, label %cleanup38.for.body27_crit_edge

cleanup38.for.body27_crit_edge:                   ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body27

cleanup38.cleanup49_crit_edge:                    ; preds = %cleanup38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup49

cleanup49:                                        ; preds = %cleanup38.cleanup49_crit_edge, %err_fid_port_vid_map.cleanup49_crit_edge, %for.end.cleanup49_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup49_crit_edge ], [ %err.2, %err_fid_port_vid_map.cleanup49_crit_edge ], [ %err.2, %cleanup38.cleanup49_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxsw_sp_fid_vni_op(ptr nocapture noundef readonly %mlxsw_sp, i16 noundef zeroext %fid_index, i32 noundef %vni, i1 noundef zeroext %vni_valid, i32 noundef %nve_flood_index, i1 noundef zeroext %nve_flood_index_valid) unnamed_addr #2 align 64 {
entry:
  %sfmr_pl = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sfmr_pl) #16
  %0 = call ptr @memset(ptr %sfmr_pl, i32 255, i32 24)
  call fastcc void @mlxsw_reg_sfmr_pack(ptr noundef nonnull %sfmr_pl, i32 noundef 0, i16 noundef zeroext %fid_index)
  %spec.select.i.i = select i1 %vni_valid, i32 -2147483648, i32 0
  %arrayidx.i.i = getelementptr inbounds i32, ptr %sfmr_pl, i32 4
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i.i, align 4
  %and7.i.i = and i32 %2, 2130706432
  %or.i.i = or i32 %spec.select.i.i, %and7.i.i
  %and6.i.i32 = and i32 %vni, 16777215
  %arrayidx.i.i33 = getelementptr inbounds i32, ptr %sfmr_pl, i32 4
  %or.i.i36 = or i32 %and6.i.i32, %or.i.i
  %3 = ptrtoint ptr %arrayidx.i.i33 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or.i.i36, ptr %arrayidx.i.i33, align 4
  %spec.select.i.i55 = select i1 %nve_flood_index_valid, i32 -2147483648, i32 0
  %arrayidx.i.i61 = getelementptr inbounds i32, ptr %sfmr_pl, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i61 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i61, align 4
  %and7.i.i63 = and i32 %5, 2130706432
  %or.i.i64 = or i32 %spec.select.i.i55, %and7.i.i63
  %and6.i.i88 = and i32 %nve_flood_index, 16777215
  %arrayidx.i.i89 = getelementptr inbounds i32, ptr %sfmr_pl, i32 3
  %or.i.i92 = or i32 %and6.i.i88, %or.i.i64
  %6 = ptrtoint ptr %arrayidx.i.i89 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i.i92, ptr %arrayidx.i.i89, align 4
  %core = getelementptr inbounds %struct.mlxsw_sp, ptr %mlxsw_sp, i32 0, i32 1
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 4
  %call = call i32 @mlxsw_reg_write(ptr noundef %8, ptr noundef nonnull @mlxsw_reg_sfmr, ptr noundef nonnull %sfmr_pl) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sfmr_pl) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_clear_offload(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_fid_8021d_setup(ptr nocapture noundef writeonly %fid, ptr nocapture noundef readonly %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  %br_ifindex1 = getelementptr inbounds %struct.mlxsw_sp_fid_8021d, ptr %fid, i32 0, i32 1
  %2 = ptrtoint ptr %br_ifindex1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %br_ifindex1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp_fid_8021d_compare(ptr nocapture noundef readonly %fid, ptr nocapture noundef readonly %arg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 4
  %br_ifindex1 = getelementptr inbounds %struct.mlxsw_sp_fid_8021d, ptr %fid, i32 0, i32 1
  %2 = ptrtoint ptr %br_ifindex1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %br_ifindex1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp eq i32 %3, %1
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_fid_8021d_fdb_clear_offload(ptr nocapture noundef readnone %fid, ptr noundef %nve_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @br_fdb_clear_offload(ptr noundef %nve_dev, i16 noundef zeroext 0) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_fid_rfid_configure(ptr nocapture noundef readnone %fid) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlxsw_sp_fid_rfid_deconfigure(ptr nocapture noundef %fid) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_fid_rfid_index_alloc(ptr nocapture noundef readonly %fid, ptr nocapture noundef readonly %arg, ptr nocapture noundef writeonly %p_fid_index) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arg, align 2
  %fid_family = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %2 = ptrtoint ptr %fid_family to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fid_family, align 4
  %start_index = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %start_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %start_index, align 4
  %add = add i16 %5, %1
  %6 = ptrtoint ptr %p_fid_index to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %add, ptr %p_fid_index, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp_fid_rfid_compare(ptr nocapture noundef readonly %fid, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arg, align 2
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %2 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fid_index, align 4
  %conv = zext i16 %3 to i32
  %conv1 = zext i16 %1 to i32
  %fid_family = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %4 = ptrtoint ptr %fid_family to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fid_family, align 4
  %start_index = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %start_index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %start_index, align 4
  %conv2 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv2, %conv1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp = icmp eq i32 %add, %conv
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_fid_rfid_port_vid_map(ptr nocapture noundef readnone %fid, ptr noundef %mlxsw_sp_port, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %2 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port2, align 4
  %fid_core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fid_core, align 4
  %port_fid_mappings = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %port_fid_mappings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_fid_mappings, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr i32, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @mlxsw_sp_port_vp_mode_trans(ptr noundef %mlxsw_sp_port)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %err_port_vp_mode_trans

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

err_port_vp_mode_trans:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fid_core, align 4
  %port_fid_mappings6 = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %port_fid_mappings6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_fid_mappings6, align 4
  %arrayidx8 = getelementptr i32, ptr %13, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %arrayidx8, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_port_vp_mode_trans, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %err_port_vp_mode_trans ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_fid_rfid_port_vid_unmap(ptr nocapture noundef readnone %fid, ptr noundef %mlxsw_sp_port, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 2
  %0 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mlxsw_sp1, align 8
  %local_port2 = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 3
  %2 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %local_port2, align 4
  %fid_core = getelementptr inbounds %struct.mlxsw_sp, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fid_core, align 4
  %port_fid_mappings = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %port_fid_mappings to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_fid_mappings, align 4
  %idxprom = zext i16 %3 to i32
  %arrayidx = getelementptr i32, ptr %7, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @mlxsw_sp_port_vp_mode_set(ptr noundef %mlxsw_sp_port, i1 noundef zeroext false) #16
  %vlans_list.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.mlxsw_sp_port, ptr %mlxsw_sp_port, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %mlxsw_sp_port_vlan.020.i = load ptr, ptr %prev.i, align 4
  %cmp.not21.i = icmp eq ptr %mlxsw_sp_port_vlan.020.i, %vlans_list.i
  br i1 %cmp.not21.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %mlxsw_sp_port_vlan.022.i = phi ptr [ %mlxsw_sp_port_vlan.0.i, %cleanup.i.for.body.i_crit_edge ], [ %mlxsw_sp_port_vlan.020.i, %if.then.for.body.i_crit_edge ]
  %fid3.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.022.i, i32 0, i32 2
  %11 = ptrtoint ptr %fid3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fid3.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %vid4.i = getelementptr inbounds %struct.mlxsw_sp_port_vlan, ptr %mlxsw_sp_port_vlan.022.i, i32 0, i32 3
  %13 = ptrtoint ptr %vid4.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vid4.i, align 4
  %fid_index.i = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %12, i32 0, i32 3
  %15 = ptrtoint ptr %fid_index.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %fid_index.i, align 4
  %17 = ptrtoint ptr %local_port2 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %local_port2, align 4
  %call5.i = tail call fastcc i32 @__mlxsw_sp_fid_port_vid_map(ptr noundef %1, i16 noundef zeroext %16, i16 noundef zeroext %18, i16 noundef zeroext %14, i1 noundef zeroext false) #16
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i, %for.body.i.cleanup.i_crit_edge
  %prev9.i = getelementptr inbounds %struct.list_head, ptr %mlxsw_sp_port_vlan.022.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %mlxsw_sp_port_vlan.0.i = load ptr, ptr %prev9.i, align 4
  %cmp.not.i = icmp eq ptr %mlxsw_sp_port_vlan.0.i, %vlans_list.i
  br i1 %cmp.not.i, label %cleanup.i.if.end_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %cleanup.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %fid_core to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fid_core, align 4
  %port_fid_mappings4 = getelementptr inbounds %struct.mlxsw_sp_fid_core, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %port_fid_mappings4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %port_fid_mappings4, align 4
  %arrayidx6 = getelementptr i32, ptr %23, i32 %idxprom
  %24 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx6, align 4
  %dec = add i32 %25, -1
  store i32 %dec, ptr %arrayidx6, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxsw_sp_fid_dummy_configure(ptr nocapture noundef readonly %fid) #2 align 64 {
entry:
  %sfmr_pl.i = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family, align 4
  %mlxsw_sp1 = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mlxsw_sp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp1, align 4
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %4 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fid_index, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sfmr_pl.i) #16
  %6 = call ptr @memset(ptr %sfmr_pl.i, i32 255, i32 24)
  call fastcc void @mlxsw_reg_sfmr_pack(ptr noundef nonnull %sfmr_pl.i, i32 noundef 0, i16 noundef zeroext %5) #16
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core.i, align 4
  %call2.i = call i32 @mlxsw_reg_write(ptr noundef %8, ptr noundef nonnull @mlxsw_reg_sfmr, ptr noundef nonnull %sfmr_pl.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sfmr_pl.i) #16
  ret i32 %call2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlxsw_sp_fid_dummy_deconfigure(ptr nocapture noundef readonly %fid) #2 align 64 {
entry:
  %sfmr_pl.i = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family, align 4
  %mlxsw_sp = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %mlxsw_sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mlxsw_sp, align 4
  %fid_index = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 3
  %4 = ptrtoint ptr %fid_index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %fid_index, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sfmr_pl.i) #16
  %6 = call ptr @memset(ptr %sfmr_pl.i, i32 255, i32 24)
  call fastcc void @mlxsw_reg_sfmr_pack(ptr noundef nonnull %sfmr_pl.i, i32 noundef 1, i16 noundef zeroext %5) #16
  %core.i = getelementptr inbounds %struct.mlxsw_sp, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core.i, align 4
  %call2.i = call i32 @mlxsw_reg_write(ptr noundef %8, ptr noundef nonnull @mlxsw_reg_sfmr, ptr noundef nonnull %sfmr_pl.i) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sfmr_pl.i) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlxsw_sp_fid_dummy_index_alloc(ptr nocapture noundef readonly %fid, ptr nocapture noundef readnone %arg, ptr nocapture noundef writeonly %p_fid_index) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %fid_family = getelementptr inbounds %struct.mlxsw_sp_fid, ptr %fid, i32 0, i32 4
  %0 = ptrtoint ptr %fid_family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fid_family, align 4
  %start_index = getelementptr inbounds %struct.mlxsw_sp_fid_family, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %start_index to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %start_index, align 4
  %4 = ptrtoint ptr %p_fid_index to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %p_fid_index, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxsw_sp_fid_dummy_compare(ptr nocapture noundef readnone %fid, ptr nocapture noundef readnone %arg) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !69, !70, !72, !73, !75, !76, !78, !79, !81, !83, !85, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !109, !111, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !164, !166, !168, !170, !172}
!llvm.named.register.sp = !{!174}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 209, i32 6}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rhashtable.h", i32 594, i32 8}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rhashtable.h", i32 614, i32 8}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rhashtable.h", i32 369, i32 19}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mlxsw_sp_fid_ht_params, !18, !"mlxsw_sp_fid_ht_params", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 52, i32 39}
!19 = !{ptr @mlxsw_sp_fid_vni_ht_params, !20, !"mlxsw_sp_fid_vni_ht_params", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 58, i32 39}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rhashtable.h", i32 715, i32 8}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rhashtable.h", i32 755, i32 10}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rhashtable.h", i32 732, i32 2}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rhashtable.h", i32 377, i32 19}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rhashtable.h", i32 1076, i32 8}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rhashtable.h", i32 1085, i32 16}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rhashtable.h", i32 1019, i32 12}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rhashtable.h", i32 1026, i32 11}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rhashtable.h", i32 1032, i32 9}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rhashtable.h", i32 1036, i32 11}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../include/linux/rhashtable.h", i32 1004, i32 2}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 33, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @__mlxsw_item_offset._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @__mlxsw_item_offset._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2030, i32 1}
!52 = distinct !{null, !51, !"mlxsw_reg_sftr2_swid_item", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2037, i32 1}
!55 = distinct !{null, !54, !"mlxsw_reg_sftr2_flood_table_item", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2044, i32 1}
!58 = distinct !{null, !57, !"mlxsw_reg_sftr2_index_item", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2050, i32 1}
!61 = distinct !{null, !60, !"mlxsw_reg_sftr2_table_type_item", i1 false, i1 false}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2056, i32 1}
!64 = distinct !{null, !63, !"mlxsw_reg_sftr2_range_item", i1 false, i1 false}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/mellanox/mlxsw/item.h", i32 215, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @__mlxsw_item_bit_array_offset._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @__mlxsw_item_bit_array_offset._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2062, i32 1}
!72 = distinct !{null, !71, !"mlxsw_reg_sftr2_port_item", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2068, i32 1}
!75 = distinct !{null, !74, !"mlxsw_reg_sftr2_port_mask_item", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 2024, i32 1}
!78 = !{ptr @mlxsw_reg_sftr2, !77, !"mlxsw_reg_sftr2", i1 false, i1 false}
!79 = !{ptr @mlxsw_sp_packet_type_sfgc_types, !80, !"mlxsw_sp_packet_type_sfgc_types", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 124, i32 19}
!81 = !{ptr @mlxsw_sp_sfgc_uc_packet_types, !82, !"mlxsw_sp_sfgc_uc_packet_types", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 108, i32 18}
!83 = !{ptr @mlxsw_sp_sfgc_bc_packet_types, !84, !"mlxsw_sp_sfgc_bc_packet_types", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 112, i32 18}
!85 = !{ptr @mlxsw_sp_sfgc_mc_packet_types, !86, !"mlxsw_sp_sfgc_mc_packet_types", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 120, i32 18}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1020, i32 1}
!89 = distinct !{null, !88, !"mlxsw_reg_sfgc_type_item", i1 false, i1 false}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1032, i32 1}
!92 = distinct !{null, !91, !"mlxsw_reg_sfgc_bridge_type_item", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1048, i32 1}
!95 = distinct !{null, !94, !"mlxsw_reg_sfgc_table_type_item", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1055, i32 1}
!98 = distinct !{null, !97, !"mlxsw_reg_sfgc_flood_table_item", i1 false, i1 false}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1061, i32 1}
!101 = distinct !{null, !100, !"mlxsw_reg_sfgc_mid_item", i1 false, i1 false}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1002, i32 1}
!104 = !{ptr @mlxsw_reg_sfgc, !103, !"mlxsw_reg_sfgc", i1 false, i1 false}
!105 = !{ptr @mlxsw_sp_fid_family_arr, !106, !"mlxsw_sp_fid_family_arr", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 880, i32 42}
!107 = !{ptr @mlxsw_sp_fid_8021q_emu_family, !108, !"mlxsw_sp_fid_8021q_emu_family", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 742, i32 41}
!109 = !{ptr @mlxsw_sp_fid_8021d_flood_tables, !110, !"mlxsw_sp_fid_8021d_flood_tables", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 671, i32 42}
!111 = !{ptr @mlxsw_sp_fid_8021q_emu_ops, !112, !"mlxsw_sp_fid_8021q_emu_ops", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 720, i32 38}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1759, i32 1}
!115 = distinct !{null, !114, !"mlxsw_reg_sfmr_op_item", i1 false, i1 false}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1765, i32 1}
!118 = distinct !{null, !117, !"mlxsw_reg_sfmr_fid_item", i1 false, i1 false}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1773, i32 1}
!121 = distinct !{null, !120, !"mlxsw_reg_sfmr_fid_offset_item", i1 false, i1 false}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1782, i32 1}
!124 = distinct !{null, !123, !"mlxsw_reg_sfmr_vtfp_item", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1799, i32 1}
!127 = distinct !{null, !126, !"mlxsw_reg_sfmr_vv_item", i1 false, i1 false}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1746, i32 1}
!130 = !{ptr @mlxsw_reg_sfmr, !129, !"mlxsw_reg_sfmr", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1527, i32 1}
!133 = distinct !{null, !132, !"mlxsw_reg_svfa_swid_item", i1 false, i1 false}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1535, i32 1}
!136 = distinct !{null, !135, !"mlxsw_reg_svfa_local_port_item", i1 false, i1 false}
!137 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!138 = distinct !{null, !135, !"mlxsw_reg_svfa_lp_msb_item", i1 false, i1 false}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1550, i32 1}
!141 = distinct !{null, !140, !"mlxsw_reg_svfa_mapping_table_item", i1 false, i1 false}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1559, i32 1}
!144 = distinct !{null, !143, !"mlxsw_reg_svfa_v_item", i1 false, i1 false}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1565, i32 1}
!147 = distinct !{null, !146, !"mlxsw_reg_svfa_fid_item", i1 false, i1 false}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1571, i32 1}
!150 = distinct !{null, !149, !"mlxsw_reg_svfa_vid_item", i1 false, i1 false}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1521, i32 1}
!153 = !{ptr @mlxsw_reg_svfa, !152, !"mlxsw_reg_svfa", i1 false, i1 false}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1807, i32 1}
!156 = distinct !{null, !155, !"mlxsw_reg_sfmr_vni_item", i1 false, i1 false}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ethernet/mellanox/mlxsw/reg.h", i32 1790, i32 1}
!159 = distinct !{null, !158, !"mlxsw_reg_sfmr_nve_tunnel_flood_ptr_item", i1 false, i1 false}
!160 = !{ptr @mlxsw_sp_fid_8021d_family, !161, !"mlxsw_sp_fid_8021d_family", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 693, i32 41}
!162 = !{ptr @mlxsw_sp_fid_8021d_ops, !163, !"mlxsw_sp_fid_8021d_ops", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 655, i32 38}
!164 = !{ptr @mlxsw_sp_fid_rfid_family, !165, !"mlxsw_sp_fid_rfid_family", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 830, i32 41}
!166 = !{ptr @mlxsw_sp_fid_rfid_ops, !167, !"mlxsw_sp_fid_rfid_ops", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 818, i32 38}
!168 = !{ptr @mlxsw_sp_fid_dummy_family, !169, !"mlxsw_sp_fid_dummy_family", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 872, i32 41}
!170 = !{ptr @mlxsw_sp_fid_dummy_ops, !171, !"mlxsw_sp_fid_dummy_ops", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 865, i32 38}
!172 = distinct !{null, !173, !"__already_done", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/mellanox/mlxsw/spectrum_fid.c", i32 1095, i32 2}
!174 = !{!"sp"}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!184 = !{i64 2148242441, i64 2148242473, i64 2148242502, i64 2148242536, i64 2148242567, i64 2148242590}
!185 = !{!"branch_weights", i32 1, i32 2000}
!186 = !{!"branch_weights", i32 2000, i32 1}
!187 = !{i64 2149640274}
!188 = !{i64 2156158070}
!189 = !{i64 2156161504}
!190 = !{i64 2149640540}
!191 = !{i64 2156199526, i64 2156200017, i64 2156199563, i64 2156199619, i64 2156199653, i64 2156199677, i64 2156199718, i64 2156199739, i64 2156199767, i64 2156199801}
!192 = !{i64 2156225446}
!193 = !{i64 2148243376, i64 2148243402, i64 2148243431, i64 2148243465, i64 2148243496, i64 2148243519}
!194 = !{i8 0, i8 2}
!195 = !{i64 2148330442}
!196 = !{i64 2148244906, i64 2148244938, i64 2148244967, i64 2148245001, i64 2148245032, i64 2148245055}
!197 = !{i64 2149858024}
!198 = !{!"auto-init"}
!199 = !{i64 2148240911, i64 2148240937, i64 2148240966, i64 2148241000, i64 2148241031, i64 2148241054}
!200 = !{i64 2152681990}
!201 = !{!"branch_weights", i32 2146410443, i32 1073205}
!202 = !{i64 2148249769, i64 2148249801, i64 2148249830, i64 2148249864, i64 2148249895, i64 2148249918}
!203 = !{i64 2148338850}
!204 = !{i64 2152682150}
!205 = !{i64 2152682427}
!206 = !{i64 2152682269}
!207 = !{i64 2152682632}
!208 = !{i64 2152683695, i64 2152684187, i64 2152683732, i64 2152683788, i64 2152683822, i64 2152683846, i64 2152683887, i64 2152683908, i64 2152683936, i64 2152683970}
!209 = !{i64 2148337737}
!210 = !{i64 2148248156, i64 2148248188, i64 2148248217, i64 2148248251, i64 2148248282, i64 2148248305}
!211 = !{i64 2152685090}
!212 = !{i64 2156151143}
!213 = !{i64 2156153442}
