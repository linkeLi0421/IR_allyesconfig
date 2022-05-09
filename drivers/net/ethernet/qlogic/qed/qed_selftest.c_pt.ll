; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/qed/qed_selftest.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/qed/qed_selftest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qed_dev = type { i32, i8, [16 x i8], i32, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, [6 x i8], i32, i32, i16, i16, ptr, ptr, i64, i32, i8, ptr, i8, [4 x %struct.qed_hwfn], i8, i8, i8, ptr, %struct.qed_tunnel_info, i8, i32, ptr, ptr, i32, i8, i8, i8, ptr, %struct.qed_dev_info, ptr, ptr, i32, i32, %struct.pci_params, %struct.qed_int_params, i8, %union.anon.106, ptr, ptr, [6 x i8], [8 x %struct.qed_dbg_feature], i8, i8, i8, [1024 x %struct.hlist_head], ptr, i8, i32, i32, i32, i16, i8 }
%struct.qed_hwfn = type { ptr, i8, i8, i8, i8, i8, i32, i8, [16 x i8], i8, i8, i8, ptr, ptr, i64, i32, ptr, %struct.qed_hw_info, %struct.qed_rt_data, ptr, ptr, ptr, %struct.tasklet_struct, i8, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qed_pf_params, i8, i32, ptr, i8, i8, i8, ptr, ptr, ptr, ptr, %struct.qed_ufp_info, %struct.qed_dmae_info, %struct.qed_qm_info, %struct.qed_storm_stats, ptr, %struct.dbg_tools_data, ptr, [19 x %struct.virt_mem_desc], i16, i32, i32, i32, i8, i8, ptr, %struct.qed_db_recovery_info, %struct.qed_nvm_image_info, ptr, ptr, [64 x %struct.qed_simd_fp_handler], ptr, %struct.delayed_work, i32, ptr, i8, ptr, %struct.delayed_work, i32, i32 }
%struct.qed_hw_info = type { i32, [15 x i32], [15 x i32], [7 x i32], i8, i8, i8, i8, i8, i32, i16, i16, [4 x i32], [6 x i8], i64, i64, i16, ptr, i32, i32, i16, i32 }
%struct.qed_rt_data = type { ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.6, i32 }
%struct.atomic_t = type { i32 }
%union.anon.6 = type { ptr }
%struct.qed_pf_params = type { %struct.qed_eth_pf_params, %struct.qed_fcoe_pf_params, %struct.qed_iscsi_pf_params, %struct.qed_nvmetcp_pf_params, %struct.qed_rdma_pf_params }
%struct.qed_eth_pf_params = type { i16, i8, i32 }
%struct.qed_fcoe_pf_params = type { i64, [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16, [2 x i16], [2 x i16], i16, i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.qed_iscsi_pf_params = type { i64, [3 x i64], i16, i16, i32, i16, i16, i16, i16, [3 x i16], [3 x i16], i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8] }
%struct.qed_nvmetcp_pf_params = type { i64, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.qed_rdma_pf_params = type { i32, i32, i32, i8, i8, i8 }
%struct.qed_ufp_info = type { i32, i32, i8 }
%struct.qed_dmae_info = type { %struct.mutex, i8, i32, ptr, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.qed_qm_info = type { ptr, ptr, ptr, i16, i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i8 }
%struct.qed_storm_stats = type { %struct.storm_stats, %struct.storm_stats, %struct.storm_stats, %struct.storm_stats }
%struct.storm_stats = type { i32, i32 }
%struct.dbg_tools_data = type { %struct.dbg_grc_data, %struct.dbg_bus_data, %struct.idle_chk_data, [40 x i8], [132 x i8], i8, i8, i8, i8, i8, i8, i8, i8, %struct.pretend_params, i32 }
%struct.dbg_grc_data = type { i8, i8, i16, [48 x i32] }
%struct.dbg_bus_data = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x %struct.dbg_bus_trigger_state_data], i8, i8, i8, i8, i32, %struct.dbg_bus_pci_buf_data, [132 x %struct.dbg_bus_block_data], [6 x %struct.dbg_bus_storm_data] }
%struct.dbg_bus_trigger_state_data = type { i8, i8, i8, i8 }
%struct.dbg_bus_pci_buf_data = type { %struct.dbg_bus_mem_addr, %struct.dbg_bus_mem_addr, i32 }
%struct.dbg_bus_mem_addr = type { i32, i32 }
%struct.dbg_bus_block_data = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dbg_bus_storm_data = type { i8, i8, i8, i8, i8, i8, %union.dbg_bus_storm_eid_params, i32 }
%union.dbg_bus_storm_eid_params = type { %struct.dbg_bus_storm_eid_range_params }
%struct.dbg_bus_storm_eid_range_params = type { i8, i8 }
%struct.idle_chk_data = type { i32, i8, i8, i16 }
%struct.pretend_params = type { i8, i8, i16 }
%struct.virt_mem_desc = type { ptr, i32 }
%struct.qed_db_recovery_info = type { %struct.list_head, %struct.spinlock, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.qed_nvm_image_info = type { i32, ptr, i8 }
%struct.qed_simd_fp_handler = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.qed_tunnel_info = type { %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_type, %struct.qed_tunn_update_udp_port, %struct.qed_tunn_update_udp_port, i8, i8 }
%struct.qed_tunn_update_type = type { i8, i8, i32 }
%struct.qed_tunn_update_udp_port = type { i8, i16 }
%struct.qed_dev_info = type { i32, i32, i32, i8, [6 x i8], i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.pci_params = type { i32, i32, i32, i32, i8 }
%struct.qed_int_params = type { %struct.qed_int_param, %struct.qed_int_param, ptr, i8, i8, i8, i8, i8 }
%struct.qed_int_param = type { i32, i8, i8 }
%union.anon.106 = type { ptr }
%struct.qed_dbg_feature = type { ptr, ptr, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.bist_nvm_image_att = type { i32, i32, i32, i32 }

@qed_selftest_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013[%s:%d(%s)]failed to acquire ptt\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"qed_selftest_register\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/net/ethernet/qlogic/qed/qed_selftest.c\00", [49 x i8] zeroinitializer }, align 32
@qed_selftest_register._entry_ptr = internal global ptr @qed_selftest_register._entry, section ".printk_index", align 4
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@qed_selftest_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_selftest_clock\00", [45 x i8] zeroinitializer }, align 32
@qed_selftest_clock._entry_ptr = internal global ptr @qed_selftest_clock._entry, section ".printk_index", align 4
@qed_selftest_nvram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"qed_selftest_nvram\00", [45 x i8] zeroinitializer }, align 32
@qed_selftest_nvram._entry_ptr = internal global ptr @qed_selftest_nvram._entry, section ".printk_index", align 4
@qed_selftest_nvram._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013[%s:%d(%s)]Failed getting number of images\0A\00", [50 x i8] zeroinitializer }, align 32
@qed_selftest_nvram._entry_ptr.8 = internal global ptr @qed_selftest_nvram._entry.6, section ".printk_index", align 4
@qed_selftest_nvram._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013[%s:%d(%s)]Failed getting image index %d attributes\0A\00", [41 x i8] zeroinitializer }, align 32
@qed_selftest_nvram._entry_ptr.11 = internal global ptr @qed_selftest_nvram._entry.9, section ".printk_index", align 4
@qed_selftest_nvram._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015[%s:%d(%s)]image index %d, size %x\0A\00", [58 x i8] zeroinitializer }, align 32
@qed_selftest_nvram._entry_ptr.14 = internal global ptr @qed_selftest_nvram._entry.12, section ".printk_index", align 4
@qed_selftest_nvram._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013[%s:%d(%s)]Failed reading image index %d from nvm.\0A\00", [42 x i8] zeroinitializer }, align 32
@qed_selftest_nvram._entry_ptr.17 = internal global ptr @qed_selftest_nvram._entry.15, section ".printk_index", align 4
@qed_selftest_nvram._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015[%s:%d(%s)]nvm crc 0x%x, calc_crc 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@qed_selftest_nvram._entry_ptr.20 = internal global ptr @qed_selftest_nvram._entry.18, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 51, i32 4 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 74, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 97, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 104, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 117, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 129, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 143, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [50 x i8] c"../drivers/net/ethernet/qlogic/qed/qed_selftest.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 162, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @qed_selftest_clock._entry, ptr @qed_selftest_clock._entry_ptr, ptr @qed_selftest_nvram._entry, ptr @qed_selftest_nvram._entry.12, ptr @qed_selftest_nvram._entry.15, ptr @qed_selftest_nvram._entry.18, ptr @qed_selftest_nvram._entry.6, ptr @qed_selftest_nvram._entry.9, ptr @qed_selftest_nvram._entry_ptr, ptr @qed_selftest_nvram._entry_ptr.11, ptr @qed_selftest_nvram._entry_ptr.14, ptr @qed_selftest_nvram._entry_ptr.17, ptr @qed_selftest_nvram._entry_ptr.20, ptr @qed_selftest_nvram._entry_ptr.8, ptr @qed_selftest_register._entry, ptr @qed_selftest_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_selftest_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_selftest_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_selftest_nvram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_selftest_nvram._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_selftest_nvram._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_selftest_nvram._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_selftest_nvram._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qed_selftest_nvram._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_selftest_memory(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp9.not = icmp eq i8 %1, 0
  br i1 %cmp9.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.010, 1
  %2 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %3 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.010
  %call = tail call i32 @qed_sp_heartbeat_ramrod(ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_sp_heartbeat_ramrod(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_selftest_interrupt(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp9.not = icmp eq i8 %1, 0
  br i1 %cmp9.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.010, 1
  %2 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %3 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.010
  %call = tail call i32 @qed_sp_heartbeat_ramrod(ptr noundef %arrayidx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_selftest_register(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp28.not = icmp eq i8 %1, 0
  br i1 %cmp28.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.029
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %arrayidx) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.029, i32 8
  %tobool3.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool3.not, ptr @.str.3, ptr %name
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 51, ptr noundef nonnull %spec.select) #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call9 = tail call i32 @qed_mcp_bist_register_test(ptr noundef %arrayidx, ptr noundef nonnull %call) #6
  tail call void @qed_ptt_release(ptr noundef %arrayidx, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.inc, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.029, 1
  %2 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %3 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qed_ptt_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_bist_register_test(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qed_ptt_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_selftest_clock(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 32
  %0 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_hwfns, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp28.not = icmp eq i8 %1, 0
  br i1 %cmp28.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.029
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %arrayidx) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 %i.029, i32 8
  %tobool3.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool3.not, ptr @.str.3, ptr %name
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 74, ptr noundef nonnull %spec.select) #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call9 = tail call i32 @qed_mcp_bist_clock_test(ptr noundef %arrayidx, ptr noundef nonnull %call) #6
  tail call void @qed_ptt_release(ptr noundef %arrayidx, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.inc, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %i.029, 1
  %2 = ptrtoint ptr %num_hwfns to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_hwfns, align 4
  %conv = zext i8 %3 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call9, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_bist_clock_test(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qed_selftest_nvram(ptr noundef %cdev) local_unnamed_addr #0 align 64 {
entry:
  %num_images = alloca i32, align 4
  %image_att = alloca %struct.bist_nvm_image_att, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hwfns = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33
  %call = tail call ptr @qed_ptt_acquire(ptr noundef %hwfns) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_images) #6
  %0 = ptrtoint ptr %num_images to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %num_images, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %image_att) #6
  %1 = getelementptr inbounds %struct.bist_nvm_image_att, ptr %image_att, i32 0, i32 1
  %2 = getelementptr inbounds %struct.bist_nvm_image_att, ptr %image_att, i32 0, i32 2
  %3 = getelementptr inbounds %struct.bist_nvm_image_att, ptr %image_att, i32 0, i32 3
  %tobool.not = icmp eq ptr %call, null
  %4 = call ptr @memset(ptr %image_att, i32 255, i32 16)
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool2.not = icmp eq ptr %name, null
  %spec.select = select i1 %tobool2.not, ptr @.str.3, ptr %name
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 97, ptr noundef nonnull %spec.select) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call8 = call i32 @qed_mcp_bist_nvm_get_num_images(ptr noundef %hwfns, ptr noundef nonnull %call, ptr noundef nonnull %num_images) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.end.do.end15_crit_edge

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %num_images to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_images, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not = icmp eq i32 %6, 0
  br i1 %tobool10.not, label %lor.lhs.false.do.end15_crit_edge, label %for.cond.preheader

lor.lhs.false.do.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end15

for.cond.preheader:                               ; preds = %lor.lhs.false
  %7 = ptrtoint ptr %num_images to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_images, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp233.not = icmp eq i32 %8, 0
  br i1 %cmp233.not, label %for.cond.preheader.for.end157_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end157_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end157

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dp_level = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 7
  %dp_module = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 6
  %name65 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool67.not = icmp eq ptr %name65, null
  %spec.select216 = select i1 %tobool67.not, ptr @.str.3, ptr %name65
  br label %for.body

do.end15:                                         ; preds = %lor.lhs.false.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %name17 = getelementptr inbounds %struct.qed_dev, ptr %cdev, i32 0, i32 33, i32 0, i32 8
  %tobool19.not = icmp eq ptr %name17, null
  %spec.select214 = select i1 %tobool19.not, ptr @.str.3, ptr %name17
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 104, ptr noundef nonnull %spec.select214) #9
  br label %err0

for.body:                                         ; preds = %for.inc156.for.body_crit_edge, %for.body.lr.ph
  %i.0234 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc156.for.body_crit_edge ]
  %call30 = call i32 @qed_mcp_bist_nvm_get_image_att(ptr noundef %hwfns, ptr noundef nonnull %call, ptr noundef nonnull %image_att, i32 noundef %i.0234) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end50, label %do.end36

do.end36:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.5, i32 noundef 119, ptr noundef nonnull %spec.select216, i32 noundef %i.0234) #9
  br label %err0

if.end50:                                         ; preds = %for.body
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %10)
  %cmp51 = icmp eq i32 %10, 27
  br i1 %cmp51, label %if.end50.for.inc156_crit_edge, label %do.body54

if.end50.for.inc156_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc156

do.body54:                                        ; preds = %if.end50
  %11 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp55 = icmp eq i8 %12, 0
  br i1 %cmp55, label %land.rhs, label %do.body54.if.end8.i.i_crit_edge

do.body54.if.end8.i.i_crit_edge:                  ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i

land.rhs:                                         ; preds = %do.body54
  %13 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dp_module, align 4
  %and = and i32 %14, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool57.not = icmp eq i32 %and, 0
  br i1 %tobool57.not, label %land.rhs.if.end8.i.i_crit_edge, label %do.end63, !prof !45

land.rhs.if.end8.i.i_crit_edge:                   ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i

do.end63:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.5, i32 noundef 130, ptr noundef nonnull %spec.select216, i32 noundef %i.0234, i32 noundef %16) #9
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end63, %land.rhs.if.end8.i.i_crit_edge, %do.body54.if.end8.i.i_crit_edge
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #10
  %tobool80.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool80.not, label %if.end8.i.i.err0_crit_edge, label %if.end82

if.end8.i.i.err0_crit_edge:                       ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err0

if.end82:                                         ; preds = %if.end8.i.i
  %19 = ptrtoint ptr %hwfns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hwfns, align 8
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %2, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %3, align 4
  %call85 = call i32 @qed_mcp_nvm_read(ptr noundef %20, i32 noundef %22, ptr noundef nonnull %call9.i.i, i32 noundef %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %for.cond106.preheader, label %do.end91

for.cond106.preheader:                            ; preds = %if.end82
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %sub = add i32 %26, -4
  br label %for.cond106

do.end91:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %call102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.5, i32 noundef 144, ptr noundef nonnull %spec.select216, i32 noundef %i.0234) #9
  br label %err1

for.cond106:                                      ; preds = %for.cond106.for.cond106_crit_edge, %for.cond106.preheader
  %j.0 = phi i32 [ %add, %for.cond106.for.cond106_crit_edge ], [ 0, %for.cond106.preheader ]
  %cmp108 = icmp ult i32 %j.0, %sub
  %add = add i32 %j.0, 4
  br i1 %cmp108, label %for.cond106.for.cond106_crit_edge, label %for.end

for.cond106.for.cond106_crit_edge:                ; preds = %for.cond106
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond106

for.end:                                          ; preds = %for.cond106
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 -4
  %add.ptr114 = getelementptr i8, ptr %add.ptr, i32 %26
  %27 = ptrtoint ptr %add.ptr114 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr114, align 4
  %call117 = call i32 @crc32_le(i32 noundef -1, ptr noundef nonnull %call9.i.i, i32 noundef %sub) #11
  %neg = xor i32 %call117, -1
  %29 = ptrtoint ptr %dp_level to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dp_level, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp121 = icmp eq i8 %30, 0
  br i1 %cmp121, label %land.rhs123, label %for.end.do.end151_crit_edge

for.end.do.end151_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end151

land.rhs123:                                      ; preds = %for.end
  %31 = ptrtoint ptr %dp_module to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dp_module, align 4
  %and125 = and i32 %32, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %land.rhs123.do.end151_crit_edge, label %do.end137, !prof !45

land.rhs123.do.end151_crit_edge:                  ; preds = %land.rhs123
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end151

do.end137:                                        ; preds = %land.rhs123
  call void @__sanitizer_cov_trace_pc() #8
  %call148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.5, i32 noundef 163, ptr noundef nonnull %spec.select216, i32 noundef %28, i32 noundef %neg) #9
  br label %do.end151

do.end151:                                        ; preds = %do.end137, %land.rhs123.do.end151_crit_edge, %for.end.do.end151_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %neg)
  %cmp152.not = icmp eq i32 %28, %neg
  br i1 %cmp152.not, label %if.end155, label %do.end151.err1_crit_edge

do.end151.err1_crit_edge:                         ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.end155:                                        ; preds = %do.end151
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %for.inc156

for.inc156:                                       ; preds = %if.end155, %if.end50.for.inc156_crit_edge
  %inc = add nuw i32 %i.0234, 1
  %33 = ptrtoint ptr %num_images to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_images, align 4
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %for.inc156.for.body_crit_edge, label %for.inc156.for.end157_crit_edge

for.inc156.for.end157_crit_edge:                  ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end157

for.inc156.for.body_crit_edge:                    ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end157:                                       ; preds = %for.inc156.for.end157_crit_edge, %for.cond.preheader.for.end157_crit_edge
  call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #6
  br label %cleanup

err1:                                             ; preds = %do.end151.err1_crit_edge, %do.end91
  %rc.0 = phi i32 [ %call85, %do.end91 ], [ -22, %do.end151.err1_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %err0

err0:                                             ; preds = %err1, %if.end8.i.i.err0_crit_edge, %do.end36, %do.end15
  %rc.1 = phi i32 [ -22, %do.end15 ], [ %call30, %do.end36 ], [ %rc.0, %err1 ], [ -12, %if.end8.i.i.err0_crit_edge ]
  call void @qed_ptt_release(ptr noundef %hwfns, ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %err0, %for.end157, %do.end
  %retval.0 = phi i32 [ %rc.1, %err0 ], [ 0, %for.end157 ], [ -16, %do.end ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %image_att) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_images) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_bist_nvm_get_num_images(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_bist_nvm_get_image_att(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qed_mcp_nvm_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/qed/qed_selftest.c", i32 51, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qed_selftest_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qed_selftest_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/qlogic/qed/qed_selftest.c", i32 74, i32 4}
!9 = !{ptr @qed_selftest_clock._entry, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @qed_selftest_clock._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qlogic/qed/qed_selftest.c", i32 97, i32 3}
!13 = !{ptr @qed_selftest_nvram._entry, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @qed_selftest_nvram._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/qlogic/qed/qed_selftest.c", i32 104, i32 3}
!17 = !{ptr @qed_selftest_nvram._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @qed_selftest_nvram._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/qlogic/qed/qed_selftest.c", i32 117, i32 4}
!21 = !{ptr @qed_selftest_nvram._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @qed_selftest_nvram._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/qlogic/qed/qed_selftest.c", i32 129, i32 3}
!25 = !{ptr @qed_selftest_nvram._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @qed_selftest_nvram._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/qlogic/qed/qed_selftest.c", i32 143, i32 4}
!29 = !{ptr @qed_selftest_nvram._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @qed_selftest_nvram._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/qlogic/qed/qed_selftest.c", i32 162, i32 3}
!33 = !{ptr @qed_selftest_nvram._entry.18, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @qed_selftest_nvram._entry_ptr.20, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"auto-init"}
!45 = !{!"branch_weights", i32 2000, i32 1}
